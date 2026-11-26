package defpackage;

import com.posthog.PostHogEvent;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes4.dex */
public class ae6 implements pb6 {
    public final ExecutorService a;
    public final ExecutorService b;
    public volatile boolean c;
    public final Object d;
    public final Object e;
    public ta6 f;
    public xc6<PostHogEvent> g;
    public final kc6 h;

    static {
        new ae6();
        new LinkedHashSet();
    }

    public ae6() {
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor(new ce6("PostHogQueueThread"));
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor2 = Executors.newSingleThreadScheduledExecutor(new ce6("PostHogFeatureFlagsThread"));
        scheduledExecutorServiceNewSingleThreadScheduledExecutor.getClass();
        scheduledExecutorServiceNewSingleThreadScheduledExecutor2.getClass();
        this.a = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
        this.b = scheduledExecutorServiceNewSingleThreadScheduledExecutor2;
        this.d = new Object();
        this.e = new Object();
        this.h = new kc6();
    }

    public final PostHogEvent d(String str, String str2, LinkedHashMap linkedHashMap) {
        List listT0;
        ic6 ic6Var;
        ic6 ic6Var2;
        qb6 qb6Var;
        str.getClass();
        str2.getClass();
        ta6 ta6Var = this.f;
        Date dateB = (ta6Var == null || (qb6Var = ta6Var.I) == null) ? null : qb6Var.b();
        if (dateB == null) {
            dateB = new Date();
        }
        PostHogEvent postHogEvent = new PostHogEvent(str, str2, linkedHashMap, dateB, null, null, null, null, null, 496, null);
        ta6 ta6Var2 = this.f;
        if (ta6Var2 != null) {
            synchronized (ta6Var2.M) {
                listT0 = qn1.t0(ta6Var2.L);
                j59 j59Var = j59.a;
            }
        } else {
            listT0 = kx2.b;
        }
        Iterator it = listT0.iterator();
        while (it.hasNext()) {
            try {
                postHogEvent = ((jb6) it.next()).run();
                if (postHogEvent == null) {
                    ta6 ta6Var3 = this.f;
                    if (ta6Var3 != null && (ic6Var2 = ta6Var3.v) != null) {
                        ic6Var2.a("Event " + str + " was rejected in beforeSend function");
                        return null;
                    }
                }
            } catch (Throwable th) {
                ta6 ta6Var4 = this.f;
                if (ta6Var4 != null && (ic6Var = ta6Var4.v) != null) {
                    ic6Var.a("Error in beforeSend function: " + th);
                }
            }
            return null;
        }
        return postHogEvent;
    }

    public final LinkedHashMap e(Map map, Map map2, Map map3, boolean z) {
        ob6 ob6Var;
        Map<String, Object> mapB;
        LinkedHashMap linkedHashMapJ;
        ob6 ob6Var2;
        ob6 ob6Var3;
        Map<String, Object> mapC;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
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
        if (map2 != null) {
            linkedHashMap.put("$set", map2);
        }
        if (map3 != null) {
            linkedHashMap.put("$set_once", map3);
        }
        if (z && (linkedHashMapJ = j()) != null) {
            linkedHashMap.put("$groups", linkedHashMapJ);
        }
        ta6 ta6Var3 = this.f;
        if (ta6Var3 != null && (ob6Var = ta6Var3.x) != null && (mapB = ob6Var.b()) != null) {
            linkedHashMap.putAll(mapB);
        }
        linkedHashMap.putAll(map);
        return linkedHashMap;
    }

    public final void f(String str, String str2, Map map, Map map2, Map map3) {
        ic6 ic6Var;
        ic6 ic6Var2;
        ic6 ic6Var3;
        str.getClass();
        str2.getClass();
        try {
            if (h()) {
                ta6 ta6Var = this.f;
                if (ta6Var != null && ta6Var.a) {
                    ta6 ta6Var2 = this.f;
                    if (ta6Var2 == null || (ic6Var3 = ta6Var2.v) == null) {
                        return;
                    }
                    ic6Var3.a("PostHog is in OptOut state.");
                    return;
                }
                PostHogEvent postHogEventD = d(str, str2, new LinkedHashMap(e(map, map2, map3, !str.equals("$groupidentify"))));
                if (postHogEventD != null) {
                    xc6<PostHogEvent> xc6Var = this.g;
                    if (xc6Var != null) {
                        xc6Var.add(postHogEventD);
                        return;
                    }
                    return;
                }
                String strConcat = "PostHog event " + str + " was dropped";
                vb6.Companion.getClass();
                if (vb6.a.a(str)) {
                    strConcat = strConcat.concat(". This can cause unexpected behavior.");
                }
                ta6 ta6Var3 = this.f;
                if (ta6Var3 == null || (ic6Var2 = ta6Var3.v) == null) {
                    return;
                }
                ic6Var2.a(strConcat);
            }
        } catch (Throwable th) {
            ta6 ta6Var4 = this.f;
            if (ta6Var4 == null || (ic6Var = ta6Var4.v) == null) {
                return;
            }
            sg.f("Capture failed: ", th, '.', ic6Var);
        }
    }

    @Override // defpackage.pb6
    public void flush() {
        xc6<PostHogEvent> xc6Var;
        if (h() && (xc6Var = this.g) != null) {
            xc6Var.flush();
        }
    }

    public final oc6 g() {
        oc6 oc6Var;
        ta6 ta6Var = this.f;
        return (ta6Var == null || (oc6Var = ta6Var.E) == null) ? this.h : oc6Var;
    }

    public final boolean h() {
        ta6 ta6Var;
        ic6 ic6Var;
        if (!this.c && (ta6Var = this.f) != null && (ic6Var = ta6Var.v) != null) {
            ic6Var.a("Setup isn't called.");
        }
        return this.c;
    }

    public final boolean i(de6 de6Var) {
        Throwable cause;
        ic6 ic6Var;
        Object next;
        ub6 ub6Var;
        ta6 ta6Var = this.f;
        Class cls = null;
        List<Class<? extends Throwable>> list = (ta6Var == null || (ub6Var = ta6Var.q) == null) ? null : ub6Var.c;
        List<Class<? extends Throwable>> list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return false;
        }
        HashSet hashSet = new HashSet();
        while (cause != null && hashSet.add(cause)) {
            cause = de6Var;
            Iterator<T> it = list.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!((Class) next).isInstance(cause));
            Class cls2 = (Class) next;
            if (cls2 != null) {
                cls = cls2;
                break;
            }
            cause = cause.getCause();
        }
        if (cls == null) {
            cause = de6Var;
            cause = de6Var;
            return false;
        }
        cause = de6Var;
        cause = de6Var;
        ta6 ta6Var2 = this.f;
        if (ta6Var2 == null || (ic6Var = ta6Var2.v) == null) {
            return true;
        }
        ic6Var.a("Skipping $exception: " + cls.getName() + " (or a cause in its chain) matches ignoredExceptionTypes");
        return true;
    }

    public final LinkedHashMap j() {
        Object objD = g().d(null, "groups");
        Map map = objD instanceof Map ? (Map) objD : null;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (map != null) {
            linkedHashMap.putAll(map);
        }
        if (linkedHashMap.isEmpty()) {
            return null;
        }
        return linkedHashMap;
    }
}
