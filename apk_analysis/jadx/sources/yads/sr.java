package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class sr {
    public final String a;
    public final List b;
    public final boolean c;

    public sr(String str, List list, boolean z) {
        this.a = str;
        this.b = list;
        this.c = z;
    }

    public final boolean a() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sr)) {
            return false;
        }
        sr srVar = (sr) obj;
        return defpackage.aa4.e(this.a, srVar.a) && defpackage.aa4.e(this.b, srVar.b) && this.c == srVar.c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.c) + defpackage.e2.b(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        String str = this.a;
        List list = this.b;
        boolean z = this.c;
        StringBuilder sb = new StringBuilder("MaskData(pattern=");
        sb.append(str);
        sb.append(", decoding=");
        sb.append(list);
        sb.append(", alwaysVisible=");
        return defpackage.dh.e(sb, z, ")");
    }
}
