package defpackage;

import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes3.dex */
public final class qs2 extends o29<qs2, Drawable> {
    public static qs2 h() {
        qs2 qs2Var = new qs2();
        qs2Var.b = new bs2();
        return qs2Var;
    }

    @Override // defpackage.o29
    public final boolean equals(Object obj) {
        return (obj instanceof qs2) && super.equals(obj);
    }

    @Override // defpackage.o29
    public final int hashCode() {
        return this.b.hashCode();
    }
}
