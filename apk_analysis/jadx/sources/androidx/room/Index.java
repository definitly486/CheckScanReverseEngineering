package androidx.room;

import defpackage.g03;
import defpackage.h03;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes3.dex */
@Target({})
@Retention(RetentionPolicy.CLASS)
public @interface Index {

    public enum Order {
        ASC,
        DESC;

        private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

        public static g03<Order> getEntries() {
            return $ENTRIES;
        }
    }

    String name() default "";

    Order[] orders() default {};

    boolean unique() default false;

    String[] value();
}
