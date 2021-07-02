package com.lear.controller;

import com.lear.domain.Resume;
import com.lear.service.IResumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.*;
import javax.mail.internet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.Properties;

/**
 * created by viking on 2018/07/17
 * 测试邮件发送controller
 */
@Controller
@RequestMapping("mail")
public class SendMailController {
    @Autowired
    private JavaMailSender javaMailSender;//在spring中配置的邮件发送的bean
    @Autowired
    private IResumeService iResumeService;

    @RequestMapping("send.do")
    public Object sendMail03(Resume resume){
        MimeMessage mMessage=javaMailSender.createMimeMessage();//创建邮件对象
        MimeMessageHelper mMessageHelper;
        Properties prop = new Properties();
        String from;
        try {
            //从配置文件中拿到发件人邮箱地址
            prop.load(this.getClass().getClassLoader().getResourceAsStream("mail.properties"));
            from = prop.get("mail.smtp.username")+"";
            mMessageHelper=new MimeMessageHelper(mMessage,true);
            mMessageHelper.setFrom(from);//发件人邮箱
            mMessageHelper.setTo(resume.getPosition().getHr().getHead_portrait());//收件人邮箱
            mMessageHelper.setSubject(resume.getCandidate().getC_name()+"_"+resume.getCandidate().getEmail()+"_简历");//邮件的主题
            mMessageHelper.setText("<p>这是"+resume.getCandidate().getC_name()+"在XX招聘网投递的一份简历</p>" ,true);//邮件的文本内容，true表示文本以html格式打开
            File file=new File(resume.getPath());//在邮件中添加一附件
            FileSystemResource resource=new FileSystemResource(file);

            mMessageHelper.addInline("resume", resource);//这里指定一个id,在上面引用
            mMessageHelper.addAttachment("resume", resource);//在邮件中添加一个附件
            javaMailSender.send(mMessage);//发送邮件

            iResumeService.insert(resume);
        } catch (MessagingException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "发送成功";
    }

    @PostMapping("/load")
    public String fileload(MultipartFile file, HttpServletRequest request) {

        //获取文件名称
        String fileName = file.getOriginalFilename();

        //设置上传路径
        String path = "D:/test1/";

        //文件上传
        File f = new File(path);

        //判断路径是否存在，不存在则创建
        if(!f.exists()){
            f.mkdirs();
        }
        //判断上传文件是否为空
        if(!file.isEmpty()){
            try {
                FileOutputStream fos = new FileOutputStream(path + fileName);
                InputStream in = file.getInputStream();
                int a = 0;
                while((a = in.read())!=-1){
                    fos.write(a);
                }
                in.close();
                fos.close();
            }catch (Exception e){
                e.printStackTrace();
            }
        }

        return null;
    }

    @RequestMapping(value = "/emailsend")
    public String emailsend(@RequestParam("file") MultipartFile file, String em
            , HttpServletResponse response, HttpServletRequest request) throws IOException {
        System.out.println("++++++++++++++++++++++++++++"+em);
        Properties prop = new Properties();
        prop.load(this.getClass().getClassLoader().getResourceAsStream("mail.properties"));

        //发件箱账户
        String fromAccount =  prop.get("mail.smtp.username")+"";;
        //发件箱登录密码
        String frompasswprd = "15920554229qwe.";
        //收件箱
        String revAccount = em;
        Authenticator authenticator = new Authenticator(){
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("935538244@qq.com","ytnmqummyjjdbead");
            }
        };
        //javaMail提供链接发送邮件的服务器
        //properties配置链接服务器信息
        //authenticator登录服务器的授权码
        Session session = Session.getInstance(prop, authenticator);
        session.setDebug(true);
        //邮件消息内容
        MimeMessage mimeMessage = new MimeMessage(session);
        try {
            //发件人
            mimeMessage.setFrom(new InternetAddress(fromAccount));
            //抄送给发件人
            mimeMessage.addRecipients(Message.RecipientType.CC,InternetAddress.parse(fromAccount));
            //收件人
            mimeMessage.setRecipient(Message.RecipientType.TO,new InternetAddress(revAccount));
            //消息头
            mimeMessage.setSubject(em+"简历","utf8");
            //邮箱内容
            BodyPart bodyPart = new MimeBodyPart();
            bodyPart.setText("来自"+em+"邮箱在XX招聘网站投递的简历");

            Multipart multipart = new MimeMultipart();
            multipart.addBodyPart(bodyPart);


            //获取文件名称
            String fileName = file.getOriginalFilename();

            //设置上传路径
            String path11 = request.getServletContext().getRealPath("upload/");
            System.out.println(path11);

            //文件上传
            File f = new File(path11);

            //判断路径是否存在，不存在则创建
            if(!f.exists()){
                f.mkdirs();
            }
            //判断上传文件是否为空
            if(!file.isEmpty()){
                try {
                    FileOutputStream fos = new FileOutputStream(path11 + fileName);
                    InputStream in = file.getInputStream();
                    int a = 0;
                    while((a = in.read())!=-1){
                        fos.write(a);
                    }
                    in.close();
                    fos.close();
                }catch (Exception e){
                    e.printStackTrace();
                }
            }

            //添加附件
            if(file.getSize()>0){
                String path = request.getServletContext().getRealPath("upload");
                String filename = file.getOriginalFilename();
                String filePath = path+"/"+filename;
                File file1 = new File(filePath);
                try {
                    file.transferTo(file1);
                    //添加到multipart中
                    DataSource dataSource = new FileDataSource(file1);
                    bodyPart = new MimeBodyPart();
                    bodyPart.setDataHandler(new DataHandler(dataSource));
                    bodyPart.setFileName(MimeUtility.encodeText(filename));
                    multipart.addBodyPart(bodyPart);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            //发送邮件的内容
            mimeMessage.setContent(multipart);
            //发送时间
            mimeMessage.setSentDate(new Date());
            //保存设置
            mimeMessage.saveChanges();
            //邮件发送
            Transport transport = session.getTransport();
            //建立链接
            transport.connect(fromAccount,frompasswprd);
            //设置发送内容
            transport.sendMessage(mimeMessage,mimeMessage.getAllRecipients());
            transport.close();
            request.setAttribute("msg","ok");
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        return "forward:../position/findAll.do?c=u&cpage=1";
    }

}

