package yads;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewGroupKt;
import defpackage.zo7;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class sq implements View.OnLayoutChangeListener {
    public final /* synthetic */ ViewGroup b;
    public final /* synthetic */ List c;
    public final /* synthetic */ bj2 d;
    public final /* synthetic */ vq0 e;

    public sq(ViewGroup viewGroup, List list, bj2 bj2Var, vq0 vq0Var) {
        this.b = viewGroup;
        this.c = list;
        this.d = bj2Var;
        this.e = vq0Var;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        view.removeOnLayoutChangeListener(this);
        zo7<View> children = ViewGroupKt.getChildren(this.b);
        defpackage.pn1 pn1VarK = defpackage.qn1.K(this.c);
        children.getClass();
        Iterator<View> it = children.iterator();
        Iterator it2 = pn1VarK.a.iterator();
        while (it.hasNext() && it2.hasNext()) {
            View next = it.next();
            cn1 cn1Var = (cn1) it2.next();
            bj2.a(this.d, this.e, cn1Var.b, next, cn1Var.a);
        }
    }
}
