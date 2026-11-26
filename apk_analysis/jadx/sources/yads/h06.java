package yads;

import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
public final class h06 {
    public final WeakReference a;
    public final a16 b;
    public final g66 c;

    public h06(WeakReference weakReference, a16 a16Var, g66 g66Var) {
        this.a = weakReference;
        this.b = a16Var;
        this.c = g66Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h06)) {
            return false;
        }
        h06 h06Var = (h06) obj;
        return defpackage.aa4.e(this.a, h06Var.a) && defpackage.aa4.e(this.b, h06Var.b) && defpackage.aa4.e(this.c, h06Var.c);
    }

    public final int hashCode() {
        return this.c.a.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "TrackNoticeObject(manager=" + this.a + ", notice=" + this.b + ", validationResult=" + this.c + ")";
    }
}
