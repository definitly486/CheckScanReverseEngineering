package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: classes3.dex */
public final class me9 implements nl3<Throwable, j59> {
    public final /* synthetic */ oe9<View> b;
    public final /* synthetic */ ViewTreeObserver c;
    public final /* synthetic */ ne9 d;

    public me9(oe9<View> oe9Var, ViewTreeObserver viewTreeObserver, ne9 ne9Var) {
        this.b = oe9Var;
        this.c = viewTreeObserver;
        this.d = ne9Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(Throwable th) {
        this.b.c(this.c, this.d);
        return j59.a;
    }
}
