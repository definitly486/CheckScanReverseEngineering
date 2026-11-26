package yads;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public final class ub6 {
    public static final /* synthetic */ defpackage.ze4[] k = {mo.a(ub6.class, "adParameterManager", "getAdParameterManager()Lcom/monetization/ads/video/render/report/VideoAdRenderingResultReporter$ResponseReportParameterManager;", 0), mo.a(ub6.class, "requestParameterManager", "getRequestParameterManager()Lcom/monetization/ads/video/render/report/VideoAdRenderingResultReporter$RequestReportParameterManager;", 0)};
    public static final long l = 10000;
    public final t5 a;
    public final jf6 b;
    public final tt4 c;
    public final xb6 d;
    public final ae6 e;
    public final mb6 f;
    public final zb6 g;
    public boolean h;
    public final sb6 i;
    public final tb6 j;

    public ub6(Context context, bf5 bf5Var, d9 d9Var, ja6 ja6Var, t5 t5Var, ec6 ec6Var, of6 of6Var, me6 me6Var, jf6 jf6Var) {
        tt4 tt4VarA = qt4.a(null, 3);
        xb6 xb6Var = new xb6(context, bf5Var, d9Var, t5Var);
        ae6 ae6Var = new ae6(ja6Var, of6Var);
        this.a = t5Var;
        this.b = jf6Var;
        this.c = tt4VarA;
        this.d = xb6Var;
        this.e = ae6Var;
        this.f = new mb6(ec6Var, this);
        this.g = new zb6(me6Var, this);
        this.i = new sb6(this);
        this.j = new tb6(this);
    }

    public static final void a(ub6 ub6Var) {
        ym0 ym0Var = new ym0();
        fb6 fb6Var = fb6.RENDERER_FAILED_DEQUEUE_OUTPUT_BUFFER;
        ub6Var.b();
        if (ub6Var.h) {
            return;
        }
        ub6Var.h = true;
        String lowerCase = "TIMEOUT".toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        String message = ym0Var.getMessage();
        if (message == null) {
            message = "";
        }
        xb6 xb6Var = ub6Var.d;
        xb6Var.getClass();
        xb6Var.a(defpackage.n05.f(new defpackage.b36(NotificationCompat.CATEGORY_STATUS, "error"), new defpackage.b36("failure_reason", lowerCase), new defpackage.b36("error_message", message)));
    }

    public final void b() {
        zb6 zb6Var = this.g;
        defpackage.mb4 mb4Var = zb6Var.f;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        zb6Var.f = null;
        zb6Var.e = false;
        mb6 mb6Var = this.f;
        defpackage.mb4 mb4Var2 = mb6Var.f;
        if (mb4Var2 != null) {
            mb4Var2.cancel(null);
        }
        mb6Var.f = null;
        mb6Var.e = false;
        this.c.a();
    }

    public final void a() {
        zb6 zb6Var = this.g;
        defpackage.mb4 mb4Var = zb6Var.f;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        zb6Var.f = null;
        zb6Var.e = false;
        this.a.a(s5.VIDEO_AD_RENDERING, null);
        this.b.a.i();
        mb6 mb6Var = this.f;
        if (!mb6Var.e && !mb6Var.d) {
            mb6Var.e = true;
            mb6Var.f = defpackage.av0.c(mb6Var.c, null, null, new lb6(mb6Var, null), 3);
        }
        this.c.a(l, new defpackage.ow0(this, 6));
    }

    public final void a(gb6 gb6Var) {
        b();
        if (this.h) {
            return;
        }
        this.h = true;
        String lowerCase = gb6Var.a.name().toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        String message = gb6Var.b.getMessage();
        if (message == null) {
            message = "";
        }
        xb6 xb6Var = this.d;
        xb6Var.getClass();
        xb6Var.a(defpackage.n05.f(new defpackage.b36(NotificationCompat.CATEGORY_STATUS, "error"), new defpackage.b36("failure_reason", lowerCase), new defpackage.b36("error_message", message)));
    }
}
