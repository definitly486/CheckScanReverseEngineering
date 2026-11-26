package com.google.firebase.sessions.settings;

import com.google.firebase.Firebase;
import com.google.firebase.FirebaseKt;
import com.google.firebase.sessions.FirebaseSessionsComponent;
import com.google.firebase.sessions.LocalOverrideSettingsProvider;
import com.google.firebase.sessions.RemoteSettingsProvider;
import defpackage.a32;
import defpackage.ah;
import defpackage.au2;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;
import defpackage.j59;
import defpackage.jh2;
import defpackage.r57;
import defpackage.wt2;
import defpackage.yt2;

/* JADX INFO: loaded from: classes4.dex */
public final class SessionsSettings {
    public static final Companion Companion = new Companion(null);
    private final SettingsProvider localOverrideSettings;
    private final SettingsProvider remoteSettings;

    /* JADX INFO: renamed from: com.google.firebase.sessions.settings.SessionsSettings$updateSettings$1, reason: invalid class name */
    @bd2(c = "com.google.firebase.sessions.settings.SessionsSettings", f = "SessionsSettings.kt", l = {98, 99}, m = "updateSettings")
    public static final class AnonymousClass1 extends f02 {
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SessionsSettings.this.updateSettings(this);
        }
    }

    public SessionsSettings(@LocalOverrideSettingsProvider SettingsProvider settingsProvider, @RemoteSettingsProvider SettingsProvider settingsProvider2) {
        settingsProvider.getClass();
        settingsProvider2.getClass();
        this.localOverrideSettings = settingsProvider;
        this.remoteSettings = settingsProvider2;
    }

    private final boolean isValidSamplingRate(double d) {
        return 0.0d <= d && d <= 1.0d;
    }

    /* JADX INFO: renamed from: isValidSessionRestartTimeout-LRDsOJo, reason: not valid java name */
    private final boolean m9508isValidSessionRestartTimeoutLRDsOJo(long j) {
        wt2.a aVar = wt2.c;
        return j > 0 && !wt2.h(j);
    }

    public final double getSamplingRate() {
        Double samplingRate = this.localOverrideSettings.getSamplingRate();
        if (samplingRate != null) {
            double dDoubleValue = samplingRate.doubleValue();
            if (isValidSamplingRate(dDoubleValue)) {
                return dDoubleValue;
            }
        }
        Double samplingRate2 = this.remoteSettings.getSamplingRate();
        if (samplingRate2 == null) {
            return 1.0d;
        }
        double dDoubleValue2 = samplingRate2.doubleValue();
        if (isValidSamplingRate(dDoubleValue2)) {
            return dDoubleValue2;
        }
        return 1.0d;
    }

    /* JADX INFO: renamed from: getSessionRestartTimeout-UwyO8pc, reason: not valid java name */
    public final long m9509getSessionRestartTimeoutUwyO8pc() {
        wt2 wt2VarMo9507getSessionRestartTimeoutFghU774 = this.localOverrideSettings.mo9507getSessionRestartTimeoutFghU774();
        if (wt2VarMo9507getSessionRestartTimeoutFghU774 != null) {
            long j = wt2VarMo9507getSessionRestartTimeoutFghU774.b;
            if (m9508isValidSessionRestartTimeoutLRDsOJo(j)) {
                return j;
            }
        }
        wt2 wt2VarMo9507getSessionRestartTimeoutFghU775 = this.remoteSettings.mo9507getSessionRestartTimeoutFghU774();
        if (wt2VarMo9507getSessionRestartTimeoutFghU775 != null) {
            long j2 = wt2VarMo9507getSessionRestartTimeoutFghU775.b;
            if (m9508isValidSessionRestartTimeoutLRDsOJo(j2)) {
                return j2;
            }
        }
        wt2.a aVar = wt2.c;
        return yt2.e(30, au2.MINUTES);
    }

    public final boolean getSessionsEnabled() {
        Boolean sessionEnabled = this.localOverrideSettings.getSessionEnabled();
        if (sessionEnabled != null) {
            return sessionEnabled.booleanValue();
        }
        Boolean sessionEnabled2 = this.remoteSettings.getSessionEnabled();
        if (sessionEnabled2 != null) {
            return sessionEnabled2.booleanValue();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004b, code lost:
    
        if (r5.updateSettings(r0) == r1) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object updateSettings(e02<? super j59> e02Var) {
        AnonymousClass1 anonymousClass1;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(e02Var);
        }
        Object obj = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(obj);
            SettingsProvider settingsProvider = this.localOverrideSettings;
            anonymousClass1.label = 1;
            if (settingsProvider.updateSettings(anonymousClass1) != a32Var) {
            }
            return a32Var;
        }
        if (i2 == 1) {
            r57.b(obj);
        } else {
            if (i2 != 2) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return j59.a;
        SettingsProvider settingsProvider2 = this.remoteSettings;
        anonymousClass1.label = 2;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final SessionsSettings getInstance() {
            return ((FirebaseSessionsComponent) FirebaseKt.getApp(Firebase.INSTANCE).get(FirebaseSessionsComponent.class)).getSessionsSettings();
        }

        private Companion() {
        }
    }
}
