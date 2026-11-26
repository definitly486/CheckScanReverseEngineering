package defpackage;

import android.app.Application;
import com.google.android.gms.common.GoogleApiAvailability;

/* JADX INFO: loaded from: classes5.dex */
public final class jm2 implements im2 {
    public final em2 a;
    public final Application b;

    public jm2(em2 em2Var, Application application) {
        this.a = em2Var;
        this.b = application;
    }

    @Override // defpackage.im2
    public final boolean a() {
        try {
            return GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(this.b) == 0;
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // defpackage.im2
    public final Object b(gm2 gm2Var, qo7 qo7Var) {
        String str = gm2Var.c;
        Object objC = this.a.c(new km2(str, gm2Var.b, str, gm2Var.d, gm2Var.e, gm2Var.f, gm2Var.g), qo7Var);
        return objC == a32.COROUTINE_SUSPENDED ? objC : j59.a;
    }
}
