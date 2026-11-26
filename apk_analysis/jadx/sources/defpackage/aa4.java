package defpackage;

import java.util.Arrays;
import kotlin.UninitializedPropertyAccessException;

/* JADX INFO: loaded from: classes5.dex */
public final class aa4 {

    public static class a {
    }

    public static boolean a(float f, Float f2) {
        return f2 != null && f == f2.floatValue();
    }

    public static boolean b(Double d, Double d2) {
        if (d == null) {
            return d2 == null;
        }
        return d2 != null && d.doubleValue() == d2.doubleValue();
    }

    public static boolean c(Float f, float f2) {
        return f != null && f.floatValue() == f2;
    }

    public static boolean d(Float f, Float f2) {
        if (f == null) {
            return f2 == null;
        }
        return f2 != null && f.floatValue() == f2.floatValue();
    }

    public static boolean e(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static int f(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i == i2 ? 0 : 1;
    }

    public static int g(long j, long j2) {
        if (j < j2) {
            return -1;
        }
        return j == j2 ? 0 : 1;
    }

    public static void h(RuntimeException runtimeException, String str) {
        StackTraceElement[] stackTrace = runtimeException.getStackTrace();
        int length = stackTrace.length;
        int i = -1;
        for (int i2 = 0; i2 < length; i2++) {
            if (str.equals(stackTrace[i2].getClassName())) {
                i = i2;
            }
        }
        runtimeException.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i + 1, length));
    }

    public static void i() {
        throw new UnsupportedOperationException("This function has a reified type parameter and thus can only be inlined at compilation time, not called directly.");
    }

    public static void j(String str) {
        UninitializedPropertyAccessException uninitializedPropertyAccessException = new UninitializedPropertyAccessException(me0.c("lateinit property ", str, " has not been initialized"));
        h(uninitializedPropertyAccessException, aa4.class.getName());
        throw uninitializedPropertyAccessException;
    }
}
