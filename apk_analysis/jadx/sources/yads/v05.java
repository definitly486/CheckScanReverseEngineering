package yads;

import android.app.Application;
import android.os.Build;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes6.dex */
public final class v05 {
    public final String a() {
        if (Build.VERSION.SDK_INT >= 28) {
            return Application.getProcessName();
        }
        try {
            Method declaredMethod = Class.forName("android.app.ActivityThread", false, ha4.class.getClassLoader()).getDeclaredMethod("currentProcessName", null);
            declaredMethod.setAccessible(true);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(null, null);
            objInvoke.getClass();
            return (String) objInvoke;
        } catch (Throwable unused) {
            return null;
        }
    }
}
