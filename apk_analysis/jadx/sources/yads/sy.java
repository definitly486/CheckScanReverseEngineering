package yads;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
public final class sy extends wp {
    public int[] i;
    public int[] j;

    @Override // yads.mm
    public final void a(ByteBuffer byteBuffer) {
        int[] iArr = this.j;
        iArr.getClass();
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        ByteBuffer byteBufferA = a(((iLimit - iPosition) / this.b.d) * this.c.d);
        while (iPosition < iLimit) {
            for (int i : iArr) {
                byteBufferA.putShort(byteBuffer.getShort((i * 2) + iPosition));
            }
            iPosition += this.b.d;
        }
        byteBuffer.position(iLimit);
        byteBufferA.flip();
    }

    @Override // yads.wp
    public final km b(km kmVar) throws lm {
        int[] iArr = this.i;
        if (iArr == null) {
            return km.e;
        }
        if (kmVar.c != 2) {
            throw new lm(kmVar);
        }
        boolean z = kmVar.b != iArr.length;
        int i = 0;
        while (i < iArr.length) {
            int i2 = iArr[i];
            if (i2 >= kmVar.b) {
                throw new lm(kmVar);
            }
            z |= i2 != i;
            i++;
        }
        return z ? new km(kmVar.a, iArr.length, 2) : km.e;
    }

    @Override // yads.wp
    public final void e() {
        this.j = this.i;
    }

    @Override // yads.wp
    public final void g() {
        this.j = null;
        this.i = null;
    }
}
