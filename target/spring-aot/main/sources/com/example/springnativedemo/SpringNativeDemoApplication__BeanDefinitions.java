package com.example.springnativedemo;

import org.springframework.aot.generate.Generated;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.beans.factory.support.RootBeanDefinition;

/**
 * Bean definitions for {@link SpringNativeDemoApplication}.
 */
@Generated
public class SpringNativeDemoApplication__BeanDefinitions {
  /**
   * Get the bean definition for 'springNativeDemoApplication'.
   */
  public static BeanDefinition getSpringNativeDemoApplicationBeanDefinition() {
    RootBeanDefinition beanDefinition = new RootBeanDefinition(SpringNativeDemoApplication.class);
    beanDefinition.setInstanceSupplier(SpringNativeDemoApplication::new);
    return beanDefinition;
  }
}
