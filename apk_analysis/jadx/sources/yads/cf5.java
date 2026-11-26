package yads;

import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes6.dex */
public final class cf5 implements vc0 {
    public final String a;
    public final SSLSocketFactory b;

    public cf5(String str, SSLSocketFactory sSLSocketFactory) {
        this.a = str;
        this.b = sSLSocketFactory;
    }

    @Override // yads.vc0
    public final wc0 a() {
        return new af5(this.a, new ma3(), this.b);
    }
}
