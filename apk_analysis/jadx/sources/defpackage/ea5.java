package defpackage;

import androidx.collection.SieveCacheKt;
import io.grpc.StatusRuntimeException;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class ea5 implements wk3 {
    public final t a;
    public ll9 c;
    public int d;
    public final x65 h;
    public final g88 i;
    public boolean j;
    public int k;
    public long m;
    public int b = -1;
    public qu1 e = bn1.b.a;
    public final b f = new b();
    public final ByteBuffer g = ByteBuffer.allocate(5);
    public int l = -1;

    public ea5(t tVar, x65 x65Var, g88 g88Var) {
        this.a = tVar;
        this.h = x65Var;
        this.i = g88Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int g(InputStream inputStream, OutputStream outputStream) throws IOException {
        if (inputStream instanceof zr2) {
            return ((zr2) inputStream).a(outputStream);
        }
        int i = dx0.a;
        inputStream.getClass();
        outputStream.getClass();
        byte[] bArr = new byte[8192];
        long j = 0;
        while (true) {
            int i2 = inputStream.read(bArr);
            if (i2 == -1) {
                break;
            }
            outputStream.write(bArr, 0, i2);
            j += (long) i2;
        }
        o8.c(j, j <= SieveCacheKt.NodeLinkMask, "Message size overflow: %s");
        return (int) j;
    }

    public final void a(a aVar, boolean z) {
        int i = a.e;
        ArrayList arrayList = aVar.b;
        Iterator it = arrayList.iterator();
        int iQ = 0;
        while (it.hasNext()) {
            iQ += ((ll9) it.next()).q();
        }
        int i2 = this.b;
        if (i2 >= 0 && iQ > i2) {
            h88 h88Var = h88.j;
            Locale locale = Locale.US;
            throw h88Var.h("message too large " + iQ + " > " + i2).a();
        }
        ByteBuffer byteBuffer = this.g;
        byteBuffer.clear();
        byteBuffer.put(z ? (byte) 1 : (byte) 0).putInt(iQ);
        sv5 sv5VarA = this.h.a(5);
        sv5VarA.write(byteBuffer.array(), 0, byteBuffer.position());
        if (iQ == 0) {
            this.c = sv5VarA;
            return;
        }
        int i3 = this.k - 1;
        t tVar = this.a;
        tVar.p(sv5VarA, false, false, i3);
        this.k = 1;
        for (int i4 = 0; i4 < arrayList.size() - 1; i4++) {
            tVar.p((ll9) arrayList.get(i4), false, false, 0);
        }
        this.c = (ll9) dd2.b(1, arrayList);
        this.m = iQ;
    }

    @Override // defpackage.wk3
    public final void b(int i) {
        o8.s(this.b == -1, "max size already set");
        this.b = i;
    }

    @Override // defpackage.wk3
    public final wk3 c(qu1 qu1Var) {
        this.e = qu1Var;
        return this;
    }

    @Override // defpackage.wk3
    public final void close() {
        if (this.j) {
            return;
        }
        this.j = true;
        ll9 ll9Var = this.c;
        if (ll9Var != null && ll9Var.q() == 0 && this.c != null) {
            this.c = null;
        }
        ll9 ll9Var2 = this.c;
        this.c = null;
        this.a.p(ll9Var2, true, true, this.k);
        this.k = 0;
    }

    @Override // defpackage.wk3
    public final void d(InputStream inputStream) {
        if (this.j) {
            ah.f("Framer already closed");
            return;
        }
        this.k++;
        int i = this.l + 1;
        this.l = i;
        this.m = 0L;
        g88 g88Var = this.i;
        y14[] y14VarArr = g88Var.a;
        y14[] y14VarArr2 = g88Var.a;
        int i2 = 0;
        for (y14 y14Var : y14VarArr) {
            y14Var.J(i);
        }
        boolean z = this.e != bn1.b.a;
        try {
            int iAvailable = ((inputStream instanceof gg4) || (inputStream instanceof ByteArrayInputStream)) ? inputStream.available() : -1;
            int iH = (iAvailable == 0 || !z) ? h(iAvailable, inputStream) : e(inputStream);
            if (iAvailable != -1 && iH != iAvailable) {
                throw h88.l.h(rz0.c(iH, iAvailable, "Message length inaccurate ", " != ")).a();
            }
            long j = iH;
            for (y14 y14Var2 : y14VarArr2) {
                y14Var2.L(j);
            }
            long j2 = this.m;
            for (y14 y14Var3 : y14VarArr2) {
                y14Var3.M(j2);
            }
            int i3 = this.l;
            long j3 = this.m;
            y14[] y14VarArr3 = g88Var.a;
            int length = y14VarArr3.length;
            while (i2 < length) {
                long j4 = j3;
                long j5 = j;
                y14VarArr3[i2].K(i3, j4, j5);
                i2++;
                j = j5;
                j3 = j4;
            }
        } catch (StatusRuntimeException e) {
            throw e;
        } catch (IOException e2) {
            throw h88.l.h("Failed to frame message").g(e2).a();
        } catch (RuntimeException e3) {
            throw h88.l.h("Failed to frame message").g(e3).a();
        }
    }

    public final int e(InputStream inputStream) throws IOException {
        a aVar = new a();
        OutputStream outputStreamA = this.e.a(aVar);
        try {
            int iG = g(inputStream, outputStreamA);
            outputStreamA.close();
            int i = this.b;
            if (i < 0 || iG <= i) {
                a(aVar, true);
                return iG;
            }
            h88 h88Var = h88.j;
            Locale locale = Locale.US;
            throw h88Var.h("message too large " + iG + " > " + i).a();
        } catch (Throwable th) {
            outputStreamA.close();
            throw th;
        }
    }

    public final void f(byte[] bArr, int i, int i2) {
        while (i2 > 0) {
            ll9 ll9Var = this.c;
            if (ll9Var != null && ll9Var.a() == 0) {
                ll9 ll9Var2 = this.c;
                this.c = null;
                this.a.p(ll9Var2, false, false, this.k);
                this.k = 0;
            }
            if (this.c == null) {
                o8.s(this.d > 0, "knownLengthPendingAllocation reached 0");
                sv5 sv5VarA = this.h.a(this.d);
                this.c = sv5VarA;
                int i3 = this.d;
                this.d = i3 - Math.min(i3, sv5VarA.b);
            }
            int iMin = Math.min(i2, this.c.a());
            this.c.write(bArr, i, iMin);
            i += iMin;
            i2 -= iMin;
        }
    }

    @Override // defpackage.wk3
    public final void flush() {
        ll9 ll9Var = this.c;
        if (ll9Var == null || ll9Var.q() <= 0) {
            return;
        }
        ll9 ll9Var2 = this.c;
        this.c = null;
        this.a.p(ll9Var2, false, true, this.k);
        this.k = 0;
    }

    public final int h(int i, InputStream inputStream) throws IOException {
        if (i == -1) {
            a aVar = new a();
            int iG = g(inputStream, aVar);
            a(aVar, false);
            return iG;
        }
        this.m = i;
        int i2 = this.b;
        if (i2 < 0 || i <= i2) {
            ByteBuffer byteBuffer = this.g;
            byteBuffer.clear();
            byteBuffer.put((byte) 0).putInt(i);
            this.d = i + 5;
            f(byteBuffer.array(), 0, byteBuffer.position());
            return g(inputStream, this.f);
        }
        h88 h88Var = h88.j;
        Locale locale = Locale.US;
        throw h88Var.h("message too large " + i + " > " + i2).a();
    }

    @Override // defpackage.wk3
    public final boolean isClosed() {
        return this.j;
    }

    public class b extends OutputStream {
        public b() {
        }

        @Override // java.io.OutputStream
        public final void write(int i) {
            write(new byte[]{(byte) i}, 0, 1);
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr, int i, int i2) {
            ea5.this.f(bArr, i, i2);
        }
    }

    public final class a extends OutputStream {
        public static final /* synthetic */ int e = 0;
        public final ArrayList b = new ArrayList();
        public ll9 c;

        public a() {
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr, int i, int i2) {
            x65 x65Var = ea5.this.h;
            ll9 ll9Var = this.c;
            ArrayList arrayList = this.b;
            if (ll9Var == null) {
                sv5 sv5VarA = x65Var.a(Math.max(4096, i2));
                this.c = sv5VarA;
                arrayList.add(sv5VarA);
            }
            while (i2 > 0) {
                int iMin = Math.min(i2, this.c.a());
                ll9 ll9Var2 = this.c;
                if (iMin == 0) {
                    sv5 sv5VarA2 = x65Var.a(Math.max(i2, ll9Var2.q() * 2));
                    this.c = sv5VarA2;
                    arrayList.add(sv5VarA2);
                } else {
                    ll9Var2.write(bArr, i, iMin);
                    i += iMin;
                    i2 -= iMin;
                }
            }
        }

        @Override // java.io.OutputStream
        public final void write(int i) {
            ll9 ll9Var = this.c;
            if (ll9Var != null && ll9Var.a() > 0) {
                this.c.b((byte) i);
            } else {
                write(new byte[]{(byte) i}, 0, 1);
            }
        }
    }
}
