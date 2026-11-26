package defpackage;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.posthog.PostHogEvent;
import com.posthog.internal.EvaluationReason;
import com.posthog.internal.FeatureFlag;
import com.posthog.internal.PostHogRemoteConfigResponse;
import com.posthog.internal.replay.PostHogSessionReplayHandler;
import com.posthog.surveys.Survey;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes4.dex */
public final class oa6 extends ae6 implements bc6 {
    public static final a I = new a();
    public static final oa6 J = new oa6();
    public static final LinkedHashSet K = new LinkedHashSet();
    public volatile wb6 A;
    public boolean B;
    public boolean C;
    public final ng D;
    public String E;
    public boolean F;
    public volatile boolean G;
    public boolean H;
    public final ScheduledExecutorService i;
    public final ScheduledExecutorService j;
    public final ScheduledExecutorService k;
    public final ScheduledExecutorService l;
    public final ScheduledExecutorService m;
    public final Object n;
    public final Object o;
    public final Object p;
    public final Object q;
    public final Object r;
    public final Object s;
    public xc6<PostHogEvent> t;
    public wc6 u;
    public volatile String v;
    public final Object w;
    public final LinkedHashMap x;
    public PostHogSessionReplayHandler y;
    public be6 z;

    public static final class a implements bc6 {
        @Override // defpackage.bc6
        public final void a(String str, String str2, Map map, Map map2, Map map3) {
            str.getClass();
            oa6.J.a(str, str2, map, map2, map3);
        }

        @Override // defpackage.bc6
        public final void b(de6 de6Var) {
            oa6.J.b(de6Var);
        }

        @Override // defpackage.bc6
        public final boolean c() {
            return oa6.J.c();
        }

