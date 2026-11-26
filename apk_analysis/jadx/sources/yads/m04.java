package yads;

import android.net.Uri;
import android.os.Bundle;

/* JADX INFO: loaded from: classes6.dex */
public final class m04 implements kv {
    public static final m04 d = new m04(new l04());
    public static final jv e = new defpackage.dh();
    public final Uri b;
    public final String c;

    public m04(l04 l04Var) {
        this.b = l04Var.a;
        this.c = l04Var.b;
    }

    public static m04 a(Bundle bundle) {
        l04 l04Var = new l04();
        l04Var.a = (Uri) bundle.getParcelable(Integer.toString(0, 36));
        l04Var.b = bundle.getString(Integer.toString(1, 36));
        l04Var.c = bundle.getBundle(Integer.toString(2, 36));
        return new m04(l04Var);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m04)) {
            return false;
        }
        m04 m04Var = (m04) obj;
        return u56.a(this.b, m04Var.b) && u56.a(this.c, m04Var.c);
    }

    public final int hashCode() {
        Uri uri = this.b;
        int iHashCode = (uri == null ? 0 : uri.hashCode()) * 31;
        String str = this.c;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }
}
