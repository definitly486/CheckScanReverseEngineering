package yads;

import android.content.Context;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class cv4 {
    public final i16 a;
    public final d16 b;
    public final z75 c;
    public final zv3 d;
    public final Context e;

    public cv4(Context context, e4 e4Var, bf5 bf5Var, i16 i16Var) {
        z75 z75Var;
        d16 d16Var = new d16(context, e4Var, bf5Var);
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
        zv3 zv3Var = new zv3();
        this.a = i16Var;
        this.b = d16Var;
        this.c = z75Var2;
        this.d = zv3Var;
        this.e = context.getApplicationContext();
    }

    public final void a(String str, Map map, h75 h75Var) {
        av4 av4Var = new av4(this.e, this.d.a(str, map), new bv4(str, yg5.a().a(this.e), this.b, this.a, h75Var));
        z75 z75Var = this.c;
        Context context = this.e;
        synchronized (z75Var) {
            qn4.a(context).a(av4Var);
        }
    }
}
