package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class vj6 implements ok2 {
    public static final /* synthetic */ defpackage.ze4[] c = {cb.a(vj6.class, "cacheListener", "getCacheListener()Lcom/monetization/ads/nativeads/video/cache/VideoCacheListener;", 0)};
    public static final List d;
    public static final List e;
    public static final List f;
    public final String a;
    public final e55 b;

    static {
        List listI = u96.i(3, 4);
        d = listI;
        List listI2 = u96.i(1, 5);
        e = listI2;
        f = defpackage.qn1.h0(listI2, listI);
    }

    public vj6(String str, vc6 vc6Var) {
        this.a = str;
        this.b = new e55(vc6Var);
    }
}
