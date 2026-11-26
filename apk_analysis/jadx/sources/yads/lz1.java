package yads;

import android.view.View;
import com.yandex.mobile.ads.R$dimen;
import defpackage.j59;
import defpackage.nl3;
import yads.lz1;

/* JADX INFO: loaded from: classes6.dex */
public final class lz1 extends oh2 {
    public lz1(v41 v41Var) {
        super(v41Var);
    }

    public final void a(final wz1 wz1Var, final jz1 jz1Var, jz1 jz1Var2, final fs2 fs2Var) {
        as2 as2Var;
        as2 as2Var2;
        tp0 tp0VarA = null;
        if (ls2.a(jz1Var != null ? jz1Var.a : null, jz1Var2 != null ? jz1Var2.a : null)) {
            if (ls2.a(jz1Var != null ? jz1Var.b : null, jz1Var2 != null ? jz1Var2.b : null)) {
                return;
            }
        }
        if (jz1Var == null) {
            wz1Var.setDividerColor(335544320);
            wz1Var.setHorizontal(true);
        } else {
            wz1Var.setDividerColor(((Number) jz1Var.a.a(fs2Var)).intValue());
            wz1Var.setHorizontal(((iz1) jz1Var.b.a(fs2Var)) == iz1.HORIZONTAL);
        }
        if (ls2.a(jz1Var != null ? jz1Var.a : null)) {
            if (ls2.a(jz1Var != null ? jz1Var.b : null)) {
                return;
            }
        }
        nl3 nl3Var = new nl3() { // from class: q1a
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return lz1.a(this.b, wz1Var, jz1Var, fs2Var, obj);
            }
        };
        wz1Var.g.a((jz1Var == null || (as2Var2 = jz1Var.a) == null) ? null : as2Var2.a(fs2Var, nl3Var));
        if (jz1Var != null && (as2Var = jz1Var.b) != null) {
            tp0VarA = as2Var.a(fs2Var, nl3Var);
        }
        wz1Var.g.a(tp0VarA);
    }

    @Override // yads.oh2
    public final void a(View view, tt ttVar, p41 p41Var, p41 p41Var2) {
        wz1 wz1Var = (wz1) view;
        kz1 kz1Var = (kz1) p41Var;
        kz1 kz1Var2 = (kz1) p41Var2;
        pq.a(wz1Var, ttVar, kz1Var.b, kz1Var.d, kz1Var.x, kz1Var.o, kz1Var.u, kz1Var.t, kz1Var.B, kz1Var.A, kz1Var.c, kz1Var.k);
        a(wz1Var, kz1Var.m, kz1Var2 != null ? kz1Var2.m : null, ttVar.b);
        wz1Var.setDividerHeightResource(R$dimen.monetization_ads_divkit_div_separator_delimiter_height);
        wz1Var.setDividerGravity(17);
    }

    public static final j59 a(lz1 lz1Var, wz1 wz1Var, jz1 jz1Var, fs2 fs2Var, Object obj) {
        lz1Var.getClass();
        if (jz1Var == null) {
            wz1Var.setDividerColor(335544320);
            wz1Var.setHorizontal(true);
        } else {
            wz1Var.setDividerColor(((Number) jz1Var.a.a(fs2Var)).intValue());
            wz1Var.setHorizontal(((iz1) jz1Var.b.a(fs2Var)) == iz1.HORIZONTAL);
        }
        return j59.a;
    }
}
