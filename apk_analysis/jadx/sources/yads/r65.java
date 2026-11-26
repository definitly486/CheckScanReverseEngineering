package yads;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;

/* JADX INFO: loaded from: classes6.dex */
public final class r65 implements Runnable {
    public final v65 b;
    public final Bitmap c;

    public r65(v65 v65Var, Bitmap bitmap) {
        this.b = v65Var;
        this.c = bitmap;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.b.setBackground(new BitmapDrawable(this.b.getResources(), this.c));
        this.b.setVisibility(0);
    }
}
