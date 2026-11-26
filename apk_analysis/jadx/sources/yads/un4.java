package yads;

import android.content.Context;
import android.util.DisplayMetrics;

/* JADX INFO: loaded from: classes6.dex */
public final class un4 {
    public static final rn4 d = new rn4();
    public static volatile un4 e;
    public final vl5 a;
    public final hl2 b;
    public final r46 c;

    /* JADX WARN: Code duplicated, block: B:35:0x0070  */
    public un4(Context context) {
        int i;
        int iIntValue;
        zg5 zg5Var;
        zb3 zb3Var = new zb3();
        try {
            int iMaxMemory = (int) (Runtime.getRuntime().maxMemory() / 1024);
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            i = iMaxMemory / 8;
            int i2 = ((int) (((displayMetrics.widthPixels * displayMetrics.heightPixels) * displayMetrics.density) / 1024.0f)) * 3;
            if (i > i2) {
                i = i2;
            }
        } catch (IllegalArgumentException unused) {
            i = 5120;
        }
        tn4 tn4Var = new tn4(i >= 5120 ? i : 5120);
        zg5 zg5Var2 = zg5.l;
        if (zg5Var2 == null) {
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
            zg5Var2 = zg5Var;
        }
        fe5 fe5VarA = zg5Var2.a(context);
        if (fe5VarA == null || (num = fe5VarA.w0) == null) {
            iIntValue = 4;
        } else {
            Integer num = num.intValue() == 0 ? null : num;
            if (num != null) {
                iIntValue = num.intValue();
            } else {
                iIntValue = 4;
            }
        }
        e85 e85VarA = f85.a(context, iIntValue);
        e85VarA.a();
        sn4 sn4Var = new sn4(tn4Var);
        this.c = new r46(tn4Var, zb3Var);
        vl5 vl5Var = new vl5(e85VarA, sn4Var, zb3Var);
        this.a = vl5Var;
        this.b = new hl2(e85VarA, context, new xk2());
        fe5 fe5VarA2 = yg5.a().a(context);
        if (fe5VarA2 == null || !fe5VarA2.Z0) {
            return;
        }
        vl5Var.b = 0;
    }
}
