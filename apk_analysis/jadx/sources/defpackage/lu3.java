package defpackage;

import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;

/* JADX INFO: loaded from: classes5.dex */
public final class lu3 {
    public final yw8 a;
    public final yj1 b;
    public final List<Certificate> c;
    public final fh8 d;

    public static final class a {

        /* JADX INFO: renamed from: lu3$a$a, reason: collision with other inner class name */
        public static final class C0300a extends gh4 implements ll3<List<? extends Certificate>> {
            public final /* synthetic */ List<Certificate> f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C0300a(List<? extends Certificate> list) {
                super(0);
                this.f = list;
            }

            @Override // defpackage.ll3
            public final List<? extends Certificate> invoke() {
                return this.f;
            }
        }

        public static lu3 a(SSLSession sSLSession) throws IOException {
            List listK;
            List listK2 = kx2.b;
            String cipherSuite = sSLSession.getCipherSuite();
            if (cipherSuite == null) {
                ah.f("cipherSuite == null");
                return null;
            }
            if (cipherSuite.equals("TLS_NULL_WITH_NULL_NULL") ? true : cipherSuite.equals("SSL_NULL_WITH_NULL_NULL")) {
                ki0.d("cipherSuite == ".concat(cipherSuite));
                return null;
            }
            yj1 yj1VarA = yj1.b.a(cipherSuite);
            String protocol = sSLSession.getProtocol();
            if (protocol == null) {
                ah.f("tlsVersion == null");
                return null;
            }
            if ("NONE".equals(protocol)) {
                ki0.d("tlsVersion == NONE");
                return null;
            }
            yw8.Companion.getClass();
            yw8 yw8VarA = yw8.a.a(protocol);
            try {
                Certificate[] peerCertificates = sSLSession.getPeerCertificates();
                listK = peerCertificates != null ? gb9.k(Arrays.copyOf(peerCertificates, peerCertificates.length)) : listK2;
            } catch (SSLPeerUnverifiedException unused) {
            }
            Certificate[] localCertificates = sSLSession.getLocalCertificates();
            if (localCertificates != null) {
                listK2 = gb9.k(Arrays.copyOf(localCertificates, localCertificates.length));
            }
            return new lu3(yw8VarA, yj1VarA, listK2, new C0300a(listK));
        }
    }

    public static final class b extends gh4 implements ll3<List<? extends Certificate>> {
        public final /* synthetic */ ll3<List<Certificate>> f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public b(ll3<? extends List<? extends Certificate>> ll3Var) {
            super(0);
            this.f = ll3Var;
        }

        @Override // defpackage.ll3
        public final List<? extends Certificate> invoke() {
            try {
                return this.f.invoke();
            } catch (SSLPeerUnverifiedException unused) {
                return kx2.b;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public lu3(yw8 yw8Var, yj1 yj1Var, List<? extends Certificate> list, ll3<? extends List<? extends Certificate>> ll3Var) {
        yw8Var.getClass();
        this.a = yw8Var;
        this.b = yj1Var;
        this.c = list;
        this.d = new fh8(new b(ll3Var));
    }

    public final List<Certificate> a() {
        return (List) this.d.getValue();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof lu3)) {
            return false;
        }
        lu3 lu3Var = (lu3) obj;
        return lu3Var.a == this.a && lu3Var.b == this.b && aa4.e(lu3Var.a(), a()) && lu3Var.c.equals(this.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + ((a().hashCode() + ((this.b.hashCode() + ((this.a.hashCode() + 527) * 31)) * 31)) * 31);
    }

    public final String toString() {
        String type;
        String type2;
        List<Certificate> listA = a();
        ArrayList arrayList = new ArrayList(kn1.q(listA, 10));
        for (Certificate certificate : listA) {
            if (certificate instanceof X509Certificate) {
                type2 = ((X509Certificate) certificate).getSubjectDN().toString();
            } else {
                type2 = certificate.getType();
                type2.getClass();
            }
            arrayList.add(type2);
        }
        String string = arrayList.toString();
        StringBuilder sb = new StringBuilder("Handshake{tlsVersion=");
        sb.append(this.a);
        sb.append(" cipherSuite=");
        sb.append(this.b);
        sb.append(" peerCertificates=");
        sb.append(string);
        sb.append(" localCertificates=");
        List<Certificate> list = this.c;
        ArrayList arrayList2 = new ArrayList(kn1.q(list, 10));
        for (Certificate certificate2 : list) {
            if (certificate2 instanceof X509Certificate) {
                type = ((X509Certificate) certificate2).getSubjectDN().toString();
            } else {
                type = certificate2.getType();
                type.getClass();
            }
            arrayList2.add(type);
        }
        sb.append(arrayList2);
        sb.append('}');
        return sb.toString();
    }
}
