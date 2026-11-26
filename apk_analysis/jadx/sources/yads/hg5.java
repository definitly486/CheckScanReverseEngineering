package yads;

import android.content.Context;
import android.view.ViewTreeObserver;
import androidx.media3.extractor.ts.PsExtractor;
import com.yandex.mobile.ads.R$layout;
import com.yandex.mobile.ads.banner.BannerAdView;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.yr;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class hg5 extends pg8 implements defpackage.bm3 {
    public final /* synthetic */ lg5 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hg5(lg5 lg5Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.b = lg5Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new hg5(this.b, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new hg5(this.b, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x006e  */
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        pg4 pg4Var;
        jo joVar;
        ViewTreeObserver.OnPreDrawListener onPreDrawListener;
        on0 hf4Var;
        pg4 pg4Var2;
        c81 c81VarA;
        fo1 fo1Var;
        Object next;
        String str;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        lg5 lg5Var = this.b;
        if (lg5Var.r) {
            lg5Var.a.b(o8.f);
        } else {
            d9 d9Var = lg5Var.p;
            yn ynVar = lg5Var.a;
            BannerAdView bannerAdView = ynVar.E;
            if (d9Var != null && (pg4Var = lg5Var.q) != null) {
                qo qoVar = lg5Var.d;
                Context context = lg5Var.n;
                di4 di4Var = lg5Var.g;
                ViewTreeObserver.OnPreDrawListener onPreDrawListener2 = lg5Var.o;
                gd6 gd6Var = ynVar.G;
                c60 c60Var = lg5Var.l;
                mr3 mr3Var = null;
                mr3 mr3VarA = qoVar.b.a(context, d9Var, pg4Var, di4Var, null, null);
                ko koVar = qoVar.a;
                if (koVar.c.a(context)) {
                    List listF = pg4Var.f();
                    if (listF != null) {
                        Iterator it = listF.iterator();
                        do {
                            if (!it.hasNext()) {
                                next = null;
                                break;
                            }
                            next = it.next();
                            str = ((fo1) next).a;
                            un0[] un0VarArr = un0.b;
                        } while (!defpackage.aa4.e(str, "ad"));
                        fo1Var = (fo1) next;
                    } else {
                        fo1Var = null;
                    }
                    if (fo1Var != null) {
                        joVar = new jo(fo1Var, koVar.a, koVar.b);
                    } else {
                        joVar = null;
                    }
                } else {
                    joVar = null;
                }
                if (joVar != null) {
                    pz pzVar = new pz(joVar.a.h);
                    io ioVar = new io();
                    Context context2 = ((do6) joVar.c).a;
                    q84 q84VarA = mw.a(context2, context2);
                    joVar.d.getClass();
                    boolean z = pg4Var instanceof ni4;
                    if (z) {
                        onPreDrawListener = onPreDrawListener2;
                        hf4Var = new um5((ni4) pg4Var, c60Var, di4Var, pzVar, q84VarA);
                        pg4Var2 = pg4Var;
                    } else {
                        onPreDrawListener = onPreDrawListener2;
                        pg4Var2 = pg4Var;
                        hf4Var = new hf4(pg4Var2, c60Var, di4Var, pzVar, q84VarA);
                    }
                    vn1 vn1Var = new vn1(pzVar);
                    d81 d81Var = joVar.e;
                    fo1 fo1Var2 = joVar.a;
                    d81Var.getClass();
                    if (z) {
                        ym5 ym5Var = new ym5(d81Var.a);
                        ym5Var.a(fo1Var2, (ni4) pg4Var2);
                        c81VarA = zm5.a(context, ym5Var, vn1Var);
                    } else {
                        c81VarA = (c81) new eo1(context, vn1Var, (kb0) null).d.getValue();
                    }
                    c81 c81Var = c81VarA;
                    jo joVar2 = joVar;
                    kn1 kn1Var = new kn1(context, joVar.b, joVar.c, d9Var, c60Var, ioVar, vn1Var);
                    d9Var = d9Var;
                    v40 v40Var = new v40(new un1(joVar2.a.e, kn1Var, c81Var, q84VarA, new yx2(), PsExtractor.AUDIO_STREAM), hf4Var, new ei4(pg4Var2.d(), gd6Var));
                    ho1 ho1Var = new ho1(d9Var);
                    pr3 pr3Var = joVar2.f;
                    int i = R$layout.monetization_ads_internal_divkit;
                    pr3Var.getClass();
                    mr3Var = new mr3(i, v40Var, ho1Var);
                } else {
                    onPreDrawListener = onPreDrawListener2;
                }
                po poVar = new po(new oo(context, bannerAdView, yr.G(new mr3[]{mr3VarA, mr3Var}), onPreDrawListener));
                lg5Var.s = poVar;
                poVar.a(d9Var.c(), new kg5(lg5Var));
            }
        }
        return j59.a;
    }
}
