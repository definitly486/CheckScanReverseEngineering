package yads;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class gg5 implements d95 {
    public final Context a;
    public final d9 b;
    public final /* synthetic */ lg5 c;

    public gg5(lg5 lg5Var, Context context, d9 d9Var) {
        this.c = lg5Var;
        this.a = context;
        this.b = d9Var;
    }

    @Override // yads.d95
    public final void a(vg4 vg4Var) {
        d9 d9Var = this.b;
        e4 e4Var = this.c.b.b;
        xh4 xh4Var = new xh4();
        lg5 lg5Var = this.c;
        lg5Var.f.a(this.a, this.b, lg5Var.e);
        qd5 qd5Var = this.c.f;
        Context context = this.a;
        d9 d9Var2 = this.b;
        qd5Var.getClass();
        new h75((Map) null, 3);
        h75 h75VarA = xh4Var.a(e4Var, d9Var, vg4Var);
        f75 f75Var = f75.SUCCESS;
        h75VarA.b(FirebaseAnalytics.Param.SUCCESS, NotificationCompat.CATEGORY_STATUS);
        qd5Var.a(context, d9Var2, e75.ADAPTER_RESPONSE, h75VarA);
    }

    @Override // yads.d95
    public final void a() {
        lg5 lg5Var = this.c;
        lg5Var.f.a(this.a, this.b, lg5Var.e);
        this.c.f.a(this.a, this.b, (wh4) null);
    }
}
