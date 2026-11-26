package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class wp4 {
    public final Context a;
    public final aq4 b;
    public final z75 c;
    public final zg5 d;

    public wp4(Context context) {
        z75 z75Var;
        this.a = context.getApplicationContext();
        this.b = bq4.a(context);
        z75 z75Var2 = z75.b;
        if (z75Var2 == null) {
            synchronized (z75.a) {
                z75Var = z75.b;
                if (z75Var == null) {
                    z75Var = new z75();
                    z75.b = z75Var;
                }
            }
            z75Var2 = z75Var;
        }
        this.c = z75Var2;
        this.d = yg5.a();
    }

    public final void a(yp4 yp4Var) {
        fe5 fe5VarA = this.d.a(this.a);
        String str = fe5VarA != null ? fe5VarA.U : null;
        String strC = ((av3) this.b.a).c("YmadOmSdkJsUrl");
        if (str == null || str.length() <= 0 || str.equals(strC)) {
            yp4Var.a();
            return;
        }
        vp4 vp4Var = new vp4(this, str, yp4Var);
        vs5 vs5Var = new vs5(str, vp4Var, vp4Var);
        vs5Var.q = "om_sdk_js_request_tag";
        z75 z75Var = this.c;
        Context context = this.a;
        synchronized (z75Var) {
            qn4.a(context).a(vs5Var);
        }
    }
}
