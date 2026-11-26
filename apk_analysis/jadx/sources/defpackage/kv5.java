package defpackage;

import com.google.common.io.BaseEncoding;
import io.grpc.c;
import java.io.EOFException;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes5.dex */
public final class kv5 extends t {
    public static final bu0 r = new bu0();
    public final ra5<?, ?> j;
    public final String k;
    public final g88 l;
    public final String m;
    public final b n;
    public final a o;
    public final io.grpc.a p;
    public boolean q;

    public class a {
        public a() {
        }

        public final void a(la5 la5Var, byte[] bArr) {
            r46.c();
            try {
                String strConcat = "/".concat(kv5.this.j.b);
                if (bArr != null) {
                    kv5.this.q = true;
                    strConcat = strConcat + "?" + BaseEncoding.a.c(bArr);
                }
                synchronized (kv5.this.n.x) {
                    kv5.this.n.p(la5Var, strConcat);
                }
                r46.a.getClass();
            } catch (Throwable th) {
                try {
                    r46.a.getClass();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    public class b extends gy3 implements i06.a {
        public boolean A;
        public boolean B;
        public boolean C;
        public int D;
        public int E;
        public final j13 F;
        public final i06 G;
        public final lv5 H;
        public boolean I;
        public final lj8 J;
        public i06.b K;
        public int L;
        public final int w;
        public final Object x;
        public ArrayList y;
        public final bu0 z;

        public b(int i, g88 g88Var, Object obj, j13 j13Var, i06 i06Var, lv5 lv5Var, int i2, io.grpc.b bVar) {
            super(i, g88Var, kv5.this.c, bVar);
            this.t = StandardCharsets.UTF_8;
            this.z = new bu0();
            this.A = false;
            this.B = false;
            this.C = false;
            this.I = true;
            this.L = -1;
            o8.l(obj, "lock");
            this.x = obj;
            this.F = j13Var;
            this.G = i06Var;
            this.H = lv5Var;
            this.D = i2;
            this.E = i2;
            this.w = i2;
            r46.a.getClass();
            this.J = a34.a;
        }

        @Override // da5.b
        public final void b(int i) {
            int i2 = this.E - i;
            this.E = i2;
            float f = i2;
            int i3 = this.w;
            if (f <= i3 * 0.5f) {
                int i4 = i3 - i2;
                this.D += i4;
                this.E = i2 + i4;
                this.F.T(this.L, i4);
            }
        }

        @Override // da5.b
        public final void c(boolean z) {
            boolean z2 = this.o;
            lv5 lv5Var = this.H;
            int i = this.L;
            if (z2) {
                lv5Var.g(i, null, dm1.a.PROCESSED, false, null, null);
            } else {
                lv5Var.g(i, null, dm1.a.PROCESSED, false, q03.CANCEL, null);
            }
            o8.s(this.p, "status should have been reported on deframer closed");
            this.m = true;
            if (this.q && z) {
                j(h88.l.h("Encountered end-of-stream mid-frame"), true, new la5());
            }
            t.b.a aVar = this.n;
            if (aVar != null) {
                aVar.run();
                this.n = null;
            }
        }

        public final void m(h88 h88Var, boolean z, la5 la5Var) throws EOFException {
            if (this.C) {
                return;
            }
            this.C = true;
            boolean z2 = this.I;
            lv5 lv5Var = this.H;
            if (!z2) {
                lv5Var.g(this.L, h88Var, dm1.a.PROCESSED, z, q03.CANCEL, la5Var);
                return;
            }
            LinkedList linkedList = lv5Var.H;
            kv5 kv5Var = kv5.this;
            linkedList.remove(kv5Var);
            lv5Var.l(kv5Var);
            this.y = null;
            this.z.p();
            this.I = false;
            if (la5Var == null) {
                la5Var = new la5();
            }
            j(h88Var, true, la5Var);
        }

        public final void n(Throwable th) throws EOFException {
            m(h88.e(th), true, new la5());
        }

        public final void o(bu0 bu0Var, boolean z, boolean z2) {
            if (this.C) {
                return;
            }
            if (!this.I) {
                o8.s(this.L != -1, "streamId should be set");
                this.G.a(z, this.K, bu0Var, z2);
            } else {
                this.z.H(bu0Var, (int) bu0Var.c);
                this.A |= z;
                this.B |= z2;
            }
        }

        /* JADX WARN: Code duplicated, block: B:96:0x0261  */
        /* JADX WARN: Multi-variable type inference failed */
        public final void p(la5 la5Var, String str) {
            byte[] bArr;
            h88 h88VarH;
            h88 h88Var;
            kv5 kv5Var = kv5.this;
            String str2 = kv5Var.m;
            String str3 = kv5Var.k;
            boolean z = kv5Var.q;
            lv5 lv5Var = this.H;
            boolean z2 = lv5Var.D == null;
            zu3 zu3Var = hv3.a;
            o8.l(la5Var, "headers");
            o8.l(str2, "authority");
            la5Var.a(vs3.i);
            la5Var.a(vs3.j);
            la5.b bVar = vs3.k;
            la5Var.a(bVar);
            Charset charset = n94.a;
            ArrayList arrayList = new ArrayList(la5Var.b + 7);
            if (z2) {
                arrayList.add(hv3.b);
            } else {
                arrayList.add(hv3.a);
            }
            if (z) {
                arrayList.add(hv3.d);
            } else {
                arrayList.add(hv3.c);
            }
            arrayList.add(new zu3(zu3.h, str2));
            arrayList.add(new zu3(zu3.f, str));
            arrayList.add(new zu3(bVar.a, str3));
            arrayList.add(hv3.e);
            arrayList.add(hv3.f);
            Logger logger = v29.a;
            int i = la5Var.b * 2;
            byte[][] bArr2 = new byte[i][];
            Object[] objArr = la5Var.a;
            if (objArr instanceof byte[][]) {
                System.arraycopy(objArr, 0, bArr2, 0, i);
            } else {
                for (int i2 = 0; i2 < la5Var.b; i2++) {
                    int i3 = i2 * 2;
                    Object[] objArr2 = la5Var.a;
                    bArr2[i3] = (byte[]) objArr2[i3];
                    int i4 = i3 + 1;
                    Object obj = objArr2[i4];
                    if (obj instanceof byte[]) {
                        bArr = (byte[]) obj;
                    } else {
                        ((la5.e) obj).getClass();
                        bArr = null;
                    }
                    bArr2[i4] = bArr;
                }
            }
            int i5 = 0;
            for (int i6 = 0; i6 < i; i6 += 2) {
                byte[] bArr3 = bArr2[i6];
                byte[] bArr4 = bArr2[i6 + 1];
                if (v29.a(bArr3, v29.b)) {
                    bArr2[i5] = bArr3;
                    bArr2[i5 + 1] = n94.b.c(bArr4).getBytes(StandardCharsets.US_ASCII);
                } else {
                    int length = bArr4.length;
                    int i7 = 0;
                    while (true) {
                        if (i7 >= length) {
                            bArr2[i5] = bArr3;
                            bArr2[i5 + 1] = bArr4;
                        } else {
                            byte b = bArr4[i7];
                            if (b < 32 || b > 126) {
                                String str4 = new String(bArr3, StandardCharsets.US_ASCII);
                                Logger logger2 = v29.a;
                                StringBuilder sbD = n7.d("Metadata key=", str4, ", value=");
                                sbD.append(Arrays.toString(bArr4));
                                sbD.append(" contains invalid ASCII characters");
                                logger2.warning(sbD.toString());
                            } else {
                                i7++;
                            }
                        }
                    }
                }
                i5 += 2;
            }
            if (i5 != i) {
                bArr2 = (byte[][]) Arrays.copyOfRange(bArr2, 0, i5);
            }
            for (int i8 = 0; i8 < bArr2.length; i8 += 2) {
                gx0 gx0VarQ = gx0.q(bArr2[i8]);
                byte[] bArr5 = gx0VarQ.b;
                if (bArr5.length != 0 && bArr5[0] != 58) {
                    arrayList.add(new zu3(gx0VarQ, gx0.q(bArr2[i8 + 1])));
                }
            }
            this.y = arrayList;
            String str5 = kv5Var.m;
            boolean z3 = lv5.X;
            lv5.g gVar = lv5Var.R;
            h88 h88Var2 = lv5Var.x;
            if (h88Var2 != null) {
                kv5Var.n.i(h88Var2, dm1.a.MISCARRIED, true, new la5());
                return;
            }
            if ((lv5Var.F instanceof SSLSocket) && !str5.equals(lv5Var.d)) {
                if (gVar.containsKey(str5)) {
                    h88Var = (h88) gVar.get(str5);
                } else {
                    X509TrustManager x509TrustManager = lv5Var.Q;
                    Logger logger3 = lv5.W;
                    h88 h88VarH2 = lv5Var.E.verify(str5, ((SSLSocket) lv5Var.F).getSession()) ? h88.e : h88.m.h("HostNameVerifier verification failed for authority '" + str5 + "'");
                    if (!h88VarH2.f() && !z3) {
                        logger3.log(Level.WARNING, "HostNameVerifier verification failed for authority '" + str5 + "'. This will be an error in the future.");
                    }
                    if (!h88VarH2.f()) {
                        h88VarH = h88VarH2;
                    } else if (x509TrustManager == null) {
                        h88VarH = h88.m.h("Could not verify authority '" + str5 + "' for the rpc with no X509TrustManager available");
                    } else if (lv5.Y.isInstance(x509TrustManager)) {
                        try {
                            Certificate[] peerCertificates = lv5Var.b.getPeerCertificates();
                            X509Certificate[] x509CertificateArr = new X509Certificate[peerCertificates.length];
                            for (int i9 = 0; i9 < peerCertificates.length; i9++) {
                                x509CertificateArr[i9] = (X509Certificate) peerCertificates[i9];
                            }
                            lv5.Z.invoke(x509TrustManager, x509CertificateArr, "RSA", new lv5.h((SSLSocket) lv5Var.F, str5));
                            h88VarH = h88.e;
                        } catch (IllegalAccessException e) {
                            e = e;
                            h88VarH = h88.m.g(e).h("Peer verification failed");
                        } catch (InvocationTargetException e2) {
                            e = e2;
                            h88VarH = h88.m.g(e).h("Peer verification failed");
                        } catch (SSLPeerUnverifiedException e3) {
                            e = e3;
                            h88VarH = h88.m.g(e).h("Peer verification failed");
                        }
                        Throwable th = h88VarH.c;
                        String str6 = h88VarH.b;
                        if (th != null) {
                            logger3.log(Level.WARNING, ni0.c(str6, ". This will be an error in the future."), h88VarH.c);
                        } else {
                            logger3.log(Level.WARNING, str6 + ". This will be an error in the future.");
                        }
                    } else {
                        h88VarH = h88VarH2;
                    }
                    gVar.put(str5, h88VarH);
                    h88Var = h88VarH;
                }
                if (!h88Var.f() && z3) {
                    kv5Var.n.i(h88Var, dm1.a.PROCESSED, true, new la5());
                    return;
                }
            }
            if (lv5Var.p.size() < lv5Var.G) {
                lv5Var.s(kv5Var);
                return;
            }
            lv5Var.H.add(kv5Var);
            if (!lv5Var.B) {
                lv5Var.B = true;
                if4 if4Var = lv5Var.J;
                if (if4Var != null) {
                    if4Var.b();
                }
            }
            if (kv5Var.e) {
                lv5Var.S.o(kv5Var, true);
            }
        }

        public final void q(int i, bu0 bu0Var, boolean z) throws Throwable {
            Throwable th;
            long j = bu0Var.c;
            int i2 = this.D - (((int) j) + i);
            this.D = i2;
            this.E -= i;
            if (i2 < 0) {
                this.F.h0(this.L, q03.FLOW_CONTROL_ERROR);
                this.H.g(this.L, h88.l.h("Received data size exceeded our receiving window size"), dm1.a.PROCESSED, false, null, null);
                return;
            }
            pv5 pv5Var = new pv5(bu0Var);
            h88 h88Var = this.r;
            boolean z2 = false;
            if (h88Var != null) {
                Charset charset = this.t;
                ey6.b bVar = ey6.a;
                o8.l(charset, "charset");
                int i3 = (int) bu0Var.c;
                byte[] bArr = new byte[i3];
                pv5Var.G(bArr, 0, i3);
                this.r = h88Var.b("DATA-----------------------------\n".concat(new String(bArr, charset)));
                pv5Var.close();
                if (this.r.b.length() > 1000 || z) {
                    m(this.r, false, this.s);
                    return;
                }
                return;
            }
            if (!this.u) {
                pv5Var.close();
                m(h88.l.h("headers not received before payload"), false, new la5());
                return;
            }
            int i4 = (int) j;
            try {
                if (this.p) {
                    t.i.log(Level.INFO, "Received data on closed stream");
                    pv5Var.close();
                } else {
                    try {
                        this.a.b(pv5Var);
                    } catch (Throwable th2) {
                        try {
                            n(th2);
                        } catch (Throwable th3) {
                            th = th3;
                            if (!z2) {
                                throw th;
                            }
                            pv5Var.close();
                            throw th;
                        }
                    }
                }
                if (z) {
                    if (i4 > 0) {
                        this.r = h88.l.h("Received unexpected EOS on non-empty DATA frame from server");
                    } else {
                        this.r = h88.l.h("Received unexpected EOS on empty DATA frame from server");
                    }
                    la5 la5Var = new la5();
                    this.s = la5Var;
                    j(this.r, false, la5Var);
                }
            } catch (Throwable th4) {
                th = th4;
                z2 = true;
            }
        }

        public final void r(ArrayList arrayList, boolean z) throws EOFException {
            h88 h88VarB;
            la5.f fVar = gy3.v;
            if (z) {
                byte[][] bArrA = jb9.a(arrayList);
                int length = bArrA.length / 2;
                la5 la5Var = new la5();
                la5Var.b = length;
                la5Var.a = bArrA;
                h88 h88VarL = this.r;
                if (h88VarL == null && !this.u) {
                    h88VarL = gy3.l(la5Var);
                    this.r = h88VarL;
                    if (h88VarL != null) {
                        this.s = la5Var;
                    }
                }
                if (h88VarL != null) {
                    h88 h88VarB2 = h88VarL.b("trailers: " + la5Var);
                    this.r = h88VarB2;
                    m(h88VarB2, false, this.s);
                    return;
                }
                la5.f fVar2 = o94.b;
                h88 h88Var = (h88) la5Var.c(fVar2);
                if (h88Var != null) {
                    h88VarB = h88Var.h((String) la5Var.c(o94.a));
                } else if (this.u) {
                    h88VarB = h88.g.h("missing GRPC status in response");
                } else {
                    Integer num = (Integer) la5Var.c(fVar);
                    h88VarB = (num != null ? vs3.f(num.intValue()) : h88.l.h("missing HTTP status code")).b("missing GRPC status, inferred error from HTTP status code");
                }
                la5Var.a(fVar);
                la5Var.a(fVar2);
                la5Var.a(o94.a);
                if (this.p) {
                    t.i.log(Level.INFO, "Received trailers on closed stream:\n {1}\n {2}", new Object[]{h88VarB, la5Var});
                    return;
                }
                for (y14 y14Var : this.i.a) {
                    ((c) y14Var).X(la5Var);
                }
                j(h88VarB, false, la5Var);
                return;
            }
            byte[][] bArrA2 = jb9.a(arrayList);
            int length2 = bArrA2.length / 2;
            la5 la5Var2 = new la5();
            la5Var2.b = length2;
            la5Var2.a = bArrA2;
            h88 h88Var2 = this.r;
            if (h88Var2 != null) {
                this.r = h88Var2.b("headers: " + la5Var2);
                return;
            }
            try {
                if (this.u) {
                    h88 h88VarH = h88.l.h("Received headers twice");
                    this.r = h88VarH;
                    this.r = h88VarH.b("headers: " + la5Var2);
                    this.s = la5Var2;
                    this.t = gy3.k(la5Var2);
                    return;
                }
                Integer num2 = (Integer) la5Var2.c(fVar);
                if (num2 != null && num2.intValue() >= 100 && num2.intValue() < 200) {
                    h88 h88Var3 = this.r;
                    if (h88Var3 != null) {
                        this.r = h88Var3.b("headers: " + la5Var2);
                        this.s = la5Var2;
                        this.t = gy3.k(la5Var2);
                        return;
                    }
                    return;
                }
                this.u = true;
                h88 h88VarL2 = gy3.l(la5Var2);
                this.r = h88VarL2;
                if (h88VarL2 != null) {
                    this.r = h88VarL2.b("headers: " + la5Var2);
                    this.s = la5Var2;
                    this.t = gy3.k(la5Var2);
                    return;
                }
                la5Var2.a(fVar);
                la5Var2.a(o94.b);
                la5Var2.a(o94.a);
                h(la5Var2);
                h88 h88Var4 = this.r;
                if (h88Var4 != null) {
                    this.r = h88Var4.b("headers: " + la5Var2);
                    this.s = la5Var2;
                    this.t = gy3.k(la5Var2);
                }
            } catch (Throwable th) {
                h88 h88Var5 = this.r;
                if (h88Var5 != null) {
                    this.r = h88Var5.b("headers: " + la5Var2);
                    this.s = la5Var2;
                    this.t = gy3.k(la5Var2);
                }
                throw th;
            }
        }
    }

    public kv5(ra5 ra5Var, la5 la5Var, j13 j13Var, lv5 lv5Var, i06 i06Var, Object obj, int i, int i2, String str, String str2, g88 g88Var, g39 g39Var, io.grpc.b bVar) {
        super(new x65(4), g88Var, g39Var, la5Var, bVar, false);
        this.o = new a();
        this.q = false;
        this.l = g88Var;
        this.j = ra5Var;
        this.m = str;
        this.k = str2;
        this.p = lv5Var.w;
        String str3 = ra5Var.b;
        this.n = new b(i, g88Var, obj, j13Var, i06Var, lv5Var, i2, bVar);
    }

    @Override // defpackage.t, defpackage.t1
    public final t1.a n() {
        return this.n;
    }

    @Override // defpackage.t
    public final a o() {
        return this.o;
    }

    @Override // defpackage.t
    /* JADX INFO: renamed from: q */
    public final b n() {
        return this.n;
    }
}
