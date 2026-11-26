package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class r96 {
    public final List a;
    public final we6 b;
    public final rd3 c;

    public r96(List list, we6 we6Var, rd3 rd3Var) {
        this.a = list;
        this.b = we6Var;
        this.c = rd3Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r96)) {
            return false;
        }
        r96 r96Var = (r96) obj;
        return defpackage.aa4.e(this.a, r96Var.a) && defpackage.aa4.e(this.b, r96Var.b) && defpackage.aa4.e(this.c, r96Var.c);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        we6 we6Var = this.b;
        int iHashCode2 = (iHashCode + (we6Var == null ? 0 : we6Var.hashCode())) * 31;
        rd3 rd3Var = this.c;
        return iHashCode2 + (rd3Var != null ? rd3Var.hashCode() : 0);
    }

    public final String toString() {
        return "Video(videoAdsInfo=" + this.a + ", videoSettings=" + this.b + ", preview=" + this.c + ")";
    }
}
