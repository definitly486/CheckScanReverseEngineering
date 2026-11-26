package defpackage;

import android.util.Base64;

/* JADX INFO: loaded from: classes.dex */
public abstract class s29 {

    public static abstract class a {
    }

    public static hz.a a() {
        hz.a aVar = new hz.a();
        ig6 ig6Var = ig6.DEFAULT;
        if (ig6Var != null) {
            aVar.c = ig6Var;
            return aVar;
        }
        o2.d("Null priority");
        return null;
    }

    public abstract String b();

    public abstract byte[] c();

    public abstract ig6 d();

    public final hz e(ig6 ig6Var) {
        hz.a aVarA = a();
        aVarA.b(b());
        if (ig6Var == null) {
            o2.d("Null priority");
            return null;
        }
        aVarA.c = ig6Var;
        aVarA.b = c();
        return aVarA.a();
    }

    public final String toString() {
        String strB = b();
        ig6 ig6VarD = d();
        String strEncodeToString = c() == null ? "" : Base64.encodeToString(c(), 2);
        StringBuilder sb = new StringBuilder("TransportContext(");
        sb.append(strB);
        sb.append(", ");
        sb.append(ig6VarD);
        sb.append(", ");
        return me0.d(sb, strEncodeToString, ")");
    }
}
