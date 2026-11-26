package okhttp3;

import defpackage.aa4;
import defpackage.ah;
import defpackage.b37;
import defpackage.ev5;
import defpackage.f94;
import defpackage.gb9;
import defpackage.j87;
import defpackage.jy6;
import defpackage.ko2;
import defpackage.l02;
import defpackage.lx0;
import defpackage.nn1;
import defpackage.nw1;
import defpackage.px;
import defpackage.ts6;
import defpackage.tw1;
import defpackage.u81;
import defpackage.vh;
import defpackage.vp2;
import defpackage.y14;
import defpackage.y52;
import defpackage.yp5;
import defpackage.z86;
import java.net.ProxySelector;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes5.dex */
public class OkHttpClient implements Cloneable, okhttp3.a.InterfaceC0310a {
    public static final List<ts6> D = gb9.k(ts6.HTTP_2, ts6.HTTP_1_1);
    public static final List<tw1> E = gb9.k(tw1.e, tw1.f);
    public final int A;
    public final long B;
    public final j87 C;
    public final ko2 b;
    public final nw1 c;
    public final List<f94> d;
    public final List<f94> e;
    public final b.c f;
    public final boolean g;
    public final px h;
    public final boolean i;
    public final boolean j;
    public final l02 k;
    public final lx0 l;
    public final vp2 m;
    public final ProxySelector n;
    public final px o;
    public final SocketFactory p;
    public final SSLSocketFactory q;
    public final X509TrustManager r;
    public final List<tw1> s;
    public final List<ts6> t;
    public final HostnameVerifier u;
    public final u81 v;
    public final y14 w;
    public final int x;
    public final int y;
    public final int z;

    public static final class a {
        public long A;
        public j87 B;
        public ko2 a = new ko2();
        public nw1 b = new nw1();
        public final ArrayList c = new ArrayList();
        public final ArrayList d = new ArrayList();
        public b.c e;
        public boolean f;
        public px g;
        public boolean h;
        public boolean i;
        public l02 j;
        public lx0 k;
        public vp2 l;
        public ProxySelector m;
        public px n;
        public SocketFactory o;
        public SSLSocketFactory p;
        public X509TrustManager q;
        public List<tw1> r;
        public List<? extends ts6> s;
        public HostnameVerifier t;
        public u81 u;
        public y14 v;
        public int w;
        public int x;
        public int y;
        public int z;

        public a() {
            b bVar = b.NONE;
            bVar.getClass();
            this.e = new y52(bVar);
            this.f = true;
            px pxVar = px.c;
            this.g = pxVar;
            this.h = true;
            this.i = true;
            this.j = l02.a;
            this.l = vp2.b;
            this.n = pxVar;
            SocketFactory socketFactory = SocketFactory.getDefault();
            socketFactory.getClass();
            this.o = socketFactory;
            this.r = OkHttpClient.E;
            this.s = OkHttpClient.D;
            this.t = ev5.a;
            this.u = u81.c;
            this.x = 10000;
            this.y = 10000;
            this.z = 10000;
            this.A = 1024L;
        }
    }

