package yads;

import android.view.ViewTreeObserver;
import defpackage.ll3;
import yads.pq4;

/* JADX INFO: loaded from: classes6.dex */
public abstract class pq4 {
    public static final sr4 a(ml2 ml2Var, final ll3 ll3Var) {
        return new sr4(new ViewTreeObserver.OnPreDrawListener() { // from class: x5a
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                return pq4.a(ll3Var);
            }
        }, ml2Var);
    }

    public static final boolean a(ll3 ll3Var) {
        return ((Boolean) ll3Var.invoke()).booleanValue();
    }
}
