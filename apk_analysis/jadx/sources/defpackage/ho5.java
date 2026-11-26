package defpackage;

import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes3.dex */
public final class ho5 extends ns2<Drawable> {
    @Override // defpackage.e47
    public final Class<Drawable> a() {
        return this.b.getClass();
    }

    @Override // defpackage.e47
    public final int getSize() {
        T t = this.b;
        return Math.max(1, t.getIntrinsicHeight() * t.getIntrinsicWidth() * 4);
    }

    @Override // defpackage.e47
    public final void recycle() {
    }
}
