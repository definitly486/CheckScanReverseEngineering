package defpackage;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes5.dex */
public final class qz8 extends j72<Bitmap> {
    public final /* synthetic */ c75.a b;

    public qz8(c75.a aVar) {
        this.b = aVar;
    }

    @Override // defpackage.wk8
    public final void onLoadCleared(Drawable drawable) {
        this.b.a();
    }

    @Override // defpackage.j72, defpackage.wk8
    public final void onLoadFailed(Drawable drawable) {
        this.b.a();
    }

    @Override // defpackage.wk8
    public final void onResourceReady(Object obj, k29 k29Var) {
        this.b.b((Bitmap) obj);
    }
}
