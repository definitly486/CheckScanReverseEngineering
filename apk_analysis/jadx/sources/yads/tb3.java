package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class tb3 {
    public final vg a;
    public final ig b;
    public final Context c;
    public final ub3 d;
    public final String e;

    public tb3(Context context) {
        String strA;
        vg vgVarA = dg.a(context);
        ig igVar = new ig(context);
        px3 px3Var = new px3(bv3.a(context, "YadPreferenceFile"));
        this.a = vgVarA;
        this.b = igVar;
        this.c = context.getApplicationContext();
        this.d = ub3.PROD;
        synchronized (ox3.a) {
            strA = px3Var.a();
            if (strA == null) {
                strA = nx3.a();
                px3Var.a(strA);
            }
        }
        this.e = strA;
    }
}
