package yads;

import android.app.Activity;
import android.content.Context;
import androidx.lifecycle.LifecycleOwner;
import com.yandex.mobile.ads.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class io1 implements k13 {
    public final fo1 a;
    public final e4 b;
    public final bf5 c;
    public final v40 d;
    public final x2 e;
    public final ln1 f;
    public final int g;
    public final d81 h;

    public io1(fo1 fo1Var, e4 e4Var, bf5 bf5Var, v40 v40Var, x2 x2Var, ln1 ln1Var, int i) {
        Context context = ((do6) bf5Var).a;
        d81 d81Var = new d81(mw.a(context, context));
        this.a = fo1Var;
        this.b = e4Var;
        this.c = bf5Var;
        this.d = v40Var;
        this.e = x2Var;
        this.f = ln1Var;
        this.g = i;
        this.h = d81Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // yads.k13
    public final mr3 a(Activity activity, d9 d9Var, pg4 pg4Var, m2 m2Var, h80 h80Var) {
        c81 c81VarA;
        fo1 fo1Var = this.a;
        pz pzVar = new pz(fo1Var.h);
        vn1 vn1Var = new vn1(pzVar);
        d81 d81Var = this.h;
        d81Var.getClass();
        if (pg4Var instanceof ni4) {
            ym5 ym5Var = new ym5(d81Var.a);
            ym5Var.a(fo1Var, (ni4) pg4Var);
            c81VarA = zm5.a(activity, ym5Var, vn1Var);
        } else {
            c81VarA = (c81) new eo1(activity, vn1Var, (kb0) null).d.getValue();
        }
        c81 c81Var = c81VarA;
        kn1 kn1Var = new kn1(activity, this.b, this.c, d9Var, m2Var, this.f, vn1Var);
        Context context = ((do6) this.c).a;
        q84 q84VarA = mw.a(context, context);
        return new mr3(R$layout.monetization_ads_internal_divkit, new v40(new l85(this.e, this.g), new un1(this.a.e, kn1Var, c81Var, q84VarA, activity instanceof LifecycleOwner ? (LifecycleOwner) activity : null, 208), new e13(pg4Var, m2Var, h80Var, pzVar, q84VarA), this.d), new ho1(d9Var));
    }
}
