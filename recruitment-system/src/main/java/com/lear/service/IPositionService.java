package com.lear.service;

import com.lear.domain.Position;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IPositionService {
    //没有封装city和category
    List<Position> findByCity_id(int city_id) throws Exception;

        //没有封装city和category
    List<Position> all(int page,int size) throws Exception;

    List<Position> findByCategory_id(int category_id) throws Exception;

    Position findByPosition_id(int position_id) throws Exception;

    int allCount() throws Exception;

    int delete(int id) throws Exception;

    List<Position> findBySome( Position position) throws Exception;

    int insert(Position position) throws Exception;
}
