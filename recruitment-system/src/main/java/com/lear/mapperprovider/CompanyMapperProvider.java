package com.lear.mapperprovider;

import com.lear.domain.Company;
import org.apache.ibatis.jdbc.SQL;

public class CompanyMapperProvider {

    public String updateFlag(Company company) {
        SQL sql=new SQL(){
            {
                UPDATE("company");
                if(company.getFlag()!=0)
                    SET("flag=#{flag}");
                WHERE("company_id=#{company_id}");
            }
        };
        return sql.toString();
    }

    //创建者hr_id没得改
    public String update(final Company company) {
        SQL sql=new SQL(){
            {
                UPDATE("company");
                if(company.getName()!=null&&company.getName()!="")
                    SET("name=#{name}");
                if(company.getBusiness_registration_number()!=null && company.getBusiness_registration_number()!="")
                    SET("business_registration_number=#{business_registration_number}");
                if(company.getSize()!=0 )
                    SET("size=#{size}");
                if(company.getFinancing_stage()!=null && company.getFinancing_stage()!="")
                    SET("financing_stage=#{financing_stage}");
                if(company.getAddress()!=null && company.getAddress()!="")
                    SET("address=#{address}");
                WHERE("company_id=#{company_id}");
            }
        };
        return sql.toString();
    }
    
    public String insert(final Company company) {
        return new SQL(){
            {
                INSERT_INTO("company");
                if(company.getCompany_id()!=0)
                    VALUES("company_id",String.valueOf(company.getCompany_id()));
                if(company.getName()!=null&&company.getName()!="")
                    VALUES("name","'"+company.getName().toString()+"'");
                if(company.getBusiness_registration_number()!=null &&company.getBusiness_registration_number()!="")
                    VALUES("business_registration_number","'"+company.getBusiness_registration_number().toString()+"'");
                if(company.getSize()!=0 )
                    VALUES("size",String.valueOf(company.getSize()));
                if(company.getFinancing_stage()!=null && company.getFinancing_stage()!="")
                    VALUES("financing_stage","'"+company.getFinancing_stage().toString()+"'");
                if(company.getAddress()!=null && company.getAddress()!="")
                    VALUES("address","'"+company.getAddress().toString()+"'");
                if(company.getH().getHr_id()!=0)
                    VALUES("hr_id",String.valueOf(company.getH().getHr_id()));
                    VALUES("flag",String.valueOf(0));
            }
        }.toString();
    }
}
