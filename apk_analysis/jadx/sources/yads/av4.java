package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class av4 extends es {
    public static final int w = 10000;

    public av4(Context context, String str, ds dsVar) {
        Integer num;
        zg5 zg5Var;
        Integer num2;
        super(context, 0, str, dsVar, null);
        fe5 fe5VarA = yg5.a().a(context);
        int iIntValue = (fe5VarA == null || (num2 = fe5VarA.y0) == null) ? w : num2.intValue();
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
        fe5 fe5VarA2 = zg5Var2.a(context);
        this.o = new am0(iIntValue, 1.0f, (fe5VarA2 == null || (num = fe5VarA2.N) == null) ? 0 : num.intValue());
        this.n = true;
        this.m = true;
    }

    @Override // yads.r75
    public final z85 a(en4 en4Var) {
        return new z85(en4Var, pa3.a(en4Var));
    }
}
