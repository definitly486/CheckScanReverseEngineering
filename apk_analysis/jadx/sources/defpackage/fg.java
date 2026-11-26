package defpackage;

import android.app.ActivityManager;
import io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable;
import io.appmetrica.analytics.impl.J2;
import yads.ew1;
import yads.sv1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class fg implements FunctionWithThrowable, sv1 {
    public static /* synthetic */ void c(String str) {
        throw new IllegalArgumentException(str);
    }

    public static /* synthetic */ void d(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalStateException((str + obj + obj2 + obj3).toString());
    }

    public static void e(String str, StringBuilder sb, Throwable th) {
        sb.append(th.getMessage());
        y14.r(str, sb.toString());
    }

    @Override // yads.sv1
    public void a(boolean z) {
        ew1.a(z);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable
    public Object apply(Object obj) {
        return J2.a((ActivityManager) obj);
    }
}
