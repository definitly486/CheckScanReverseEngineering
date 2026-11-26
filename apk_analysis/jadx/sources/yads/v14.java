package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class v14 {
    public final by3 a;
    public final r96 b;
    public final List c;

    public v14(by3 by3Var, r96 r96Var, List list) {
        this.a = by3Var;
        this.b = r96Var;
        this.c = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v14)) {
            return false;
        }
        v14 v14Var = (v14) obj;
        return defpackage.aa4.e(this.a, v14Var.a) && defpackage.aa4.e(this.b, v14Var.b) && defpackage.aa4.e(this.c, v14Var.c);
    }

    public final int hashCode() {
        by3 by3Var = this.a;
        int iHashCode = (by3Var == null ? 0 : by3Var.hashCode()) * 31;
        r96 r96Var = this.b;
        int iHashCode2 = (iHashCode + (r96Var == null ? 0 : r96Var.hashCode())) * 31;
        List list = this.c;
        return iHashCode2 + (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        by3 by3Var = this.a;
        r96 r96Var = this.b;
        List list = this.c;
        StringBuilder sb = new StringBuilder("MediaValue(media=");
        sb.append(by3Var);
        sb.append(", video=");
        sb.append(r96Var);
        sb.append(", imageValues=");
        return defpackage.bg.e(")", list, sb);
    }
}
