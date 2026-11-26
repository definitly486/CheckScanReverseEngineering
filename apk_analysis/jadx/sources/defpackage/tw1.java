package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes5.dex */
public final class tw1 {
    public static final tw1 e;
    public static final tw1 f;
    public final boolean a;
    public final boolean b;
    public final String[] c;
    public final String[] d;

    public static final class a {
        public boolean a = true;
        public String[] b;
        public String[] c;
        public boolean d;

        public final tw1 a() {
            return new tw1(this.a, this.d, this.b, this.c);
        }

        public final void b(yj1... yj1VarArr) {
            if (!this.a) {
                fg.c("no cipher suites for cleartext connections");
                return;
            }
            ArrayList arrayList = new ArrayList(yj1VarArr.length);
            for (yj1 yj1Var : yj1VarArr) {
                arrayList.add(yj1Var.a);
            }
            String[] strArr = (String[]) arrayList.toArray(new String[0]);
            c((String[]) Arrays.copyOf(strArr, strArr.length));
        }

        public final void c(String... strArr) {
            if (!this.a) {
                fg.c("no cipher suites for cleartext connections");
            } else if (strArr.length != 0) {
                this.b = (String[]) strArr.clone();
            } else {
                fg.c("At least one cipher suite is required");
            }
        }

        public final void d(yw8... yw8VarArr) {
            if (!this.a) {
                fg.c("no TLS versions for cleartext connections");
                return;
            }
            ArrayList arrayList = new ArrayList(yw8VarArr.length);
            for (yw8 yw8Var : yw8VarArr) {
                arrayList.add(yw8Var.a());
            }
            String[] strArr = (String[]) arrayList.toArray(new String[0]);
            e((String[]) Arrays.copyOf(strArr, strArr.length));
        }

        public final void e(String... strArr) {
            if (!this.a) {
                fg.c("no TLS versions for cleartext connections");
            } else if (strArr.length != 0) {
                this.c = (String[]) strArr.clone();
            } else {
                fg.c("At least one TLS version is required");
            }
        }
    }

    static {
        yj1 yj1Var = yj1.r;
        yj1 yj1Var2 = yj1.s;
        yj1 yj1Var3 = yj1.t;
        yj1 yj1Var4 = yj1.l;
        yj1 yj1Var5 = yj1.n;
        yj1 yj1Var6 = yj1.m;
        yj1 yj1Var7 = yj1.o;
        yj1 yj1Var8 = yj1.q;
        yj1 yj1Var9 = yj1.p;
        yj1[] yj1VarArr = {yj1Var, yj1Var2, yj1Var3, yj1Var4, yj1Var5, yj1Var6, yj1Var7, yj1Var8, yj1Var9};
        yj1[] yj1VarArr2 = {yj1Var, yj1Var2, yj1Var3, yj1Var4, yj1Var5, yj1Var6, yj1Var7, yj1Var8, yj1Var9, yj1.j, yj1.k, yj1.h, yj1.i, yj1.f, yj1.g, yj1.e};
        a aVar = new a();
        aVar.b((yj1[]) Arrays.copyOf(yj1VarArr, 9));
        yw8 yw8Var = yw8.TLS_1_3;
        yw8 yw8Var2 = yw8.TLS_1_2;
        aVar.d(yw8Var, yw8Var2);
        aVar.d = true;
        aVar.a();
        a aVar2 = new a();
        aVar2.b((yj1[]) Arrays.copyOf(yj1VarArr2, 16));
        aVar2.d(yw8Var, yw8Var2);
        aVar2.d = true;
        e = aVar2.a();
        a aVar3 = new a();
        aVar3.b((yj1[]) Arrays.copyOf(yj1VarArr2, 16));
        aVar3.d(yw8Var, yw8Var2, yw8.TLS_1_1, yw8.TLS_1_0);
        aVar3.d = true;
        aVar3.a();
        f = new tw1(false, false, null, null);
    }

    public tw1(boolean z, boolean z2, String[] strArr, String[] strArr2) {
        this.a = z;
        this.b = z2;
        this.c = strArr;
        this.d = strArr2;
    }

    public final List<yj1> a() {
        String[] strArr = this.c;
        if (strArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(yj1.b.a(str));
        }
        return qn1.t0(arrayList);
    }

    public final boolean b(SSLSocket sSLSocket) {
        if (!this.a) {
            return false;
        }
        String[] strArr = this.d;
        if (strArr != null && !gb9.i(strArr, sSLSocket.getEnabledProtocols(), gi5.b)) {
            return false;
        }
        String[] strArr2 = this.c;
        return strArr2 == null || gb9.i(strArr2, sSLSocket.getEnabledCipherSuites(), yj1.c);
    }

    public final List<yw8> c() {
        String[] strArr = this.d;
        if (strArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            yw8.Companion.getClass();
            arrayList.add(yw8.a.a(str));
        }
        return qn1.t0(arrayList);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof tw1)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        tw1 tw1Var = (tw1) obj;
        boolean z = tw1Var.a;
        boolean z2 = this.a;
        if (z2 != z) {
            return false;
        }
        if (z2) {
            return Arrays.equals(this.c, tw1Var.c) && Arrays.equals(this.d, tw1Var.d) && this.b == tw1Var.b;
        }
        return true;
    }

    public final int hashCode() {
        if (!this.a) {
            return 17;
        }
        String[] strArr = this.c;
        int iHashCode = (527 + (strArr != null ? Arrays.hashCode(strArr) : 0)) * 31;
        String[] strArr2 = this.d;
        return ((iHashCode + (strArr2 != null ? Arrays.hashCode(strArr2) : 0)) * 31) + (!this.b ? 1 : 0);
    }

    public final String toString() {
        if (!this.a) {
            return "ConnectionSpec()";
        }
        StringBuilder sb = new StringBuilder("ConnectionSpec(cipherSuites=");
        sb.append(Objects.toString(a(), "[all enabled]"));
        sb.append(", tlsVersions=");
        sb.append(Objects.toString(c(), "[all enabled]"));
        sb.append(", supportsTlsExtensions=");
        return sg.d(sb, this.b, ')');
    }
}
