package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.webkit.Profile;
import io.grpc.k;
import io.grpc.m;
import io.grpc.n;
import java.lang.ref.ReferenceQueue;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes5.dex */
public final class iz4 extends k<iz4> {
    public static final Method G;
    public final au7 a;
    public final au7 b;
    public final ArrayList c;
    public final n d;
    public final ArrayList e;
    public final String f;
    public final String g;
    public final yd2 h;
    public final ru1 i;
    public final long j;
    public final int k;
    public final int l;
    public final long m;
    public final long n;
    public final boolean o;
    public final i94 p;
    public final boolean q;
    public final boolean r;
    public final boolean s;
    public final boolean t;
    public final boolean u;
    public final boolean v;
    public final ArrayList w;
    public final hv5.e x;
    public final a y;
    public static final Logger z = Logger.getLogger(iz4.class.getName());
    public static final long A = 1800000;
    public static final long B = 1000;
    public static final au7 C = new au7(vs3.p);
    public static final yd2 D = yd2.d;
    public static final ru1 E = ru1.b;
    public static final Pattern F = Pattern.compile("[a-zA-Z][a-zA-Z0-9+.-]*:/.*");

    public interface a {
        int a();
    }

    public static final class b implements xl1 {
    }

    public static class c {
        public final f99 a;
        public final m b;

        public c(f99 f99Var, m mVar) {
            this.a = f99Var;
            this.b = mVar;
        }
    }

    static {
        Method declaredMethod;
        try {
            Class<?> cls = Class.forName("io.grpc.census.InternalCensusStatsAccessor");
            Class cls2 = Boolean.TYPE;
            declaredMethod = cls.getDeclaredMethod("getClientInterceptor", cls2, cls2, cls2, cls2);
        } catch (ClassNotFoundException e) {
            z.log(Level.FINE, "Unable to apply census stats", (Throwable) e);
            declaredMethod = null;
        } catch (NoSuchMethodException e2) {
            z.log(Level.FINE, "Unable to apply census stats", (Throwable) e2);
            declaredMethod = null;
        }
        G = declaredMethod;
    }

    public iz4(String str, hv5.e eVar, hv5.d dVar) {
        List<vv1> list;
        au7 au7Var = C;
        this.a = au7Var;
        this.b = au7Var;
        this.c = new ArrayList();
        this.d = n.a();
        this.e = new ArrayList();
        this.g = "pick_first";
        this.h = D;
        this.i = E;
        this.j = A;
        this.k = 5;
        this.l = 5;
        this.m = 16777216L;
        this.n = 1048576L;
        this.o = true;
        this.p = i94.e;
        this.q = true;
        this.r = true;
        this.s = true;
        this.t = true;
        this.u = true;
        this.v = true;
        this.w = new ArrayList();
        o8.l(str, TypedValues.AttributesType.S_TARGET);
        this.f = str;
        this.x = eVar;
        this.y = dVar;
        this.d = n.a();
        wv1 wv1VarA = wv1.a();
        synchronized (wv1VarA) {
            list = wv1VarA.a;
        }
        Iterator<vv1> it = list.iterator();
        while (it.hasNext()) {
            it.next().getClass();
        }
    }

