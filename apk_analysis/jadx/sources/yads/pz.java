package yads;

import android.view.View;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class pz {
    public final nn0 a;
    public ek b;

    public pz(nn0 nn0Var) {
        this.a = nn0Var;
    }

    public final void a(View view, String str) {
        View.OnClickListener onClickListener;
        ek ekVar = this.b;
        if (ekVar == null || (onClickListener = (View.OnClickListener) ekVar.g.get(str)) == null) {
            return;
        }
        onClickListener.onClick(view);
    }

    public final void b(View view, String str) {
        Object next;
        ek ekVar = this.b;
        if (ekVar != null) {
            Iterator it = ekVar.a.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!defpackage.aa4.e(((ak) next).a, "media"));
            ak akVar = (ak) next;
            if (akVar == null) {
                return;
            }
            ot3 ot3Var = akVar.d;
            if (ot3Var == null && (ot3Var = ekVar.f) == null) {
                return;
            }
            a4 a4Var = ekVar.b;
            dh4 dh4Var = ekVar.c;
            l65 l65Var = ekVar.d;
            we3 we3Var = ekVar.e;
            ot3 ot3Var2 = new ot3(ot3Var.a, ot3Var.b, ot3Var.c, str, ot3Var.e, false);
            dh4Var.a.getClass();
            new kf4(akVar, a4Var, dh4Var, l65Var, ot3Var2, we3Var).onClick(view);
        }
    }
}
