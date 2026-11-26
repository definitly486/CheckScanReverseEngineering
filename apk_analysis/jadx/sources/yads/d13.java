package yads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import com.tapjoy.TJAdUnitConstants;
import defpackage.j59;
import defpackage.k57;
import defpackage.r57;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class d13 extends w93 implements p1 {
    public final n1 d;
    public final e4 e;
    public final o03 f;
    public final l5 g;
    public final t5 h;
    public final it5 i;
    public final l8 j;
    public final l1 k;
    public v03 l;

    public d13(Context context, d9 d9Var, e4 e4Var, bf5 bf5Var, o03 o03Var, l5 l5Var) {
        t5 t5Var = new t5();
        if (it5.b == null) {
            synchronized (it5.c) {
                try {
                    if (it5.b == null) {
                        it5.b = new it5();
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        it5 it5Var = it5.b;
        if (it5Var == null) {
            defpackage.ah.f("Required value was null.");
            throw null;
        }
        ah4 ah4Var = new ah4(e4Var);
        ah4Var.d = d9Var;
        do6 do6Var = (do6) bf5Var;
        Context context2 = do6Var.a;
        l8 l8Var = new l8(context, d9Var, e4Var, t5Var, ah4Var, mw.a(context2, context2));
        Context context3 = do6Var.a;
        l1 l1Var = new l1(mw.a(context3, context3), e4Var, d9Var);
        super(context, d9Var);
        this.d = new n1(context, e4Var, bf5Var, d9Var, this, null);
        this.e = e4Var;
        this.f = o03Var;
        this.g = l5Var;
        this.h = t5Var;
        this.i = it5Var;
        this.j = l8Var;
        this.k = l1Var;
        q2.b.a().a("window_type_fullscreen", new k2(bf5Var));
    }

    public void a(int i, Bundle bundle) {
        getClass().toString();
        if (i == 0) {
            this.h.a(s5.AD_RENDER);
            l8 l8Var = this.j;
            h75 h75VarA = l8Var.c.a();
            h75VarA.b(c75.a, "adapter");
            h75VarA.a.putAll(l8Var.e.a());
            sl5 sl5Var = l8Var.b.d.a;
            if (sl5Var != null) {
                h75VarA.b(sl5Var.b().b, "size_type");
                h75VarA.b(Integer.valueOf(sl5Var.getWidth()), TJAdUnitConstants.String.WIDTH);
                h75VarA.b(Integer.valueOf(sl5Var.getHeight()), TJAdUnitConstants.String.HEIGHT);
            }
            fe5 fe5Var = l8Var.f;
            if (fe5Var != null) {
                h75VarA.b(fe5Var.S, "banner_size_calculation_type");
            }
            c cVar = l8Var.a.i;
            h75VarA.b = cVar;
            e75 e75Var = e75.AD_LOADING_RESULT;
            l8Var.d.a(new g75("ad_rendering_result", defpackage.n05.n(h75VarA.a), cVar));
            v03 v03Var = this.l;
            if (v03Var != null) {
                v03Var.onAdShown();
                return;
            }
            return;
        }
        if (i == 16) {
            if (bundle == null) {
                a((j5) null);
                return;
            } else {
                Parcelable parcelable = bundle.getParcelable("impression_data_key");
                a(parcelable instanceof j5 ? (j5) parcelable : null);
                return;
            }
        }
        if (i == 17) {
            v03 v03Var2 = this.l;
            if (v03Var2 != null) {
                v03Var2.onAdClicked();
                return;
            }
            return;
        }
        if (i == 2) {
            this.k.b();
            return;
        }
        if (i == 3) {
            this.k.a();
            return;
        }
        if (i != 4) {
            if (i != 5) {
                b(i, bundle);
            }
        } else {
            this.i.a(dr3.SHOW, this);
            v03 v03Var3 = this.l;
            if (v03Var3 != null) {
                v03Var3.onAdDismissed();
            }
        }
    }

    public final void b(int i, Bundle bundle) {
        switch (i) {
            case 6:
                f();
                this.d.e();
                break;
            case 7:
                f();
                this.d.c();
                break;
            case 8:
                this.d.d();
                break;
            case 9:
                this.d.a();
                break;
        }
    }

    public final i70 d() {
        l5 l5Var = this.g;
        d9 d9Var = this.b;
        e4 e4Var = this.e;
        String adInfo = this.f.getAdInfo();
        String strA = this.f.a();
        List listB = this.f.b();
        l5Var.getClass();
        String str = d9Var.e;
        if (str == null && (str = e4Var.c.a) == null) {
            str = "";
        }
        return new i70(str, adInfo, strA, listB);
    }

    public abstract d13 e();

    public final void f() {
        v03 v03Var = this.l;
        if (v03Var != null) {
            v03Var.onAdClicked();
        }
    }

    @Override // yads.p1
    public final void onReturnedToApplication() {
    }

    public final Object a(Activity activity) {
        r57.a(z6.b);
        synchronized (this) {
        }
        t5 t5Var = this.h;
        s5 s5Var = s5.AD_RENDER;
        t5Var.a(s5Var, null);
        it5 it5Var = this.i;
        dr3 dr3Var = dr3.SHOW;
        it5Var.b(dr3Var, this);
        Object objA = this.f.a(e(), activity);
        if (k57.a(objA) != null) {
            this.h.a(s5Var);
            if (!ya.a(this)) {
                this.i.a(dr3Var, this);
                this.f.a(this.a);
                super.c();
            }
        }
        return objA;
    }

    public final void a(j5 j5Var) {
        v03 v03Var = this.l;
        if (v03Var != null) {
            v03Var.onImpression(j5Var);
        }
    }
}
