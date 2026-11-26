package yads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import defpackage.ps7;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class uu5 extends nr implements gq {
    public fq I;
    public List J;
    public qg6 K;
    public String L;
    public x52 M;
    public su5 N;
    public boolean O;

    public uu5(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.O = false;
        setTabMode(0);
        setTabIndicatorHeight(0);
        setOnTabSelectedListener(new ru5(this));
        a35 a35Var = new a35();
        a35Var.a.put("TabTitlesLayoutView.TAB_HEADER", new tu5(getContext()));
        this.K = a35Var;
        this.L = "TabTitlesLayoutView.TAB_HEADER";
    }

    @Override // yads.nr
    public final xu5 a(Context context) {
        return (xu5) this.K.a(this.L);
    }

    @Override // yads.nr, android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean zDispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
        if (motionEvent.getAction() == 0) {
            this.O = true;
        }
        return zDispatchTouchEvent;
    }

    @Override // yads.nr, android.view.View
    public final void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        su5 su5Var = this.N;
        if (su5Var == null || !this.O) {
            return;
        }
        ps7 ps7Var = (ps7) su5Var;
        c62.a((c62) ps7Var.b, (tt) ps7Var.c);
        this.O = false;
    }

    @Override // yads.gq
    public void setData(List<? extends kq> list, int i, fs2 fs2Var, hs2 hs2Var) {
        this.J = list;
        e();
        int size = list.size();
        if (i < 0 || i >= size) {
            i = 0;
        }
        int i2 = 0;
        while (i2 < size) {
            kr krVarC = c();
            t02 t02Var = (t02) list.get(i2);
            krVarC.a = (String) t02Var.a.b.a(t02Var.c);
            xu5 xu5Var = krVarC.d;
            if (xu5Var != null) {
                kr krVar = xu5Var.j;
                xu5Var.setText(krVar == null ? null : krVar.a);
                wu5 wu5Var = xu5Var.i;
                if (wu5Var != null) {
                    ((defpackage.y3) wu5Var).b(xu5Var);
                }
            }
            xu5 xu5Var2 = krVarC.d;
            x52 x52Var = this.M;
            if (x52Var != null) {
                d62.a(xu5Var2, x52Var, fs2Var, hs2Var);
            }
            a(krVarC, i2 == i);
            i2++;
        }
    }

    @Override // yads.gq
    public void setHost(fq fqVar) {
        this.I = fqVar;
    }

    @Override // yads.gq
    public void setIntermediateState(int i, float f) {
    }

    public void setOnScrollChangedListener(su5 su5Var) {
        this.N = su5Var;
    }

    public void setTabColors(int i, int i2, int i3, int i4) {
        setTabTextColors(i3, i);
        setSelectedTabIndicatorColor(i2);
        setTabBackgroundColor(i4);
    }

    public void setTabTitleStyle(x52 x52Var) {
        this.M = x52Var;
    }

    @Override // yads.gq
    public void setTypefaceProvider(cf2 cf2Var) {
        this.j = cf2Var;
    }

    @Override // yads.gq
    public void setViewPool(qg6 qg6Var, String str) {
        this.K = qg6Var;
        this.L = str;
    }

    public uu5(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public uu5(Context context) {
        this(context, null, 0);
    }
}
