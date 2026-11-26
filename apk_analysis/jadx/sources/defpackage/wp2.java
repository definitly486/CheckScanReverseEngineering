package defpackage;

import com.google.common.base.VerifyException;
import com.google.gson.stream.JsonReader;
import com.tapjoy.TJAdUnitConstants;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.grpc.l;
import java.io.IOException;
import java.io.StringReader;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public final class wp2 extends l {
    public static final Logger s;
    public static final Set<String> t;
    public static final boolean u;
    public static final boolean v;
    public static final boolean w;
    public static final d x;
    public static String y;
    public final zs6 b;
    public final Random c = new Random();
    public volatile a d = a.INSTANCE;
    public final AtomicReference<c> e = new AtomicReference<>();
    public final String f;
    public final String g;
    public final int h;
    public final pq5<Executor> i;
    public final long j;
    public final ch8 k;
    public final gd7 l;
    public final a98 m;
    public boolean n;
    public boolean o;
    public Executor p;
    public boolean q;
    public l.d r;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final /* synthetic */ a[] $VALUES;
        public static final a INSTANCE;

        static {
            a aVar = new a("INSTANCE", 0);
            INSTANCE = aVar;
            $VALUES = new a[]{aVar};
        }

        public a() {
            throw null;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) $VALUES.clone();
        }
    }

    public final class b implements Runnable {
        public final l.d b;

        public class a implements Runnable {
            public final /* synthetic */ boolean b;

            public a(boolean z) {
                this.b = z;
            }

            @Override // java.lang.Runnable
            public final void run() {
                wp2 wp2Var = wp2.this;
                if (this.b) {
                    wp2Var.n = true;
                    if (wp2Var.j > 0) {
                        a98 a98Var = wp2Var.m;
                        a98Var.b = false;
                        a98Var.b();
                    }
                }
                wp2Var.q = false;
            }
        }

        public b(l.d dVar) {
            o8.l(dVar, "savedListener");
            this.b = dVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            wp2 wp2Var = wp2.this;
            String str = wp2Var.g;
            ch8 ch8Var = wp2Var.k;
            Logger logger = wp2.s;
            Level level = Level.FINER;
            if (logger.isLoggable(level)) {
                logger.finer("Attempting DNS resolution of " + str);
            }
            boolean z = false;
            int i = 1;
            l.e eVarE = null;
            try {
                try {
                    ys6 ys6VarA = wp2Var.b.a(InetSocketAddress.createUnresolved(str, wp2Var.h));
                    io.grpc.d dVar = ys6VarA != null ? new io.grpc.d(ys6VarA) : null;
                    if (dVar != null) {
                        if (logger.isLoggable(level)) {
                            logger.finer("Using proxy address " + dVar);
                        }
                        l.e.a aVarA = l.e.a();
                        n88<List<io.grpc.d>> n88Var = new n88<>(null, Collections.singletonList(dVar));
                        aVarA.a = n88Var;
                        eVarE = new l.e(n88Var, aVarA.b, aVarA.c);
                    } else {
                        eVarE = wp2Var.e();
                    }
                    ch8Var.execute(new au(i, this, eVarE));
                    ch8Var.execute(new a(eVarE.a.a()));
                } catch (IOException e) {
                    ch8Var.execute(new g00(2, this, e));
                    if (eVarE != null && eVarE.a.a()) {
                        z = true;
                    }
                    ch8Var.execute(new a(z));
                }
            } catch (Throwable th) {
                if (eVarE != null && eVarE.a.a()) {
                    z = true;
                }
                ch8Var.execute(new a(z));
                throw th;
            }
        }
    }

    public interface c {
        List<String> a(String str);
    }

    public interface d {
        lb4.b a();

        Throwable b();
    }

    static {
        Logger logger = Logger.getLogger(wp2.class.getName());
        s = logger;
        t = Collections.unmodifiableSet(new HashSet(Arrays.asList("clientLanguage", "percentage", "clientHostname", "serviceConfig")));
        String property = System.getProperty("io.grpc.internal.DnsNameResolverProvider.enable_jndi", TJAdUnitConstants.String.TRUE);
        String property2 = System.getProperty("io.grpc.internal.DnsNameResolverProvider.enable_jndi_localhost", TJAdUnitConstants.String.FALSE);
        String property3 = System.getProperty("io.grpc.internal.DnsNameResolverProvider.enable_service_config", TJAdUnitConstants.String.FALSE);
        u = Boolean.parseBoolean(property);
        v = Boolean.parseBoolean(property2);
        w = Boolean.parseBoolean(property3);
        d dVar = null;
        try {
            try {
                try {
                    d dVar2 = (d) Class.forName("lb4", true, wp2.class.getClassLoader()).asSubclass(d.class).getConstructor(null).newInstance(null);
                    if (dVar2.b() != null) {
                        logger.log(Level.FINE, "JndiResourceResolverFactory not available, skipping.", dVar2.b());
                    } else {
                        dVar = dVar2;
                    }
                } catch (Exception e) {
                    logger.log(Level.FINE, "Can't construct JndiResourceResolverFactory, skipping.", (Throwable) e);
                }
            } catch (Exception e2) {
                logger.log(Level.FINE, "Can't find JndiResourceResolverFactory ctor, skipping.", (Throwable) e2);
            }
        } catch (ClassCastException e3) {
            logger.log(Level.FINE, "Unable to cast JndiResourceResolverFactory, skipping.", (Throwable) e3);
        } catch (ClassNotFoundException e4) {
            logger.log(Level.FINE, "Unable to find JndiResourceResolverFactory, skipping.", (Throwable) e4);
        }
        x = dVar;
    }

    public wp2(String str, l.a aVar, yt7.c cVar, a98 a98Var, boolean z) {
        long nanos;
        o8.l(aVar, "args");
        o8.l(str, "name");
        URI uriCreate = URI.create("//".concat(str));
        o8.h(uriCreate.getHost() != null, "Invalid DNS name: %s", str);
        String authority = uriCreate.getAuthority();
        o8.m(authority, "nameUri (%s) doesn't have an authority", uriCreate);
        this.f = authority;
        this.g = uriCreate.getHost();
        if (uriCreate.getPort() == -1) {
            this.h = aVar.a;
        } else {
            this.h = uriCreate.getPort();
        }
        zs6 zs6Var = aVar.b;
        o8.l(zs6Var, "proxyDetector");
        this.b = zs6Var;
        ez4.h hVar = aVar.g;
        if (hVar != null) {
            this.i = new fc3(hVar);
        } else {
            this.i = new au7(cVar);
        }
        if (z) {
            nanos = 30000000000L;
        } else {
            String property = System.getProperty("networkaddress.cache.ttl");
            nanos = 30;
            if (property != null) {
                try {
                    nanos = Long.parseLong(property);
                } catch (NumberFormatException unused) {
                    s.log(Level.WARNING, "Property({0}) valid is not valid number format({1}), fall back to default({2})", new Object[]{"networkaddress.cache.ttl", property, 30L});
                }
            }
            if (nanos > 0) {
                nanos = TimeUnit.SECONDS.toNanos(nanos);
            }
        }
        this.j = nanos;
        this.m = a98Var;
        ch8 ch8Var = aVar.c;
        o8.l(ch8Var, "syncContext");
        this.k = ch8Var;
        gd7 gd7Var = aVar.d;
        o8.l(gd7Var, "serviceConfigParser");
        this.l = gd7Var;
    }

    public static Map<String, ?> f(Map<String, ?> map, Random random, String str) {
        for (Map.Entry<String, ?> entry : map.entrySet()) {
            tc9.a("Bad key: %s", t.contains(entry.getKey()), entry);
        }
        List listG = pl2.g("clientLanguage", map);
        if (listG != null && !listG.isEmpty()) {
            Iterator it = listG.iterator();
            while (it.hasNext()) {
                if ("java".equalsIgnoreCase((String) it.next())) {
                }
            }
            return null;
        }
        Double dH = pl2.h("percentage", map);
        if (dH != null) {
            int iIntValue = dH.intValue();
            tc9.a("Bad percentage: %s", iIntValue >= 0 && iIntValue <= 100, dH);
            if (random.nextInt(100) >= iIntValue) {
                return null;
            }
        }
        List listG2 = pl2.g("clientHostname", map);
        if (listG2 != null && !listG2.isEmpty()) {
            Iterator it2 = listG2.iterator();
            while (it2.hasNext()) {
                if (((String) it2.next()).equals(str)) {
                }
            }
            return null;
        }
        Map<String, ?> mapJ = pl2.j("serviceConfig", map);
        if (mapJ != null) {
            return mapJ;
        }
        throw new VerifyException(String.format("key '%s' missing in '%s'", map, "serviceConfig"));
    }

    public static ArrayList g(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str.startsWith("grpc_config=")) {
                String strSubstring = str.substring(12);
                Logger logger = nd4.a;
                JsonReader jsonReader = new JsonReader(new StringReader(strSubstring));
                try {
                    Object objA = nd4.a(jsonReader);
                    try {
                        jsonReader.close();
                    } catch (IOException e) {
                        logger.log(Level.WARNING, "Failed to close", (Throwable) e);
                    }
                    if (!(objA instanceof List)) {
                        throw new ClassCastException("wrong type " + objA);
                    }
                    List list2 = (List) objA;
                    pl2.a(list2);
                    arrayList.addAll(list2);
                } catch (Throwable th) {
                    try {
                        jsonReader.close();
                    } catch (IOException e2) {
                        logger.log(Level.WARNING, "Failed to close", (Throwable) e2);
                    }
                    throw th;
                }
            } else {
                s.log(Level.FINE, "Ignoring non service config {0}", new Object[]{str});
            }
        }
        return arrayList;
    }

    @Override // io.grpc.l
    public final String a() {
        return this.f;
    }

    @Override // io.grpc.l
    public final void b() {
        o8.s(this.r != null, "not started");
        h();
    }

    @Override // io.grpc.l
    public final void c() {
        if (this.o) {
            return;
        }
        this.o = true;
        Executor executor = this.p;
        if (executor != null) {
            this.i.b(executor);
            this.p = null;
        }
    }

    @Override // io.grpc.l
    public final void d(l.d dVar) {
        o8.s(this.r == null, "already started");
        this.p = this.i.a();
        this.r = dVar;
        h();
    }

    public final l.e e() {
        c cVarA;
        d dVar;
        l.b bVar;
        l.b bVar2;
        String str = this.g;
        Logger logger = s;
        l.e.a aVarA = l.e.a();
        l.b bVar3 = null;
        Object obj = null;
        bVar3 = null;
        try {
            aVarA.a = new n88<>(null, i());
        } catch (Exception e) {
            logger.log(Level.FINE, "Address resolution failure", (Throwable) e);
            h88 h88VarG = h88.m.h("Unable to resolve host " + str).g(e);
            n88<List<io.grpc.d>> n88Var = new n88<>(h88VarG, null);
            o8.h(h88VarG.f() ^ true, "cannot use OK status: %s", h88VarG);
            aVarA.a = n88Var;
        }
        if (w) {
            List<String> listA = Collections.EMPTY_LIST;
            boolean z = false;
            if (u) {
                if ("localhost".equalsIgnoreCase(str)) {
                    z = v;
                } else if (!str.contains(StringUtils.PROCESS_POSTFIX_DELIMITER)) {
                    boolean z2 = true;
                    for (int i = 0; i < str.length(); i++) {
                        char cCharAt = str.charAt(i);
                        if (cCharAt != '.') {
                            z2 &= cCharAt >= '0' && cCharAt <= '9';
                        }
                    }
                    z = !z2;
                }
            }
            if (z) {
                cVarA = this.e.get();
                if (cVarA == null && (dVar = x) != null) {
                    cVarA = dVar.a();
                }
            } else {
                cVarA = null;
            }
            if (cVarA != null) {
                try {
                    listA = cVarA.a("_grpc_config." + str);
                } catch (Exception e2) {
                    logger.log(Level.FINE, "ServiceConfig resolution failure", (Throwable) e2);
                }
            }
            if (listA.isEmpty()) {
                logger.log(Level.FINE, "No TXT records found for {0}", new Object[]{str});
            } else {
                Random random = this.c;
                String hostName = y;
                if (hostName == null) {
                    try {
                        hostName = InetAddress.getLocalHost().getHostName();
                        y = hostName;
                    } catch (UnknownHostException e3) {
                        ti0.f(e3);
                        return null;
                    }
                }
                try {
                    Iterator it = g(listA).iterator();
                    Map<String, ?> mapF = null;
                    while (it.hasNext()) {
                        try {
                            mapF = f((Map) it.next(), random, hostName);
                            if (mapF != null) {
                                break;
                            }
                        } catch (RuntimeException e4) {
                            bVar = new l.b(h88.g.h("failed to pick service config choice").g(e4));
                        }
                    }
                    bVar = mapF == null ? null : new l.b(mapF);
                } catch (IOException | RuntimeException e5) {
                    bVar = new l.b(h88.g.h("failed to parse TXT records").g(e5));
                }
                if (bVar != null) {
                    h88 h88Var = bVar.a;
                    if (h88Var != null) {
                        bVar3 = new l.b(h88Var);
                    } else {
                        Map<String, ?> map = (Map) bVar.b;
                        gd7 gd7Var = this.l;
                        gd7Var.getClass();
                        try {
                            l.b bVarC = gd7Var.d.c(map);
                            if (bVarC != null) {
                                h88 h88Var2 = bVarC.a;
                                if (h88Var2 != null) {
                                    bVar3 = new l.b(h88Var2);
                                } else {
                                    obj = bVarC.b;
                                }
                            }
                            bVar2 = new l.b(mz4.a(map, gd7Var.a, gd7Var.b, gd7Var.c, obj));
                        } catch (RuntimeException e6) {
                            bVar2 = new l.b(h88.g.h("failed to parse service config").g(e6));
                        } catch (Throwable th) {
                            bVar2 = new l.b(h88.l.h("Unexpected error parsing service config").g(th));
                        }
                        bVar3 = bVar2;
                    }
                }
            }
            aVarA.c = bVar3;
        }
        return new l.e(aVarA.a, aVarA.b, aVarA.c);
    }

    public final void h() {
        if (this.q || this.o) {
            return;
        }
        if (this.n) {
            long j = this.j;
            if (j != 0 && (j <= 0 || this.m.a() <= j)) {
                return;
            }
        }
        this.q = true;
        this.p.execute(new b(this.r));
    }

    public final List<io.grpc.d> i() {
        a aVar = this.d;
        String str = this.g;
        aVar.getClass();
        List listUnmodifiableList = Collections.unmodifiableList(Arrays.asList(InetAddress.getAllByName(str)));
        ArrayList arrayList = new ArrayList(listUnmodifiableList.size());
        Iterator it = listUnmodifiableList.iterator();
        while (it.hasNext()) {
            arrayList.add(new io.grpc.d(new InetSocketAddress((InetAddress) it.next(), this.h)));
        }
        return Collections.unmodifiableList(arrayList);
    }
}
