package yads;

import android.net.Uri;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class k04 {
    public final Uri a;
    public final List b;
    public final String c;
    public final oe3 d;

    public k04(Uri uri, i04 i04Var, List list, String str, oe3 oe3Var) {
        this.a = uri;
        this.b = list;
        this.c = str;
        this.d = oe3Var;
        ke3 ke3VarF = oe3.f();
        if (oe3Var.size() <= 0) {
            ke3VarF.a();
        } else {
            ((n04) oe3Var.get(0)).a();
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k04)) {
            return false;
        }
        k04 k04Var = (k04) obj;
        return this.a.equals(k04Var.a) && u56.a((Object) null, (Object) null) && u56.a((Object) null, (Object) null) && u56.a((Object) null, (Object) null) && this.b.equals(k04Var.b) && u56.a(this.c, k04Var.c) && this.d.equals(k04Var.d) && u56.a((Object) null, (Object) null);
    }

    public final int hashCode() {
        int iHashCode = (this.b.hashCode() + (this.a.hashCode() * 923521)) * 31;
        String str = this.c;
        return (this.d.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31;
    }
}
