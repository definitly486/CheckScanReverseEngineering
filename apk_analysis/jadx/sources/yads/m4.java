package yads;

import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public final class m4 {
    public final int a;
    public final String b;
    public final String c;
    public final String d;

    public m4(int i, String str, String str2, String str3) {
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m4)) {
            return false;
        }
        m4 m4Var = (m4) obj;
        return this.a == m4Var.a && defpackage.aa4.e(this.b, m4Var.b) && defpackage.aa4.e(this.c, m4Var.c) && defpackage.aa4.e(this.d, m4Var.d);
    }

    public final int hashCode() {
        int iA = l4.a(l4.a(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c);
        String str = this.d;
        return iA + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return String.format(Locale.US, "AdFetchRequestError (code: %d, description: %s, adUnitId: %s, display_message: %s)", Arrays.copyOf(new Object[]{Integer.valueOf(this.a), this.b, this.d, this.c}, 4));
    }
}
