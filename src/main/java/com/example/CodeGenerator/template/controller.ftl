package ${basePackage}.web;

import ${basePackage}.domain.${domainNameUpperCamel};
import ${basePackage}.service.${domainNameUpperCamel}Service;
import ${basePackage}.core.ResponseMsgUtil;
import ${basePackage}.core.Result;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;
import java.lang.${pkDataType};

/**
 * ${description}-Controller类
 * @author ${author} on ${date}
 * @version 3.0.0
 */
@Api(description = "${description}")
@RestController
@RequestMapping("${baseRequestMapping}")
public class ${domainNameUpperCamel}Controller {
    @Resource
    private ${domainNameUpperCamel}Service ${domainNameLowerCamel}Service;

    @ApiOperation(value = "新增", notes = "单表新增")
    @ApiImplicitParams({
            @ApiImplicitParam(paramType = "query", name = "${domainNameUpperCamel}", value = "${domainNameUpperCamel}对象", required = true, dataType = "Object")
    })
    @PostMapping("/add")
    public Result<${domainNameUpperCamel}> add(${domainNameUpperCamel} ${domainNameLowerCamel}) {
        ${domainNameLowerCamel}Service.save(${domainNameLowerCamel});
        return ResponseMsgUtil.success(${domainNameLowerCamel});
    }

    @ApiOperation(value = "删除", notes = "单表删除")
    @ApiImplicitParams({
            @ApiImplicitParam(paramType = "query", name = "id", value = "主键", required = true, dataType = "${pkDataType}")
    })
    @PostMapping("/delete")
    public Result delete(@RequestParam ${pkDataType} id) {
        ${domainNameLowerCamel}Service.deleteById(id);
        return ResponseMsgUtil.success(null);
    }

    @ApiOperation(value = "更新", notes = "单表更新")
    @ApiImplicitParams({
            @ApiImplicitParam(paramType = "query", name = "${domainNameUpperCamel}", value = "${domainNameUpperCamel}对象", required = true, dataType = "Object")
    })
    @PostMapping("/update")
    public Result<${domainNameUpperCamel}> update(${domainNameUpperCamel} ${domainNameLowerCamel}) {
        ${domainNameLowerCamel}Service.update(${domainNameLowerCamel});
        return ResponseMsgUtil.success(${domainNameLowerCamel});
    }

    @ApiOperation(value = "详情", notes = "单表详情")
    @ApiImplicitParams({
            @ApiImplicitParam(paramType = "query", name = "id", value = "主键", required = true, dataType = "${pkDataType}")
    })
    @GetMapping("/detail")
    public Result<${domainNameUpperCamel}> detail(@RequestParam ${pkDataType} id) {
        ${domainNameUpperCamel} ${domainNameLowerCamel} = ${domainNameLowerCamel}Service.findById(id);
        return ResponseMsgUtil.success(${domainNameLowerCamel});
    }

    @ApiOperation(value = "分页", notes = "单表分页")
    @ApiImplicitParams({
            @ApiImplicitParam(paramType = "query", name = "page", value = "页码", required = true, dataType = "Integer"),
            @ApiImplicitParam(paramType = "query", name = "size", value = "页数", required = true, dataType = "Integer")
    })
    @GetMapping("/list")
    public Result<PageInfo> list(@RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "50") Integer size) {
        PageHelper.startPage(page, size);
        List<${domainNameUpperCamel}> list = ${domainNameLowerCamel}Service.findAll();
        PageInfo pageInfo = new PageInfo(list);
        return ResponseMsgUtil.success(pageInfo);
    }
}