    public OkHttpClient(a aVar) {
        SSLSocketFactory sSLSocketFactoryM;
        X509TrustManager x509TrustManagerN;
        y14 y14VarB;
        this.b = aVar.a;
        this.c = aVar.b;
        this.d = gb9.w(aVar.c);
        this.e = gb9.w(aVar.d);
        this.f = aVar.e;
        this.g = aVar.f;
        this.h = aVar.g;
        this.i = aVar.h;
        this.j = aVar.i;
        this.k = aVar.j;
        this.l = aVar.k;
        this.m = aVar.l;
        ProxySelector proxySelector = aVar.m;
        proxySelector = proxySelector == null ? ProxySelector.getDefault() : proxySelector;
        this.n = proxySelector == null ? yp5.a : proxySelector;
        this.o = aVar.n;
        this.p = aVar.o;
        List<tw1> list = aVar.r;
        this.s = list;
        this.t = aVar.s;
        this.u = aVar.t;
        this.x = aVar.w;
        this.y = aVar.x;
        this.z = aVar.y;
        this.A = aVar.z;
        this.B = aVar.A;
        j87 j87Var = aVar.B;
        this.C = j87Var == null ? new j87() : j87Var;
        List<tw1> list2 = list;
        if (!(list2 instanceof Collection) || !list2.isEmpty()) {
            Iterator<T> it = list2.iterator();
            while (true) {
                if (!it.hasNext()) {
                    this.q = null;
                    this.w = null;
                    this.r = null;
                    this.v = u81.c;
                    sSLSocketFactoryM = null;
                    y14VarB = null;
                    x509TrustManagerN = null;
                    break;
                }
                if (((tw1) it.next()).a) {
                    sSLSocketFactoryM = aVar.p;
                    if (sSLSocketFactoryM == null) {
                        z86 z86Var = z86.a;
                        x509TrustManagerN = z86.a.n();
                        this.r = x509TrustManagerN;
                        sSLSocketFactoryM = z86.a.m(x509TrustManagerN);
                        this.q = sSLSocketFactoryM;
                        y14VarB = z86.a.b(x509TrustManagerN);
                        this.w = y14VarB;
                        u81 u81Var = aVar.u;
                        u81Var.getClass();
                        this.v = aa4.e(u81Var.b, y14VarB) ? u81Var : new u81(u81Var.a, y14VarB);
                        break;
                    }
                    this.q = sSLSocketFactoryM;
                    y14VarB = aVar.v;
                    y14VarB.getClass();
                    this.w = y14VarB;
                    x509TrustManagerN = aVar.q;
                    x509TrustManagerN.getClass();
                    this.r = x509TrustManagerN;
                    u81 u81Var2 = aVar.u;
                    u81Var2.getClass();
                    this.v = aa4.e(u81Var2.b, y14VarB) ? u81Var2 : new u81(u81Var2.a, y14VarB);
                    break;
                }
            }
        } else {
            this.q = null;
            this.w = null;
            this.r = null;
            this.v = u81.c;
            sSLSocketFactoryM = null;
            y14VarB = null;
            x509TrustManagerN = null;
            break;
        }
        List<f94> list3 = this.e;
        List<f94> list4 = this.d;
        list4.getClass();
        if (list4.contains(null)) {
            vh.e(list4, "Null interceptor: ");
            throw null;
        }
        list3.getClass();
        if (list3.contains(null)) {
            vh.e(list3, "Null network interceptor: ");
            throw null;
        }
        List<tw1> list5 = this.s;
        if (!(list5 instanceof Collection) || !list5.isEmpty()) {
            Iterator<T> it2 = list5.iterator();
            while (it2.hasNext()) {
                if (((tw1) it2.next()).a) {
                    if (sSLSocketFactoryM == null) {
                        ah.f("sslSocketFactory == null");
                        throw null;
                    }
                    if (y14VarB == null) {
                        ah.f("certificateChainCleaner == null");
                        throw null;
                    }
                    if (x509TrustManagerN != null) {
                        return;
                    }
                    ah.f("x509TrustManager == null");
                    throw null;
                }
            }
        }
        if (sSLSocketFactoryM != null) {
            ah.f("Check failed.");
            throw null;
        }
        if (y14VarB != null) {
            ah.f("Check failed.");
            throw null;
        }
        if (x509TrustManagerN != null) {
            ah.f("Check failed.");
            throw null;
        }
        if (aa4.e(this.v, u81.c)) {
            return;
        }
        ah.f("Check failed.");
        throw null;
    }

    @Override // okhttp3.a.InterfaceC0310a
    public final jy6 b(b37 b37Var) {
        b37Var.getClass();
        return new jy6(this, b37Var);
    }

    public final Object clone() {
        return super.clone();
    }

    public final a e() {
        a aVar = new a();
        aVar.a = this.b;
        aVar.b = this.c;
        nn1.s(this.d, aVar.c);
        nn1.s(this.e, aVar.d);
        aVar.e = this.f;
        aVar.f = this.g;
        aVar.g = this.h;
        aVar.h = this.i;
        aVar.i = this.j;
        aVar.j = this.k;
        aVar.k = this.l;
        aVar.l = this.m;
        aVar.m = this.n;
        aVar.n = this.o;
        aVar.o = this.p;
        aVar.p = this.q;
        aVar.q = this.r;
        aVar.r = this.s;
        aVar.s = this.t;
        aVar.t = this.u;
        aVar.u = this.v;
        aVar.v = this.w;
        aVar.w = this.x;
        aVar.x = this.y;
        aVar.y = this.z;
        aVar.z = this.A;
        aVar.A = this.B;
        aVar.B = this.C;
        return aVar;
    }

    public OkHttpClient() {
        this(new a());
    }
}
