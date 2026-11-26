package defpackage;

import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class vn2 implements AutoCloseable {
    public static final g17 s = new g17("[a-z0-9_-]{1,120}");
    public final j46 b;
    public final long c;
    public final j46 d;
    public final j46 e;
    public final j46 f;
    public final LinkedHashMap g;
    public final kz1 h;
    public final Object i;
    public long j;
    public int k;
    public hy6 l;
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean q;
    public final yn2 r;

    public final class a {
        public final b a;
        public boolean b;
        public final boolean[] c = new boolean[2];

        public a(b bVar) {
            this.a = bVar;
        }

        public final void a(boolean z) {
            vn2 vn2Var = vn2.this;
            synchronized (vn2Var.i) {
                try {
                    if (this.b) {
                        throw new IllegalStateException("editor is closed");
                    }
                    if (aa4.e(this.a.g, this)) {
                        vn2Var.a(this, z);
                    }
                    this.b = true;
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final j46 b(int i) {
            j46 j46Var;
            vn2 vn2Var = vn2.this;
            synchronized (vn2Var.i) {
                if (this.b) {
                    throw new IllegalStateException("editor is closed");
                }
                this.c[i] = true;
                j46 j46Var2 = this.a.d.get(i);
                x93.a(j46Var2, vn2Var.r);
                j46Var = j46Var2;
            }
            return j46Var;
        }
    }

    public final class b {
        public final String a;
        public final long[] b = new long[2];
        public final ArrayList<j46> c = new ArrayList<>(2);
        public final ArrayList<j46> d = new ArrayList<>(2);
        public boolean e;
        public boolean f;
        public a g;
        public int h;

        public b(String str) {
            this.a = str;
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            for (int i = 0; i < 2; i++) {
                sb.append(i);
                this.c.add(vn2.this.b.f(sb.toString()));
                sb.append(".tmp");
                this.d.add(vn2.this.b.f(sb.toString()));
                sb.setLength(length);
            }
        }

        public final c a() {
            if (!this.e || this.g != null || this.f) {
                return null;
            }
            ArrayList<j46> arrayList = this.c;
            int size = arrayList.size();
            int i = 0;
            while (true) {
                vn2 vn2Var = vn2.this;
                if (i >= size) {
                    this.h++;
                    return vn2Var.new c(this);
                }
                if (!vn2Var.r.n(arrayList.get(i))) {
                    try {
                        vn2Var.E(this);
                    } catch (IOException unused) {
                    }
                    return null;
                }
                i++;
            }
        }
    }

    public final class c implements AutoCloseable {
        public final b b;
        public boolean c;

        public c(b bVar) {
            this.b = bVar;
        }

        @Override // java.lang.AutoCloseable
        public final void close() {
            if (this.c) {
                return;
            }
            this.c = true;
            vn2 vn2Var = vn2.this;
            synchronized (vn2Var.i) {
                try {
                    b bVar = this.b;
                    int i = bVar.h - 1;
                    bVar.h = i;
                    if (i == 0 && bVar.f) {
                        vn2Var.E(bVar);
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @bd2(c = "coil3.disk.DiskLruCache$launchCleanup$1", f = "DiskLruCache.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class d extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public d(e02<? super d> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return vn2.this.new d(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((d) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            vn2 vn2Var = vn2.this;
            synchronized (vn2Var.i) {
                if (!vn2Var.n || vn2Var.o) {
                    return j59.a;
                }
                try {
                    vn2Var.P();
                } catch (IOException unused) {
                    vn2Var.p = true;
                }
                try {
                    if (vn2Var.k >= 2000) {
                        vn2Var.U();
                    }
                } catch (IOException unused2) {
                    vn2Var.q = true;
                    vn2Var.l = new hy6(new mj0());
                }
                return j59.a;
            }
        }
    }

    public vn2(long j, o22 o22Var, w93 w93Var, j46 j46Var) {
        this.b = j46Var;
        this.c = j;
        if (j <= 0) {
            fg.c("maxSize <= 0");
            throw null;
        }
        this.d = j46Var.f("journal");
        this.e = j46Var.f("journal.tmp");
        this.f = j46Var.f("journal.bkp");
        this.g = new LinkedHashMap(0, 0.75f, true);
        o22 o22VarPlus = o22Var.plus(rm9.b());
        r22 r22Var = (r22) o22Var.get(r22.Key);
        if (r22Var == null) {
            oi2 oi2Var = qo2.a;
            r22Var = sh2.c;
        }
        this.h = z22.a(o22VarPlus.plus(r22.limitedParallelism$default(r22Var, 1, null, 2, null)));
        this.i = new Object();
        this.r = new yn2(w93Var);
    }

    public static void Q(String str) {
        if (s.e(str)) {
            return;
        }
        c9.f(me0.c("keys must match regex [a-z0-9_-]{1,120}: \"", str, "\""));
    }

    public final void E(b bVar) {
        hy6 hy6Var;
        int i = bVar.h;
        String str = bVar.a;
        if (i > 0 && (hy6Var = this.l) != null) {
            hy6Var.l("DIRTY");
            hy6Var.writeByte(32);
            hy6Var.l(str);
            hy6Var.writeByte(10);
            hy6Var.flush();
        }
        if (bVar.h > 0 || bVar.g != null) {
            bVar.f = true;
            return;
        }
        for (int i2 = 0; i2 < 2; i2++) {
            this.r.m(bVar.c.get(i2));
            long j = this.j;
            long[] jArr = bVar.b;
            this.j = j - jArr[i2];
            jArr[i2] = 0;
        }
        this.k++;
        hy6 hy6Var2 = this.l;
        if (hy6Var2 != null) {
            hy6Var2.l("REMOVE");
            hy6Var2.writeByte(32);
            hy6Var2.l(str);
            hy6Var2.writeByte(10);
            hy6Var2.flush();
        }
        this.g.remove(str);
        if (this.k >= 2000) {
            n();
        }
    }

    public final void P() {
        while (this.j > this.c) {
            for (b bVar : this.g.values()) {
                if (!bVar.f) {
                    E(bVar);
                }
            }
            return;
        }
        this.p = false;
    }

    public final void U() {
        synchronized (this.i) {
            try {
                hy6 hy6Var = this.l;
                if (hy6Var != null) {
                    hy6Var.close();
                }
                s18 s18VarP = this.r.P(this.e, false);
                s18VarP.getClass();
                hy6 hy6Var2 = new hy6(s18VarP);
                try {
                    hy6Var2.l("libcore.io.DiskLruCache");
                    hy6Var2.writeByte(10);
                    hy6Var2.l("1");
                    hy6Var2.writeByte(10);
                    hy6Var2.h(3L);
                    hy6Var2.writeByte(10);
                    hy6Var2.h(2L);
                    hy6Var2.writeByte(10);
                    hy6Var2.writeByte(10);
                    for (b bVar : this.g.values()) {
                        if (bVar.g != null) {
                            hy6Var2.l("DIRTY");
                            hy6Var2.writeByte(32);
                            hy6Var2.l(bVar.a);
                            hy6Var2.writeByte(10);
                        } else {
                            hy6Var2.l("CLEAN");
                            hy6Var2.writeByte(32);
                            hy6Var2.l(bVar.a);
                            for (long j : bVar.b) {
                                hy6Var2.writeByte(32);
                                hy6Var2.h(j);
                            }
                            hy6Var2.writeByte(10);
                        }
                    }
                    j59 j59Var = j59.a;
                    try {
                        hy6Var2.close();
                        th = null;
                    } catch (Throwable th) {
                        th = th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        hy6Var2.close();
                    } catch (Throwable th3) {
                        sj0.c(th, th3);
                    }
                }
                if (th != null) {
                    throw th;
                }
                boolean zN = this.r.n(this.d);
                yn2 yn2Var = this.r;
                if (zN) {
                    yn2Var.d.b(this.d, this.f);
                    this.r.d.b(this.e, this.d);
                    this.r.g(this.f);
                } else {
                    yn2Var.d.b(this.e, this.d);
                }
                this.l = o();
                this.k = 0;
                this.m = false;
                this.q = false;
                j59 j59Var2 = j59.a;
            } catch (Throwable th4) {
                throw th4;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:58:0x0110 A[Catch: all -> 0x0033, TryCatch #0 {, blocks: (B:4:0x0003, B:8:0x0011, B:12:0x0018, B:14:0x001e, B:16:0x002e, B:24:0x003c, B:27:0x0056, B:29:0x006a, B:31:0x0078, B:33:0x007f, B:28:0x005f, B:37:0x009f, B:39:0x00a6, B:42:0x00ab, B:44:0x00bc, B:47:0x00c1, B:52:0x00fc, B:54:0x0107, B:59:0x0113, B:58:0x0110, B:48:0x00d9, B:50:0x00ee, B:51:0x00f9, B:36:0x008f, B:62:0x0117, B:63:0x011e), top: B:66:0x0003 }] */
    public final void a(a aVar, boolean z) {
        synchronized (this.i) {
            b bVar = aVar.a;
            if (!aa4.e(bVar.g, aVar)) {
                throw new IllegalStateException("Check failed.");
            }
            if (!z || bVar.f) {
                for (int i = 0; i < 2; i++) {
                    this.r.m(bVar.d.get(i));
                }
            } else {
                for (int i2 = 0; i2 < 2; i2++) {
                    if (aVar.c[i2] && !this.r.n(bVar.d.get(i2))) {
                        aVar.a(false);
                        return;
                    }
                }
                for (int i3 = 0; i3 < 2; i3++) {
                    j46 j46Var = bVar.d.get(i3);
                    j46 j46Var2 = bVar.c.get(i3);
                    boolean zN = this.r.n(j46Var);
                    yn2 yn2Var = this.r;
                    if (zN) {
                        j46Var2.getClass();
                        yn2Var.d.b(j46Var, j46Var2);
                    } else {
                        x93.a(bVar.c.get(i3), yn2Var);
                    }
                    long j = bVar.b[i3];
                    Long l = this.r.p(j46Var2).d;
                    long jLongValue = l != null ? l.longValue() : 0L;
                    bVar.b[i3] = jLongValue;
                    this.j = (this.j - j) + jLongValue;
                }
            }
            bVar.g = null;
            if (bVar.f) {
                E(bVar);
                return;
            }
            this.k++;
            hy6 hy6Var = this.l;
            hy6Var.getClass();
            if (z || bVar.e) {
                bVar.e = true;
                hy6Var.l("CLEAN");
                hy6Var.writeByte(32);
                hy6Var.l(bVar.a);
                for (long j2 : bVar.b) {
                    hy6Var.writeByte(32);
                    hy6Var.h(j2);
                }
                hy6Var.writeByte(10);
            } else {
                this.g.remove(bVar.a);
                hy6Var.l("REMOVE");
                hy6Var.writeByte(32);
                hy6Var.l(bVar.a);
                hy6Var.writeByte(10);
            }
            hy6Var.flush();
            if (this.j > this.c) {
                n();
            } else if (this.k >= 2000) {
                n();
            }
            j59 j59Var = j59.a;
        }
    }

    public final a b(String str) {
        synchronized (this.i) {
            if (this.o) {
                throw new IllegalStateException("cache is closed");
            }
            Q(str);
            m();
            b bVar = (b) this.g.get(str);
            if ((bVar != null ? bVar.g : null) != null) {
                return null;
            }
            if (bVar != null && bVar.h != 0) {
                return null;
            }
            if (!this.p && !this.q) {
                hy6 hy6Var = this.l;
                hy6Var.getClass();
                hy6Var.l("DIRTY");
                hy6Var.writeByte(32);
                hy6Var.l(str);
                hy6Var.writeByte(10);
                hy6Var.flush();
                if (this.m) {
                    return null;
                }
                if (bVar == null) {
                    bVar = new b(str);
                    this.g.put(str, bVar);
                }
                a aVar = new a(bVar);
                bVar.g = aVar;
                return aVar;
            }
            n();
            return null;
        }
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        synchronized (this.i) {
            try {
                if (this.n && !this.o) {
                    for (b bVar : (b[]) this.g.values().toArray(new b[0])) {
                        a aVar = bVar.g;
                        if (aVar != null) {
                            b bVar2 = aVar.a;
                            if (aa4.e(bVar2.g, aVar)) {
                                bVar2.f = true;
                            }
                        }
                    }
                    P();
                    z22.b(this.h, null);
                    hy6 hy6Var = this.l;
                    hy6Var.getClass();
                    hy6Var.close();
                    this.l = null;
                    this.o = true;
                    j59 j59Var = j59.a;
                    return;
                }
                this.o = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final c e(String str) {
        c cVarA;
        synchronized (this.i) {
            if (this.o) {
                throw new IllegalStateException("cache is closed");
            }
            Q(str);
            m();
            b bVar = (b) this.g.get(str);
            if (bVar != null && (cVarA = bVar.a()) != null) {
                boolean z = true;
                this.k++;
                hy6 hy6Var = this.l;
                hy6Var.getClass();
                hy6Var.l("READ");
                hy6Var.writeByte(32);
                hy6Var.l(str);
                hy6Var.writeByte(10);
                hy6Var.flush();
                if (this.k < 2000) {
                    z = false;
                }
                if (z) {
                    n();
                }
                return cVarA;
            }
            return null;
        }
    }

    public final void m() {
        synchronized (this.i) {
            try {
                if (this.n) {
                    return;
                }
                this.r.g(this.e);
                if (this.r.n(this.f)) {
                    boolean zN = this.r.n(this.d);
                    yn2 yn2Var = this.r;
                    j46 j46Var = this.f;
                    if (zN) {
                        yn2Var.g(j46Var);
                    } else {
                        yn2Var.d.b(j46Var, this.d);
                    }
                }
                if (this.r.n(this.d)) {
                    try {
                        v();
                        p();
                        this.n = true;
                        return;
                    } catch (IOException unused) {
                        try {
                            close();
                            x93.b(this.b, this.r);
                            this.o = false;
                            U();
                            this.n = true;
                            j59 j59Var = j59.a;
                        } catch (Throwable th) {
                            this.o = false;
                            throw th;
                        }
                    }
                }
                U();
                this.n = true;
                j59 j59Var2 = j59.a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void n() {
        av0.c(this.h, null, null, new d(null), 3);
    }

    public final hy6 o() {
        return new hy6(new m53(this.r.d.a(this.d), new tx(this, 2)));
    }

    public final void p() {
        Iterator it = this.g.values().iterator();
        long j = 0;
        while (it.hasNext()) {
            b bVar = (b) it.next();
            int i = 0;
            if (bVar.g == null) {
                while (i < 2) {
                    j += bVar.b[i];
                    i++;
                }
            } else {
                bVar.g = null;
                while (i < 2) {
                    j46 j46Var = bVar.c.get(i);
                    yn2 yn2Var = this.r;
                    yn2Var.m(j46Var);
                    yn2Var.m(bVar.d.get(i));
                    i++;
                }
                it.remove();
            }
        }
        this.j = j;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00bf A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:35:0x00c0  */
    public final void v() throws Throwable {
        iy6 iy6VarF = c84.f(this.r.d.Q(this.d));
        try {
            String strS = iy6VarF.S(Long.MAX_VALUE);
            String strS2 = iy6VarF.S(Long.MAX_VALUE);
            String strS3 = iy6VarF.S(Long.MAX_VALUE);
            String strS4 = iy6VarF.S(Long.MAX_VALUE);
            String strS5 = iy6VarF.S(Long.MAX_VALUE);
            if (!"libcore.io.DiskLruCache".equals(strS) || !"1".equals(strS2) || !aa4.e(String.valueOf(3), strS3) || !aa4.e(String.valueOf(2), strS4) || strS5.length() > 0) {
                throw new IOException("unexpected journal header: [" + strS + ", " + strS2 + ", " + strS3 + ", " + strS4 + ", " + strS5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    y(iy6VarF.S(Long.MAX_VALUE));
                    i++;
                } catch (EOFException unused) {
                    this.k = i - this.g.size();
                    if (iy6VarF.m()) {
                        this.l = o();
                    } else {
                        U();
                    }
                    j59 j59Var = j59.a;
                    try {
                        iy6VarF.close();
                        th = null;
                    } catch (Throwable th) {
                        th = th;
                    }
                    if (th == null) {
                        throw th;
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            try {
                iy6VarF.close();
            } catch (Throwable th3) {
                sj0.c(th, th3);
            }
            if (th == null) {
                throw th;
            }
        }
    }

    public final void y(String str) throws IOException {
        String strSubstring;
        int iJ = ta8.J(' ', 0, 6, str);
        if (iJ == -1) {
            ki0.d("unexpected journal line: ".concat(str));
            return;
        }
        int i = iJ + 1;
        int iJ2 = ta8.J(' ', i, 4, str);
        LinkedHashMap linkedHashMap = this.g;
        if (iJ2 == -1) {
            strSubstring = str.substring(i);
            if (iJ == 6 && ra8.C(str, "REMOVE", false)) {
                linkedHashMap.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i, iJ2);
        }
        Object bVar = linkedHashMap.get(strSubstring);
        if (bVar == null) {
            bVar = new b(strSubstring);
            linkedHashMap.put(strSubstring, bVar);
        }
        b bVar2 = (b) bVar;
        if (iJ2 == -1 || iJ != 5 || !ra8.C(str, "CLEAN", false)) {
            if (iJ2 == -1 && iJ == 5 && ra8.C(str, "DIRTY", false)) {
                bVar2.g = new a(bVar2);
                return;
            } else {
                if (iJ2 == -1 && iJ == 4 && ra8.C(str, "READ", false)) {
                    return;
                }
                ki0.d("unexpected journal line: ".concat(str));
                return;
            }
        }
        List listX = ta8.X(str.substring(iJ2 + 1), new char[]{' '});
        bVar2.e = true;
        bVar2.g = null;
        if (listX.size() != 2) {
            av.c(listX, "unexpected journal line: ");
            return;
        }
        try {
            int size = listX.size();
            for (int i2 = 0; i2 < size; i2++) {
                bVar2.b[i2] = Long.parseLong((String) listX.get(i2));
            }
        } catch (NumberFormatException unused) {
            av.c(listX, "unexpected journal line: ");
        }
    }
}
