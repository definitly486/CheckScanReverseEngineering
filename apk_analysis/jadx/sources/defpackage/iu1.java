package defpackage;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.InvalidMarkException;
import java.util.ArrayDeque;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class iu1 extends m1 {
    public static final a f = new a();
    public static final b g = new b();
    public static final c h = new c();
    public static final d i = new d();
    public final ArrayDeque b;
    public ArrayDeque c;
    public int d;
    public boolean e;

    public class a implements e<Void> {
        @Override // iu1.f
        public final int a(dy6 dy6Var, int i, Object obj, int i2) {
            return dy6Var.readUnsignedByte();
        }
    }

    public class b implements e<Void> {
        @Override // iu1.f
        public final int a(dy6 dy6Var, int i, Object obj, int i2) {
            dy6Var.skipBytes(i);
            return 0;
        }
    }

    public class c implements e<byte[]> {
        @Override // iu1.f
        public final int a(dy6 dy6Var, int i, Object obj, int i2) {
            dy6Var.G((byte[]) obj, i2, i);
            return i2 + i;
        }
    }

    public class d implements f<OutputStream> {
        @Override // iu1.f
        public final int a(dy6 dy6Var, int i, OutputStream outputStream, int i2) {
            dy6Var.s0(outputStream, i);
            return 0;
        }
    }

    public interface e<T> extends f<T> {
    }

    public interface f<T> {
        int a(dy6 dy6Var, int i, T t, int i2);
    }

    public iu1() {
        this.b = new ArrayDeque();
    }

    @Override // defpackage.dy6
    public final void G(byte[] bArr, int i2, int i3) {
        o(h, i3, bArr, i2);
    }

    @Override // defpackage.m1, defpackage.dy6
    public final void I() throws IOException {
        ArrayDeque arrayDeque = this.c;
        ArrayDeque arrayDeque2 = this.b;
        if (arrayDeque == null) {
            this.c = new ArrayDeque(Math.min(arrayDeque2.size(), 16));
        }
        while (!this.c.isEmpty()) {
            ((dy6) this.c.remove()).close();
        }
        this.e = true;
        dy6 dy6Var = (dy6) arrayDeque2.peek();
        if (dy6Var != null) {
            dy6Var.I();
        }
    }

    public final void b(dy6 dy6Var) throws IOException {
        boolean z = this.e;
        ArrayDeque arrayDeque = this.b;
        boolean z2 = z && arrayDeque.isEmpty();
        if (dy6Var instanceof iu1) {
            iu1 iu1Var = (iu1) dy6Var;
            ArrayDeque arrayDeque2 = iu1Var.b;
            while (!arrayDeque2.isEmpty()) {
                arrayDeque.add((dy6) arrayDeque2.remove());
            }
            this.d += iu1Var.d;
            iu1Var.d = 0;
            iu1Var.close();
        } else {
            arrayDeque.add(dy6Var);
            this.d = dy6Var.q() + this.d;
        }
        if (z2) {
            ((dy6) arrayDeque.peek()).I();
        }
    }

    @Override // defpackage.m1, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        while (true) {
            ArrayDeque arrayDeque = this.b;
            if (arrayDeque.isEmpty()) {
                break;
            } else {
                ((dy6) arrayDeque.remove()).close();
            }
        }
        if (this.c != null) {
            while (!this.c.isEmpty()) {
                ((dy6) this.c.remove()).close();
            }
        }
    }

    public final void m() throws IOException {
        boolean z = this.e;
        ArrayDeque arrayDeque = this.b;
        if (!z) {
            ((dy6) arrayDeque.remove()).close();
            return;
        }
        this.c.add((dy6) arrayDeque.remove());
        dy6 dy6Var = (dy6) arrayDeque.peek();
        if (dy6Var != null) {
            dy6Var.I();
        }
    }

    @Override // defpackage.m1, defpackage.dy6
    public final boolean markSupported() {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            if (!((dy6) it.next()).markSupported()) {
                return false;
            }
        }
        return true;
    }

    public final <T> int n(f<T> fVar, int i2, T t, int i3) throws IOException {
        a(i2);
        ArrayDeque arrayDeque = this.b;
        if (!arrayDeque.isEmpty() && ((dy6) arrayDeque.peek()).q() == 0) {
            m();
        }
        while (i2 > 0 && !arrayDeque.isEmpty()) {
            dy6 dy6Var = (dy6) arrayDeque.peek();
            int iMin = Math.min(i2, dy6Var.q());
            i3 = fVar.a(dy6Var, iMin, t, i3);
            i2 -= iMin;
            this.d -= iMin;
            if (((dy6) arrayDeque.peek()).q() == 0) {
                m();
            }
        }
        if (i2 <= 0) {
            return i3;
        }
        xg.d("Failed executing read operation");
        return 0;
    }

    public final <T> int o(e<T> eVar, int i2, T t, int i3) {
        try {
            return n(eVar, i2, t, i3);
        } catch (IOException e2) {
            xg.d(e2);
            return 0;
        }
    }

    @Override // defpackage.dy6
    public final int q() {
        return this.d;
    }

    @Override // defpackage.dy6
    public final int readUnsignedByte() {
        return o(f, 1, null, 0);
    }

    @Override // defpackage.m1, defpackage.dy6
    public final void reset() {
        if (!this.e) {
            throw new InvalidMarkException();
        }
        ArrayDeque arrayDeque = this.b;
        dy6 dy6Var = (dy6) arrayDeque.peek();
        if (dy6Var != null) {
            int iQ = dy6Var.q();
            dy6Var.reset();
            this.d = (dy6Var.q() - iQ) + this.d;
        }
        while (true) {
            dy6 dy6Var2 = (dy6) this.c.pollLast();
            if (dy6Var2 == null) {
                return;
            }
            dy6Var2.reset();
            arrayDeque.addFirst(dy6Var2);
            this.d = dy6Var2.q() + this.d;
        }
    }

    @Override // defpackage.dy6
    public final void s0(OutputStream outputStream, int i2) throws IOException {
        n(i, i2, outputStream, 0);
    }

    @Override // defpackage.dy6
    public final void skipBytes(int i2) {
        o(g, i2, null, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [dy6] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [dy6] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2, types: [iu1] */
    /* JADX WARN: Type inference failed for: r1v3, types: [iu1] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    @Override // defpackage.dy6
    public final dy6 t(int i2) throws IOException {
        dy6 dy6VarT;
        int i3;
        dy6 dy6VarT2;
        ?? r1;
        ?? r0;
        if (i2 <= 0) {
            return ey6.a;
        }
        a(i2);
        this.d -= i2;
        ?? r2 = 0;
        ?? iu1Var = 0;
        while (true) {
            ArrayDeque arrayDeque = this.b;
            dy6 dy6Var = (dy6) arrayDeque.peek();
            int iQ = dy6Var.q();
            if (iQ > i2) {
                dy6VarT2 = dy6Var.t(i2);
                i3 = 0;
            } else {
                if (this.e) {
                    dy6VarT = dy6Var.t(iQ);
                    m();
                } else {
                    dy6VarT = (dy6) arrayDeque.poll();
                }
                dy6 dy6Var2 = dy6VarT;
                i3 = i2 - iQ;
                dy6VarT2 = dy6Var2;
            }
            if (r2 == 0) {
                r0 = dy6VarT2;
                r1 = iu1Var;
            } else {
                if (iu1Var == 0) {
                    iu1Var = new iu1(i3 != 0 ? Math.min(arrayDeque.size() + 2, 16) : 2);
                    iu1Var.b(r2);
                    r2 = iu1Var;
                }
                iu1Var.b(dy6VarT2);
                r0 = r2;
                r1 = iu1Var;
            }
            if (i3 <= 0) {
                return r0;
            }
            i2 = i3;
            r2 = r0;
            iu1Var = r1;
        }
    }

    public iu1(int i2) {
        this.b = new ArrayDeque(i2);
    }
}
