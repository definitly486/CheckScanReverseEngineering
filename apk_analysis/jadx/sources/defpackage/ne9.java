package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: classes3.dex */
public final class ne9 implements ViewTreeObserver.OnPreDrawListener {
    public boolean b;
    public final /* synthetic */ oe9<View> c;
    public final /* synthetic */ ViewTreeObserver d;
    public final /* synthetic */ c31 e;

    public ne9(oe9 oe9Var, ViewTreeObserver viewTreeObserver, c31 c31Var) {
        this.c = oe9Var;
        this.d = viewTreeObserver;
        this.e = c31Var;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        oe9<View> oe9Var = this.c;
        t18 size = oe9Var.getSize();
        if (size != null) {
            oe9Var.c(this.d, this);
            if (!this.b) {
                this.b = true;
                this.e.resumeWith(size);
            }
        }
        return true;
    }
}