        public final <T extends nb6> void d(T t) {
            T t2;
            Object obj;
            List<ac6> listT0;
            List<Survey> list;
            final oa6 oa6Var = oa6.J;
            oa6Var.getClass();
            synchronized (oa6Var.d) {
                try {
                    boolean z = oa6Var.c;
                    ic6 pc6Var = t.v;
                    try {
                        if (z) {
                            pc6Var.a("Setup called despite already being setup!");
                            return;
                        }
                        if (pc6Var instanceof mc6) {
                            pc6Var = new pc6();
                        }
                        pc6Var.getClass();
                        t.v = pc6Var;
                        if (t.t.length() == 0) {
                            t.v.a("PostHog SDK is disabled because the API key is required and was empty after trimming whitespace.");
                            return;
                        }
                        if (!oa6.K.add(t.t)) {
                            t.v.a("API Key: " + t.t + " already has a PostHog instance.");
                        }
                        oc6 oc6Var = t.E;
                        if (oc6Var == null) {
                            oc6Var = oa6Var.h;
                        }
                        t.E = oc6Var;
                        db6 db6Var = new db6((ta6) t);
                        t2 = t;
                        try {
                            xc6<PostHogEvent> xc6VarInvoke = t.p.invoke(t2, db6Var, ib6.BATCH, t.B, oa6Var.i);
                            xc6<PostHogEvent> xc6VarInvoke2 = t2.p.invoke(t2, db6Var, ib6.SNAPSHOT, t2.C, oa6Var.j);
                            wc6 wc6Var = new wc6(t2, iz2.a.a((ta6) t2, db6Var, t2.D), oa6Var.k);
                            final ta6 ta6Var = (ta6) t2;
                            yb6 yb6VarInvoke = t2.o.invoke(t2, db6Var, oa6Var.l, new rb6() { // from class: la6
                                @Override // defpackage.rb6
                                public final Map a() {
                                    ta6 ta6Var2;
                                    ob6 ob6Var;
                                    oa6 oa6Var2 = oa6Var;
                                    if (!oa6Var2.h() || (ta6Var2 = oa6Var2.f) == null || !ta6Var2.d || (ob6Var = ta6Var2.x) == null) {
                                        return mx2.b;
                                    }
                                    Map<String, Object> mapB = ob6Var.b();
                                    Map<String, Object> mapC = ob6Var.c();
                                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                                    Object obj2 = mapC.get("$app_version");
                                    if (obj2 != null) {
                                        linkedHashMap.put("$app_version", obj2);
                                    }
                                    Object obj3 = mapC.get("$app_build");
                                    if (obj3 != null) {
                                        linkedHashMap.put("$app_build", obj3);
                                    }
                                    Object obj4 = mapC.get("$app_namespace");
                                    if (obj4 != null) {
                                        linkedHashMap.put("$app_namespace", obj4);
                                    }
                                    Object obj5 = mapC.get("$os_name");
                                    if (obj5 != null) {
                                        linkedHashMap.put("$os_name", obj5);
                                    }
                                    Object obj6 = mapC.get("$os_version");
                                    if (obj6 != null) {
                                        linkedHashMap.put("$os_version", obj6);
                                    }
                                    Object obj7 = mapC.get("$device_type");
                                    if (obj7 != null) {
                                        linkedHashMap.put("$device_type", obj7);
                                    }
                                    Object obj8 = mapB.get("$lib");
                                    if (obj8 != null) {
                                        linkedHashMap.put("$lib", obj8);
                                    }
                                    Object obj9 = mapB.get("$lib_version");
                                    if (obj9 != null) {
                                        linkedHashMap.put("$lib_version", obj9);
                                    }
                                    return linkedHashMap;
                                }
                            }, new nc6() { // from class: ka6
                                @Override // defpackage.nc6
                                public final void a() {
                                    List<Survey> list2;
                                    oa6 oa6Var2 = oa6Var;
                                    ta6 ta6Var2 = ta6Var;
                                    ad6 ad6VarP = oa6Var2.p();
                                    if (ad6VarP == null || !ad6VarP.i.get()) {
                                        oa6.w(ta6Var2, false);
                                        return;
                                    }
                                    try {
                                        ad6 ad6VarP2 = oa6Var2.p();
                                        if (ad6VarP2 != null) {
                                            synchronized (ad6VarP2.n) {
                                                list2 = ad6VarP2.B;
                                            }
                                            if (list2 == null) {
                                                list2 = kx2.b;
                                            }
                                            oa6.w(ta6Var2, true);
                                        }
                                        list2 = kx2.b;
                                        be6 be6Var = oa6Var2.z;
                                        if (be6Var != null) {
                                            be6Var.a(list2);
                                        }
                                    } catch (Throwable th) {
                                        sg.f("Failed to notify surveys loaded: ", th, '.', ta6Var2.v);
                                    }
                                    oa6.w(ta6Var2, true);
                                }
                            }, new xb6() { // from class: ma6
                                @Override // defpackage.xb6
                                public final void a(Object obj2, String str) {
                                    ad6 ad6VarP;
                                    FeatureFlag featureFlag;
                                    String str2;
                                    ad6.a aVar;
                                    String description;
                                    oa6 oa6Var2 = oa6Var;
                                    if (oa6Var2.p() == null) {
                                        return;
                                    }
                                    ta6 ta6Var2 = oa6Var2.f;
                                    Boolean boolValueOf = ta6Var2 != null ? Boolean.valueOf(ta6Var2.b) : null;
                                    boolean z2 = false;
                                    if (boolValueOf != null ? boolValueOf.booleanValue() : false) {
                                        synchronized (oa6Var2.r) {
                                            try {
                                                List arrayList = (List) oa6Var2.x.get(str);
                                                if (arrayList == null) {
                                                    arrayList = new ArrayList();
                                                }
                                                if (!arrayList.contains(obj2)) {
                                                    arrayList.add(obj2);
                                                    oa6Var2.x.put(str, arrayList);
                                                    z2 = true;
                                                }
                                                j59 j59Var = j59.a;
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        if (!z2 || (ad6VarP = oa6Var2.p()) == null) {
                                            return;
                                        }
                                        str.getClass();
                                        ad6VarP.k();
                                        synchronized (ad6VarP.m) {
                                            try {
                                                Map<String, ? extends Object> map = ad6VarP.y;
                                                Object obj3 = map != null ? map.get(str) : null;
                                                featureFlag = obj3 instanceof FeatureFlag ? (FeatureFlag) obj3 : null;
                                            } catch (Throwable th2) {
                                                throw th2;
                                            }
                                        }
                                        ad6VarP.k();
                                        synchronized (ad6VarP.m) {
                                            str2 = ad6VarP.z;
                                        }
                                        Long lF = ad6VarP.f();
                                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                                        linkedHashMap.put("$feature_flag", str);
                                        if (obj2 == null) {
                                            obj2 = "";
                                        }
                                        linkedHashMap.put("$feature_flag_response", obj2);
                                        if (str2 != null) {
                                            linkedHashMap.put("$feature_flag_request_id", str2);
                                        }
                                        if (lF != null) {
                                            linkedHashMap.put("$feature_flag_evaluated_at", Long.valueOf(lF.longValue()));
                                        }
                                        if (featureFlag != null) {
                                            linkedHashMap.put("$feature_flag_id", Integer.valueOf(featureFlag.getMetadata().getId()));
                                            linkedHashMap.put("$feature_flag_version", Integer.valueOf(featureFlag.getMetadata().getVersion()));
                                            EvaluationReason reason = featureFlag.getReason();
                                            if (reason == null || (description = reason.getDescription()) == null) {
                                                description = "";
                                            }
                                            linkedHashMap.put("$feature_flag_reason", description);
                                            Boolean hasExperiment = featureFlag.getMetadata().getHasExperiment();
                                            if (hasExperiment != null) {
                                                linkedHashMap.put("$feature_flag_has_experiment", hasExperiment);
                                            }
                                        }
                                        synchronized (ad6VarP.m) {
                                            Object obj4 = ad6VarP.u.get(str);
                                            aVar = obj4 == null ? null : new ad6.a(obj4, ad6VarP.v.get(str), !ad6VarP.D);
                                        }
                                        if (aVar != null) {
                                            linkedHashMap.put("$feature_flag_bootstrapped_response", aVar.a);
                                            Object obj5 = aVar.b;
                                            if (obj5 != null) {
                                                linkedHashMap.put("$feature_flag_bootstrapped_payload", obj5);
                                            }
                                            linkedHashMap.put("$used_bootstrap_value", Boolean.valueOf(aVar.c));
                                        }
                                        oa6Var2.a(vb6.FEATURE_FLAG_CALLED.a(), (122 & 2) != 0 ? null : null, (122 & 4) != 0 ? null : linkedHashMap, null, null);
                                    }
                                }
                            });
                            oa6Var.G = false;
                            td6 td6Var = new td6((ta6) t2, db6Var, oa6Var.m);
                            oa6Var.f = (ta6) t2;
                            oa6Var.g = xc6VarInvoke;
                            oa6Var.t = xc6VarInvoke2;
                            oa6Var.u = wc6Var;
                            t2.q.b.getClass();
                            oa6Var.A = new wb6(t2.b(), t2.v);
                            if (yb6VarInvoke instanceof ad6) {
                                t2.H = (ad6) yb6VarInvoke;
                            }
                            t2.a(td6Var);
                            t2.a(new tb6((ta6) t2));
                            oa6Var.v((ta6) t2, t2.b());
                            oa6Var.c = true;
                            oa6Var.n();
                            xc6VarInvoke.start();
                            wc6Var.start();
                            Object obj2 = yd6.a;
                            yd6.i = new na6(0, oa6Var, (ta6) t2);
                            oa6Var.C();
                            synchronized (t2.K) {
                                listT0 = qn1.t0(t2.J);
                                j59 j59Var = j59.a;
                            }
                            for (ac6 ac6Var : listT0) {
                                try {
                                    ac6Var.b(oa6Var);
                                    if (ac6Var instanceof PostHogSessionReplayHandler) {
                                        oa6Var.y = (PostHogSessionReplayHandler) ac6Var;
                                    } else if (ac6Var instanceof be6) {
                                        oa6Var.z = (be6) ac6Var;
                                        try {
                                            ad6 ad6VarP = oa6Var.p();
                                            if (ad6VarP != null) {
                                                synchronized (ad6VarP.n) {
                                                    try {
                                                        list = ad6VarP.B;
                                                    } catch (Throwable th) {
                                                        throw th;
                                                    }
                                                }
                                                if (list == null) {
                                                }
                                                ((be6) ac6Var).a(list);
                                            }
                                            list = kx2.b;
                                            ((be6) ac6Var).a(list);
                                        } catch (Throwable th2) {
                                            t2.v.a("Pushing cached surveys to integration failed: " + th2 + '.');
                                        }
                                    } else {
                                        continue;
                                    }
                                } catch (Throwable th3) {
                                    t2.v.a("Integration " + ac6Var.getClass().getName() + " failed to install: " + th3 + '.');
                                }
                            }
                            ad6 ad6VarP2 = oa6Var.p();
                            if (ad6VarP2 != null) {
                                boolean z2 = !ad6VarP2.u.isEmpty();
                            }
                            if (t2.e) {
                                final ng ngVar = oa6Var.D;
                                Object objD = oa6Var.g().d(null, "groups");
                                final Map map = objD instanceof Map ? (Map) objD : null;
                                final String strO = oa6Var.o();
                                final String strM = oa6Var.m();
                                final ad6 ad6VarP3 = oa6Var.p();
                                if (ad6VarP3 != null) {
                                    try {
                                        ad6VarP3.c.execute(new Runnable() { // from class: yc6
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                ad6 ad6Var = ad6VarP3;
                                                ng ngVar2 = ngVar;
                                                String str = strO;
                                                String str2 = strM;
                                                Map<String, String> map2 = map;
                                                lc6 lc6Var = ad6Var.a.F;
                                                if (lc6Var != null && !lc6Var.isConnected()) {
                                                    ad6Var.a.v.a("Network isn't connected.");
                                                    if (ad6Var.i.get()) {
                                                        return;
                                                    }
                                                    ad6Var.n();
                                                    return;
                                                }
                                                if (ad6Var.h.getAndSet(true)) {
                                                    ad6Var.a.v.a("Remote Config is being loaded already.");
                                                    return;
                                                }
                                                try {
                                                    PostHogRemoteConfigResponse postHogRemoteConfigResponseH = ad6Var.b.h();
                                                    if (postHogRemoteConfigResponseH != null) {
                                                        synchronized (ad6Var.n) {
                                                            try {
                                                                ad6Var.t(postHogRemoteConfigResponseH.getSessionRecording(), true);
                                                                postHogRemoteConfigResponseH.getSurveys();
                                                                ad6Var.d();
                                                                ad6Var.s(postHogRemoteConfigResponseH.getErrorTracking(), true);
                                                                ad6Var.r(postHogRemoteConfigResponseH.getCapturePerformance(), true);
                                                                Boolean hasFeatureFlags = postHogRemoteConfigResponseH.getHasFeatureFlags();
                                                                if (!(hasFeatureFlags != null ? hasFeatureFlags.booleanValue() : false)) {
                                                                    synchronized (ad6Var.m) {
                                                                        ad6Var.C = true;
                                                                        ad6Var.c();
                                                                        ad6Var.a();
                                                                        j59 j59Var2 = j59.a;
                                                                    }
                                                                } else if (ad6Var.a.c) {
                                                                    if (ta8.M(str)) {
                                                                        ad6Var.a.v.a("Feature flags not loaded, distinctId is invalid: ".concat(str));
                                                                    } else {
                                                                        ad6Var.e(str, str2, map2, ngVar2, null, false);
                                                                    }
                                                                }
                                                                ad6Var.i.set(true);
                                                                j59 j59Var3 = j59.a;
                                                            } catch (Throwable th4) {
                                                                throw th4;
                                                            }
                                                        }
                                                        ad6Var.n();
                                                    } else if (!ad6Var.i.get()) {
                                                        ad6Var.n();
                                                    }
                                                    ad6Var.h.set(false);
                                                } catch (Throwable th5) {
                                                    try {
                                                        ad6Var.a.v.a("Loading remote config failed: " + th5);
                                                        if (!ad6Var.i.get()) {
                                                            ad6Var.n();
                                                        }
                                                    } finally {
                                                        ad6Var.h.set(false);
                                                    }
                                                }
                                            }
                                        });
                                    } catch (Throwable unused) {
                                    }
                                }
                            } else if (t2.c) {
                                oa6Var.x(null);
                            }
                        } catch (Throwable th4) {
                            th = th4;
                        }
                        j59 j59Var2 = j59.a;
                    } catch (Throwable th5) {
                        obj = th5;
                        t2 = t;
                        t2.v.a("Setup failed: " + obj + '.');
                    }
                } catch (Throwable th6) {
                    th = th6;
                    t2 = t;
                }
                obj = th;
                t2.v.a("Setup failed: " + obj + '.');
                j59 j59Var3 = j59.a;
            }
        }

        @Override // defpackage.pb6
        public final void flush() {
            oa6.J.flush();
        }
    }

