package defpackage;

import androidx.webkit.ProxyConfig;

/* JADX INFO: loaded from: classes5.dex */
public final class hv3 {
    public static final zu3 a;
    public static final zu3 b;
    public static final zu3 c;
    public static final zu3 d;
    public static final zu3 e;
    public static final zu3 f;

    static {
        gx0 gx0Var = zu3.g;
        a = new zu3(gx0Var, ProxyConfig.MATCH_HTTPS);
        b = new zu3(gx0Var, ProxyConfig.MATCH_HTTP);
        gx0 gx0Var2 = zu3.e;
        c = new zu3(gx0Var2, "POST");
        d = new zu3(gx0Var2, "GET");
        e = new zu3(vs3.i.a, "application/grpc");
        f = new zu3("te", "trailers");
    }
}
