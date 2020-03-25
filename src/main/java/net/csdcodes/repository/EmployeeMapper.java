package net.csdcodes.repository;

import net.csdcodes.model.Employee;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * @author csdcodes.net
 * @since 2020-3-25
 */
@Mapper
public interface EmployeeMapper {

    @Insert("INSERT INTO employee(name, phone, email, branch) " +
            " VALUES (#{name}, #{phone}, #{email}, #{branch})")
    int insert(Employee employee);

    @Select("SELECT * FROM employee")
    List<Employee> findAll();

    @Select("SELECT * FROM employee WHERE id = #{id}")
    Employee findById(@Param("id") long id);

    @Update("Update employee set name=#{name}, " +
            " phone=#{phone}, email=#{email}, branch = #{branch} where id=#{id}")
    int update(Employee employee);

    @Delete("DELETE FROM employee WHERE id = #{id}")
    int deleteById(@Param("id") long id);

}
