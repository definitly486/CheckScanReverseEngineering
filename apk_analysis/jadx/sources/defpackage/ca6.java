package defpackage;

import java.lang.annotation.Annotation;

/* JADX INFO: loaded from: classes5.dex */
public final class ca6 {

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[yk1.values().length];
            try {
                iArr[yk1.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[yk1.POLYMORPHIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[yk1.ALL_JSON_OBJECTS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public static final String a(xb4 xb4Var, mp7 mp7Var) {
        mp7Var.getClass();
        xb4Var.getClass();
        for (Annotation annotation : mp7Var.getAnnotations()) {
            if (annotation instanceof ec4) {
                return ((ec4) annotation).discriminator();
            }
        }
        return xb4Var.a.e;
    }
}
