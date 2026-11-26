package defpackage;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public enum ts6 {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2"),
    H2_PRIOR_KNOWLEDGE("h2_prior_knowledge"),
    QUIC("quic");

    public static final a Companion = new a();
    private final String protocol;

    public static final class a {
        public static ts6 a(String str) throws IOException {
            ts6 ts6Var = ts6.HTTP_1_0;
            if (str.equals(ts6Var.protocol)) {
                return ts6Var;
            }
            ts6 ts6Var2 = ts6.HTTP_1_1;
            if (str.equals(ts6Var2.protocol)) {
                return ts6Var2;
            }
            ts6 ts6Var3 = ts6.H2_PRIOR_KNOWLEDGE;
            if (str.equals(ts6Var3.protocol)) {
                return ts6Var3;
            }
            ts6 ts6Var4 = ts6.HTTP_2;
            if (str.equals(ts6Var4.protocol)) {
                return ts6Var4;
            }
            ts6 ts6Var5 = ts6.SPDY_3;
            if (str.equals(ts6Var5.protocol)) {
                return ts6Var5;
            }
            ts6 ts6Var6 = ts6.QUIC;
            if (str.equals(ts6Var6.protocol)) {
                return ts6Var6;
            }
            ki0.d("Unexpected protocol: ".concat(str));
            return null;
        }
    }

    ts6(String str) {
        this.protocol = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.protocol;
    }
}