    public final dz4 a() {
        SSLSocketFactory sSLSocketFactory;
        URI uri;
        c cVar;
        String str;
        xl1 xl1Var;
        xl1 xl1Var2;
        a99 a99VarA;
        String str2;
        hv5 hv5Var = hv5.this;
        boolean z2 = hv5Var.h != Long.MAX_VALUE;
        au7 au7Var = hv5Var.c;
        au7 au7Var2 = hv5Var.d;
        int[] iArr = hv5.b.b;
        hv5.c cVar2 = hv5Var.g;
        int i = iArr[cVar2.ordinal()];
        if (i == 1) {
            sSLSocketFactory = null;
        } else {
            if (i != 2) {
                kg.e(cVar2, "Unknown negotiation type: ");
                return null;
            }
            try {
                SSLSocketFactory socketFactory = hv5Var.e;
                if (socketFactory == null) {
                    socketFactory = SSLContext.getInstance(Profile.DEFAULT_PROFILE_NAME, y86.d.a).getSocketFactory();
                    hv5Var.e = socketFactory;
                }
                sSLSocketFactory = socketFactory;
            } catch (GeneralSecurityException e) {
                mg.e("TLS Provider failure", e);
                return null;
            }
        }
        hv5.f fVar = new hv5.f(au7Var, au7Var2, sSLSocketFactory, hv5Var.f, hv5Var.k, z2, hv5Var.h, hv5Var.i, hv5Var.j, hv5Var.l, hv5Var.b);
        boolean z3 = l63.a;
        String str3 = this.f;
        n nVar = this.d;
        if (z3) {
            StringBuilder sb = new StringBuilder();
            try {
                try {
                    a99VarA = a99.b(str3);
                } catch (URISyntaxException e2) {
                    sb.append(e2.getMessage());
                    a99VarA = null;
                }
                m mVarB = a99VarA != null ? nVar.b(a99VarA.a) : null;
                if (mVarB == null && !F.matcher(str3).matches()) {
                    synchronized (nVar) {
                        str2 = nVar.a;
                    }
                    BitSet bitSet = a99.h;
                    a99.a aVar = new a99.a();
                    Locale locale = Locale.ROOT;
                    aVar.c(str2.toLowerCase(locale));
                    aVar.f = a99.f("".toLowerCase(locale), a99.l);
                    aVar.b = a99.f(bj.c("/", str3), a99.o);
                    a99VarA = aVar.a();
                    mVarB = nVar.b(a99VarA.a);
                }
                if (mVarB == null) {
                    throw new IllegalArgumentException(me0.c("Could not find a NameResolverProvider for ", str3, sb.length() > 0 ? " (" + ((Object) sb) + ")" : ""));
                }
                cVar = new c(new f99.a(a99VarA), mVarB);
            } catch (IllegalArgumentException e3) {
                throw new URISyntaxException(str3, e3.getMessage());
            }
        } else {
            StringBuilder sb2 = new StringBuilder();
            try {
                uri = new URI(str3);
            } catch (URISyntaxException e4) {
                sb2.append(e4.getMessage());
                uri = null;
            }
            m mVarB2 = uri != null ? nVar.b(uri.getScheme()) : null;
            if (mVarB2 == null && !F.matcher(str3).matches()) {
                synchronized (nVar) {
                    str = nVar.a;
                }
                try {
                    URI uri2 = new URI(str, "", "/" + str3, null);
                    mVarB2 = nVar.b(uri2.getScheme());
                    uri = uri2;
                } catch (URISyntaxException e5) {
                    cg.h(e5);
                    return null;
                }
            }
            if (mVarB2 == null) {
                throw new IllegalArgumentException(me0.c("Could not find a NameResolverProvider for ", str3, sb2.length() > 0 ? " (" + ((Object) sb2) + ")" : ""));
            }
            cVar = new c(new f99.b(uri), mVarB2);
        }
        Set setSingleton = Collections.singleton(InetSocketAddress.class);
        m mVar = cVar.b;
        if (setSingleton != null && !setSingleton.containsAll(mVar.c())) {
            nz0.d("Address types of NameResolver '%s' for '%s' not supported by transport", new Object[]{"dns", cVar.a});
            return null;
        }
        f99 f99Var = cVar.a;
        m mVar2 = cVar.b;
        w33.a aVar2 = new w33.a();
        au7 au7Var3 = new au7(vs3.p);
        vs3.d dVar = vs3.r;
        f99Var.toString();
        ArrayList arrayList = new ArrayList(this.c.size());
        for (xl1 xl1Var3 : this.c) {
            if (xl1Var3 instanceof b) {
                throw null;
            }
            arrayList.add(xl1Var3);
        }
        synchronized (wv1.a()) {
        }
        if (this.r) {
            Method method = G;
            if (method != null) {
                try {
                    xl1Var2 = (xl1) method.invoke(null, Boolean.valueOf(this.s), Boolean.valueOf(this.t), Boolean.FALSE, Boolean.valueOf(this.u));
                } catch (IllegalAccessException e6) {
                    z.log(Level.FINE, "Unable to apply census stats", (Throwable) e6);
                    xl1Var2 = null;
                } catch (InvocationTargetException e7) {
                    z.log(Level.FINE, "Unable to apply census stats", (Throwable) e7);
                    xl1Var2 = null;
                }
            } else {
                xl1Var2 = null;
            }
            if (xl1Var2 != null) {
                arrayList.add(0, xl1Var2);
            }
        }
        if (this.v) {
            try {
                xl1Var = (xl1) Class.forName("io.grpc.census.InternalCensusTracingAccessor").getDeclaredMethod("getClientInterceptor", null).invoke(null, null);
            } catch (ClassNotFoundException e8) {
                z.log(Level.FINE, "Unable to apply census stats", (Throwable) e8);
                xl1Var = null;
            } catch (IllegalAccessException e9) {
                z.log(Level.FINE, "Unable to apply census stats", (Throwable) e9);
                xl1Var = null;
            } catch (NoSuchMethodException e10) {
                z.log(Level.FINE, "Unable to apply census stats", (Throwable) e10);
                xl1Var = null;
            } catch (InvocationTargetException e11) {
                z.log(Level.FINE, "Unable to apply census stats", (Throwable) e11);
                xl1Var = null;
            }
            if (xl1Var != null) {
                arrayList.add(0, xl1Var);
            }
        }
        ez4 ez4Var = new ez4(this, fVar, f99Var, mVar2, aVar2, au7Var3, dVar, arrayList, pv8.v1);
        ReferenceQueue<jz4> referenceQueue = jz4.b;
        ConcurrentHashMap concurrentHashMap = jz4.c;
        jz4 jz4Var = new jz4(ez4Var);
        new jz4.a(jz4Var, ez4Var, referenceQueue, concurrentHashMap);
        return jz4Var;
    }
}
