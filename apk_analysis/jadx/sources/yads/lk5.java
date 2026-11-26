package yads;

import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
public final class lk5 extends wp {
    public final long i = 150000;
    public final long j = 20000;
    public final short k = SilenceSkippingAudioProcessor.DEFAULT_SILENCE_THRESHOLD_LEVEL;
    public int l;
    public boolean m;
    public byte[] n;
    public byte[] o;
    public int p;
    public int q;
    public int r;
    public boolean s;
    public long t;

    public lk5() {
        byte[] bArr = u56.f;
        this.n = bArr;
        this.o = bArr;
    }

    @Override // yads.mm
    public final void a(ByteBuffer byteBuffer) {
        int iLimit;
        int iLimit2;
        int iPosition;
        while (byteBuffer.hasRemaining() && !this.g.hasRemaining()) {
            int i = this.p;
            if (i == 0) {
                int iLimit3 = byteBuffer.limit();
                byteBuffer.limit(Math.min(iLimit3, byteBuffer.position() + this.n.length));
                int iLimit4 = byteBuffer.limit() - 2;
                while (true) {
                    if (iLimit4 < byteBuffer.position()) {
                        iPosition = byteBuffer.position();
                        break;
                    } else {
                        if (Math.abs((int) byteBuffer.getShort(iLimit4)) > this.k) {
                            int i2 = this.l;
                            iPosition = ((iLimit4 / i2) * i2) + i2;
                            break;
                        }
                        iLimit4 -= 2;
                    }
                }
                if (iPosition == byteBuffer.position()) {
                    this.p = 1;
                } else {
                    byteBuffer.limit(iPosition);
                    int iRemaining = byteBuffer.remaining();
                    a(iRemaining).put(byteBuffer).flip();
                    if (iRemaining > 0) {
                        this.s = true;
                    }
                }
                byteBuffer.limit(iLimit3);
            } else if (i == 1) {
                int iLimit5 = byteBuffer.limit();
                int iPosition2 = byteBuffer.position();
                while (true) {
                    if (iPosition2 >= byteBuffer.limit()) {
                        iLimit2 = byteBuffer.limit();
                        break;
                    } else {
                        if (Math.abs((int) byteBuffer.getShort(iPosition2)) > this.k) {
                            int i3 = this.l;
                            iLimit2 = (iPosition2 / i3) * i3;
                            break;
                        }
                        iPosition2 += 2;
                    }
                }
                int iPosition3 = iLimit2 - byteBuffer.position();
                byte[] bArr = this.n;
                int length = bArr.length;
                int i4 = this.q;
                int i5 = length - i4;
                if (iLimit2 >= iLimit5 || iPosition3 >= i5) {
                    int iMin = Math.min(iPosition3, i5);
                    byteBuffer.limit(byteBuffer.position() + iMin);
                    byteBuffer.get(this.n, this.q, iMin);
                    int i6 = this.q + iMin;
                    this.q = i6;
                    byte[] bArr2 = this.n;
                    if (i6 == bArr2.length) {
                        if (this.s) {
                            int i7 = this.r;
                            a(i7).put(bArr2, 0, i7).flip();
                            if (i7 > 0) {
                                this.s = true;
                            }
                            long j = this.t;
                            int i8 = this.q;
                            this.t = j + ((long) ((i8 - (this.r * 2)) / this.l));
                            i6 = i8;
                        } else {
                            this.t += (long) ((i6 - this.r) / this.l);
                        }
                        byte[] bArr3 = this.n;
                        int iMin2 = Math.min(byteBuffer.remaining(), this.r);
                        int i9 = this.r - iMin2;
                        System.arraycopy(bArr3, i6 - i9, this.o, 0, i9);
                        byteBuffer.position(byteBuffer.limit() - iMin2);
                        byteBuffer.get(this.o, i9, iMin2);
                        this.q = 0;
                        this.p = 2;
                    }
                    byteBuffer.limit(iLimit5);
                } else {
                    a(i4).put(bArr, 0, i4).flip();
                    if (i4 > 0) {
                        this.s = true;
                    }
                    this.q = 0;
                    this.p = 0;
                }
            } else {
                if (i != 2) {
                    defpackage.ud.g();
                    return;
                }
                int iLimit6 = byteBuffer.limit();
                int iPosition4 = byteBuffer.position();
                while (true) {
                    if (iPosition4 >= byteBuffer.limit()) {
                        iLimit = byteBuffer.limit();
                        break;
                    } else {
                        if (Math.abs((int) byteBuffer.getShort(iPosition4)) > this.k) {
                            int i10 = this.l;
                            iLimit = (iPosition4 / i10) * i10;
                            break;
                        }
                        iPosition4 += 2;
                    }
                }
                byteBuffer.limit(iLimit);
                this.t += (long) (byteBuffer.remaining() / this.l);
                byte[] bArr4 = this.o;
                int i11 = this.r;
                int iMin3 = Math.min(byteBuffer.remaining(), this.r);
                int i12 = this.r - iMin3;
                System.arraycopy(bArr4, i11 - i12, this.o, 0, i12);
                byteBuffer.position(byteBuffer.limit() - iMin3);
                byteBuffer.get(this.o, i12, iMin3);
                if (iLimit < iLimit6) {
                    byte[] bArr5 = this.o;
                    int i13 = this.r;
                    a(i13).put(bArr5, 0, i13).flip();
                    if (i13 > 0) {
                        this.s = true;
                    }
                    this.p = 0;
                    byteBuffer.limit(iLimit6);
                }
            }
        }
    }

    @Override // yads.wp
    public final km b(km kmVar) throws lm {
        if (kmVar.c == 2) {
            return this.m ? kmVar : km.e;
        }
        throw new lm(kmVar);
    }

    @Override // yads.wp
    public final void e() {
        if (this.m) {
            km kmVar = this.b;
            int i = kmVar.d;
            this.l = i;
            long j = this.i;
            long j2 = kmVar.a;
            int i2 = ((int) ((j * j2) / 1000000)) * i;
            if (this.n.length != i2) {
                this.n = new byte[i2];
            }
            int i3 = ((int) ((this.j * j2) / 1000000)) * i;
            this.r = i3;
            if (this.o.length != i3) {
                this.o = new byte[i3];
            }
        }
        this.p = 0;
        this.t = 0L;
        this.q = 0;
        this.s = false;
    }

    @Override // yads.wp
    public final void f() {
        int i = this.q;
        if (i > 0) {
            a(i).put(this.n, 0, i).flip();
            if (i > 0) {
                this.s = true;
            }
        }
        if (this.s) {
            return;
        }
        this.t += (long) (this.r / this.l);
    }

    @Override // yads.wp
    public final void g() {
        this.m = false;
        this.r = 0;
        byte[] bArr = u56.f;
        this.n = bArr;
        this.o = bArr;
    }

    @Override // yads.wp, yads.mm
    public final boolean isActive() {
        return this.m;
    }
}
