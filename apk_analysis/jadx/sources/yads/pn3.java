package yads;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.view.View;
import com.yandex.mobile.ads.banner.BannerAdView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public abstract class pn3 extends o05 {
    private final e4 b;
    private final do6 c;
    private final aw3 d;
    private final fw3 e;
    private final zg5 f;
    private final yn g;
    private final qn3 h;
    private final ArrayList i;
    private int j;
    private int k;

    public pn3(Context context, AttributeSet attributeSet, int i, e4 e4Var, do6 do6Var) {
        zg5 zg5Var;
        ee5.a.getClass();
        aw3 aw3VarA = ng3.a();
        fw3 fw3Var = new fw3(context);
        t5 t5Var = new t5();
        wn wnVar = new wn(context, e4Var, do6Var, t5Var);
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
        super(context, attributeSet, i);
        this.b = e4Var;
        this.c = do6Var;
        this.d = aw3VarA;
        this.e = fw3Var;
        this.f = zg5Var2;
        this.i = new ArrayList();
        fw3Var.a();
        yn ynVar = new yn(context, e4Var, (BannerAdView) this, wnVar, t5Var);
        this.g = ynVar;
        wnVar.b.e = new q8(e4Var);
        qn3 qn3VarA = tn3.a(this, ynVar);
        this.h = qn3VarA;
        qn3VarA.a(context, this);
    }

    private final void a(int i) {
        int i2 = ya.b;
        if (ya.a(this.g)) {
            return;
        }
        Iterator it = this.i.iterator();
        while (it.hasNext()) {
            ((yn) ((gh6) it.next())).m();
        }
    }

    public final void addVisibilityChangeListener(gh6 gh6Var) {
        this.i.add(gh6Var);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001c  */
    public final r70 b() {
        sl5 sl5Var;
        this.e.a();
        yn ynVar = this.g;
        d9 d9Var = ynVar.w;
        if (d9Var != null) {
            wx2 wx2VarC = d9Var.c();
            if (wx2VarC.c == 0 && wx2VarC.d == 0) {
                sl5Var = wx2VarC;
                sl5Var = wx2VarC;
                sl5Var = null;
            }
            if (sl5Var == null) {
                sl5Var = ynVar.c.d.a;
            }
        } else {
            sl5Var = ynVar.c.d.a;
        }
        if (sl5Var != null) {
            return new r70(sl5Var);
        }
        return null;
    }

    public final i70 c() {
        this.e.a();
        this.e.a();
        go goVar = this.g.N;
        String strC = goVar != null ? goVar.c() : null;
        if (strC == null) {
            strC = "";
        }
        this.e.a();
        go goVar2 = this.g.N;
        String adInfo = goVar2 != null ? goVar2.getAdInfo() : null;
        this.e.a();
        go goVar3 = this.g.N;
        String strA = goVar3 != null ? goVar3.a() : null;
        this.e.a();
        go goVar4 = this.g.N;
        List listB = goVar4 != null ? goVar4.b() : null;
        if (listB == null) {
            listB = defpackage.kx2.b;
        }
        return new i70(strC, adInfo, strA, listB);
    }

    public final gd6 d() {
        this.e.a();
        return this.g.G;
    }

    public final e4 getAdConfiguration$mobileads_externalRelease() {
        return this.b;
    }

    public final int getHeightMeasureSpec$mobileads_externalRelease() {
        return this.k;
    }

    public final bf5 getSdkEnvironmentModule$mobileads_externalRelease() {
        return this.c;
    }

    public final int getWidthMeasureSpec$mobileads_externalRelease() {
        return this.j;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        getClass().toString();
        qn3 qn3Var = this.h;
        getContext();
        qn3Var.onAttachedToWindow();
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0035  */
    /* JADX WARN: Code duplicated, block: B:18:0x003b  */
    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        n8 n8Var;
        int i;
        super.onConfigurationChanged(configuration);
        int i2 = ya.b;
        if (!ya.a(this.g)) {
            yn ynVar = this.g;
            d9 d9Var = ynVar.w;
            wx2 wx2VarC = d9Var != null ? d9Var.c() : null;
            if (wx2VarC != null) {
                sl5 sl5Var = ynVar.c.d.a;
                d9 d9Var2 = ynVar.w;
                i = 0;
                if (!((d9Var2 == null || sl5Var == null) ? false : ul5.a(ynVar.a, d9Var2, wx2VarC, ynVar.H, sl5Var))) {
                    n8Var = this.b.e;
                    if (n8Var != null) {
                        a(n8Var);
                    }
                    i = 8;
                }
            } else {
                n8Var = this.b.e;
                if (n8Var != null) {
                    a(n8Var);
                }
                i = 8;
            }
            setVisibility(i);
        }
        Objects.toString(configuration);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getClass().toString();
        qn3 qn3Var = this.h;
        getContext();
        qn3Var.onDetachedFromWindow();
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.j = i;
        this.k = i2;
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (this.f == null) {
            return;
        }
        Objects.toString(view);
        fe5 fe5VarA = this.f.a(getContext());
        if (fe5VarA == null || !fe5VarA.F0()) {
            a(i);
        } else if (this == view) {
            a(i);
        }
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        getVisibility();
        a((i == 0 && getVisibility() == 0) ? 0 : 8);
    }

    public final void removeVisibilityChangeListener(gh6 gh6Var) {
        this.i.remove(gh6Var);
    }

    public final void a(n8 n8Var) {
        this.e.a();
        this.d.a(new defpackage.zt(1, this, n8Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(pn3 pn3Var, n8 n8Var) {
        yn ynVar = pn3Var.g;
        ynVar.c.a(n8Var.a);
        pn3Var.g.b(n8Var);
    }

    public final void a(pm6 pm6Var) {
        this.e.a();
        yn ynVar = this.g;
        wn wnVar = ynVar.F;
        ynVar.v = wnVar;
        wnVar.c = pm6Var;
        wnVar.b.a(pm6Var);
    }

    public final void a(r70 r70Var) {
        this.e.a();
        yn ynVar = this.g;
        ynVar.c.a(r70Var.a);
    }
}
