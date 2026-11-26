package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class ga {
    public final boolean a;
    public final String b;
    public final String c;

    public ga(String str, String str2, boolean z) {
        this.a = z;
        this.b = str;
        this.c = str2;
    }

    public final String a() {
        return this.c;
    }

    public final String b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ga)) {
            return false;
        }
        ga gaVar = (ga) obj;
        return this.a == gaVar.a && defpackage.aa4.e(this.b, gaVar.b) && defpackage.aa4.e(this.c, gaVar.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + l4.a(Boolean.hashCode(this.a) * 31, 31, this.b);
    }

    public final String toString() {
        boolean z = this.a;
        String str = this.b;
        String str2 = this.c;
        StringBuilder sb = new StringBuilder("AdTuneInfo(shouldShow=");
        sb.append(z);
        sb.append(", token=");
        sb.append(str);
        sb.append(", advertiserInfo=");
        return defpackage.me0.d(sb, str2, ")");
    }
}
