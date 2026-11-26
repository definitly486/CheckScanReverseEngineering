package defpackage;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes3.dex */
public abstract class l24<Z> extends qe9<ImageView, Z> {
    public Animatable d;

    public abstract void a(Z z);

    @Override // defpackage.qe9, defpackage.wk8
    public final void onLoadCleared(Drawable drawable) {
        super.onLoadCleared(drawable);
        Animatable animatable = this.d;
        if (animatable != null) {
            animatable.stop();
        }
        a(null);
        this.d = null;
        this.b.setImageDrawable(drawable);
    }

    @Override // defpackage.wk8
    public final void onLoadFailed(Drawable drawable) {
        a(null);
        this.d = null;
        this.b.setImageDrawable(drawable);
    }

    @Override // defpackage.wk8
    public final void onLoadStarted(Drawable drawable) {
        a(null);
        this.d = null;
        this.b.setImageDrawable(drawable);
    }

    @Override // defpackage.wk8
    public final void onResourceReady(Z z, k29<? super Z> k29Var) {
        if (k29Var != null && k29Var.a(z, this)) {
            if (!(z instanceof Animatable)) {
                this.d = null;
                return;
            }
            Animatable animatable = (Animatable) z;
            this.d = animatable;
            animatable.start();
            return;
        }
        a(z);
        if (!(z instanceof Animatable)) {
            this.d = null;
            return;
        }
        Animatable animatable2 = (Animatable) z;
        this.d = animatable2;
        animatable2.start();
    }

    @Override // defpackage.up4
    public final void onStart() {
        Animatable animatable = this.d;
        if (animatable != null) {
            animatable.start();
        }
    }

    @Override // defpackage.up4
    public final void onStop() {
        Animatable animatable = this.d;
        if (animatable != null) {
            animatable.stop();
        }
    }
}
