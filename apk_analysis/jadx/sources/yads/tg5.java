package yads;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class tg5 implements d95 {
    public final d9 a;
    public final Context b;
    public final /* synthetic */ vg5 c;

    public tg5(vg5 vg5Var, Context context, d9 d9Var) {
        this.c = vg5Var;
        this.a = d9Var;
        this.b = context.getApplicationContext();
    }

    @Override // yads.d95
    public final void a(vg4 vg4Var) {
        d9 d9Var = this.a;
        e4 e4Var = this.c.g;
        xh4 xh4Var = new xh4();
        vg5 vg5Var = this.c;
        vg5Var.e.a(this.b, this.a, vg5Var.h);
        qd5 qd5Var = this.c.e;
        Context context = this.b;
        d9 d9Var2 = this.a;
        qd5Var.getClass();
        new h75((Map) null, 3);
        h75 h75VarA = xh4Var.a(e4Var, d9Var, vg4Var);
        f75 f75Var = f75.SUCCESS;
        h75VarA.b(FirebaseAnalytics.Param.SUCCESS, NotificationCompat.CATEGORY_STATUS);
        qd5Var.a(context, d9Var2, e75.ADAPTER_RESPONSE, h75VarA);
    }

    @Override // yads.d95
    public final void a() {
        d9 d9Var = this.a;
        e4 e4Var = this.c.g;
        xh4 xh4Var = new xh4();
        vg5 vg5Var = this.c;
        vg5Var.e.a(this.b, this.a, vg5Var.h);
        qd5 qd5Var = this.c.e;
        Context context = this.b;
        d9 d9Var2 = this.a;
        qd5Var.getClass();
        new h75((Map) null, 3);
        h75 h75VarA = xh4Var.a(e4Var, d9Var, null);
        f75 f75Var = f75.SUCCESS;
        h75VarA.b(FirebaseAnalytics.Param.SUCCESS, NotificationCompat.CATEGORY_STATUS);
        qd5Var.a(context, d9Var2, e75.ADAPTER_RESPONSE, h75VarA);
    }
}