    public oa6() {
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor(new ce6("PostHogQueueThread"));
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor2 = Executors.newSingleThreadScheduledExecutor(new ce6("PostHogReplayQueueThread"));
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor3 = Executors.newSingleThreadScheduledExecutor(new ce6("PostHogLogsQueueThread"));
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor4 = Executors.newSingleThreadScheduledExecutor(new ce6("PostHogRemoteConfigThread"));
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor5 = Executors.newSingleThreadScheduledExecutor(new ce6("PostHogSendCachedEventsThread"));
        this.i = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
        this.j = scheduledExecutorServiceNewSingleThreadScheduledExecutor2;
        this.k = scheduledExecutorServiceNewSingleThreadScheduledExecutor3;
        this.l = scheduledExecutorServiceNewSingleThreadScheduledExecutor4;
        this.m = scheduledExecutorServiceNewSingleThreadScheduledExecutor5;
        this.n = new Object();
        this.o = new Object();
        this.p = new Object();
        this.q = new Object();
        this.r = new Object();
        this.s = new Object();
        this.x = new LinkedHashMap();
        this.D = new ng(this);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0065  */
    public static boolean r(List list, Map map) {
        boolean zContains;
        Object obj = map != null ? map.get("$exception_list") : null;
        List list2 = obj instanceof List ? (List) obj : null;
        if (list2 != null) {
            List list3 = list;
            ArrayList arrayList = new ArrayList(kn1.q(list3, 10));
            Iterator it = list3.iterator();
            while (it.hasNext()) {
                arrayList.add(((Class) it.next()).getName());
            }
            List list4 = list2;
            if (!(list4 instanceof Collection) || !list4.isEmpty()) {
                for (Object obj2 : list4) {
                    Map map2 = obj2 instanceof Map ? (Map) obj2 : null;
                    if (map2 == null) {
                        zContains = false;
                    } else {
                        Object obj3 = map2.get(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
                        String str = obj3 instanceof String ? (String) obj3 : null;
                        if (str == null) {
                            zContains = false;
                        } else {
                            Object obj4 = map2.get("module");
                            String str2 = obj4 instanceof String ? (String) obj4 : null;
                            if (str2 != null && str2.length() != 0) {
                                str = str2 + '.' + str;
                            }
                            zContains = arrayList.contains(str);
                        }
                    }
                    if (zContains) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static void w(ta6 ta6Var, boolean z) {
        List<ac6> listT0;
        synchronized (ta6Var.K) {
            listT0 = qn1.t0(ta6Var.J);
            j59 j59Var = j59.a;
        }
        for (ac6 ac6Var : listT0) {
            try {
                ac6Var.a(z);
            } catch (Throwable th) {
                ta6Var.v.a("Integration " + ac6Var.getClass().getName() + " onRemoteConfig failed: " + th + '.');
            }
        }
    }

    public final void A(boolean z) {
        synchronized (this.q) {
            try {
                if (this.H != z) {
                    this.H = z;
                    g().a("personProcessingEnabled", Boolean.valueOf(z));
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void B(Map<String, ? extends Object> map, Map<String, ? extends Object> map2) {
        if ((map == null || map.isEmpty()) && (map2 == null || map2.isEmpty())) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (map2 != null) {
            linkedHashMap.putAll(map2);
        }
        if (map != null) {
            linkedHashMap.putAll(map);
        }
        ad6 ad6VarP = p();
        if (ad6VarP != null) {
            synchronized (ad6VarP.o) {
                ad6VarP.p.putAll(linkedHashMap);
                oc6 oc6Var = ad6VarP.a.E;
                if (oc6Var != null) {
                    oc6Var.a("personPropertiesForFlags", ad6VarP.p);
                    j59 j59Var = j59.a;
                }
            }
        }
    }

    public final void C() {
        boolean z;
        na6 na6Var;
        if (h()) {
            synchronized (yd6.a) {
                try {
                    if (yd6.g || !aa4.e(yd6.c, yd6.b)) {
                        z = false;
                    } else {
                        qb6 qb6Var = yd6.d;
                        long jCurrentTimeMillis = qb6Var != null ? qb6Var.currentTimeMillis() : System.currentTimeMillis();
                        yd6.c = gu8.a();
                        yd6.e = jCurrentTimeMillis;
                        yd6.f = jCurrentTimeMillis;
                        z = true;
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (!z || (na6Var = yd6.i) == null) {
                return;
            }
            na6Var.invoke();
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // defpackage.bc6
    public final void a(String str, String str2, Map map, Map map2, Map map3) {
        ic6 ic6Var;
        Map map4;
        ic6 ic6Var2;
        ic6 ic6Var3;
        ic6 ic6Var4;
        ub6 ub6Var;
        ic6 ic6Var5;
        ic6 ic6Var6;
        str.getClass();
        try {
            if (h()) {
                if (u()) {
                    ta6 ta6Var = this.f;
                    if (ta6Var == null || (ic6Var6 = ta6Var.v) == null) {
                        return;
                    }
                    ic6Var6.a("PostHog is in OptOut state.");
                    return;
                }
                String strO = str2 == null ? o() : str2;
                if ((map2 != null && !map2.isEmpty()) || (map3 != null && !map3.isEmpty())) {
                    y("capture", true);
                }
                B(map2, map3);
                if (ta8.M(strO)) {
                    ta6 ta6Var2 = this.f;
                    if (ta6Var2 == null || (ic6Var5 = ta6Var2.v) == null) {
                        return;
                    }
                    ic6Var5.a("capture call not allowed, distinctId is invalid: " + strO + '.');
                    return;
                }
                vb6 vb6Var = vb6.SNAPSHOT;
                boolean zEquals = str.equals(vb6Var.a());
                boolean zEquals2 = str.equals(vb6.GROUP_IDENTIFY.a());
                ta6 ta6Var3 = this.f;
                List<Class<? extends Throwable>> list = (ta6Var3 == null || (ub6Var = ta6Var3.q) == null) ? null : ub6Var.c;
                List<Class<? extends Throwable>> list2 = list;
                if (list2 != null && !list2.isEmpty() && str.equals(vb6.EXCEPTION.a()) && r(list, map)) {
                    ta6 ta6Var4 = this.f;
                    if (ta6Var4 == null || (ic6Var4 = ta6Var4.v) == null) {
                        return;
                    }
                    ic6Var4.a("Skipping $exception: an entry in $exception_list matches ignoredExceptionTypes");
                    return;
                }
                wb6 wb6Var = this.A;
                if (!str.equals(vb6.EXCEPTION.a()) || wb6Var == null) {
                    map4 = map;
                } else {
                    LinkedHashMap linkedHashMap = map != null ? new LinkedHashMap(map) : new LinkedHashMap();
                    wb6Var.a(linkedHashMap);
                    map4 = linkedHashMap;
                }
                String str3 = strO;
                LinkedHashMap linkedHashMapK = k(str3, map4, map2, map3, !zEquals, true ^ zEquals2);
                PostHogEvent postHogEventD = d(str, str3, linkedHashMapK);
                if (postHogEventD == null) {
                    String strConcat = "PostHog event " + str + " was dropped";
                    vb6.Companion.getClass();
                    if (vb6.a.a(str)) {
                        strConcat = strConcat.concat(". This can cause unexpected behavior.");
                    }
                    ta6 ta6Var5 = this.f;
                    if (ta6Var5 == null || (ic6Var3 = ta6Var5.v) == null) {
                        return;
                    }
                    ic6Var3.a(strConcat);
                    return;
                }
                boolean zE = aa4.e(postHogEventD.getEvent(), vb6Var.a());
                if (zE) {
                    Map<String, Object> properties = postHogEventD.getProperties();
                    if ((properties != null ? properties.get("$session_id") : null) == null) {
                        ta6 ta6Var6 = this.f;
                        if (ta6Var6 == null || (ic6Var2 = ta6Var6.v) == null) {
                            return;
                        }
                        ic6Var2.a(postHogEventD.getEvent() + " event dropped, because the $session_id property is missing");
                        return;
                    }
                }
                if (zE) {
                    xc6<PostHogEvent> xc6Var = this.t;
                    if (xc6Var != null) {
                        xc6Var.add(postHogEventD);
                        return;
                    }
                    return;
                }
                String event = postHogEventD.getEvent();
                Map<String, Object> properties2 = postHogEventD.getProperties();
                if (properties2 == null) {
                    properties2 = mx2.b;
                }
                f(event, str3, properties2, map2, map3);
                be6 be6Var = this.z;
                if (be6Var != null) {
                    be6Var.onEvent(str, linkedHashMapK);
                }
                PostHogSessionReplayHandler postHogSessionReplayHandler = this.y;
                if (postHogSessionReplayHandler != null) {
                    postHogSessionReplayHandler.onEvent(str, linkedHashMapK);
                }
            }
        } catch (Throwable th) {
            ta6 ta6Var7 = this.f;
            if (ta6Var7 == null || (ic6Var = ta6Var7.v) == null) {
                return;
            }
            sg.f("Capture failed: ", th, '.', ic6Var);
        }
    }

    @Override // defpackage.bc6
    public final void b(de6 de6Var) {
        ic6 ic6Var;
        List list;
        ub6 ub6Var;
        if (h()) {
            try {
                if (i(de6Var)) {
                    return;
                }
                ta6 ta6Var = this.f;
                if (ta6Var == null || (ub6Var = ta6Var.q) == null || (list = ub6Var.a) == null) {
                    list = kx2.b;
                }
                a(vb6.EXCEPTION.a(), (122 & 2) != 0 ? null : null, (122 & 4) != 0 ? null : x65.h(de6Var, list, ta6Var != null ? ta6Var.r : null), null, null);
            } catch (Throwable th) {
                ta6 ta6Var2 = this.f;
                if (ta6Var2 == null || (ic6Var = ta6Var2.v) == null) {
                    return;
                }
                sg.f("captureException has thrown an exception: ", th, '.', ic6Var);
            }
        }
    }

    @Override // defpackage.bc6
    public final boolean c() {
        PostHogSessionReplayHandler postHogSessionReplayHandler;
        boolean z;
        if (h() && (postHogSessionReplayHandler = this.y) != null && postHogSessionReplayHandler.isActive()) {
            if (h()) {
                synchronized (yd6.a) {
                    z = !aa4.e(yd6.c, yd6.b);
                    j59 j59Var = j59.a;
                }
            } else {
                z = false;
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.ae6, defpackage.pb6
    public final void flush() {
        if (h()) {
            super.flush();
            xc6<PostHogEvent> xc6Var = this.t;
            if (xc6Var != null) {
                xc6Var.flush();
            }
            wc6 wc6Var = this.u;
            if (wc6Var != null) {
                wc6Var.flush();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:125:0x018d  */
    /* JADX WARN: Code duplicated, block: B:127:0x0193  */
    /* JADX WARN: Code duplicated, block: B:128:0x0198  */
    /* JADX WARN: Code duplicated, block: B:97:0x0142  */
    public final LinkedHashMap k(String str, Map map, Map map2, Map map3, boolean z, boolean z2) {
        UUID uuidA;
        ob6 ob6Var;
        Map<String, Object> mapB;
        LinkedHashMap linkedHashMapJ;
        ad6 ad6VarP;
        Map mapL;
        ob6 ob6Var2;
        ob6 ob6Var3;
        Map<String, Object> mapC;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (z) {
            LinkedHashMap all = g().getAll();
            if (!all.isEmpty()) {
                linkedHashMap.putAll(all);
            }
            ta6 ta6Var = this.f;
            if (ta6Var != null && (ob6Var3 = ta6Var.x) != null && (mapC = ob6Var3.c()) != null) {
                linkedHashMap.putAll(mapC);
            }
            ta6 ta6Var2 = this.f;
            if (ta6Var2 != null && (ob6Var2 = ta6Var2.x) != null) {
                linkedHashMap.putAll(ob6Var2.a());
            }
            ta6 ta6Var3 = this.f;
            boolean z3 = true;
            if (ta6Var3 != null && ta6Var3.b && (ad6VarP = p()) != null) {
                synchronized (ad6VarP.m) {
                    try {
                        Map<String, ? extends Object> map4 = ad6VarP.s;
                        mapL = map4 != null ? n05.l(map4) : null;
                        j59 j59Var = j59.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (mapL != null && !mapL.isEmpty()) {
                    ArrayList arrayList = new ArrayList();
                    for (Map.Entry entry : mapL.entrySet()) {
                        linkedHashMap.put("$feature/" + ((String) entry.getKey()), entry.getValue());
                        Object value = entry.getValue();
                        Boolean bool = value instanceof Boolean ? (Boolean) value : null;
                        if (bool != null ? bool.booleanValue() : true) {
                            arrayList.add(entry.getKey());
                        }
                    }
                    linkedHashMap.put("$active_feature_flags", arrayList);
                }
            }
            if (map2 != null) {
                linkedHashMap.put("$set", map2);
            }
            if (map3 != null) {
                linkedHashMap.put("$set_once", map3);
            }
            if (z2 && (linkedHashMapJ = j()) != null) {
                linkedHashMap.put("$groups", linkedHashMapJ);
            }
            linkedHashMap.put("$is_identified", Boolean.valueOf(t()));
            ta6 ta6Var4 = this.f;
            if ((ta6Var4 != null ? ta6Var4.m : null) == w46.NEVER) {
                z3 = false;
            } else if ((ta6Var4 != null ? ta6Var4.m : null) == w46.IDENTIFIED_ONLY && !t()) {
                synchronized (this.q) {
                    try {
                        if (!this.C) {
                            boolean zB = g().b();
                            Object objD = g().d(null, "personProcessingEnabled");
                            Boolean bool2 = objD instanceof Boolean ? (Boolean) objD : null;
                            boolean zBooleanValue = bool2 != null ? bool2.booleanValue() : false;
                            if (zB) {
                                A(zBooleanValue);
                                this.C = true;
                            } else {
                                this.H = zBooleanValue;
                            }
                        }
                        j59 j59Var2 = j59.a;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (!this.H) {
                    z3 = false;
                }
            }
            linkedHashMap.put("$process_person_profile", Boolean.valueOf(z3));
            String str2 = this.v;
            if (str2 != null && str2.length() != 0) {
                linkedHashMap.put("$screen_name", str2);
            }
        }
        ta6 ta6Var5 = this.f;
        if (ta6Var5 != null && (ob6Var = ta6Var5.x) != null && (mapB = ob6Var.b()) != null) {
            linkedHashMap.putAll(mapB);
        }
        boolean zC = c();
        Object obj = map != null ? map.get("$session_id") : null;
        String string = obj instanceof String ? (String) obj : null;
        if (string == null) {
            uuidA = yd6.a();
            if (uuidA != null) {
                string = uuidA.toString();
            } else {
                string = null;
            }
        } else {
            if (ta8.M(string)) {
                string = null;
            }
            if (string == null) {
                uuidA = yd6.a();
                if (uuidA != null) {
                    string = uuidA.toString();
                } else {
                    string = null;
                }
            }
        }
        if (string != null) {
            linkedHashMap.put("$session_id", string);
            if (!z && zC) {
                linkedHashMap.put("$window_id", string);
            }
        }
        if (map != null) {
            linkedHashMap.putAll(map);
        }
        Object obj2 = linkedHashMap.get("distinct_id");
        String str3 = obj2 instanceof String ? (String) obj2 : null;
        if (!z && zC && (str3 == null || ta8.M(str3))) {
            linkedHashMap.put("distinct_id", str);
        }
        return linkedHashMap;
    }

    public final void l() {
        boolean z;
        na6 na6Var;
        if (h()) {
            synchronized (yd6.a) {
                try {
                    if (yd6.g) {
                        z = false;
                    } else {
                        UUID uuid = yd6.c;
                        UUID uuid2 = yd6.b;
                        if (aa4.e(uuid, uuid2)) {
                            z = false;
                        } else {
                            yd6.c = uuid2;
                            yd6.e = 0L;
                            yd6.f = 0L;
                            z = true;
                        }
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (!z || (na6Var = yd6.i) == null) {
                return;
            }
            na6Var.invoke();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3, types: [T, java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r3v5, types: [T, java.lang.Object, java.lang.String] */
    public final String m() {
        nl3<? super UUID, UUID> nl3Var;
        r07 r07Var = new r07();
        synchronized (this.n) {
            try {
                boolean zB = g().b();
                Object objD = g().d(null, "anonymousId");
                ?? r3 = objD instanceof String ? (String) objD : 0;
                r07Var.b = r3;
                if (r3 == 0 || ta8.M(r3)) {
                    String str = this.E;
                    ?? r4 = str;
                    if (str == null) {
                        UUID uuidA = gu8.a();
                        ta6 ta6Var = this.f;
                        if (ta6Var != null && (nl3Var = ta6Var.l) != null) {
                            uuidA = nl3Var.invoke(uuidA);
                        }
                        String string = uuidA.toString();
                        string.getClass();
                        r4 = string;
                    }
                    r07Var.b = r4;
                    if (zB) {
                        g().a("anonymousId", r4);
                        this.E = null;
                    } else {
                        this.E = r4;
                    }
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        String str2 = (String) r07Var.b;
        return str2 == null ? "" : str2;
    }

    public final void n() {
        if (h()) {
            synchronized (this.o) {
                try {
                    boolean zB = g().b();
                    Object objD = g().d(null, "deviceId");
                    String str = objD instanceof String ? (String) objD : null;
                    if (str == null || ta8.M(str)) {
                        String strM = m();
                        if (ta8.M(strM)) {
                            return;
                        }
                        if (zB) {
                            g().a("deviceId", strM);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final String o() {
        Object objD = g().d(m(), "distinctId");
        String str = objD instanceof String ? (String) objD : null;
        return str == null ? "" : str;
    }

    public final ad6 p() {
        ta6 ta6Var = this.f;
        if (ta6Var != null) {
            return ta6Var.H;
        }
        return null;
    }

    public final UUID q() {
        if (h()) {
            return yd6.a();
        }
        return null;
    }

    public final void s(String str) {
        ic6 ic6Var;
        ic6 ic6Var2;
        ic6 ic6Var3;
        ic6 ic6Var4;
        str.getClass();
        if (h() && y("identify", false)) {
            if (ta8.M(str)) {
                ta6 ta6Var = this.f;
                if (ta6Var == null || (ic6Var4 = ta6Var.v) == null) {
                    return;
                }
                ic6Var4.a("identify call not allowed, distinctId is invalid: " + str + '.');
                return;
            }
            String strO = o();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            String strM = m();
            if (ta8.M(strM)) {
                ta6 ta6Var2 = this.f;
                if (ta6Var2 != null && (ic6Var = ta6Var2.v) != null) {
                    ic6Var.a("identify called with invalid anonymousId: " + strM + '.');
                }
            } else {
                linkedHashMap.put("$anon_distinct_id", strM);
            }
            if (strO.equals(str) || t()) {
                ta6 ta6Var3 = this.f;
                if (ta6Var3 == null || (ic6Var2 = ta6Var3.v) == null) {
                    return;
                }
                ic6Var2.a("already identified with id: " + str + '.');
                return;
            }
            synchronized (this.p) {
                z(true);
                j59 j59Var = j59.a;
            }
            a(vb6.IDENTIFY.a(), (122 & 2) != 0 ? null : str, (122 & 4) != 0 ? null : linkedHashMap, null, null);
            if (ta8.M(strO)) {
                ta6 ta6Var4 = this.f;
                if (ta6Var4 != null && (ic6Var3 = ta6Var4.v) != null) {
                    ic6Var3.a("identify called with invalid former distinctId: " + strO + '.');
                }
            } else {
                g().a("anonymousId", strO);
            }
            g().a("distinctId", str);
            x(null);
        }
    }

    public final boolean t() {
        boolean zBooleanValue;
        synchronized (this.p) {
            try {
                if (!this.B) {
                    boolean zB = g().b();
                    Object objD = g().d(null, "isIdentified");
                    Boolean bool = objD instanceof Boolean ? (Boolean) objD : null;
                    if (bool != null) {
                        zBooleanValue = bool.booleanValue();
                    } else {
                        zBooleanValue = !o().equals(m());
                    }
                    if (zB) {
                        z(zBooleanValue);
                        this.B = true;
                    } else {
                        this.F = zBooleanValue;
                    }
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.F;
    }

    public final boolean u() {
        ta6 ta6Var = this.f;
        if (ta6Var == null) {
            return true;
        }
        if (!this.G) {
            synchronized (this.e) {
                try {
                    if (!this.G && g().b()) {
                        Object objD = g().d(Boolean.valueOf(ta6Var.a), "opt-out");
                        Boolean bool = objD instanceof Boolean ? (Boolean) objD : null;
                        if (bool != null) {
                            ta6Var.a = bool.booleanValue();
                        }
                        this.G = true;
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return ta6Var.a;
    }

    public final void v(ta6 ta6Var, wd6 wd6Var) {
        oc6 oc6VarG = g();
        String str = ta6Var.t;
        Object objD = oc6VarG.d(null, str);
        String str2 = objD instanceof String ? (String) objD : null;
        if (str2 != null) {
            try {
                Map map = (Map) wd6Var.a.e(new StringReader(str2), new pa6().b);
                if (map != null) {
                    Object obj = map.get("anonymousId");
                    String str3 = obj instanceof String ? (String) obj : null;
                    Object obj2 = map.get("distinctId");
                    String str4 = obj2 instanceof String ? (String) obj2 : null;
                    if (str3 != null && !ta8.M(str3)) {
                        g().a("anonymousId", str3);
                    }
                    if (str4 != null && !ta8.M(str4)) {
                        g().a("distinctId", str4);
                    }
                    g().remove(str);
                    j59 j59Var = j59.a;
                }
            } catch (Throwable th) {
                ta6Var.v.a("Legacy cached prefs: " + str2 + " failed to parse: " + th + '.');
                j59 j59Var2 = j59.a;
            }
        }
    }

    public final void x(final ng ngVar) {
        ic6 ic6Var;
        if (h()) {
            Object objD = g().d(null, "groups");
            final Map map = objD instanceof Map ? (Map) objD : null;
            final String strO = o();
            final String strM = m();
            if (ta8.M(strO)) {
                ta6 ta6Var = this.f;
                if (ta6Var == null || (ic6Var = ta6Var.v) == null) {
                    return;
                }
                ic6Var.a("Feature flags not loaded, distinctId is invalid: ".concat(strO));
                return;
            }
            final ad6 ad6VarP = p();
            if (ad6VarP != null) {
                ExecutorService executorService = ad6VarP.c;
                final ng ngVar2 = this.D;
                try {
                    executorService.execute(new Runnable() { // from class: zc6
                        @Override // java.lang.Runnable
                        public final void run() {
                            ad6VarP.e(strO, strM, map, ngVar2, ngVar, true);
                        }
                    });
                } catch (Throwable unused) {
                }
            }
        }
    }

    public final boolean y(String str, boolean z) {
        ic6 ic6Var;
        ta6 ta6Var = this.f;
        if ((ta6Var != null ? ta6Var.m : null) != w46.NEVER) {
            A(true);
            return true;
        }
        if (z || ta6Var == null || (ic6Var = ta6Var.v) == null) {
            return false;
        }
        ic6Var.a(str.concat(" was called, but `personProfiles` is set to `never`. This call will be ignored."));
        return false;
    }

    public final void z(boolean z) {
        synchronized (this.p) {
            this.F = z;
            g().a("isIdentified", Boolean.valueOf(z));
            j59 j59Var = j59.a;
        }
    }
}
