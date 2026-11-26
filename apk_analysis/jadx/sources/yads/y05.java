package yads;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import android.widget.ProgressBar;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final class y05 implements defpackage.id3 {
    public final /* synthetic */ ImageView a;
    public final /* synthetic */ ProgressBar b;

    public y05(ImageView imageView, ProgressBar progressBar) {
        this.a = imageView;
        this.b = progressBar;
    }

    @Override // defpackage.id3
    public final Object emit(Object obj, defpackage.e02 e02Var) {
        Drawable drawable = (Drawable) obj;
        if (drawable != null) {
            ImageView imageView = this.a;
            imageView.setImageDrawable(drawable);
            imageView.setVisibility(0);
        } else {
            this.b.setVisibility(0);
        }
        return j59.a;
    }
}
