package yads;

import android.graphics.Bitmap;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes6.dex */
public final class sf0 implements yc3 {
    public final /* synthetic */ ImageView a;

    public sf0(ImageView imageView) {
        this.a = imageView;
    }

    @Override // yads.yc3
    public final void a(xc3 xc3Var, boolean z) {
        Bitmap bitmap = xc3Var.a;
        if (bitmap != null) {
            this.a.setImageBitmap(bitmap);
        }
    }

    @Override // yads.x85
    public final void a(hi6 hi6Var) {
    }
}
