package yads;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes6.dex */
public final class un5 {
    public final xn5 a = new xn5();
    public final kn b = new kn();
    public final ys c = new ys();
    public wn5 d;

    public final void a(ImageView imageView, rd3 rd3Var, Drawable drawable) {
        boolean z = imageView.getWidth() > 0 && imageView.getHeight() > 0;
        View.OnLayoutChangeListener onLayoutChangeListener = this.d;
        if (onLayoutChangeListener != null) {
            imageView.removeOnLayoutChangeListener(onLayoutChangeListener);
        }
        wn5 wn5Var = new wn5(this.b, this.c, this.a, rd3Var, drawable);
        this.d = wn5Var;
        imageView.addOnLayoutChangeListener(wn5Var);
        if (imageView.getLayoutParams().width == -1 || imageView.getLayoutParams().height == -1 || imageView.getLayoutParams().width == -2 || imageView.getLayoutParams().height == -2) {
            imageView.setImageDrawable(drawable);
        }
        if (z) {
            wn5Var.a(imageView);
        }
    }

    public final void a(ImageView imageView) {
        imageView.removeOnLayoutChangeListener(this.d);
    }
}
