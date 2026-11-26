package androidx.annotation.experimental;

import defpackage.ul2;
import java.lang.annotation.Annotation;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes.dex */
@Target({ElementType.TYPE, ElementType.METHOD, ElementType.PARAMETER, ElementType.CONSTRUCTOR, ElementType.LOCAL_VARIABLE})
@ul2
@Retention(RetentionPolicy.CLASS)
public @interface UseExperimental {
    Class<? extends Annotation>[] markerClass();
}
