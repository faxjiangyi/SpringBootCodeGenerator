<#if isWithPackage?exists && isWithPackage==true>package com.yiheni.msop.openfeign.client.${classInfo.className?uncap_first}.fallback;</#if>

<#if isAutoImport?exists && isAutoImport==true>
import com.yiheni.msop.openfeign.client.${classInfo.className?uncap_first}.${classInfo.className}FeignClient;
import feign.hystrix.FallbackFactory;
import org.springframework.stereotype.Component;
</#if>

/**
 * ${classInfo.classComment} - feign client fallback factory
 *
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd HH:mm')}
 */
@Component
public class ${classInfo.className}FallbackFactory implements FallbackFactory<${classInfo.className}FeignClient> {

    @Override
    public ${classInfo.className}FeignClient create(Throwable throwable) {

        return new ${classInfo.className}FeignClient() {

        };

    }

}