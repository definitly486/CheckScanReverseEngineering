package defpackage;

import com.posthog.internal.FeatureFlag;
import com.posthog.internal.PostHogFlagsResponse;
import com.posthog.surveys.Survey;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public final class ad6 implements yb6 {
    public Long A;
    public List<Survey> B;
    public volatile boolean C;
    public volatile boolean D;
    public volatile boolean E;
    public volatile boolean F;
    public volatile Set<String> G;
    public volatile Long H;
    public final nb6 a;
    public final db6 b;
    public final ExecutorService c;
    public final rb6 d;
    public final xb6 e;
    public final nc6 f;
    public final AtomicBoolean g;
    public final AtomicBoolean h;
    public final AtomicBoolean i;
    public final AtomicBoolean j;
    public final Object k;
    public b l;
    public final Object m;
    public final Object n;
    public final Object o;
    public final LinkedHashMap p;
    public final Object q;
    public final LinkedHashMap r;
    public Map<String, ? extends Object> s;
    public Map<String, ? extends Object> t;
    public volatile Map<String, ? extends Object> u;
    public volatile Map<String, ? extends Object> v;
    public Set<String> w;
    public Set<String> x;
    public Map<String, ? extends Object> y;
    public String z;

    public static final class a {
        public final Object a;
        public final Object b;
        public final boolean c;

        public a(Object obj, Object obj2, boolean z) {
            this.a = obj;
            this.b = obj2;
            this.c = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a.equals(aVar.a) && aa4.e(this.b, aVar.b) && this.c == aVar.c;
        }

        public final int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            Object obj = this.b;
            return Boolean.hashCode(this.c) + ((iHashCode + (obj == null ? 0 : obj.hashCode())) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("BootstrapCalledValues(response=");
            sb.append(this.a);
            sb.append(", payload=");
            sb.append(this.b);
            sb.append(", usedBootstrapValue=");
            return sg.d(sb, this.c, ')');
        }
    }

    public static final class b {
        public final String a;
        public final String b;
        public final Map<String, String> c;
        public final ng d;
        public final ng e;

        public b(String str, String str2, Map<String, String> map, ng ngVar, ng ngVar2) {
            this.a = str;
            this.b = str2;
            this.c = map;
            this.d = ngVar;
            this.e = ngVar2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof b) {
                b bVar = (b) obj;
                if (this.a.equals(bVar.a) && aa4.e(this.b, bVar.b) && aa4.e(this.c, bVar.c) && this.d == bVar.d && aa4.e(this.e, bVar.e)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            String str = this.b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            Map<String, String> map = this.c;
            int iHashCode3 = (this.d.hashCode() + ((iHashCode2 + (map == null ? 0 : map.hashCode())) * 31)) * 31;
            ng ngVar = this.e;
            return iHashCode3 + (ngVar != null ? ngVar.hashCode() : 0);
        }

        public final String toString() {
            return "PendingFeatureFlagsRequest(distinctId=" + this.a + ", anonymousId=" + this.b + ", groups=" + this.c + ", internalOnFeatureFlags=" + this.d + ", onFeatureFlags=" + this.e + ')';
        }
    }

    public ad6(nb6 nb6Var, db6 db6Var, ExecutorService executorService, rb6 rb6Var, xb6 xb6Var, nc6 nc6Var) {
        Map<String, ? extends Object> linkedHashMap;
        Set<String> setY0;
        Map<String, ? extends Object> map = mx2.b;
        this.a = nb6Var;
        this.b = db6Var;
        this.c = executorService;
        this.d = rb6Var;
        this.e = xb6Var;
        this.f = nc6Var;
        this.g = new AtomicBoolean(false);
        this.h = new AtomicBoolean(false);
        this.i = new AtomicBoolean(false);
        this.j = new AtomicBoolean(false);
        this.k = new Object();
        this.m = new Object();
        this.n = new Object();
        this.o = new Object();
        this.p = new LinkedHashMap();
        this.q = new Object();
        this.r = new LinkedHashMap();
        try {
            linkedHashMap = new LinkedHashMap<>();
        } catch (Throwable th) {
            this.a.v.a("Filtering bootstrapped flags failed: " + th + ". All bootstrapped flags were dropped.");
            linkedHashMap = mx2.b;
        }
        this.u = linkedHashMap;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        ox2 ox2Var = ox2.b;
        this.v = linkedHashMap2;
        this.w = ox2Var;
        this.x = ox2Var;
        this.F = true;
        synchronized (this.m) {
            try {
                oc6 oc6Var = this.a.E;
                if (oc6Var != null) {
                    Object objD = oc6Var.d(null, "sessionReplay");
                    Map<String, ? extends Object> map2 = objD instanceof Map ? (Map) objD : null;
                    Object objD2 = oc6Var.d(null, "featureFlags");
                    Map<String, ? extends Object> map3 = objD2 instanceof Map ? (Map) objD2 : null;
                    if (map2 != null) {
                        if (map3 != null) {
                            map = map3;
                        }
                        i(map, map2);
                        nb6 nb6Var2 = this.a;
                        Object obj = map2.get("endpoint");
                        String str = obj instanceof String ? (String) obj : null;
                        str = str == null ? this.a.G : str;
                        str.getClass();
                        nb6Var2.G = str;
                        Object obj2 = map2.get("consoleLogRecordingEnabled");
                        Boolean bool = obj2 instanceof Boolean ? (Boolean) obj2 : null;
                        this.F = bool != null ? bool.booleanValue() : false;
                        p(map2.get("sampleRate"));
                        Object obj3 = map2.get("eventTriggers");
                        List list = obj3 instanceof List ? (List) obj3 : null;
                        if (list != null) {
                            if (list.isEmpty()) {
                                list = null;
                            }
                            setY0 = list != null ? qn1.y0(list) : setY0;
                            this.G = setY0;
                            this.H = o(map2.get("minimumDurationMilliseconds"));
                        }
                        setY0 = null;
                        this.G = setY0;
                        this.H = o(map2.get("minimumDurationMilliseconds"));
                    }
                    j59 j59Var = j59.a;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        synchronized (this.n) {
            d();
        }
        synchronized (this.n) {
            try {
                oc6 oc6Var2 = this.a.E;
                if (oc6Var2 != null) {
                    Object objD3 = oc6Var2.d(null, "errorTracking");
                    Map map4 = objD3 instanceof Map ? (Map) objD3 : null;
                    if (map4 != null) {
                        Object obj4 = map4.get("autocaptureExceptions");
                        Boolean bool2 = obj4 instanceof Boolean ? (Boolean) obj4 : null;
                        this.E = bool2 != null ? bool2.booleanValue() : false;
                    }
                    j59 j59Var2 = j59.a;
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        q();
        j();
        synchronized (this.m) {
            a();
            j59 j59Var3 = j59.a;
        }
    }

    public final void a() {
        if (this.u.isEmpty()) {
            return;
        }
        this.s = this.u;
        this.t = this.v;
        this.y = null;
        this.z = null;
        this.A = null;
    }

    public final void b() {
        synchronized (this.m) {
            this.F = false;
            this.C = false;
            mx2 mx2Var = mx2.b;
            this.u = mx2Var;
            this.v = mx2Var;
            this.D = false;
            ox2 ox2Var = ox2.b;
            this.w = ox2Var;
            this.x = ox2Var;
            c();
            j59 j59Var = j59.a;
        }
        this.i.set(false);
        synchronized (this.n) {
            this.E = false;
        }
        synchronized (this.o) {
            this.p.clear();
            oc6 oc6Var = this.a.E;
            if (oc6Var != null) {
                oc6Var.remove("personPropertiesForFlags");
            }
        }
        synchronized (this.q) {
            this.r.clear();
            oc6 oc6Var2 = this.a.E;
            if (oc6Var2 != null) {
                oc6Var2.remove("groupPropertiesForFlags");
            }
        }
    }

    public final void c() {
        this.s = null;
        this.t = null;
        this.y = null;
        this.z = null;
        this.A = null;
        oc6 oc6Var = this.a.E;
        if (oc6Var != null) {
            oc6Var.remove("flags");
            oc6Var.remove("featureFlags");
            oc6Var.remove("featureFlagsPayload");
            oc6Var.remove("feature_flag_request_id");
            oc6Var.remove("feature_flag_evaluated_at");
        }
    }

    public final void d() {
        oc6 oc6Var = this.a.E;
        if (oc6Var != null) {
            oc6Var.remove("surveys");
        }
        this.B = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v14, types: [java.util.AbstractMap, java.util.LinkedHashMap] */
    /* JADX WARN: Type inference failed for: r5v8, types: [mx2] */
    /* JADX WARN: Type inference failed for: r5v9, types: [java.util.Map] */
    public final void e(String str, String str2, Map<String, String> map, ng ngVar, ng ngVar2, boolean z) {
        Object obj;
        Object objD;
        boolean z2;
        Set<String> setKeySet;
        Set<String> setKeySet2;
        ?? linkedHashMap;
        lc6 lc6Var = this.a.F;
        if (lc6Var != null && !lc6Var.isConnected()) {
            this.a.v.a("Network isn't connected.");
            if (!z || this.i.get()) {
                return;
            }
            n();
            return;
        }
        boolean andSet = this.g.getAndSet(true);
        nb6 nb6Var = this.a;
        if (andSet) {
            nb6Var.v.a("Feature flags are being loaded already, queuing reload.");
            synchronized (this.k) {
                this.j.set(true);
                this.l = new b(str, str2, map, ngVar, ngVar2);
                j59 j59Var = j59.a;
            }
            return;
        }
        b bVar = null;
        try {
            oc6 oc6Var = nb6Var.E;
            if (oc6Var != null) {
                try {
                    objD = oc6Var.d(null, "deviceId");
                } catch (Throwable th) {
                    obj = th;
                    try {
                        this.a.v.a("Loading feature flags failed: " + obj);
                        if (z && !this.i.get()) {
                            n();
                        }
                        synchronized (this.k) {
                            try {
                                if (this.j.getAndSet(false)) {
                                    b bVar2 = this.l;
                                    this.l = null;
                                    bVar = bVar2;
                                }
                                j59 j59Var2 = j59.a;
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                        this.g.set(false);
                        if (bVar != null) {
                            this.a.v.a("Executing pending feature flags reload.");
                            e(bVar.a, bVar.b, bVar.c, bVar.d, bVar.e, true);
                            return;
                        }
                        return;
                    } catch (Throwable th3) {
                        synchronized (this.k) {
                            try {
                                if (this.j.getAndSet(false)) {
                                    b bVar3 = this.l;
                                    this.l = null;
                                    bVar = bVar3;
                                }
                                j59 j59Var3 = j59.a;
                                this.g.set(false);
                                if (bVar == null) {
                                    throw th3;
                                }
                                this.a.v.a("Executing pending feature flags reload.");
                                e(bVar.a, bVar.b, bVar.c, bVar.d, bVar.e, true);
                                throw th3;
                            } catch (Throwable th4) {
                                throw th4;
                            }
                        }
                    }
                }
            } else {
                objD = null;
            }
            PostHogFlagsResponse postHogFlagsResponseE = db6.e(this.b, str, str2, objD instanceof String ? (String) objD : null, map, h(), g());
            if (postHogFlagsResponseE != null) {
                oc6 oc6Var2 = this.a.E;
                Object objD2 = oc6Var2 != null ? oc6Var2.d(null, "sessionReplay") : null;
                oc6 oc6Var3 = this.a.E;
                Object objD3 = oc6Var3 != null ? oc6Var3.d(null, "capturePerformance") : null;
                oc6 oc6Var4 = this.a.E;
                Object objD4 = oc6Var4 != null ? oc6Var4.d(null, "errorTracking") : null;
                synchronized (this.m) {
                    List<String> quotaLimited = postHogFlagsResponseE.getQuotaLimited();
                    if (quotaLimited == null || !quotaLimited.contains("feature_flags")) {
                        PostHogFlagsResponse postHogFlagsResponseL = l(postHogFlagsResponseE);
                        if (postHogFlagsResponseL.getErrorsWhileComputingFlags()) {
                            Map<String, FeatureFlag> flags = postHogFlagsResponseL.getFlags();
                            if (flags != null) {
                                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                                for (Map.Entry<String, FeatureFlag> entry : flags.entrySet()) {
                                    if (!aa4.e(entry.getValue().getFailed(), Boolean.TRUE)) {
                                        linkedHashMap2.put(entry.getKey(), entry.getValue());
                                    }
                                }
                                Set setKeySet3 = linkedHashMap2.keySet();
                                Map map2 = this.y;
                                if (map2 == null) {
                                    map2 = mx2.b;
                                }
                                this.y = n05.g(map2, linkedHashMap2);
                                Map<String, Object> featureFlags = postHogFlagsResponseL.getFeatureFlags();
                                if (featureFlags != null) {
                                    linkedHashMap = new LinkedHashMap();
                                    for (Map.Entry<String, Object> entry2 : featureFlags.entrySet()) {
                                        if (setKeySet3.contains(entry2.getKey())) {
                                            linkedHashMap.put(entry2.getKey(), entry2.getValue());
                                        }
                                    }
                                } else {
                                    linkedHashMap = mx2.b;
                                }
                                Map map3 = this.s;
                                if (map3 == null) {
                                    map3 = mx2.b;
                                }
                                this.s = n05.g(map3, linkedHashMap);
                                LinkedHashMap linkedHashMapM = m(postHogFlagsResponseL.getFeatureFlagPayloads());
                                Map map4 = this.t;
                                if (map4 == null) {
                                    map4 = mx2.b;
                                }
                                LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                                for (Map.Entry entry3 : linkedHashMapM.entrySet()) {
                                    if (setKeySet3.contains((String) entry3.getKey())) {
                                        linkedHashMap3.put(entry3.getKey(), entry3.getValue());
                                    }
                                }
                                this.t = n05.g(map4, linkedHashMap3);
                                this.w = mr7.l(this.w, setKeySet3);
                                Set<String> set = this.x;
                                Set setKeySet4 = linkedHashMapM.keySet();
                                ArrayList arrayList = new ArrayList();
                                for (Object obj2 : setKeySet4) {
                                    if (setKeySet3.contains((String) obj2)) {
                                        arrayList.add(obj2);
                                    }
                                }
                                this.x = mr7.l(set, arrayList);
                            } else {
                                Map map5 = this.s;
                                if (map5 == null) {
                                    map5 = mx2.b;
                                }
                                Map<String, Object> featureFlags2 = postHogFlagsResponseL.getFeatureFlags();
                                if (featureFlags2 == null) {
                                    featureFlags2 = mx2.b;
                                }
                                this.s = n05.g(map5, featureFlags2);
                                LinkedHashMap linkedHashMapM2 = m(postHogFlagsResponseL.getFeatureFlagPayloads());
                                Map map6 = this.t;
                                if (map6 == null) {
                                    map6 = mx2.b;
                                }
                                this.t = n05.g(map6, linkedHashMapM2);
                                Set<String> set2 = this.w;
                                Map<String, Object> featureFlags3 = postHogFlagsResponseL.getFeatureFlags();
                                this.w = mr7.l(set2, (featureFlags3 == null || (setKeySet2 = featureFlags3.keySet()) == null) ? ox2.b : setKeySet2);
                                this.x = mr7.l(this.x, linkedHashMapM2.keySet());
                            }
                        } else {
                            this.y = postHogFlagsResponseL.getFlags();
                            this.s = postHogFlagsResponseL.getFeatureFlags();
                            LinkedHashMap linkedHashMapM3 = m(postHogFlagsResponseL.getFeatureFlagPayloads());
                            this.t = linkedHashMapM3;
                            Set<String> set3 = this.w;
                            Map<String, Object> featureFlags4 = postHogFlagsResponseL.getFeatureFlags();
                            this.w = mr7.l(set3, (featureFlags4 == null || (setKeySet = featureFlags4.keySet()) == null) ? ox2.b : setKeySet);
                            this.x = mr7.l(this.x, linkedHashMapM3.keySet());
                        }
                        if (objD2 == null) {
                            this.a.v.a("No cached session replay config to re-evaluate; replay stays disabled.");
                        } else {
                            t(objD2, false);
                        }
                        if (objD3 == null) {
                            this.a.v.a("No cached capture performance config to re-evaluate; network timing stays disabled.");
                        } else {
                            r(objD3, false);
                        }
                        if (objD4 == null) {
                            this.a.v.a("No cached error tracking config to re-evaluate; autocapture stays disabled.");
                        } else {
                            s(objD4, false);
                        }
                        j59 j59Var4 = j59.a;
                        oc6 oc6Var5 = this.a.E;
                        if (oc6Var5 != null) {
                            Object obj3 = this.y;
                            if (obj3 == null) {
                                obj3 = mx2.b;
                            }
                            oc6Var5.a("flags", obj3);
                            Map map7 = this.s;
                            if (map7 == null) {
                                map7 = mx2.b;
                            }
                            if (!this.u.isEmpty()) {
                                LinkedHashMap linkedHashMap4 = new LinkedHashMap();
                                for (Map.Entry entry4 : map7.entrySet()) {
                                    if (this.w.contains((String) entry4.getKey())) {
                                        linkedHashMap4.put(entry4.getKey(), entry4.getValue());
                                    }
                                }
                                map7 = linkedHashMap4;
                            }
                            oc6Var5.a("featureFlags", map7);
                            Map map8 = this.t;
                            if (map8 == null) {
                                map8 = mx2.b;
                            }
                            if (!this.v.isEmpty()) {
                                LinkedHashMap linkedHashMap5 = new LinkedHashMap();
                                for (Map.Entry entry5 : map8.entrySet()) {
                                    if (this.x.contains((String) entry5.getKey())) {
                                        linkedHashMap5.put(entry5.getKey(), entry5.getValue());
                                    }
                                }
                                map8 = linkedHashMap5;
                            }
                            oc6Var5.a("featureFlagsPayload", map8);
                            j59 j59Var5 = j59.a;
                        }
                        this.C = true;
                        u();
                        if (z) {
                            this.i.set(true);
                            n();
                        }
                        z2 = false;
                    } else {
                        this.a.v.a("Feature flags are quota limited, flags could not be updated.\n                                    Learn more about billing limits at https://posthog.com/docs/billing/limits-alerts");
                        if (objD2 == null) {
                            this.a.v.a("No cached session replay config to re-evaluate; replay stays disabled.");
                        } else {
                            t(objD2, false);
                        }
                        if (objD3 == null) {
                            this.a.v.a("No cached capture performance config to re-evaluate; network timing stays disabled.");
                        } else {
                            r(objD3, false);
                        }
                        if (objD4 == null) {
                            this.a.v.a("No cached error tracking config to re-evaluate; autocapture stays disabled.");
                        } else {
                            s(objD4, false);
                        }
                        z2 = true;
                    }
                }
                j59 j59Var6 = j59.a;
            } else {
                this.C = false;
                if (z && !this.i.get()) {
                    n();
                }
                j59 j59Var7 = j59.a;
                z2 = false;
            }
            if (z2 && z) {
                this.i.set(true);
                n();
            }
            synchronized (this.k) {
                if (this.j.getAndSet(false)) {
                    b bVar4 = this.l;
                    this.l = null;
                    bVar = bVar4;
                }
            }
            this.g.set(false);
            if (bVar != null) {
                this.a.v.a("Executing pending feature flags reload.");
                e(bVar.a, bVar.b, bVar.c, bVar.d, bVar.e, true);
            }
        } catch (Throwable th5) {
            obj = th5;
        }
    }

    public final Long f() {
        Long l;
        k();
        synchronized (this.m) {
            l = this.A;
        }
        return l;
    }

    public final Map<String, Map<String, Object>> g() {
        Map<String, Map<String, Object>> mapL;
        synchronized (this.q) {
            mapL = n05.l(this.r);
        }
        return mapL;
    }

    public final LinkedHashMap h() {
        LinkedHashMap linkedHashMap;
        synchronized (this.o) {
            try {
                linkedHashMap = new LinkedHashMap();
                if (this.a.d) {
                    linkedHashMap.putAll(this.d.a());
                }
                linkedHashMap.putAll(this.p);
            } catch (Throwable th) {
                throw th;
            }
        }
        return linkedHashMap;
    }

    public final boolean i(Map<String, ? extends Object> map, Map<String, ? extends Object> map2) {
        Object obj;
        String str;
        Object obj2 = map2.get("linkedFlag");
        boolean zE = false;
        if (obj2 instanceof String) {
            obj = map.get(obj2);
            str = (String) obj2;
            if (obj instanceof Boolean) {
                zE = ((Boolean) obj).booleanValue();
            } else if (obj instanceof String) {
                zE = true;
            }
        } else {
            if (obj2 instanceof Map) {
                Map map3 = (Map) obj2;
                Object obj3 = map3.get("flag");
                String str2 = obj3 instanceof String ? (String) obj3 : null;
                Object obj4 = map3.get("variant");
                String str3 = obj4 instanceof String ? (String) obj4 : null;
                if (str2 != null && str3 != null) {
                    Object obj5 = map.get(str2);
                    obj = obj5 instanceof String ? (String) obj5 : null;
                    zE = aa4.e(obj, str3);
                    str = str2;
                }
            } else {
                zE = true;
            }
            obj = null;
            str = null;
        }
        if (str != null && obj != null) {
            this.e.a(obj, str);
        }
        return zE;
    }

    public final void j() {
        synchronized (this.o) {
            try {
                oc6 oc6Var = this.a.E;
                Object objD = oc6Var != null ? oc6Var.d(null, "personPropertiesForFlags") : null;
                Map map = objD instanceof Map ? (Map) objD : null;
                if (map != null) {
                    this.p.putAll(map);
                    j59 j59Var = j59.a;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.q) {
            try {
                oc6 oc6Var2 = this.a.E;
                Object objD2 = oc6Var2 != null ? oc6Var2.d(null, "groupPropertiesForFlags") : null;
                Map map2 = objD2 instanceof Map ? (Map) objD2 : null;
                if (map2 != null) {
                    for (Map.Entry entry : map2.entrySet()) {
                        this.r.put((String) entry.getKey(), n05.n((Map) entry.getValue()));
                    }
                    j59 j59Var2 = j59.a;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void k() {
        oc6 oc6Var;
        if (this.C || (oc6Var = this.a.E) == null) {
            return;
        }
        Map<String, ? extends Object> map = mx2.b;
        Object objD = oc6Var.d(map, "flags");
        Map<String, ? extends Object> map2 = objD instanceof Map ? (Map) objD : null;
        if (map2 == null) {
            map2 = map;
        }
        Object objD2 = oc6Var.d(map, "featureFlags");
        Map<String, ? extends Object> map3 = objD2 instanceof Map ? (Map) objD2 : null;
        if (map3 == null) {
            map3 = map;
        }
        Object objD3 = oc6Var.d(map, "featureFlagsPayload");
        Map<String, ? extends Object> map4 = objD3 instanceof Map ? (Map) objD3 : null;
        if (map4 != null) {
            map = map4;
        }
        Object objD4 = oc6Var.d(null, "feature_flag_request_id");
        String str = objD4 instanceof String ? (String) objD4 : null;
        Object objD5 = oc6Var.d(null, "feature_flag_evaluated_at");
        Long l = objD5 instanceof Long ? (Long) objD5 : null;
        synchronized (this.m) {
            this.y = map2;
            this.s = map3;
            this.t = map;
            this.z = str;
            this.A = l;
            a();
            this.C = true;
            j59 j59Var = j59.a;
        }
    }

    public final PostHogFlagsResponse l(PostHogFlagsResponse postHogFlagsResponse) {
        oc6 oc6Var;
        Map<String, FeatureFlag> flags = postHogFlagsResponse.getFlags();
        if (flags == null) {
            return postHogFlagsResponse;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(m05.b(flags.size()));
        Iterator<T> it = flags.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Object key = entry.getKey();
            FeatureFlag featureFlag = (FeatureFlag) entry.getValue();
            Object variant = featureFlag.getVariant();
            if (variant == null) {
                variant = Boolean.valueOf(featureFlag.getEnabled());
            }
            linkedHashMap.put(key, variant);
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(m05.b(flags.size()));
        Iterator<T> it2 = flags.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it2.next();
            linkedHashMap2.put(entry2.getKey(), ((FeatureFlag) entry2.getValue()).getMetadata().getPayload());
        }
        PostHogFlagsResponse postHogFlagsResponseCopy$default = PostHogFlagsResponse.copy$default(postHogFlagsResponse, false, linkedHashMap, linkedHashMap2, null, null, null, null, 121, null);
        synchronized (this.m) {
            try {
                String requestId = postHogFlagsResponseCopy$default.getRequestId();
                this.z = requestId;
                if (requestId != null && (oc6Var = this.a.E) != null) {
                    oc6Var.a("feature_flag_request_id", requestId);
                }
                Long evaluatedAt = postHogFlagsResponseCopy$default.getEvaluatedAt();
                this.A = evaluatedAt;
                if (evaluatedAt != null) {
                    long jLongValue = evaluatedAt.longValue();
                    oc6 oc6Var2 = this.a.E;
                    if (oc6Var2 != null) {
                        oc6Var2.a("feature_flag_evaluated_at", Long.valueOf(jLongValue));
                        j59 j59Var = j59.a;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return postHogFlagsResponseCopy$default;
    }

    public final LinkedHashMap m(Map map) {
        if (map == null) {
            map = mx2.b;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            Object value = entry.getValue();
            try {
                if (value instanceof String) {
                    Object objF = this.a.b().a.f((String) value, new x39(Object.class));
                    if (objF != null) {
                        linkedHashMap.put(entry.getKey(), objF);
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return linkedHashMap;
    }

    public final void n() {
        try {
            nc6 nc6Var = this.f;
            if (nc6Var != null) {
                nc6Var.a();
            }
        } catch (Throwable th) {
            this.a.v.a("Executing onRemoteConfigLoaded callback failed: " + th);
        }
    }

    public final Long o(Object obj) {
        Long lQ;
        if (obj instanceof Number) {
            lQ = Long.valueOf(((Number) obj).longValue());
        } else {
            lQ = obj instanceof String ? qa8.q((String) obj) : null;
        }
        if (lQ == null || lQ.longValue() >= 0) {
            return lQ;
        }
        this.a.v.a("Remote config minimumDurationMilliseconds must be non-negative, got " + lQ + ". Ignoring.");
        return null;
    }

    public final Double p(Object obj) {
        Double dValueOf;
        if (obj instanceof String) {
            dValueOf = qa8.m((String) obj);
        } else {
            dValueOf = obj instanceof Number ? Double.valueOf(((Number) obj).doubleValue()) : null;
        }
        if (dValueOf == null) {
            return dValueOf;
        }
        double dDoubleValue = dValueOf.doubleValue();
        if (dDoubleValue >= 0.0d && dDoubleValue <= 1.0d) {
            return dValueOf;
        }
        this.a.v.a("Sample rate must be between 0.0 and 1.0, got " + dValueOf + ". Ignoring.");
        return null;
    }

    public final void q() {
        synchronized (this.n) {
            try {
                oc6 oc6Var = this.a.E;
                if (oc6Var != null) {
                    Object objD = oc6Var.d(null, "capturePerformance");
                    Map map = objD instanceof Map ? (Map) objD : null;
                    if (map != null) {
                        map.get("network_timing");
                    }
                    j59 j59Var = j59.a;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void r(Object obj, boolean z) {
        oc6 oc6Var;
        boolean z2 = obj instanceof Boolean;
        nb6 nb6Var = this.a;
        if (z2) {
            oc6 oc6Var2 = nb6Var.E;
            if (oc6Var2 != null) {
                oc6Var2.remove("capturePerformance");
                return;
            }
            return;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            map.get("network_timing");
            if (!z || (oc6Var = nb6Var.E) == null) {
                return;
            }
            oc6Var.a("capturePerformance", map);
        }
    }

    public final void s(Object obj, boolean z) {
        oc6 oc6Var;
        if (obj instanceof Boolean) {
            this.E = false;
            oc6 oc6Var2 = this.a.E;
            if (oc6Var2 != null) {
                oc6Var2.remove("errorTracking");
                return;
            }
            return;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            Object obj2 = map.get("autocaptureExceptions");
            Boolean bool = obj2 instanceof Boolean ? (Boolean) obj2 : null;
            this.E = bool != null ? bool.booleanValue() : false;
            if (!z || (oc6Var = this.a.E) == null) {
                return;
            }
            oc6Var.a("errorTracking", map);
        }
    }

    public final void t(Object obj, boolean z) {
        oc6 oc6Var;
        oc6 oc6Var2;
        if (obj instanceof Boolean) {
            this.F = false;
            if (((Boolean) obj).booleanValue() || (oc6Var2 = this.a.E) == null) {
                return;
            }
            oc6Var2.remove("sessionReplay");
            return;
        }
        if (obj instanceof Map) {
            Map<String, ? extends Object> map = (Map) obj;
            nb6 nb6Var = this.a;
            Object obj2 = map.get("endpoint");
            Set<String> setY0 = null;
            String str = obj2 instanceof String ? (String) obj2 : null;
            if (str == null) {
                str = this.a.G;
            }
            str.getClass();
            nb6Var.G = str;
            Map<String, ? extends Object> map2 = this.s;
            if (map2 == null) {
                map2 = mx2.b;
            }
            i(map2, map);
            Object obj3 = map.get("consoleLogRecordingEnabled");
            Boolean bool = obj3 instanceof Boolean ? (Boolean) obj3 : null;
            this.F = bool != null ? bool.booleanValue() : false;
            p(map.get("sampleRate"));
            Object obj4 = map.get("eventTriggers");
            List list = obj4 instanceof List ? (List) obj4 : null;
            if (list != null) {
                if (list.isEmpty()) {
                    list = null;
                }
                if (list != null) {
                    setY0 = qn1.y0(list);
                }
            }
            this.G = setY0;
            this.H = o(map.get("minimumDurationMilliseconds"));
            if (!z || (oc6Var = this.a.E) == null) {
                return;
            }
            oc6Var.a("sessionReplay", map);
        }
    }

    public final void u() {
        synchronized (this.m) {
            this.D = true;
            j59 j59Var = j59.a;
        }
    }
}
