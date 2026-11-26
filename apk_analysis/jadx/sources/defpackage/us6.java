package defpackage;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public enum us6 {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2");

    private final String protocol;

    us6(String str) {
        this.protocol = str;
    }

    public static us6 a(String str) throws IOException {
        us6 us6Var = HTTP_1_0;
        if (str.equals(us6Var.protocol)) {
            return us6Var;
        }
        us6 us6Var2 = HTTP_1_1;
        if (str.equals(us6Var2.protocol)) {
            return us6Var2;
        }
        us6 us6Var3 = HTTP_2;
        if (str.equals(us6Var3.protocol)) {
            return us6Var3;
        }
        us6 us6Var4 = SPDY_3;
        if (str.equals(us6Var4.protocol)) {
            return us6Var4;
        }
        ki0.d("Unexpected protocol: ".concat(str));
        return null;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.protocol;
    }
}
