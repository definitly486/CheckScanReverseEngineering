package defpackage;

import androidx.collection.SieveCacheKt;
import androidx.webkit.ProxyConfig;
import bu0.a;
import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class lx0 implements Closeable, Flushable {
    public final un2 b;

    public static final class a extends b57 {
        public final un2.c c;
        public final String d;
        public final String e;
        public final iy6 f;

        /* JADX INFO: renamed from: lx0$a$a, reason: collision with other inner class name */
        public static final class C0301a extends qj3 {
            public final /* synthetic */ a c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0301a(v48 v48Var, a aVar) {
                super(v48Var);
                this.c = aVar;
            }

            @Override // defpackage.qj3, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                this.c.c.close();
                super.close();
            }
        }

        public a(un2.c cVar, String str, String str2) {
            this.c = cVar;
            this.d = str;
            this.e = str2;
            this.f = new iy6(new C0301a((v48) cVar.d.get(1), this));
        }

        @Override // defpackage.b57
        public final wu0 L() {
            return this.f;
        }

        @Override // defpackage.b57
        public final long o() {
            String str = this.e;
            if (str == null) {
                return -1L;
            }
            byte[] bArr = gb9.a;
            try {
                return Long.parseLong(str);
            } catch (NumberFormatException unused) {
                return -1L;
            }
        }

        @Override // defpackage.b57
        public final j95 p() {
            String str = this.d;
            if (str != null) {
                Pattern pattern = j95.e;
                try {
                    return j95.a.a(str);
                } catch (IllegalArgumentException unused) {
                }
            }
            return null;
        }
    }

    public static final class b {
        public static String a(fz3 fz3Var) {
            fz3Var.getClass();
            gx0 gx0Var = gx0.e;
            return gx0.a.c(fz3Var.i).e("MD5").g();
        }

        public static int b(iy6 iy6Var) throws IOException {
            try {
                bu0 bu0Var = iy6Var.c;
                iy6Var.c0(1L);
                long j = 0;
                while (true) {
                    long j2 = j + 1;
                    if (!iy6Var.request(j2)) {
                        break;
                    }
                    byte bQ = bu0Var.Q(j);
                    if ((bQ >= 48 && bQ <= 57) || (j == 0 && bQ == 45)) {
                        j = j2;
                    }
                    if (j != 0) {
                        break;
                    }
                    ga1.b(16);
                    String string = Integer.toString(bQ, 16);
                    string.getClass();
                    throw new NumberFormatException("Expected a digit or '-' but was 0x".concat(string));
                }
                long jE0 = bu0Var.e0();
                String strS = iy6Var.S(Long.MAX_VALUE);
                if (jE0 >= 0 && jE0 <= SieveCacheKt.NodeLinkMask && strS.length() <= 0) {
                    return (int) jE0;
                }
                throw new IOException("expected an int but was \"" + jE0 + strS + '\"');
            } catch (NumberFormatException e) {
                ki0.d(e.getMessage());
                return 0;
            }
        }

        public static Set c(jv3 jv3Var) {
            int size = jv3Var.size();
            TreeSet treeSet = null;
            for (int i = 0; i < size; i++) {
                if ("Vary".equalsIgnoreCase(jv3Var.b(i))) {
                    String strG = jv3Var.g(i);
                    if (treeSet == null) {
                        Comparator comparator = String.CASE_INSENSITIVE_ORDER;
                        comparator.getClass();
                        treeSet = new TreeSet(comparator);
                    }
                    Iterator it = ta8.X(strG, new char[]{','}).iterator();
                    while (it.hasNext()) {
                        treeSet.add(ta8.f0((String) it.next()).toString());
                    }
                }
            }
            return treeSet == null ? ox2.b : treeSet;
        }
    }

    public final class d {
        public final un2.a a;
        public final s18 b;
        public final a c;
        public boolean d;

        public static final class a extends pj3 {
            public final /* synthetic */ lx0 c;
            public final /* synthetic */ d d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(lx0 lx0Var, d dVar, s18 s18Var) {
                super(s18Var);
                this.c = lx0Var;
                this.d = dVar;
            }

            @Override // defpackage.pj3, defpackage.s18, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                lx0 lx0Var = this.c;
                d dVar = this.d;
                synchronized (lx0Var) {
                    if (dVar.d) {
                        return;
                    }
                    dVar.d = true;
                    super.close();
                    this.d.a.b();
                }
            }
        }

        public d(un2.a aVar) {
            this.a = aVar;
            s18 s18VarD = aVar.d(1);
            this.b = s18VarD;
            this.c = new a(lx0.this, this, s18VarD);
        }

        public final void a() {
            synchronized (lx0.this) {
                if (this.d) {
                    return;
                }
                this.d = true;
                gb9.d(this.b);
                try {
                    this.a.a();
                } catch (IOException unused) {
                }
            }
        }
    }

    public lx0(File file) {
        file.getClass();
        this.b = new un2(file, ho8.h);
    }

    public final void a(b37 b37Var) {
        b37Var.getClass();
        un2 un2Var = this.b;
        String strA = b.a(b37Var.a);
        synchronized (un2Var) {
            strA.getClass();
            un2Var.v();
            un2Var.m();
            un2.Z(strA);
            un2.b bVar = un2Var.h.get(strA);
            if (bVar == null) {
                return;
            }
            un2Var.V(bVar);
            if (un2Var.f <= 10485760) {
                un2Var.n = false;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.b.close();
    }

    @Override // java.io.Flushable
    public final void flush() {
        this.b.flush();
    }

    public static final class c {
        public static final String k;
        public static final String l;
        public final fz3 a;
        public final jv3 b;
        public final String c;
        public final ts6 d;
        public final int e;
        public final String f;
        public final jv3 g;
        public final lu3 h;
        public final long i;
        public final long j;

        static {
            z86 z86Var = z86.a;
            z86.a.getClass();
            k = "OkHttp-Sent-Millis";
            z86.a.getClass();
            l = "OkHttp-Received-Millis";
        }

        public c(v48 v48Var) throws IOException {
            fz3 fz3VarA;
            yw8 yw8VarA;
            v48Var.getClass();
            try {
                iy6 iy6Var = new iy6(v48Var);
                String strS = iy6Var.S(Long.MAX_VALUE);
                try {
                    fz3.a aVar = new fz3.a();
                    aVar.c(null, strS);
                    fz3VarA = aVar.a();
                } catch (IllegalArgumentException unused) {
                    fz3VarA = null;
                }
                if (fz3VarA == null) {
                    IOException iOException = new IOException("Cache corruption for ".concat(strS));
                    z86 z86Var = z86.a;
                    z86.a.getClass();
                    z86.i("cache corruption", 5, iOException);
                    throw iOException;
                }
                this.a = fz3VarA;
                this.c = iy6Var.S(Long.MAX_VALUE);
                jv3.a aVar2 = new jv3.a();
                int iB = b.b(iy6Var);
                for (int i = 0; i < iB; i++) {
                    aVar2.b(iy6Var.S(Long.MAX_VALUE));
                }
                this.b = aVar2.e();
                k88 k88VarA = k88.a.a(iy6Var.S(Long.MAX_VALUE));
                this.d = k88VarA.a;
                this.e = k88VarA.b;
                this.f = k88VarA.c;
                jv3.a aVar3 = new jv3.a();
                int iB2 = b.b(iy6Var);
                for (int i2 = 0; i2 < iB2; i2++) {
                    aVar3.b(iy6Var.S(Long.MAX_VALUE));
                }
                String str = k;
                String strF = aVar3.f(str);
                String str2 = l;
                String strF2 = aVar3.f(str2);
                aVar3.g(str);
                aVar3.g(str2);
                this.i = strF != null ? Long.parseLong(strF) : 0L;
                this.j = strF2 != null ? Long.parseLong(strF2) : 0L;
                this.g = aVar3.e();
                if (aa4.e(this.a.a, ProxyConfig.MATCH_HTTPS)) {
                    String strS2 = iy6Var.S(Long.MAX_VALUE);
                    if (strS2.length() > 0) {
                        throw new IOException("expected \"\" but was \"" + strS2 + '\"');
                    }
                    yj1 yj1VarA = yj1.b.a(iy6Var.S(Long.MAX_VALUE));
                    List listA = a(iy6Var);
                    List listA2 = a(iy6Var);
                    if (iy6Var.m()) {
                        yw8VarA = yw8.SSL_3_0;
                    } else {
                        yw8.a aVar4 = yw8.Companion;
                        String strS3 = iy6Var.S(Long.MAX_VALUE);
                        aVar4.getClass();
                        yw8VarA = yw8.a.a(strS3);
                    }
                    yw8VarA.getClass();
                    this.h = new lu3(yw8VarA, yj1VarA, gb9.w(listA2), new ku3(gb9.w(listA)));
                } else {
                    this.h = null;
                }
                j59 j59Var = j59.a;
                v48Var.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    m96.c(v48Var, th);
                    throw th2;
                }
            }
        }

        public static List a(iy6 iy6Var) throws IOException {
            int iB = b.b(iy6Var);
            if (iB == -1) {
                return kx2.b;
            }
            try {
                CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                ArrayList arrayList = new ArrayList(iB);
                for (int i = 0; i < iB; i++) {
                    String strS = iy6Var.S(Long.MAX_VALUE);
                    bu0 bu0Var = new bu0();
                    gx0 gx0Var = gx0.e;
                    gx0 gx0VarA = gx0.a.a(strS);
                    if (gx0VarA == null) {
                        throw new IOException("Corrupt certificate in cache entry");
                    }
                    bu0Var.z0(gx0VarA);
                    arrayList.add(certificateFactory.generateCertificate(bu0Var.new a()));
                }
                return arrayList;
            } catch (CertificateException e) {
                ki0.d(e.getMessage());
                return null;
            }
        }

        public static void b(hy6 hy6Var, List list) throws IOException {
            try {
                hy6Var.h(list.size());
                hy6Var.writeByte(10);
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    byte[] encoded = ((Certificate) it.next()).getEncoded();
                    gx0 gx0Var = gx0.e;
                    encoded.getClass();
                    hy6Var.l(gx0.a.d(encoded).a());
                    hy6Var.writeByte(10);
                }
            } catch (CertificateEncodingException e) {
                ki0.d(e.getMessage());
            }
        }

        public final void c(un2.a aVar) {
            fz3 fz3Var = this.a;
            lu3 lu3Var = this.h;
            jv3 jv3Var = this.g;
            jv3 jv3Var2 = this.b;
            hy6 hy6Var = new hy6(aVar.d(0));
            try {
                hy6Var.l(fz3Var.i);
                hy6Var.writeByte(10);
                hy6Var.l(this.c);
                hy6Var.writeByte(10);
                hy6Var.h(jv3Var2.size());
                hy6Var.writeByte(10);
                int size = jv3Var2.size();
                for (int i = 0; i < size; i++) {
                    hy6Var.l(jv3Var2.b(i));
                    hy6Var.l(": ");
                    hy6Var.l(jv3Var2.g(i));
                    hy6Var.writeByte(10);
                }
                ts6 ts6Var = this.d;
                int i2 = this.e;
                String str = this.f;
                ts6Var.getClass();
                str.getClass();
                StringBuilder sb = new StringBuilder();
                if (ts6Var == ts6.HTTP_1_0) {
                    sb.append("HTTP/1.0");
                } else {
                    sb.append("HTTP/1.1");
                }
                sb.append(' ');
                sb.append(i2);
                sb.append(' ');
                sb.append(str);
                hy6Var.l(sb.toString());
                hy6Var.writeByte(10);
                hy6Var.h(jv3Var.size() + 2);
                hy6Var.writeByte(10);
                int size2 = jv3Var.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    hy6Var.l(jv3Var.b(i3));
                    hy6Var.l(": ");
                    hy6Var.l(jv3Var.g(i3));
                    hy6Var.writeByte(10);
                }
                hy6Var.l(k);
                hy6Var.l(": ");
                hy6Var.h(this.i);
                hy6Var.writeByte(10);
                hy6Var.l(l);
                hy6Var.l(": ");
                hy6Var.h(this.j);
                hy6Var.writeByte(10);
                if (aa4.e(fz3Var.a, ProxyConfig.MATCH_HTTPS)) {
                    hy6Var.writeByte(10);
                    lu3Var.getClass();
                    hy6Var.l(lu3Var.b.a);
                    hy6Var.writeByte(10);
                    b(hy6Var, lu3Var.a());
                    b(hy6Var, lu3Var.c);
                    hy6Var.l(lu3Var.a.a());
                    hy6Var.writeByte(10);
                }
                j59 j59Var = j59.a;
                hy6Var.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    m96.c(hy6Var, th);
                    throw th2;
                }
            }
        }

        public c(z47 z47Var) {
            jv3 jv3VarE;
            b37 b37Var = z47Var.b;
            this.a = b37Var.a;
            z47 z47Var2 = z47Var.i;
            z47Var2.getClass();
            jv3 jv3Var = z47Var2.b.c;
            jv3 jv3Var2 = z47Var.g;
            Set setC = b.c(jv3Var2);
            if (setC.isEmpty()) {
                jv3VarE = gb9.b;
            } else {
                jv3.a aVar = new jv3.a();
                int size = jv3Var.size();
                for (int i = 0; i < size; i++) {
                    String strB = jv3Var.b(i);
                    if (setC.contains(strB)) {
                        aVar.a(strB, jv3Var.g(i));
                    }
                }
                jv3VarE = aVar.e();
            }
            this.b = jv3VarE;
            this.c = b37Var.b;
            this.d = z47Var.c;
            this.e = z47Var.e;
            this.f = z47Var.d;
            this.g = jv3Var2;
            this.h = z47Var.f;
            this.i = z47Var.l;
            this.j = z47Var.m;
        }
    }
}
