package yads;

import android.content.Context;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes6.dex */
public final class ze3 {
    public d9 a;
    public final e4 b;
    public final j5 c;
    public final q84 d;
    public final fe5 e;
    public final e40 f;
    public final le g;
    public zh4 h;

    public ze3(Context context, d9 d9Var, e4 e4Var, bf5 bf5Var, j5 j5Var) {
        zg5 zg5Var;
        bf5Var.getClass();
        q84 q84VarA = re.a(context, new lm6(((do6) bf5Var).a));
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
        e40 e40Var = new e40();
        le leVar = new le(context);
        this.a = d9Var;
        this.b = e4Var;
        this.c = j5Var;
        this.d = q84VarA;
        this.e = fe5VarA;
        this.f = e40Var;
        this.g = leVar;
    }

    public final h75 a() {
        h75 h75VarA = this.f.a(this.b, this.a);
        h75VarA.b(c75.a, "adapter");
        sl5 sl5Var = this.b.d.a;
        if (sl5Var != null) {
            h75VarA.b(sl5Var.b().b, "size_type");
            h75VarA.b(Integer.valueOf(sl5Var.getWidth()), TJAdUnitConstants.String.WIDTH);
            h75VarA.b(Integer.valueOf(sl5Var.getHeight()), TJAdUnitConstants.String.HEIGHT);
        }
        fe5 fe5Var = this.e;
        if (fe5Var != null) {
            h75VarA.b(fe5Var.S, "banner_size_calculation_type");
        }
        zh4 zh4Var = this.h;
        return zh4Var != null ? i75.a(h75VarA, zh4Var.a()) : h75VarA;
    }

    public final h75 a(f66 f66Var) {
        h75 h75VarA = a();
        h75VarA.b(f66Var.a.b, "reason");
        String str = f66Var.b;
        if (str != null && str.length() > 0) {
            h75VarA.b(str, "asset_name");
        }
        String str2 = f66Var.c;
        if (str2 != null && str2.length() > 0) {
            h75VarA.b(str2, "description");
        }
        return h75VarA;
    }

    public final void a(e75 e75Var, h75 h75Var) {
        g75 g75Var = new g75(e75Var, h75Var.a, h75Var.b);
        this.d.a(g75Var);
        this.g.a(e75Var, g75Var.b, c75.a, this.c);
    }
}
