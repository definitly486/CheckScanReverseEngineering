package yads;

import android.net.Uri;

/* JADX INFO: loaded from: classes6.dex */
public final class bh2 {
    public final Uri a;
    public final String b;
    public final wg2 c;
    public final Long d;

    public bh2(Uri uri, String str, wg2 wg2Var, Long l) {
        this.a = uri;
        this.b = str;
        this.c = wg2Var;
        this.d = l;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bh2)) {
            return false;
        }
        bh2 bh2Var = (bh2) obj;
        return defpackage.aa4.e(this.a, bh2Var.a) && defpackage.aa4.e(this.b, bh2Var.b) && defpackage.aa4.e(this.c, bh2Var.c) && defpackage.aa4.e(this.d, bh2Var.d);
    }

    public final int hashCode() {
        int iA = l4.a(this.a.hashCode() * 31, 31, this.b);
        wg2 wg2Var = this.c;
        int iHashCode = (iA + (wg2Var == null ? 0 : wg2Var.hashCode())) * 31;
        Long l = this.d;
        return iHashCode + (l != null ? l.hashCode() : 0);
    }

    public final String toString() {
        return "DivVideoSource(url=" + this.a + ", mimeType=" + this.b + ", resolution=" + this.c + ", bitrate=" + this.d + ")";
    }
}
