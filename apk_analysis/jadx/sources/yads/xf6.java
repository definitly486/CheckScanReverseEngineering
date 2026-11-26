package yads;

import android.view.View;
import android.widget.ImageView;
import defpackage.ll3;

/* JADX INFO: loaded from: classes6.dex */
public final class xf6 implements View.OnAttachStateChangeListener {
    public final /* synthetic */ ImageView a;
    public final /* synthetic */ View b;

    public xf6(ImageView imageView, View view) {
        this.a = imageView;
        this.b = view;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.a.removeOnAttachStateChangeListener(this);
        ag6.a(this.b, (ll3) null);
    }
}
