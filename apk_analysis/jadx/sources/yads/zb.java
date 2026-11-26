package yads;

import android.content.Context;
import android.view.View;
import com.monetization.ads.core.divkit.DivKitFeature;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class zb implements w0 {
    public final sc a;
    public final rn1 b;
    public final ea c;
    public final l00 d;

    public zb(sc scVar, rn1 rn1Var, ea eaVar, l00 l00Var) {
        this.a = scVar;
        this.b = rn1Var;
        this.c = eaVar;
        this.d = l00Var;
    }

    @Override // yads.w0
    public final Object a(View view, u0 u0Var, c1 c1Var) {
        rp rpVar = (rp) u0Var;
        Iterator it = rpVar.b().iterator();
        while (it.hasNext()) {
            ea.a(this.c, (String) it.next(), i16.ADTUNE_CLICK, null, 12);
        }
        if (rpVar instanceof yb) {
            this.a.a(view, (yb) rpVar);
        } else if (rpVar instanceof nn1) {
            rn1 rn1Var = this.b;
            Context context = view.getContext();
            nn1 nn1Var = (nn1) rpVar;
            if (DivKitFeature.isEnabled() && !rn1.d) {
                rn1Var.a(rn1Var.b.a(context, nn1Var));
            }
        }
        l00 l00Var = this.d;
        l00Var.d.a(l00Var.a(e75.ADTUNE, new HashMap()));
        return new m83(false);
    }
}
