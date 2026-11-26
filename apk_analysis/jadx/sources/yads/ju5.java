package yads;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes6.dex */
public final class ju5 {
    public static Object a(Callable callable, Object obj, String str, String str2) {
        if (obj == null) {
            return null;
        }
        try {
            return callable.call();
        } catch (Throwable unused) {
            return null;
        }
    }
}
