package defpackage;

import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes3.dex */
public abstract class j72<T> implements wk8<T> {
    private final int height;
    private c37 request;
    private final int width;

    public j72(int i, int i2) {
        if (!eb9.j(i, i2)) {
            fg.c(rz0.c(i, i2, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: ", " and height: "));
            throw null;
        }
        this.width = i;
        this.height = i2;
    }

    @Override // defpackage.wk8
    public final c37 getRequest() {
        return this.request;
    }

    @Override // defpackage.wk8
    public final void getSize(v18 v18Var) {
        v18Var.b(this.width, this.height);
    }

    @Override // defpackage.up4
    public void onDestroy() {
    }

    @Override // defpackage.wk8
    public void onLoadFailed(Drawable drawable) {
    }

    @Override // defpackage.wk8
    public void onLoadStarted(Drawable drawable) {
    }

    @Override // defpackage.up4
    public void onStart() {
    }

    @Override // defpackage.up4
    public void onStop() {
    }

    @Override // defpackage.wk8
    public final void removeCallback(v18 v18Var) {
    }

    @Override // defpackage.wk8
    public final void setRequest(c37 c37Var) {
        this.request = c37Var;
    }

    public j72() {
        this(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }
}
