package androidx.annotation.experimental;

import defpackage.g03;
import defpackage.h03;
import defpackage.ul2;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes.dex */
@Target({ElementType.ANNOTATION_TYPE})
@ul2
@Retention(RetentionPolicy.CLASS)
public @interface Experimental {

    public enum Level {
        WARNING,
        ERROR;

        private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

        public static g03<Level> getEntries() {
            return $ENTRIES;
        }
    }

    Level level() default Level.ERROR;
}
