package yads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import defpackage.cb7;
import defpackage.eb7;
import defpackage.fh8;
import defpackage.fw9;
import defpackage.j59;
import defpackage.ll3;
import defpackage.lq9;
import defpackage.n07;
import defpackage.r54;
import defpackage.rm9;
import yads.hc3;

/* JADX INFO: loaded from: classes6.dex */
public final class hc3 {
    public final bc3 a;
    public final b05 b;
    public final vl5 c;
    public final hl2 d;
    public final Resources e;
    public final boolean f;
    public final defpackage.cl4 g;

    /* JADX WARN: Code duplicated, block: B:9:0x0023  */
    public hc3(Context context, bc3 bc3Var, b05 b05Var, vl5 vl5Var, hl2 hl2Var, zg5 zg5Var) {
        boolean z;
        fe5 fe5VarA;
        this.a = bc3Var;
        this.b = b05Var;
        this.c = vl5Var;
        this.d = hl2Var;
        this.e = context.getResources();
        if (bc3Var.a() && (fe5VarA = zg5Var.a(context)) != null) {
            z = fe5VarA.M0;
        }
        this.f = z;
        this.g = new fh8(new cb7(2));
    }

    public final ll3 a(rd3 rd3Var, cc3 cc3Var) {
        Bitmap bitmapA = this.b.a(rd3Var);
        if (bitmapA != null) {
            ((lq9) cc3Var).a(bitmapA);
            return new fw9(1);
        }
        b05 b05Var = this.b;
        b05Var.getClass();
        a05 a05VarB = b05.b(rd3Var);
        lq9 lq9Var = (lq9) cc3Var;
        lq9Var.a(a05VarB != null ? (Bitmap) b05Var.c.get(a05VarB) : null);
        if (!this.a.a()) {
            return new eb7(2);
        }
        String str = rd3Var.c;
        int i = rd3Var.b;
        int i2 = rd3Var.a;
        final n07 n07Var = new n07();
        final xc3 xc3VarA = this.c.a(str, new ec3(n07Var, this, str, lq9Var), i2, i);
        return new ll3() { // from class: ax9
            @Override // defpackage.ll3
            public final Object invoke() {
                return hc3.a(n07Var, xc3VarA);
            }
        };
    }

    public final ll3 b(rd3 rd3Var, dc3 dc3Var) {
        return a(rd3Var, new lq9(dc3Var, this));
    }

    public final ll3 c(rd3 rd3Var, dc3 dc3Var) {
        return new r54(defpackage.av0.c((defpackage.y22) this.g.getValue(), null, null, new gc3(this, rd3Var, dc3Var, null), 3), 3);
    }

    public static final j59 b() {
        return j59.a;
    }

    public hc3(Context context, bc3 bc3Var, b05 b05Var) {
        rn4 rn4Var = un4.d;
        vl5 vl5Var = rn4Var.a(context).a;
        hl2 hl2Var = rn4Var.a(context).b;
        zg5 zg5Var = zg5.l;
        if (zg5Var == null) {
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
        }
        this(context, bc3Var, b05Var, vl5Var, hl2Var, zg5Var);
    }

    public final ll3 a(rd3 rd3Var, dc3 dc3Var) {
        b05 b05Var = this.b;
        b05Var.getClass();
        a05 a05VarB = b05.b(rd3Var);
        Bitmap bitmap = a05VarB != null ? (Bitmap) b05Var.c.get(a05VarB) : null;
        defpackage.z3 z3Var = (defpackage.z3) dc3Var;
        z3Var.a(bitmap != null ? new BitmapDrawable(this.e, bitmap) : null);
        if (this.f) {
            return c(rd3Var, z3Var);
        }
        return b(rd3Var, z3Var);
    }

    public static final defpackage.y22 a(defpackage.y22 y22Var) {
        if (y22Var != null) {
            return y22Var;
        }
        return xn.a(rm9.b(), new i90());
    }

    public static final j59 a() {
        return j59.a;
    }

    public static final j59 a(n07 n07Var, xc3 xc3Var) {
        n07Var.b = true;
        xc3Var.a();
        return j59.a;
    }

    public static final void a(dc3 dc3Var, hc3 hc3Var, Bitmap bitmap) {
        ((defpackage.z3) dc3Var).a(bitmap != null ? new BitmapDrawable(hc3Var.e, bitmap) : null);
    }

    public static final j59 a(defpackage.mb4 mb4Var) {
        mb4Var.cancel(null);
        return j59.a;
    }
}
