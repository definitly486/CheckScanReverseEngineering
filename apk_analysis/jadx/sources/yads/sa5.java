package yads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes6.dex */
public final class sa5 implements on0 {
    public final d9 a;
    public final i2 b;
    public final oa5 c;
    public final sj4 d;
    public final bx5 e;
    public final fo1 f;
    public n03 g;
    public qa5 h;

    public sa5(d9 d9Var, i2 i2Var, oa5 oa5Var, ve4 ve4Var, sj4 sj4Var, bx5 bx5Var, fo1 fo1Var) {
        this.a = d9Var;
        this.b = i2Var;
        this.c = oa5Var;
        this.d = sj4Var;
        this.e = bx5Var;
        this.f = fo1Var;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0040  */
    @Override // yads.on0
    public final void a(ViewGroup viewGroup) {
        boolean z;
        n03 si4Var;
        zg5 zg5Var;
        View viewFindViewWithTag = viewGroup.findViewWithTag(TJAdUnitConstants.String.CLOSE);
        if (viewFindViewWithTag != null) {
            qa5 qa5Var = new qa5(this);
            this.b.b.add(qa5Var);
            this.h = qa5Var;
            Context context = viewFindViewWithTag.getContext();
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
            if (fe5VarA != null) {
                z = fe5VarA.F;
            }
            tn0[] tn0VarArr = tn0.b;
            if (!"divkit".equals(this.a.k) || !z) {
                viewFindViewWithTag.setOnClickListener(new pa5(this.c));
            }
            viewFindViewWithTag.setVisibility(8);
            ra5 ra5Var = new ra5(viewFindViewWithTag);
            d9 d9Var = this.a;
            sj4 sj4Var = this.d;
            bx5 bx5Var = this.e;
            fo1 fo1Var = this.f;
            el4 el4Var = sj4Var.a;
            lm4 lm4Var = sj4Var.b;
            n03 n03Var = null;
            String str = fo1Var != null ? fo1Var.a : null;
            un0[] un0VarArr = un0.b;
            if (defpackage.aa4.e(str, "pack_shot") && bx5Var.d.a()) {
                si4Var = new si4(d9Var, ra5Var, bx5Var);
            } else if (el4Var != null) {
                si4Var = new cl4(d9Var, el4Var, ra5Var, bx5Var);
            } else if (lm4Var != null) {
                si4Var = new im4(lm4Var, ra5Var);
            } else {
                si4Var = bx5Var.d.a() ? new si4(d9Var, ra5Var, bx5Var) : null;
            }
            if (si4Var != null) {
                si4Var.start();
                n03Var = si4Var;
            }
            this.g = n03Var;
        }
    }

    @Override // yads.on0
    public final void c() {
        qa5 qa5Var = this.h;
        if (qa5Var != null) {
            this.b.b.remove(qa5Var);
        }
        n03 n03Var = this.g;
        if (n03Var != null) {
            n03Var.invalidate();
        }
    }
}
