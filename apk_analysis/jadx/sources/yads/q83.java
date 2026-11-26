package yads;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes6.dex */
public final class q83 {
    public final String a;
    public final String b;

    public q83(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && q83.class == obj.getClass()) {
            q83 q83Var = (q83) obj;
            if (TextUtils.equals(this.a, q83Var.a) && TextUtils.equals(this.b, q83Var.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Header[name=");
        sb.append(this.a);
        sb.append(",value=");
        return defpackage.me0.d(sb, this.b, "]");
    }
}
