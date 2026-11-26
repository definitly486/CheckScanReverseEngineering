package com.google.firebase.sessions.api;

import android.util.Log;
import com.google.firebase.sessions.FirebaseSessions;
import defpackage.aa4;
import defpackage.c9;
import defpackage.j59;
import defpackage.jh2;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes4.dex */
public final class FirebaseSessionsDependencies {
    public static final FirebaseSessionsDependencies INSTANCE = new FirebaseSessionsDependencies();
    private static final Map<SessionSubscriber.Name, Dependency> dependencies = Collections.synchronizedMap(new LinkedHashMap());

    private FirebaseSessionsDependencies() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void addDependency(SessionSubscriber.Name name) {
        name.getClass();
        Map<SessionSubscriber.Name, Dependency> map = dependencies;
        if (map.containsKey(name)) {
            Log.d(FirebaseSessions.TAG, "Dependency " + name + " already added.");
            return;
        }
        map.getClass();
        map.put(name, new Dependency(new CountDownLatch(1), null, 2, 0 == true ? 1 : 0));
        Log.d(FirebaseSessions.TAG, "Dependency to " + name + " added.");
    }

    private final Dependency getDependency(SessionSubscriber.Name name) {
        Map<SessionSubscriber.Name, Dependency> map = dependencies;
        map.getClass();
        Dependency dependency = map.get(name);
        if (dependency != null) {
            return dependency;
        }
        c9.g(name, "Cannot get dependency ", ". Dependencies should be added at class load time.");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 getRegisteredSubscribers$lambda$2$lambda$1(Dependency dependency) throws InterruptedException {
        dependency.getLatch().await();
        return j59.a;
    }

    public static final void register(SessionSubscriber sessionSubscriber) {
        sessionSubscriber.getClass();
        SessionSubscriber.Name sessionSubscriberName = sessionSubscriber.getSessionSubscriberName();
        Dependency dependency = INSTANCE.getDependency(sessionSubscriberName);
        if (dependency.getSubscriber() != null) {
            Log.d(FirebaseSessions.TAG, "Subscriber " + sessionSubscriberName + " already registered.");
            return;
        }
        dependency.setSubscriber(sessionSubscriber);
        Log.d(FirebaseSessions.TAG, "Subscriber " + sessionSubscriberName + " registered.");
        dependency.getLatch().countDown();
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0067  */
    /* JADX WARN: Code duplicated, block: B:19:0x009b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:20:0x009c  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x009c -> B:21:0x009d). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object getRegisteredSubscribers$com_google_firebase_firebase_sessions(defpackage.e02<? super java.util.Map<com.google.firebase.sessions.api.SessionSubscriber.Name, ? extends com.google.firebase.sessions.api.SessionSubscriber>> r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof com.google.firebase.sessions.api.FirebaseSessionsDependencies$getRegisteredSubscribers$1
            if (r0 == 0) goto L13
            r0 = r9
            com.google.firebase.sessions.api.FirebaseSessionsDependencies$getRegisteredSubscribers$1 r0 = (com.google.firebase.sessions.api.FirebaseSessionsDependencies$getRegisteredSubscribers$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.google.firebase.sessions.api.FirebaseSessionsDependencies$getRegisteredSubscribers$1 r0 = new com.google.firebase.sessions.api.FirebaseSessionsDependencies$getRegisteredSubscribers$1
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r8 = r0.result
            a32 r9 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L40
            if (r1 != r3) goto L3a
            java.lang.Object r1 = r0.L$4
            java.lang.Object r4 = r0.L$3
            java.util.Map r4 = (java.util.Map) r4
            java.lang.Object r5 = r0.L$2
            com.google.firebase.sessions.api.SessionSubscriber$Name r5 = (com.google.firebase.sessions.api.SessionSubscriber.Name) r5
            java.lang.Object r6 = r0.L$1
            java.util.Iterator r6 = (java.util.Iterator) r6
            java.lang.Object r7 = r0.L$0
            java.util.Map r7 = (java.util.Map) r7
            defpackage.r57.b(r8)
            goto L9d
        L3a:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r8)
            return r2
        L40:
            defpackage.r57.b(r8)
            java.util.Map<com.google.firebase.sessions.api.SessionSubscriber$Name, com.google.firebase.sessions.api.FirebaseSessionsDependencies$Dependency> r8 = com.google.firebase.sessions.api.FirebaseSessionsDependencies.dependencies
            r8.getClass()
            java.util.LinkedHashMap r1 = new java.util.LinkedHashMap
            int r4 = r8.size()
            int r4 = defpackage.m05.b(r4)
            r1.<init>(r4)
            java.util.Set r8 = r8.entrySet()
            java.lang.Iterable r8 = (java.lang.Iterable) r8
            java.util.Iterator r8 = r8.iterator()
            r6 = r8
            r4 = r1
        L61:
            boolean r8 = r6.hasNext()
            if (r8 == 0) goto La8
            java.lang.Object r8 = r6.next()
            java.util.Map$Entry r8 = (java.util.Map.Entry) r8
            java.lang.Object r1 = r8.getKey()
            java.lang.Object r5 = r8.getKey()
            com.google.firebase.sessions.api.SessionSubscriber$Name r5 = (com.google.firebase.sessions.api.SessionSubscriber.Name) r5
            java.lang.Object r8 = r8.getValue()
            com.google.firebase.sessions.api.FirebaseSessionsDependencies$Dependency r8 = (com.google.firebase.sessions.api.FirebaseSessionsDependencies.Dependency) r8
            com.google.firebase.sessions.api.a r7 = new com.google.firebase.sessions.api.a
            r7.<init>()
            r0.L$0 = r4
            r0.L$1 = r6
            r0.L$2 = r5
            r0.L$3 = r4
            r0.L$4 = r1
            r0.label = r3
            x94 r8 = new x94
            r8.<init>(r7, r2)
            gx2 r7 = defpackage.gx2.b
            java.lang.Object r8 = defpackage.av0.d(r7, r8, r0)
            if (r8 != r9) goto L9c
            return r9
        L9c:
            r7 = r4
        L9d:
            com.google.firebase.sessions.api.FirebaseSessionsDependencies r8 = com.google.firebase.sessions.api.FirebaseSessionsDependencies.INSTANCE
            com.google.firebase.sessions.api.SessionSubscriber r8 = r8.getSubscriber$com_google_firebase_firebase_sessions(r5)
            r4.put(r1, r8)
            r4 = r7
            goto L61
        La8:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.sessions.api.FirebaseSessionsDependencies.getRegisteredSubscribers$com_google_firebase_firebase_sessions(e02):java.lang.Object");
    }

    public final SessionSubscriber getSubscriber$com_google_firebase_firebase_sessions(SessionSubscriber.Name name) {
        name.getClass();
        SessionSubscriber subscriber = getDependency(name).getSubscriber();
        if (subscriber != null) {
            return subscriber;
        }
        c9.g(name, "Subscriber ", " has not been registered.");
        return null;
    }

    public final void reset$com_google_firebase_firebase_sessions() {
        dependencies.clear();
    }

    public static final class Dependency {
        private final CountDownLatch latch;
        private SessionSubscriber subscriber;

        public Dependency(CountDownLatch countDownLatch, SessionSubscriber sessionSubscriber) {
            countDownLatch.getClass();
            this.latch = countDownLatch;
            this.subscriber = sessionSubscriber;
        }

        public static /* synthetic */ Dependency copy$default(Dependency dependency, CountDownLatch countDownLatch, SessionSubscriber sessionSubscriber, int i, Object obj) {
            if ((i & 1) != 0) {
                countDownLatch = dependency.latch;
            }
            if ((i & 2) != 0) {
                sessionSubscriber = dependency.subscriber;
            }
            return dependency.copy(countDownLatch, sessionSubscriber);
        }

        public final CountDownLatch component1() {
            return this.latch;
        }

        public final SessionSubscriber component2() {
            return this.subscriber;
        }

        public final Dependency copy(CountDownLatch countDownLatch, SessionSubscriber sessionSubscriber) {
            countDownLatch.getClass();
            return new Dependency(countDownLatch, sessionSubscriber);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Dependency)) {
                return false;
            }
            Dependency dependency = (Dependency) obj;
            return aa4.e(this.latch, dependency.latch) && aa4.e(this.subscriber, dependency.subscriber);
        }

        public final CountDownLatch getLatch() {
            return this.latch;
        }

        public final SessionSubscriber getSubscriber() {
            return this.subscriber;
        }

        public int hashCode() {
            int iHashCode = this.latch.hashCode() * 31;
            SessionSubscriber sessionSubscriber = this.subscriber;
            return iHashCode + (sessionSubscriber == null ? 0 : sessionSubscriber.hashCode());
        }

        public final void setSubscriber(SessionSubscriber sessionSubscriber) {
            this.subscriber = sessionSubscriber;
        }

        public String toString() {
            return "Dependency(latch=" + this.latch + ", subscriber=" + this.subscriber + ')';
        }

        public /* synthetic */ Dependency(CountDownLatch countDownLatch, SessionSubscriber sessionSubscriber, int i, jh2 jh2Var) {
            this(countDownLatch, (i & 2) != 0 ? null : sessionSubscriber);
        }
    }
}
