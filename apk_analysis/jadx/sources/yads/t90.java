package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class t90 {
    public static final String f = "yandex_tracking_events";
    public static final String g = "yandex_linear_creative_info";
    public static final String h = "yandex_designs";
    public final zl6 a;
    public final it3 b;
    public final a86 c;
    public final r90 d;
    public final xl6 e;

    public t90(Context context, q84 q84Var) {
        zl6 zl6Var = new zl6();
        it3 it3Var = new it3(context, q84Var, new wk(context, q84Var, null, 12));
        a86 a86Var = new a86(q84Var);
        this.a = zl6Var;
        this.b = it3Var;
        this.c = a86Var;
        this.d = new r90(new st2());
        this.e = new xl6(new w06(), "CreativeExtension", "Tracking");
    }
}
