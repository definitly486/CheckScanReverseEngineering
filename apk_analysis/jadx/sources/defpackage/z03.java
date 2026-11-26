package defpackage;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class z03 {

    public static abstract class a {
        public final void a(String str, String str2) {
            HashMap map = ((sy.a) this).f;
            if (map != null) {
                map.put(str, str2);
            } else {
                ah.f("Property \"autoMetadata\" has not been set");
            }
        }
    }

    public final String a(String str) {
        String str2 = b().get(str);
        return str2 == null ? "" : str2;
    }

    public abstract Map<String, String> b();

    public abstract Integer c();

    public abstract sx2 d();

    public abstract long e();

    public abstract byte[] f();

    public abstract byte[] g();

    public final int h(String str) {
        String str2 = b().get(str);
        if (str2 == null) {
            return 0;
        }
        return Integer.valueOf(str2).intValue();
    }

    public abstract Integer i();

    public abstract String j();

    public abstract String k();

    public abstract long l();

    public final sy.a m() {
        sy.a aVar = new sy.a();
        String strK = k();
        if (strK == null) {
            o2.d("Null transportName");
            return null;
        }
        aVar.a = strK;
        aVar.b = c();
        aVar.g = i();
        aVar.h = j();
        aVar.i = f();
        aVar.j = g();
        sx2 sx2VarD = d();
        if (sx2VarD == null) {
            o2.d("Null encodedPayload");
            return null;
        }
        aVar.c = sx2VarD;
        aVar.d = Long.valueOf(e());
        aVar.e = Long.valueOf(l());
        aVar.f = new HashMap(b());
        return aVar;
    }
}
