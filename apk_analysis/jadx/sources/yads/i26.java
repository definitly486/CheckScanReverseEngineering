package yads;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
public final class i26 extends wp {
    public int i;
    public int j;
    public boolean k;
    public int l;
    public byte[] m = u56.f;
    public int n;
    public long o;

    @Override // yads.mm
    public final void a(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i = iLimit - iPosition;
        if (i == 0) {
            return;
        }
        int iMin = Math.min(i, this.l);
        this.o += (long) (iMin / this.b.d);
        this.l -= iMin;
        byteBuffer.position(iPosition + iMin);
        if (this.l > 0) {
            return;
        }
        int i2 = i - iMin;
        int length = (this.n + i2) - this.m.length;
        ByteBuffer byteBufferA = a(length);
        int i3 = this.n;
        int i4 = u56.a;
        int iMax = Math.max(0, Math.min(length, i3));
        byteBufferA.put(this.m, 0, iMax);
        int iMax2 = Math.max(0, Math.min(length - iMax, i2));
        byteBuffer.limit(byteBuffer.position() + iMax2);
        byteBufferA.put(byteBuffer);
        byteBuffer.limit(iLimit);
        int i5 = i2 - iMax2;
        int i6 = this.n - iMax;
        this.n = i6;
        byte[] bArr = this.m;
        System.arraycopy(bArr, iMax, bArr, 0, i6);
        byteBuffer.get(this.m, this.n, i5);
        this.n += i5;
        byteBufferA.flip();
    }

    @Override // yads.wp
    public final km b(km kmVar) throws lm {
        if (kmVar.c != 2) {
            throw new lm(kmVar);
        }
        this.k = true;
        return (this.i == 0 && this.j == 0) ? km.e : kmVar;
    }

    @Override // yads.wp, yads.mm
    public final boolean c() {
        return super.c() && this.n == 0;
    }

    @Override // yads.wp
    public final void e() {
        if (this.k) {
            this.k = false;
            int i = this.j;
            int i2 = this.b.d;
            this.m = new byte[i * i2];
            this.l = this.i * i2;
        }
        this.n = 0;
    }

    @Override // yads.wp
    public final void f() {
        if (this.k) {
            int i = this.n;
            if (i > 0) {
                this.o += (long) (i / this.b.d);
            }
            this.n = 0;
        }
    }

    @Override // yads.wp
    public final void g() {
        this.m = u56.f;
    }

    @Override // yads.wp, yads.mm
    public final ByteBuffer a() {
        int i;
        if (super.c() && (i = this.n) > 0) {
            a(i).put(this.m, 0, this.n).flip();
            this.n = 0;
        }
        ByteBuffer byteBuffer = this.g;
        this.g = mm.a;
        return byteBuffer;
    }
}
