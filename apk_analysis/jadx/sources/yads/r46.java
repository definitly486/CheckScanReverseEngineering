package yads;

import android.graphics.Bitmap;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes6.dex */
public final class r46 {
    public final tn4 a;

    public r46(tn4 tn4Var, zb3 zb3Var) {
        this.a = tn4Var;
    }

    public final Bitmap a(String str) {
        return (Bitmap) this.a.get(zb3.a(str, ImageView.ScaleType.CENTER_INSIDE));
    }

    public final void a(String str, Bitmap bitmap) {
        this.a.put(zb3.a(str, ImageView.ScaleType.CENTER_INSIDE), bitmap);
    }
}
