package yads;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
public final class us extends mi0 {
    public long i;
    public int j;
    public int k;

    public us() {
        super(2);
        this.k = 32;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0042, code lost:
    
        if ((r0.remaining() + r3.position()) > 3072000) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(mi0 mi0Var) {
        if (mi0Var.b(1073741824)) {
            defpackage.mi2.b();
            return false;
        }
        if (mi0Var.b(268435456)) {
            defpackage.mi2.b();
            return false;
        }
        if (mi0Var.b(4)) {
            defpackage.mi2.b();
            return false;
        }
        int i = this.j;
        if (i > 0) {
            if (i < this.k && mi0Var.b(Integer.MIN_VALUE) == b(Integer.MIN_VALUE)) {
                ByteBuffer byteBuffer = mi0Var.d;
                if (byteBuffer != null && (r3 = this.d) != null) {
                }
            }
            return false;
        }
        int i2 = this.j;
        this.j = i2 + 1;
        if (i2 == 0) {
            this.f = mi0Var.f;
            if (mi0Var.b(1)) {
                this.b = 1;
            }
        }
        if (mi0Var.b(Integer.MIN_VALUE)) {
            this.b = Integer.MIN_VALUE;
        }
        ByteBuffer byteBuffer2 = mi0Var.d;
        if (byteBuffer2 != null) {
            c(byteBuffer2.remaining());
            this.d.put(byteBuffer2);
        }
        this.i = mi0Var.f;
        return true;
    }

    @Override // yads.mi0
    public final void b() {
        super.b();
        this.j = 0;
    }
}
