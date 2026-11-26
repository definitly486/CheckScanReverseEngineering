package com.google.firebase.sessions;

import android.util.Log;
import androidx.compose.runtime.ComposerKt;
import androidx.datastore.core.DataStore;
import com.google.firebase.annotations.concurrent.Background;
import com.google.firebase.sessions.api.FirebaseSessionsDependencies;
import com.google.firebase.sessions.api.SessionSubscriber;
import com.google.firebase.sessions.settings.SessionsSettings;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.de3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.g03;
import defpackage.h03;
import defpackage.id3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.me0;
import defpackage.o22;
import defpackage.pg8;
import defpackage.r57;
import defpackage.wt2;
import defpackage.y22;
import defpackage.z22;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class SharedSessionRepositoryImpl implements SharedSessionRepository {
    private final o22 backgroundDispatcher;
    private boolean isInForeground;
    public SessionData localSessionData;
    private boolean pendingForegroundCheck;
    private NotificationType previousNotificationType;
    private String previousSessionId;
    private final ProcessDataManager processDataManager;
    private final DataStore<SessionData> sessionDataStore;
    private final SessionFirelogPublisher sessionFirelogPublisher;
    private final SessionGenerator sessionGenerator;
    private final SessionsSettings sessionsSettings;
    private final TimeProvider timeProvider;

    /* JADX INFO: renamed from: com.google.firebase.sessions.SharedSessionRepositoryImpl$1, reason: invalid class name */
    @bd2(c = "com.google.firebase.sessions.SharedSessionRepositoryImpl$1", f = "SharedSessionRepository.kt", l = {96}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        /* JADX INFO: renamed from: com.google.firebase.sessions.SharedSessionRepositoryImpl$1$1, reason: invalid class name and collision with other inner class name */
        @bd2(c = "com.google.firebase.sessions.SharedSessionRepositoryImpl$1$1", f = "SharedSessionRepository.kt", l = {94}, m = "invokeSuspend")
        public static final class C01381 extends pg8 implements dm3<id3<? super SessionData>, Throwable, e02<? super j59>, Object> {
            private /* synthetic */ Object L$0;
            /* synthetic */ Object L$1;
            int label;
            final /* synthetic */ SharedSessionRepositoryImpl this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C01381(SharedSessionRepositoryImpl sharedSessionRepositoryImpl, e02<? super C01381> e02Var) {
                super(3, e02Var);
                this.this$0 = sharedSessionRepositoryImpl;
            }

            @Override // defpackage.dm3
            public final Object invoke(id3<? super SessionData> id3Var, Throwable th, e02<? super j59> e02Var) {
                C01381 c01381 = new C01381(this.this$0, e02Var);
                c01381.L$0 = id3Var;
                c01381.L$1 = th;
                return c01381.invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i == 0) {
                    r57.b(obj);
                    id3 id3Var = (id3) this.L$0;
                    Throwable th = (Throwable) this.L$1;
                    SessionData sessionData = new SessionData(this.this$0.sessionGenerator.generateNewSession(null), (Time) null, (Map) null, 4, (jh2) null);
                    Log.d(FirebaseSessions.TAG, "Init session datastore failed with exception message: " + th.getMessage() + ". Emit fallback session " + sessionData.getSessionDetails().getSessionId());
                    this.L$0 = null;
                    this.label = 1;
                    if (id3Var.emit(sessionData, this) == a32Var) {
                        return a32Var;
                    }
                } else {
                    if (i != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r57.b(obj);
                }
                return j59.a;
            }
        }

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return SharedSessionRepositoryImpl.this.new AnonymousClass1(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                de3 de3Var = new de3(SharedSessionRepositoryImpl.this.sessionDataStore.getData(), new C01381(SharedSessionRepositoryImpl.this, null));
                final SharedSessionRepositoryImpl sharedSessionRepositoryImpl = SharedSessionRepositoryImpl.this;
                id3<? super Object> id3Var = new id3() { // from class: com.google.firebase.sessions.SharedSessionRepositoryImpl.1.2
                    public final Object emit(SessionData sessionData, e02<? super j59> e02Var) {
                        sharedSessionRepositoryImpl.setLocalSessionData$com_google_firebase_firebase_sessions(sessionData);
                        if (sharedSessionRepositoryImpl.pendingForegroundCheck) {
                            sharedSessionRepositoryImpl.pendingForegroundCheck = false;
                            sharedSessionRepositoryImpl.appForeground();
                        }
                        Object objNotifySubscribers = sharedSessionRepositoryImpl.notifySubscribers(sessionData.getSessionDetails().getSessionId(), NotificationType.GENERAL, e02Var);
                        return objNotifySubscribers == a32.COROUTINE_SUSPENDED ? objNotifySubscribers : j59.a;
                    }

                    @Override // defpackage.id3
                    public /* bridge */ /* synthetic */ Object emit(Object obj2, e02 e02Var) {
                        return emit((SessionData) obj2, (e02<? super j59>) e02Var);
                    }
                };
                this.label = 1;
                if (de3Var.collect(id3Var, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
    }

    public enum NotificationType {
        GENERAL,
        FALLBACK;

        private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

        public static g03<NotificationType> getEntries() {
            return $ENTRIES;
        }
    }

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[NotificationType.values().length];
            try {
                iArr[NotificationType.GENERAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NotificationType.FALLBACK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: com.google.firebase.sessions.SharedSessionRepositoryImpl$appBackground$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "com.google.firebase.sessions.SharedSessionRepositoryImpl$appBackground$1", f = "SharedSessionRepository.kt", l = {118}, m = "invokeSuspend")
    public static final class C07571 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        /* JADX INFO: renamed from: com.google.firebase.sessions.SharedSessionRepositoryImpl$appBackground$1$1, reason: invalid class name and collision with other inner class name */
        @bd2(c = "com.google.firebase.sessions.SharedSessionRepositoryImpl$appBackground$1$1", f = "SharedSessionRepository.kt", l = {}, m = "invokeSuspend")
        public static final class C01391 extends pg8 implements bm3<SessionData, e02<? super SessionData>, Object> {
            /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ SharedSessionRepositoryImpl this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C01391(SharedSessionRepositoryImpl sharedSessionRepositoryImpl, e02<? super C01391> e02Var) {
                super(2, e02Var);
                this.this$0 = sharedSessionRepositoryImpl;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                C01391 c01391 = new C01391(this.this$0, e02Var);
                c01391.L$0 = obj;
                return c01391;
            }

            @Override // defpackage.bm3
            public final Object invoke(SessionData sessionData, e02<? super SessionData> e02Var) {
                return ((C01391) create(sessionData, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                if (this.label == 0) {
                    r57.b(obj);
                    return SessionData.copy$default((SessionData) this.L$0, null, this.this$0.timeProvider.currentTime(), null, 5, null);
                }
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        }

        public C07571(e02<? super C07571> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return SharedSessionRepositoryImpl.this.new C07571(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C07571) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r6v9 */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            try {
                if (i == 0) {
                    r57.b(obj);
                    DataStore dataStore = SharedSessionRepositoryImpl.this.sessionDataStore;
                    C01391 c01391 = new C01391(SharedSessionRepositoryImpl.this, null);
                    this.label = 1;
                    Object objUpdateData = dataStore.updateData(c01391, this);
                    this = objUpdateData;
                    if (objUpdateData == a32Var) {
                        return a32Var;
                    }
                } else {
                    if (i != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r57.b(obj);
                    this = this;
                }
            } catch (Exception e) {
                Log.d(FirebaseSessions.TAG, "App backgrounded, failed to update data. Message: " + e.getMessage());
                SharedSessionRepositoryImpl sharedSessionRepositoryImpl = SharedSessionRepositoryImpl.this;
                sharedSessionRepositoryImpl.setLocalSessionData$com_google_firebase_firebase_sessions(SessionData.copy$default(sharedSessionRepositoryImpl.getLocalSessionData$com_google_firebase_firebase_sessions(), null, SharedSessionRepositoryImpl.this.timeProvider.currentTime(), null, 5, null));
            }
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: com.google.firebase.sessions.SharedSessionRepositoryImpl$appForeground$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "com.google.firebase.sessions.SharedSessionRepositoryImpl$appForeground$1", f = "SharedSessionRepository.kt", l = {142, 193}, m = "invokeSuspend")
    public static final class C07581 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ SessionData $sessionData;
        int label;

        /* JADX INFO: renamed from: com.google.firebase.sessions.SharedSessionRepositoryImpl$appForeground$1$1, reason: invalid class name and collision with other inner class name */
        @bd2(c = "com.google.firebase.sessions.SharedSessionRepositoryImpl$appForeground$1$1", f = "SharedSessionRepository.kt", l = {}, m = "invokeSuspend")
        public static final class C01401 extends pg8 implements bm3<SessionData, e02<? super SessionData>, Object> {
            /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ SharedSessionRepositoryImpl this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C01401(SharedSessionRepositoryImpl sharedSessionRepositoryImpl, e02<? super C01401> e02Var) {
                super(2, e02Var);
                this.this$0 = sharedSessionRepositoryImpl;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                C01401 c01401 = new C01401(this.this$0, e02Var);
                c01401.L$0 = obj;
                return c01401;
            }

            @Override // defpackage.bm3
            public final Object invoke(SessionData sessionData, e02<? super SessionData> e02Var) {
                return ((C01401) create(sessionData, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                Map<String, ProcessData> mapUpdateProcessDataMap;
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                if (this.label != 0) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
                SessionData sessionData = (SessionData) this.L$0;
                boolean zIsSessionExpired = this.this$0.isSessionExpired(sessionData);
                boolean zIsColdStart = this.this$0.isColdStart(sessionData);
                boolean zIsMyProcessStale = this.this$0.isMyProcessStale(sessionData);
                if (zIsColdStart) {
                    mapUpdateProcessDataMap = this.this$0.processDataManager.generateProcessDataMap();
                } else {
                    mapUpdateProcessDataMap = zIsMyProcessStale ? this.this$0.processDataManager.updateProcessDataMap(sessionData.getProcessDataMap()) : sessionData.getProcessDataMap();
                }
                SessionDetails sessionDetails = zIsColdStart ? null : sessionData.getSessionDetails();
                if (!zIsSessionExpired && !zIsColdStart) {
                    return zIsMyProcessStale ? SessionData.copy$default(sessionData, null, null, this.this$0.processDataManager.updateProcessDataMap(mapUpdateProcessDataMap), 3, null) : sessionData;
                }
                SessionDetails sessionDetailsGenerateNewSession = this.this$0.sessionGenerator.generateNewSession(sessionDetails);
                this.this$0.sessionFirelogPublisher.mayLogSession(sessionDetailsGenerateNewSession);
                this.this$0.processDataManager.onSessionGenerated();
                return sessionData.copy(sessionDetailsGenerateNewSession, null, mapUpdateProcessDataMap);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C07581(SessionData sessionData, e02<? super C07581> e02Var) {
            super(2, e02Var);
            this.$sessionData = sessionData;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return SharedSessionRepositoryImpl.this.new C07581(this.$sessionData, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C07581) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x0036, code lost:
        
            if (r10 == r1) goto L21;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0090, code lost:
        
            if (r11.notifySubscribers(r0, r2, r10) == r1) goto L21;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0092, code lost:
        
            return r1;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v7 */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r11) {
            /*
                r10 = this;
                a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
                int r0 = r10.label
                r2 = 0
                r3 = 2
                r4 = 1
                if (r0 == 0) goto L20
                if (r0 == r4) goto L18
                if (r0 != r3) goto L12
                defpackage.r57.b(r11)
                goto L93
            L12:
                java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r10)
                return r2
            L18:
                defpackage.r57.b(r11)     // Catch: java.lang.Exception -> L1d
                goto L93
            L1d:
                r0 = move-exception
                r11 = r0
                goto L39
            L20:
                defpackage.r57.b(r11)
                com.google.firebase.sessions.SharedSessionRepositoryImpl r11 = com.google.firebase.sessions.SharedSessionRepositoryImpl.this     // Catch: java.lang.Exception -> L1d
                androidx.datastore.core.DataStore r11 = com.google.firebase.sessions.SharedSessionRepositoryImpl.access$getSessionDataStore$p(r11)     // Catch: java.lang.Exception -> L1d
                com.google.firebase.sessions.SharedSessionRepositoryImpl$appForeground$1$1 r0 = new com.google.firebase.sessions.SharedSessionRepositoryImpl$appForeground$1$1     // Catch: java.lang.Exception -> L1d
                com.google.firebase.sessions.SharedSessionRepositoryImpl r5 = com.google.firebase.sessions.SharedSessionRepositoryImpl.this     // Catch: java.lang.Exception -> L1d
                r0.<init>(r5, r2)     // Catch: java.lang.Exception -> L1d
                r10.label = r4     // Catch: java.lang.Exception -> L1d
                java.lang.Object r10 = r11.updateData(r0, r10)     // Catch: java.lang.Exception -> L1d
                if (r10 != r1) goto L93
                goto L92
            L39:
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                java.lang.String r2 = "App foregrounded, failed to update data. Message: "
                r0.<init>(r2)
                java.lang.String r11 = r11.getMessage()
                r0.append(r11)
                java.lang.String r11 = r0.toString()
                java.lang.String r0 = "FirebaseSessions"
                android.util.Log.d(r0, r11)
                com.google.firebase.sessions.SharedSessionRepositoryImpl r11 = com.google.firebase.sessions.SharedSessionRepositoryImpl.this
                com.google.firebase.sessions.SessionData r0 = r10.$sessionData
                boolean r11 = com.google.firebase.sessions.SharedSessionRepositoryImpl.access$isSessionExpired(r11, r0)
                if (r11 == 0) goto L93
                com.google.firebase.sessions.SharedSessionRepositoryImpl r11 = com.google.firebase.sessions.SharedSessionRepositoryImpl.this
                com.google.firebase.sessions.SessionGenerator r11 = com.google.firebase.sessions.SharedSessionRepositoryImpl.access$getSessionGenerator$p(r11)
                com.google.firebase.sessions.SessionData r0 = r10.$sessionData
                com.google.firebase.sessions.SessionDetails r0 = r0.getSessionDetails()
                com.google.firebase.sessions.SessionDetails r5 = r11.generateNewSession(r0)
                com.google.firebase.sessions.SharedSessionRepositoryImpl r11 = com.google.firebase.sessions.SharedSessionRepositoryImpl.this
                com.google.firebase.sessions.SessionData r4 = r10.$sessionData
                r8 = 4
                r9 = 0
                r6 = 0
                r7 = 0
                com.google.firebase.sessions.SessionData r0 = com.google.firebase.sessions.SessionData.copy$default(r4, r5, r6, r7, r8, r9)
                r11.setLocalSessionData$com_google_firebase_firebase_sessions(r0)
                com.google.firebase.sessions.SharedSessionRepositoryImpl r11 = com.google.firebase.sessions.SharedSessionRepositoryImpl.this
                com.google.firebase.sessions.SessionFirelogPublisher r11 = com.google.firebase.sessions.SharedSessionRepositoryImpl.access$getSessionFirelogPublisher$p(r11)
                r11.mayLogSession(r5)
                com.google.firebase.sessions.SharedSessionRepositoryImpl r11 = com.google.firebase.sessions.SharedSessionRepositoryImpl.this
                java.lang.String r0 = r5.getSessionId()
                com.google.firebase.sessions.SharedSessionRepositoryImpl$NotificationType r2 = com.google.firebase.sessions.SharedSessionRepositoryImpl.NotificationType.FALLBACK
                r10.label = r3
                java.lang.Object r10 = com.google.firebase.sessions.SharedSessionRepositoryImpl.access$notifySubscribers(r11, r0, r2, r10)
                if (r10 != r1) goto L93
            L92:
                return r1
            L93:
                j59 r10 = defpackage.j59.a
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.sessions.SharedSessionRepositoryImpl.C07581.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: com.google.firebase.sessions.SharedSessionRepositoryImpl$notifySubscribers$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "com.google.firebase.sessions.SharedSessionRepositoryImpl", f = "SharedSessionRepository.kt", l = {ComposerKt.referenceKey}, m = "notifySubscribers")
    public static final class C07591 extends f02 {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C07591(e02<? super C07591> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SharedSessionRepositoryImpl.this.notifySubscribers(null, null, this);
        }
    }

    public SharedSessionRepositoryImpl(SessionsSettings sessionsSettings, SessionGenerator sessionGenerator, SessionFirelogPublisher sessionFirelogPublisher, TimeProvider timeProvider, DataStore<SessionData> dataStore, ProcessDataManager processDataManager, @Background o22 o22Var) {
        sessionsSettings.getClass();
        sessionGenerator.getClass();
        sessionFirelogPublisher.getClass();
        timeProvider.getClass();
        dataStore.getClass();
        processDataManager.getClass();
        o22Var.getClass();
        this.sessionsSettings = sessionsSettings;
        this.sessionGenerator = sessionGenerator;
        this.sessionFirelogPublisher = sessionFirelogPublisher;
        this.timeProvider = timeProvider;
        this.sessionDataStore = dataStore;
        this.processDataManager = processDataManager;
        this.backgroundDispatcher = o22Var;
        this.previousNotificationType = NotificationType.GENERAL;
        this.previousSessionId = "";
        av0.c(z22.a(o22Var), null, null, new AnonymousClass1(null), 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isColdStart(SessionData sessionData) {
        Map<String, ProcessData> processDataMap = sessionData.getProcessDataMap();
        if (processDataMap == null) {
            Log.d(FirebaseSessions.TAG, "No process data map");
            return true;
        }
        boolean zIsColdStart = this.processDataManager.isColdStart(processDataMap);
        if (zIsColdStart) {
            Log.d(FirebaseSessions.TAG, "Cold app start detected");
        }
        return zIsColdStart;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isMyProcessStale(SessionData sessionData) {
        Map<String, ProcessData> processDataMap = sessionData.getProcessDataMap();
        ProcessDataManager processDataManager = this.processDataManager;
        if (processDataMap == null) {
            Log.d(FirebaseSessions.TAG, "No process data for " + processDataManager.getMyProcessName());
            return true;
        }
        boolean zIsMyProcessStale = processDataManager.isMyProcessStale(processDataMap);
        if (zIsMyProcessStale) {
            Log.d(FirebaseSessions.TAG, "Process " + this.processDataManager.getMyProcessName() + " is stale");
        }
        return zIsMyProcessStale;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isSessionExpired(SessionData sessionData) {
        Time backgroundTime = sessionData.getBackgroundTime();
        if (backgroundTime == null) {
            Log.d(FirebaseSessions.TAG, "Session " + sessionData.getSessionDetails().getSessionId() + " has not backgrounded yet");
            return false;
        }
        boolean z = wt2.d(this.timeProvider.currentTime().m9505minus5sfh64U(backgroundTime), this.sessionsSettings.m9509getSessionRestartTimeoutUwyO8pc()) > 0;
        if (z) {
            Log.d(FirebaseSessions.TAG, "Session " + sessionData.getSessionDetails().getSessionId() + " is expired");
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object notifySubscribers(String str, NotificationType notificationType, e02<? super j59> e02Var) {
        C07591 c07591;
        String str2;
        if (e02Var instanceof C07591) {
            c07591 = (C07591) e02Var;
            int i = c07591.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c07591.label = i - Integer.MIN_VALUE;
            } else {
                c07591 = new C07591(e02Var);
            }
        } else {
            c07591 = new C07591(e02Var);
        }
        Object registeredSubscribers$com_google_firebase_firebase_sessions = c07591.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c07591.label;
        if (i2 == 0) {
            r57.b(registeredSubscribers$com_google_firebase_firebase_sessions);
            this.previousNotificationType = notificationType;
            if (aa4.e(this.previousSessionId, str)) {
                return j59.a;
            }
            this.previousSessionId = str;
            FirebaseSessionsDependencies firebaseSessionsDependencies = FirebaseSessionsDependencies.INSTANCE;
            c07591.L$0 = str;
            c07591.L$1 = notificationType;
            c07591.label = 1;
            registeredSubscribers$com_google_firebase_firebase_sessions = firebaseSessionsDependencies.getRegisteredSubscribers$com_google_firebase_firebase_sessions(c07591);
            if (registeredSubscribers$com_google_firebase_firebase_sessions == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            notificationType = (NotificationType) c07591.L$1;
            str = (String) c07591.L$0;
            r57.b(registeredSubscribers$com_google_firebase_firebase_sessions);
        }
        for (SessionSubscriber sessionSubscriber : ((Map) registeredSubscribers$com_google_firebase_firebase_sessions).values()) {
            sessionSubscriber.onSessionChanged(new SessionSubscriber.SessionDetails(str));
            int i3 = WhenMappings.$EnumSwitchMapping$0[notificationType.ordinal()];
            if (i3 == 1) {
                str2 = "Notified " + sessionSubscriber.getSessionSubscriberName() + " of new session " + str;
            } else {
                if (i3 != 2) {
                    me0.e();
                    return null;
                }
                str2 = "Notified " + sessionSubscriber.getSessionSubscriberName() + " of new fallback session " + str;
            }
            Log.d(FirebaseSessions.TAG, str2);
        }
        return j59.a;
    }

    @Override // com.google.firebase.sessions.SharedSessionRepository
    public void appBackground() {
        this.isInForeground = false;
        if (this.localSessionData == null) {
            Log.d(FirebaseSessions.TAG, "App backgrounded, but local SessionData not initialized");
            return;
        }
        Log.d(FirebaseSessions.TAG, "App backgrounded on " + this.processDataManager.getMyProcessName());
        av0.c(z22.a(this.backgroundDispatcher), null, null, new C07571(null), 3);
    }

    @Override // com.google.firebase.sessions.SharedSessionRepository
    public void appForeground() {
        this.isInForeground = true;
        if (this.localSessionData == null) {
            this.pendingForegroundCheck = true;
            Log.d(FirebaseSessions.TAG, "App foregrounded, but local SessionData not initialized");
            return;
        }
        SessionData localSessionData$com_google_firebase_firebase_sessions = getLocalSessionData$com_google_firebase_firebase_sessions();
        Log.d(FirebaseSessions.TAG, "App foregrounded on " + this.processDataManager.getMyProcessName());
        if (isSessionExpired(localSessionData$com_google_firebase_firebase_sessions) || isMyProcessStale(localSessionData$com_google_firebase_firebase_sessions)) {
            av0.c(z22.a(this.backgroundDispatcher), null, null, new C07581(localSessionData$com_google_firebase_firebase_sessions, null), 3);
        }
    }

    public final SessionData getLocalSessionData$com_google_firebase_firebase_sessions() {
        SessionData sessionData = this.localSessionData;
        if (sessionData != null) {
            return sessionData;
        }
        aa4.j("localSessionData");
        throw null;
    }

    public final NotificationType getPreviousNotificationType$com_google_firebase_firebase_sessions() {
        return this.previousNotificationType;
    }

    @Override // com.google.firebase.sessions.SharedSessionRepository
    public boolean isInForeground() {
        return this.isInForeground;
    }

    public final void setLocalSessionData$com_google_firebase_firebase_sessions(SessionData sessionData) {
        sessionData.getClass();
        this.localSessionData = sessionData;
    }

    public final void setPreviousNotificationType$com_google_firebase_firebase_sessions(NotificationType notificationType) {
        notificationType.getClass();
        this.previousNotificationType = notificationType;
    }
}
