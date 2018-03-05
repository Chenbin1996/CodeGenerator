package com.example.CodeGenerator.core;

/**
 * 项目常量
 * @author chenbin on 2017/12/25
 * @version 3.0.0
 */
public final class ProjectConstant {
    /** 获取当前类的路径*/
    private static String packAge = ProjectConstant.class.getPackage().getName();
    /** 根据路径切割最后一位名称获得当前类上一级路径*/
    private static final String PACKAGE = packAge.substring(0,packAge.lastIndexOf("."));
    /** 项目基础包名称，根据项目修改 */
    public static final String BASE_PACKAGE = PACKAGE;
    /** Domain所在包 */
    public static final String DOMAIN_PACKAGE = BASE_PACKAGE + ".domain";
    /** Mapper所在包 */
    public static final String MAPPER_PACKAGE = BASE_PACKAGE + ".mapper";
    /** Service所在包 */
    public static final String SERVICE_PACKAGE = BASE_PACKAGE + ".service";
    /** ServiceImpl所在包 */
    public static final String SERVICE_IMPL_PACKAGE = SERVICE_PACKAGE + ".impl";
    /** DTO所在包 */
    public static final String DTO_PACKAGE = BASE_PACKAGE + ".dto";
    /** Controller所在包 */
    public static final String CONTROLLER_PACKAGE = BASE_PACKAGE + ".web";
    /** Mapper插件基础接口的完全限定名 */
    public static final String MAPPER_INTERFACE_REFERENCE = BASE_PACKAGE + ".core.Mapper";
    /** SwaggerUI的所在包*/
    public static final String SWAGGER_PACKAGE = PACKAGE + ".web";

}
