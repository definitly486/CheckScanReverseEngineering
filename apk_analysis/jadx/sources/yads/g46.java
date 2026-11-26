package yads;

import android.content.Context;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final class g46 {
    public static volatile boolean a;
    public static final Object b = new Object();

    public static void a(Context context, q84 q84Var) {
        fe5 fe5VarA;
        if (a) {
            return;
        }
        synchronized (b) {
            try {
                if (!a && (fe5VarA = yg5.a().a(context)) != null && fe5VarA.h0) {
                    Thread.setDefaultUncaughtExceptionHandler(new f46(q84Var, Thread.getDefaultUncaughtExceptionHandler(), fe5VarA));
                    a = true;
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
