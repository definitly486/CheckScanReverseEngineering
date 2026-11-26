package yads;

import android.view.View;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.dynamiclinks.DynamicLink;
import com.tapjoy.TJAdUnitConstants;
import java.util.Collection;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class xk {
    public final Collection a;
    public final jh4 b;

    public xk(Set set, int i) {
        Collection collection = (i & 1) != 0 ? defpackage.kx2.b : set;
        jh4 jh4Var = new jh4();
        this.a = collection;
        this.b = jh4Var;
    }

    public final ih4 a(View view, vd4 vd4Var) {
        jh4 jh4Var = this.b;
        gi4 gi4Var = gi4.CUSTOM;
        jh4Var.getClass();
        hh4 hh4Var = new hh4(view);
        hh4Var.d.put("age", vd4Var.h(view));
        hh4Var.d.put(TtmlNode.TAG_BODY, vd4Var.a(view));
        hh4Var.d.put("call_to_action", vd4Var.e(view));
        hh4Var.d.put(DynamicLink.Builder.KEY_DOMAIN, vd4Var.n(view));
        hh4Var.d.put("favicon", vd4Var.g(view));
        hh4Var.d.put("feedback", vd4Var.l(view));
        hh4Var.d.put("icon", vd4Var.o(view));
        hh4Var.d.put("media", vd4Var.c(view));
        hh4Var.b = vd4Var.b(view);
        hh4Var.c = vd4Var.k(view);
        hh4Var.d.put(FirebaseAnalytics.Param.PRICE, vd4Var.d(view));
        View viewI = vd4Var.i(view);
        if (!(viewI instanceof b45)) {
            viewI = null;
        }
        hh4Var.d.put("rating", viewI);
        hh4Var.d.put("review_count", vd4Var.p(view));
        hh4Var.d.put("sponsored", vd4Var.m(view));
        hh4Var.d.put(TJAdUnitConstants.String.TITLE, vd4Var.j(view));
        hh4Var.d.put("warning", vd4Var.f(view));
        for (String str : this.a) {
            View viewA = vd4Var.a(view, str);
            if (viewA != null) {
                hh4Var.d.put(str, viewA);
            }
        }
        return new ih4(hh4Var);
    }
}
