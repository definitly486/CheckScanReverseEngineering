package yads;

import android.content.Context;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public final class qh {
    public static final AtomicBoolean f = new AtomicBoolean(false);
    public final Context a;
    public final bf5 b;
    public final zg5 c;
    public final q84 d;
    public final qt2 e;

    public qh(Context context, bf5 bf5Var) {
        zg5 zg5Var;
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
        Context context2 = ((do6) bf5Var).a;
        q84 q84VarA = mw.a(context2, context2);
        qt2 qt2VarA = pt2.a(context);
        this.a = context;
        this.b = bf5Var;
        this.c = zg5Var2;
        this.d = q84VarA;
        this.e = qt2VarA;
    }
}
