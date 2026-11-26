package yads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;

/* JADX INFO: loaded from: classes6.dex */
public final class po5 implements mm {
    public int b;
    public float c = 1.0f;
    public float d = 1.0f;
    public km e;
    public km f;
    public km g;
    public km h;
    public boolean i;
    public oo5 j;
    public ByteBuffer k;
    public ShortBuffer l;
    public ByteBuffer m;
    public long n;
    public long o;
    public boolean p;

    public po5() {
        km kmVar = km.e;
        this.e = kmVar;
        this.f = kmVar;
        this.g = kmVar;
        this.h = kmVar;
        ByteBuffer byteBuffer = mm.a;
        this.k = byteBuffer;
        this.l = byteBuffer.asShortBuffer();
        this.m = byteBuffer;
        this.b = -1;
    }

    @Override // yads.mm
    public final ByteBuffer a() {
        int i;
        oo5 oo5Var = this.j;
        if (oo5Var != null && (i = oo5Var.m * oo5Var.b * 2) > 0) {
            if (this.k.capacity() < i) {
                ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
                this.k = byteBufferOrder;
                this.l = byteBufferOrder.asShortBuffer();
            } else {
                this.k.clear();
                this.l.clear();
            }
            ShortBuffer shortBuffer = this.l;
            int iMin = Math.min(shortBuffer.remaining() / oo5Var.b, oo5Var.m);
            shortBuffer.put(oo5Var.l, 0, oo5Var.b * iMin);
            int i2 = oo5Var.m - iMin;
            oo5Var.m = i2;
            short[] sArr = oo5Var.l;
            int i3 = oo5Var.b;
            System.arraycopy(sArr, iMin * i3, sArr, 0, i2 * i3);
            this.o += (long) i;
            this.k.limit(i);
            this.m = this.k;
        }
        ByteBuffer byteBuffer = this.m;
        this.m = mm.a;
        return byteBuffer;
    }

    @Override // yads.mm
    public final void b() {
        int i;
        oo5 oo5Var = this.j;
        if (oo5Var != null) {
            int i2 = oo5Var.k;
            float f = oo5Var.c;
            float f2 = oo5Var.d;
            int i3 = oo5Var.m + ((int) ((((i2 / (f / f2)) + oo5Var.o) / (oo5Var.e * f2)) + 0.5f));
            oo5Var.j = oo5Var.b(oo5Var.j, i2, (oo5Var.h * 2) + i2);
            int i4 = 0;
            while (true) {
                i = oo5Var.h * 2;
                int i5 = oo5Var.b;
                if (i4 >= i * i5) {
                    break;
                }
                oo5Var.j[(i5 * i2) + i4] = 0;
                i4++;
            }
            oo5Var.k = i + oo5Var.k;
            oo5Var.a();
            if (oo5Var.m > i3) {
                oo5Var.m = i3;
            }
            oo5Var.k = 0;
            oo5Var.r = 0;
            oo5Var.o = 0;
        }
        this.p = true;
    }

    @Override // yads.mm
    public final boolean c() {
        if (!this.p) {
            return false;
        }
        oo5 oo5Var = this.j;
        return oo5Var == null || (oo5Var.m * oo5Var.b) * 2 == 0;
    }

    @Override // yads.mm
    public final void d() {
        this.c = 1.0f;
        this.d = 1.0f;
        km kmVar = km.e;
        this.e = kmVar;
        this.f = kmVar;
        this.g = kmVar;
        this.h = kmVar;
        ByteBuffer byteBuffer = mm.a;
        this.k = byteBuffer;
        this.l = byteBuffer.asShortBuffer();
        this.m = byteBuffer;
        this.b = -1;
        this.i = false;
        this.j = null;
        this.n = 0L;
        this.o = 0L;
        this.p = false;
    }

    @Override // yads.mm
    public final void flush() {
        if (isActive()) {
            km kmVar = this.e;
            this.g = kmVar;
            km kmVar2 = this.f;
            this.h = kmVar2;
            if (this.i) {
                this.j = new oo5(kmVar.a, kmVar.b, this.c, this.d, kmVar2.a);
            } else {
                oo5 oo5Var = this.j;
                if (oo5Var != null) {
                    oo5Var.k = 0;
                    oo5Var.m = 0;
                    oo5Var.o = 0;
                    oo5Var.p = 0;
                    oo5Var.q = 0;
                    oo5Var.r = 0;
                    oo5Var.s = 0;
                    oo5Var.t = 0;
                    oo5Var.u = 0;
                    oo5Var.v = 0;
                }
            }
        }
        this.m = mm.a;
        this.n = 0L;
        this.o = 0L;
        this.p = false;
    }

    @Override // yads.mm
    public final boolean isActive() {
        if (this.f.a != -1) {
            return Math.abs(this.c - 1.0f) >= 1.0E-4f || Math.abs(this.d - 1.0f) >= 1.0E-4f || this.f.a != this.e.a;
        }
        return false;
    }

    @Override // yads.mm
    public final void a(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            oo5 oo5Var = this.j;
            oo5Var.getClass();
            ShortBuffer shortBufferAsShortBuffer = byteBuffer.asShortBuffer();
            int iRemaining = byteBuffer.remaining();
            this.n += (long) iRemaining;
            int iRemaining2 = shortBufferAsShortBuffer.remaining();
            int i = oo5Var.b;
            int i2 = iRemaining2 / i;
            short[] sArrB = oo5Var.b(oo5Var.j, oo5Var.k, i2);
            oo5Var.j = sArrB;
            shortBufferAsShortBuffer.get(sArrB, oo5Var.k * oo5Var.b, ((i * i2) * 2) / 2);
            oo5Var.k += i2;
            oo5Var.a();
            byteBuffer.position(byteBuffer.position() + iRemaining);
        }
    }

    @Override // yads.mm
    public final km a(km kmVar) throws lm {
        if (kmVar.c == 2) {
            int i = this.b;
            if (i == -1) {
                i = kmVar.a;
            }
            this.e = kmVar;
            km kmVar2 = new km(i, kmVar.b, 2);
            this.f = kmVar2;
            this.i = true;
            return kmVar2;
        }
        throw new lm(kmVar);
    }
}
