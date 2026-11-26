package yads;

import android.net.Uri;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class rq5 implements wc0 {
    public final wc0 a;
    public long b;
    public Uri c;

    public rq5(wc0 wc0Var) {
        wc0Var.getClass();
        this.a = wc0Var;
        this.c = Uri.EMPTY;
    }

    @Override // yads.wc0
    public final long a(bd0 bd0Var) {
        this.c = bd0Var.a;
        long jA = this.a.a(bd0Var);
        Uri uriD = this.a.d();
        uriD.getClass();
        this.c = uriD;
        this.a.b();
        return jA;
    }

    @Override // yads.wc0
    public final Map b() {
        return this.a.b();
    }

    @Override // yads.tc0
    public final int c(byte[] bArr, int i, int i2) {
        int iC = this.a.c(bArr, i, i2);
        if (iC != -1) {
            this.b += (long) iC;
        }
        return iC;
    }

    @Override // yads.wc0
    public final void close() {
        this.a.close();
    }

    @Override // yads.wc0
    public final Uri d() {
        return this.a.d();
    }

    @Override // yads.wc0
    public final void a(p16 p16Var) {
        p16Var.getClass();
        this.a.a(p16Var);
    }
}
