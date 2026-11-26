package defpackage;

import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.Flushable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class un2 implements Closeable, Flushable {
    public static final g17 s = new g17("[a-z0-9_-]{1,120}");
    public static final String t = "CLEAN";
    public static final String u = "DIRTY";
    public static final String v = "REMOVE";
    public static final String w = "READ";
    public final File b;
    public final File c;
    public final File d;
    public final File e;
    public long f;
    public hy6 g;
    public final LinkedHashMap<String, b> h;
    public int i;
    public boolean j;
    public boolean k;
    public boolean l;
    public boolean m;
    public boolean n;
    public boolean o;
    public long p;
    public final do8 q;
    public final xn2 r;

    public final class a {
        public final b a;
        public final boolean[] b;
        public boolean c;

        /* JADX INFO: renamed from: un2$a$a, reason: collision with other inner class name */
        public static final class C0341a extends gh4 implements nl3<IOException, j59> {
            public final /* synthetic */ un2 f;
            public final /* synthetic */ a g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0341a(un2 un2Var, a aVar) {
                super(1);
                this.f = un2Var;
                this.g = aVar;
            }

            @Override // defpackage.nl3
            public final j59 invoke(IOException iOException) {
                iOException.getClass();
                un2 un2Var = this.f;
                a aVar = this.g;
                synchronized (un2Var) {
                    aVar.c();
                }
                return j59.a;
            }
        }

        public a(b bVar) {
            boolean[] zArr;
            this.a = bVar;
            if (bVar.e) {
                zArr = null;
            } else {
                un2.this.getClass();
                zArr = new boolean[2];
            }
            this.b = zArr;
        }

        public final void a() {
            un2 un2Var = un2.this;
            synchronized (un2Var) {
                try {
                    if (this.c) {
                        throw new IllegalStateException("Check failed.");
                    }
                    if (aa4.e(this.a.g, this)) {
                        un2Var.n(this, false);
                    }
                    this.c = true;
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final void b() {
            un2 un2Var = un2.this;
            synchronized (un2Var) {
                try {
                    if (this.c) {
                        throw new IllegalStateException("Check failed.");
                    }
                    if (aa4.e(this.a.g, this)) {
                        un2Var.n(this, true);
                    }
                    this.c = true;
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final void c() {
            b bVar = this.a;
            if (aa4.e(bVar.g, this)) {
                un2 un2Var = un2.this;
                if (un2Var.k) {
                    un2Var.n(this, false);
                } else {
                    bVar.f = true;
                }
            }
        }

        public final s18 d(int i) {
            t06 t06Var;
            un2 un2Var = un2.this;
            synchronized (un2Var) {
                try {
                    if (this.c) {
                        throw new IllegalStateException("Check failed.");
                    }
                    if (!aa4.e(this.a.g, this)) {
                        return new mj0();
                    }
                    if (!this.a.e) {
                        boolean[] zArr = this.b;
                        zArr.getClass();
                        zArr[i] = true;
                    }
                    File file = (File) this.a.d.get(i);
                    try {
                        file.getClass();
                        try {
                            t06Var = new t06(new FileOutputStream(file, false), new wv8());
                        } catch (FileNotFoundException unused) {
                            file.getParentFile().mkdirs();
                            t06Var = new t06(new FileOutputStream(file, false), new wv8());
                        }
                        return new l53(t06Var, new C0341a(un2Var, this));
                    } catch (FileNotFoundException unused2) {
                        return new mj0();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final class b {
        public final String a;
        public final long[] b;
        public final ArrayList c;
        public final ArrayList d;
        public boolean e;
        public boolean f;
        public a g;
        public int h;
        public long i;
        public final /* synthetic */ un2 j;

        public b(un2 un2Var, String str) {
            str.getClass();
            this.j = un2Var;
            this.a = str;
            un2Var.getClass();
            this.b = new long[2];
            this.c = new ArrayList();
            this.d = new ArrayList();
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            for (int i = 0; i < 2; i++) {
                sb.append(i);
                this.c.add(new File(this.j.b, sb.toString()));
                sb.append(".tmp");
                this.d.add(new File(this.j.b, sb.toString()));
                sb.setLength(length);
            }
        }

        public final c a() {
            byte[] bArr = gb9.a;
            if (!this.e) {
                return null;
            }
            un2 un2Var = this.j;
            if (!un2Var.k && (this.g != null || this.f)) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            long[] jArr = (long[]) this.b.clone();
            for (int i = 0; i < 2; i++) {
                try {
                    File file = (File) this.c.get(i);
                    file.getClass();
                    v48 t54Var = new t54(new FileInputStream(file), wv8.d);
                    if (!un2Var.k) {
                        this.h++;
                        t54Var = new wn2(t54Var, un2Var, this);
                    }
                    arrayList.add(t54Var);
                } catch (FileNotFoundException unused) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        gb9.d((v48) it.next());
                    }
                    try {
                        un2Var.V(this);
                        return null;
                    } catch (IOException unused2) {
                        return null;
                    }
                }
            }
            return new c(this.j, this.a, this.i, arrayList, jArr);
        }
    }

    public final class c implements Closeable {
        public final String b;
        public final long c;
        public final ArrayList d;
        public final /* synthetic */ un2 e;

        public c(un2 un2Var, String str, long j, ArrayList arrayList, long[] jArr) {
            str.getClass();
            jArr.getClass();
            this.e = un2Var;
            this.b = str;
            this.c = j;
            this.d = arrayList;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            Iterator it = this.d.iterator();
            while (it.hasNext()) {
                gb9.d((v48) it.next());
            }
        }
    }

    public un2(File file, ho8 ho8Var) {
        file.getClass();
        ho8Var.getClass();
        this.b = file;
        this.h = new LinkedHashMap<>(0, 0.75f, true);
        this.q = ho8Var.d();
        this.r = new xn2(this, me0.d(new StringBuilder(), gb9.g, " Cache"));
        this.c = new File(file, "journal");
        this.d = new File(file, "journal.tmp");
        this.e = new File(file, "journal.bkp");
    }

    public static void Z(String str) {
        if (s.e(str)) {
            return;
        }
        c9.f(lt0.d('\"', "keys must match regex [a-z0-9_-]{1,120}: \"", str));
    }

    public final void E() throws IOException {
        px pxVar = px.d;
        pxVar.d(this.d);
        Iterator<b> it = this.h.values().iterator();
        while (it.hasNext()) {
            b next = it.next();
            next.getClass();
            b bVar = next;
            int i = 0;
            if (bVar.g == null) {
                while (i < 2) {
                    this.f += bVar.b[i];
                    i++;
                }
            } else {
                bVar.g = null;
                while (i < 2) {
                    pxVar.d((File) bVar.c.get(i));
                    pxVar.d((File) bVar.d.get(i));
                    i++;
                }
                it.remove();
            }
        }
    }

    public final void P() {
        t06 t06Var;
        File file = this.c;
        file.getClass();
        iy6 iy6Var = new iy6(new t54(new FileInputStream(file), wv8.d));
        try {
            String strS = iy6Var.S(Long.MAX_VALUE);
            String strS2 = iy6Var.S(Long.MAX_VALUE);
            String strS3 = iy6Var.S(Long.MAX_VALUE);
            String strS4 = iy6Var.S(Long.MAX_VALUE);
            String strS5 = iy6Var.S(Long.MAX_VALUE);
            if (!"libcore.io.DiskLruCache".equals(strS) || !"1".equals(strS2) || !aa4.e(String.valueOf(201105), strS3) || !aa4.e(String.valueOf(2), strS4) || strS5.length() > 0) {
                throw new IOException("unexpected journal header: [" + strS + ", " + strS2 + ", " + strS4 + ", " + strS5 + ']');
            }
            int i = 0;
            while (true) {
                try {
                    Q(iy6Var.S(Long.MAX_VALUE));
                    i++;
                } catch (EOFException unused) {
                    this.i = i - this.h.size();
                    if (iy6Var.m()) {
                        file.getClass();
                        try {
                            t06Var = new t06(new FileOutputStream(file, true), new wv8());
                        } catch (FileNotFoundException unused2) {
                            file.getParentFile().mkdirs();
                            t06Var = new t06(new FileOutputStream(file, true), new wv8());
                        }
                        this.g = new hy6(new l53(t06Var, new zn2(this, 0)));
                    } else {
                        U();
                    }
                    j59 j59Var = j59.a;
                    iy6Var.close();
                    return;
                }
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                m96.c(iy6Var, th);
                throw th2;
            }
        }
    }

    public final void Q(String str) throws IOException {
        String strSubstring;
        int iJ = ta8.J(' ', 0, 6, str);
        if (iJ == -1) {
            ki0.d("unexpected journal line: ".concat(str));
            return;
        }
        int i = iJ + 1;
        int iJ2 = ta8.J(' ', i, 4, str);
        LinkedHashMap<String, b> linkedHashMap = this.h;
        if (iJ2 == -1) {
            strSubstring = str.substring(i);
            String str2 = v;
            if (iJ == str2.length() && ra8.C(str, str2, false)) {
                linkedHashMap.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i, iJ2);
        }
        b bVar = linkedHashMap.get(strSubstring);
        if (bVar == null) {
            bVar = new b(this, strSubstring);
            linkedHashMap.put(strSubstring, bVar);
        }
        if (iJ2 != -1) {
            String str3 = t;
            if (iJ == str3.length() && ra8.C(str, str3, false)) {
                List listX = ta8.X(str.substring(iJ2 + 1), new char[]{' '});
                bVar.e = true;
                bVar.g = null;
                int size = listX.size();
                bVar.j.getClass();
                if (size != 2) {
                    av.c(listX, "unexpected journal line: ");
                    return;
                }
                try {
                    int size2 = listX.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        bVar.b[i2] = Long.parseLong((String) listX.get(i2));
                    }
                    return;
                } catch (NumberFormatException unused) {
                    av.c(listX, "unexpected journal line: ");
                    return;
                }
            }
        }
        if (iJ2 == -1) {
            String str4 = u;
            if (iJ == str4.length() && ra8.C(str, str4, false)) {
                bVar.g = new a(bVar);
                return;
            }
        }
        if (iJ2 == -1) {
            String str5 = w;
            if (iJ == str5.length() && ra8.C(str, str5, false)) {
                return;
            }
        }
        ki0.d("unexpected journal line: ".concat(str));
    }

    public final synchronized void U() {
        t06 t06Var;
        t06 t06Var2;
        try {
            hy6 hy6Var = this.g;
            if (hy6Var != null) {
                hy6Var.close();
            }
            File file = this.d;
            file.getClass();
            try {
                t06Var = new t06(new FileOutputStream(file, false), new wv8());
            } catch (FileNotFoundException unused) {
                file.getParentFile().mkdirs();
                t06Var = new t06(new FileOutputStream(file, false), new wv8());
            }
            hy6 hy6Var2 = new hy6(t06Var);
            try {
                hy6Var2.l("libcore.io.DiskLruCache");
                hy6Var2.writeByte(10);
                hy6Var2.l("1");
                hy6Var2.writeByte(10);
                hy6Var2.h(201105L);
                hy6Var2.writeByte(10);
                hy6Var2.h(2L);
                hy6Var2.writeByte(10);
                hy6Var2.writeByte(10);
                for (b bVar : this.h.values()) {
                    if (bVar.g != null) {
                        hy6Var2.l(u);
                        hy6Var2.writeByte(32);
                        hy6Var2.l(bVar.a);
                        hy6Var2.writeByte(10);
                    } else {
                        hy6Var2.l(t);
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
                hy6Var2.close();
                px pxVar = px.d;
                if (pxVar.g(this.c)) {
                    pxVar.i(this.c, this.e);
                }
                pxVar.i(this.d, this.c);
                pxVar.d(this.e);
                File file2 = this.c;
                file2.getClass();
                try {
                    t06Var2 = new t06(new FileOutputStream(file2, true), new wv8());
                } catch (FileNotFoundException unused2) {
                    file2.getParentFile().mkdirs();
                    t06Var2 = new t06(new FileOutputStream(file2, true), new wv8());
                }
                this.g = new hy6(new l53(t06Var2, new zn2(this, 0)));
                this.j = false;
                this.o = false;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    m96.c(hy6Var2, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            throw th3;
        }
    }

    public final void V(b bVar) throws IOException {
        hy6 hy6Var;
        String str = bVar.a;
        if (!this.k) {
            if (bVar.h > 0 && (hy6Var = this.g) != null) {
                hy6Var.l(u);
                hy6Var.writeByte(32);
                hy6Var.l(str);
                hy6Var.writeByte(10);
                hy6Var.flush();
            }
            if (bVar.h > 0 || bVar.g != null) {
                bVar.f = true;
                return;
            }
        }
        a aVar = bVar.g;
        if (aVar != null) {
            aVar.c();
        }
        for (int i = 0; i < 2; i++) {
            File file = (File) bVar.c.get(i);
            file.getClass();
            if (!file.delete() && file.exists()) {
                av.c(file, "failed to delete ");
                return;
            }
            long j = this.f;
            long[] jArr = bVar.b;
            this.f = j - jArr[i];
            jArr[i] = 0;
        }
        this.i++;
        hy6 hy6Var2 = this.g;
        if (hy6Var2 != null) {
            hy6Var2.l(v);
            hy6Var2.writeByte(32);
            hy6Var2.l(str);
            hy6Var2.writeByte(10);
        }
        this.h.remove(str);
        if (y()) {
            this.q.c(this.r, 0L);
        }
    }

    public final void X() throws IOException {
        while (this.f > 10485760) {
            for (b bVar : this.h.values()) {
                if (!bVar.f) {
                    V(bVar);
                }
            }
            return;
        }
        this.n = false;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        try {
            if (this.l && !this.m) {
                Collection<b> collectionValues = this.h.values();
                collectionValues.getClass();
                for (b bVar : (b[]) collectionValues.toArray(new b[0])) {
                    a aVar = bVar.g;
                    if (aVar != null) {
                        aVar.c();
                    }
                }
                X();
                hy6 hy6Var = this.g;
                hy6Var.getClass();
                hy6Var.close();
                this.g = null;
                this.m = true;
                return;
            }
            this.m = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.io.Flushable
    public final synchronized void flush() {
        if (this.l) {
            m();
            X();
            hy6 hy6Var = this.g;
            hy6Var.getClass();
            hy6Var.flush();
        }
    }

    public final synchronized void m() {
        if (this.m) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public final synchronized void n(a aVar, boolean z) {
        b bVar = aVar.a;
        if (!aa4.e(bVar.g, aVar)) {
            throw new IllegalStateException("Check failed.");
        }
        if (z && !bVar.e) {
            for (int i = 0; i < 2; i++) {
                boolean[] zArr = aVar.b;
                zArr.getClass();
                if (!zArr[i]) {
                    aVar.a();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                }
                File file = (File) bVar.d.get(i);
                file.getClass();
                if (!file.exists()) {
                    aVar.a();
                    return;
                }
            }
        }
        for (int i2 = 0; i2 < 2; i2++) {
            File file2 = (File) bVar.d.get(i2);
            if (!z || bVar.f) {
                file2.getClass();
                if (!file2.delete() && file2.exists()) {
                    throw new IOException("failed to delete " + file2);
                }
            } else {
                px pxVar = px.d;
                if (pxVar.g(file2)) {
                    File file3 = (File) bVar.c.get(i2);
                    pxVar.i(file2, file3);
                    long j = bVar.b[i2];
                    long length = file3.length();
                    bVar.b[i2] = length;
                    this.f = (this.f - j) + length;
                }
            }
        }
        bVar.g = null;
        if (bVar.f) {
            V(bVar);
            return;
        }
        this.i++;
        hy6 hy6Var = this.g;
        hy6Var.getClass();
        if (bVar.e || z) {
            bVar.e = true;
            hy6Var.l(t);
            hy6Var.writeByte(32);
            hy6Var.l(bVar.a);
            for (long j2 : bVar.b) {
                hy6Var.writeByte(32);
                hy6Var.h(j2);
            }
            hy6Var.writeByte(10);
            if (z) {
                long j3 = this.p;
                this.p = 1 + j3;
                bVar.i = j3;
            }
        } else {
            this.h.remove(bVar.a);
            hy6Var.l(v);
            hy6Var.writeByte(32);
            hy6Var.l(bVar.a);
            hy6Var.writeByte(10);
        }
        hy6Var.flush();
        if (this.f > 10485760 || y()) {
            this.q.c(this.r, 0L);
        }
    }

    public final synchronized a o(long j, String str) {
        str.getClass();
        v();
        m();
        Z(str);
        b bVar = this.h.get(str);
        if (j != -1 && (bVar == null || bVar.i != j)) {
            return null;
        }
        if ((bVar != null ? bVar.g : null) != null) {
            return null;
        }
        if (bVar != null && bVar.h != 0) {
            return null;
        }
        if (!this.n && !this.o) {
            hy6 hy6Var = this.g;
            hy6Var.getClass();
            hy6Var.l(u);
            hy6Var.writeByte(32);
            hy6Var.l(str);
            hy6Var.writeByte(10);
            hy6Var.flush();
            if (this.j) {
                return null;
            }
            if (bVar == null) {
                bVar = new b(this, str);
                this.h.put(str, bVar);
            }
            a aVar = new a(bVar);
            bVar.g = aVar;
            return aVar;
        }
        this.q.c(this.r, 0L);
        return null;
    }

    public final synchronized c p(String str) {
        str.getClass();
        v();
        m();
        Z(str);
        b bVar = this.h.get(str);
        if (bVar == null) {
            return null;
        }
        c cVarA = bVar.a();
        if (cVarA == null) {
            return null;
        }
        this.i++;
        hy6 hy6Var = this.g;
        hy6Var.getClass();
        hy6Var.l(w);
        hy6Var.writeByte(32);
        hy6Var.l(str);
        hy6Var.writeByte(10);
        if (y()) {
            this.q.c(this.r, 0L);
        }
        return cVarA;
    }

    public final synchronized void v() {
        boolean z;
        try {
            byte[] bArr = gb9.a;
            if (this.l) {
                return;
            }
            px pxVar = px.d;
            if (pxVar.g(this.e)) {
                boolean zG = pxVar.g(this.c);
                File file = this.e;
                if (zG) {
                    pxVar.d(file);
                } else {
                    pxVar.i(file, this.c);
                }
            }
            File file2 = this.e;
            file2.getClass();
            t06 t06VarJ = pxVar.j(file2);
            try {
                try {
                    pxVar.d(file2);
                    t06VarJ.close();
                    z = true;
                } catch (IOException unused) {
                    j59 j59Var = j59.a;
                    t06VarJ.close();
                    pxVar.d(file2);
                    z = false;
                }
                this.k = z;
                File file3 = this.c;
                file3.getClass();
                if (file3.exists()) {
                    try {
                        P();
                        E();
                        this.l = true;
                        return;
                    } catch (IOException e) {
                        z86 z86Var = z86.a;
                        z86 z86Var2 = z86.a;
                        String str = "DiskLruCache " + this.b + " is corrupt: " + e.getMessage() + ", removing";
                        z86Var2.getClass();
                        z86.i(str, 5, e);
                        try {
                            close();
                            px.d.e(this.b);
                            this.m = false;
                            U();
                            this.l = true;
                        } catch (Throwable th) {
                            this.m = false;
                            throw th;
                        }
                    }
                }
                U();
                this.l = true;
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    m96.c(t06VarJ, th2);
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            throw th4;
        }
    }

    public final boolean y() {
        int i = this.i;
        return i >= 2000 && i >= this.h.size();
    }
}
