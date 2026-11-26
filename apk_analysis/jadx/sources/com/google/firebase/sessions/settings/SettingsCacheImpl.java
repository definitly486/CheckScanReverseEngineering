package com.google.firebase.sessions.settings;

import android.util.Log;
import androidx.datastore.core.DataStore;
import com.google.firebase.annotations.concurrent.Background;
import com.google.firebase.sessions.FirebaseSessions;
import com.google.firebase.sessions.TimeProvider;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.bv0;
import defpackage.cm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.gx2;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.k8;
import defpackage.mm3;
import defpackage.o22;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.z22;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class SettingsCacheImpl implements SettingsCache {
    private final o22 backgroundDispatcher;
    private final AtomicReference<SessionConfigs> sessionConfigsAtomicReference;
    private final DataStore<SessionConfigs> sessionConfigsDataStore;
    private final TimeProvider timeProvider;

    /* JADX INFO: renamed from: com.google.firebase.sessions.settings.SettingsCacheImpl$updateConfigs$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "com.google.firebase.sessions.settings.SettingsCacheImpl", f = "SettingsCache.kt", l = {98}, m = "updateConfigs")
    public static final class C07601 extends f02 {
        int label;
        /* synthetic */ Object result;

        public C07601(e02<? super C07601> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SettingsCacheImpl.this.updateConfigs(null, this);
        }
    }

    /* JADX INFO: renamed from: com.google.firebase.sessions.settings.SettingsCacheImpl$updateConfigs$2, reason: invalid class name */
    @bd2(c = "com.google.firebase.sessions.settings.SettingsCacheImpl$updateConfigs$2", f = "SettingsCache.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends pg8 implements bm3<SessionConfigs, e02<? super SessionConfigs>, Object> {
        final /* synthetic */ SessionConfigs $sessionConfigs;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(SessionConfigs sessionConfigs, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$sessionConfigs = sessionConfigs;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass2(this.$sessionConfigs, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(SessionConfigs sessionConfigs, e02<? super SessionConfigs> e02Var) {
            return ((AnonymousClass2) create(sessionConfigs, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label == 0) {
                r57.b(obj);
                return this.$sessionConfigs;
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
    }

    public SettingsCacheImpl(@Background o22 o22Var, TimeProvider timeProvider, DataStore<SessionConfigs> dataStore) {
        o22Var.getClass();
        timeProvider.getClass();
        dataStore.getClass();
        this.backgroundDispatcher = o22Var;
        this.timeProvider = timeProvider;
        this.sessionConfigsDataStore = dataStore;
        this.sessionConfigsAtomicReference = new AtomicReference<>();
        av0.c(z22.a(o22Var), null, null, new AnonymousClass1(null), 3);
    }

    private final SessionConfigs getSessionConfigs() throws Throwable {
        if (this.sessionConfigsAtomicReference.get() == null) {
            AtomicReference<SessionConfigs> atomicReference = this.sessionConfigsAtomicReference;
            Object objA = bv0.a(gx2.b, new SettingsCacheImpl$sessionConfigs$1(this, null));
            while (!atomicReference.compareAndSet(null, (SessionConfigs) objA) && atomicReference.get() == null) {
            }
        }
        SessionConfigs sessionConfigs = this.sessionConfigsAtomicReference.get();
        sessionConfigs.getClass();
        return sessionConfigs;
    }

    @Override // com.google.firebase.sessions.settings.SettingsCache
    public boolean hasCacheExpired() {
        Long cacheUpdatedTimeSeconds = getSessionConfigs().getCacheUpdatedTimeSeconds();
        Integer cacheDurationSeconds = getSessionConfigs().getCacheDurationSeconds();
        return cacheUpdatedTimeSeconds == null || cacheDurationSeconds == null || this.timeProvider.currentTime().getSeconds() - cacheUpdatedTimeSeconds.longValue() >= ((long) cacheDurationSeconds.intValue());
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object removeConfigs$com_google_firebase_firebase_sessions(e02<Object> e02Var) {
        SettingsCacheImpl$removeConfigs$1 settingsCacheImpl$removeConfigs$1;
        if (e02Var instanceof SettingsCacheImpl$removeConfigs$1) {
            settingsCacheImpl$removeConfigs$1 = (SettingsCacheImpl$removeConfigs$1) e02Var;
            int i = settingsCacheImpl$removeConfigs$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                settingsCacheImpl$removeConfigs$1.label = i - Integer.MIN_VALUE;
            } else {
                settingsCacheImpl$removeConfigs$1 = new SettingsCacheImpl$removeConfigs$1(this, e02Var);
            }
        } else {
            settingsCacheImpl$removeConfigs$1 = new SettingsCacheImpl$removeConfigs$1(this, e02Var);
        }
        Object obj = settingsCacheImpl$removeConfigs$1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = settingsCacheImpl$removeConfigs$1.label;
        try {
            if (i2 != 0) {
                if (i2 == 1) {
                    r57.b(obj);
                    return obj;
                }
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            DataStore<SessionConfigs> dataStore = this.sessionConfigsDataStore;
            SettingsCacheImpl$removeConfigs$2 settingsCacheImpl$removeConfigs$2 = new SettingsCacheImpl$removeConfigs$2(null);
            settingsCacheImpl$removeConfigs$1.label = 1;
            Object objUpdateData = dataStore.updateData(settingsCacheImpl$removeConfigs$2, settingsCacheImpl$removeConfigs$1);
            return objUpdateData == a32Var ? a32Var : objUpdateData;
        } catch (IOException e) {
            return new Integer(Log.w(FirebaseSessions.TAG, "Failed to remove config values: " + e));
        }
    }

    @Override // com.google.firebase.sessions.settings.SettingsCache
    public Integer sessionRestartTimeout() {
        return getSessionConfigs().getSessionTimeoutSeconds();
    }

    @Override // com.google.firebase.sessions.settings.SettingsCache
    public Double sessionSamplingRate() {
        return getSessionConfigs().getSessionSamplingRate();
    }

    @Override // com.google.firebase.sessions.settings.SettingsCache
    public Boolean sessionsEnabled() {
        return getSessionConfigs().getSessionsEnabled();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.google.firebase.sessions.settings.SettingsCache
    public Object updateConfigs(SessionConfigs sessionConfigs, e02<? super j59> e02Var) {
        C07601 c07601;
        if (e02Var instanceof C07601) {
            c07601 = (C07601) e02Var;
            int i = c07601.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c07601.label = i - Integer.MIN_VALUE;
            } else {
                c07601 = new C07601(e02Var);
            }
        } else {
            c07601 = new C07601(e02Var);
        }
        Object obj = c07601.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c07601.label;
        try {
            if (i2 == 0) {
                r57.b(obj);
                DataStore<SessionConfigs> dataStore = this.sessionConfigsDataStore;
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(sessionConfigs, null);
                c07601.label = 1;
                if (dataStore.updateData(anonymousClass2, c07601) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
        } catch (IOException e) {
            Log.w(FirebaseSessions.TAG, "Failed to update config values: " + e);
        }
        return j59.a;
    }

    /* JADX INFO: renamed from: com.google.firebase.sessions.settings.SettingsCacheImpl$1, reason: invalid class name */
    @bd2(c = "com.google.firebase.sessions.settings.SettingsCacheImpl$1", f = "SettingsCache.kt", l = {73}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ Object invokeSuspend$set(AtomicReference atomicReference, SessionConfigs sessionConfigs, e02 e02Var) {
            atomicReference.set(sessionConfigs);
            return j59.a;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return SettingsCacheImpl.this.new AnonymousClass1(e02Var);
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
                hd3 data = SettingsCacheImpl.this.sessionConfigsDataStore.getData();
                C01411 c01411 = new C01411(SettingsCacheImpl.this.sessionConfigsAtomicReference);
                this.label = 1;
                if (data.collect(c01411, this) == a32Var) {
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

        /* JADX INFO: renamed from: com.google.firebase.sessions.settings.SettingsCacheImpl$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: loaded from: classes.dex */
        public /* synthetic */ class C01411 implements id3, mm3 {
            final /* synthetic */ AtomicReference<SessionConfigs> $tmp0;

            public C01411(AtomicReference<SessionConfigs> atomicReference) {
                this.$tmp0 = atomicReference;
            }

            public final Object emit(SessionConfigs sessionConfigs, e02<? super j59> e02Var) {
                Object objInvokeSuspend$set = AnonymousClass1.invokeSuspend$set(this.$tmp0, sessionConfigs, e02Var);
                return objInvokeSuspend$set == a32.COROUTINE_SUSPENDED ? objInvokeSuspend$set : j59.a;
            }

            public final boolean equals(Object obj) {
                if ((obj instanceof id3) && (obj instanceof mm3)) {
                    return aa4.e(getFunctionDelegate(), ((mm3) obj).getFunctionDelegate());
                }
                return false;
            }

            @Override // defpackage.mm3
            public final cm3<?> getFunctionDelegate() {
                return new k8(2, this.$tmp0, AtomicReference.class, "set", "set(Ljava/lang/Object;)V", 4);
            }

            public final int hashCode() {
                return getFunctionDelegate().hashCode();
            }

            @Override // defpackage.id3
            public /* bridge */ /* synthetic */ Object emit(Object obj, e02 e02Var) {
                return emit((SessionConfigs) obj, (e02<? super j59>) e02Var);
            }
        }
    }
}
