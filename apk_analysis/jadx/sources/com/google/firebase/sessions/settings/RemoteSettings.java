package com.google.firebase.sessions.settings;

import android.os.Build;
import android.util.Log;
import androidx.media3.container.MdtaMetadataEntry;
import androidx.media3.muxer.WebmConstants;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.sessions.ApplicationInfo;
import com.google.firebase.sessions.FirebaseSessions;
import com.google.firebase.sessions.InstallationId;
import com.google.firebase.sessions.TimeProvider;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.au2;
import defpackage.b36;
import defpackage.bd2;
import defpackage.ch5;
import defpackage.e02;
import defpackage.f02;
import defpackage.g17;
import defpackage.j59;
import defpackage.jh2;
import defpackage.n05;
import defpackage.r57;
import defpackage.wt2;
import defpackage.yg5;
import defpackage.yt2;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class RemoteSettings implements SettingsProvider {
    private static final Companion Companion = new Companion(null);
    private static final int defaultCacheDuration;
    private static final g17 sanitizeRegex;
    private final ApplicationInfo appInfo;
    private final CrashlyticsSettingsFetcher configsFetcher;
    private final yg5 fetchInProgress;
    private final FirebaseInstallationsApi firebaseInstallationsApi;
    private final SettingsCache settingsCache;
    private final TimeProvider timeProvider;

    /* JADX INFO: renamed from: com.google.firebase.sessions.settings.RemoteSettings$updateSettings$1, reason: invalid class name */
    @bd2(c = "com.google.firebase.sessions.settings.RemoteSettings", f = "RemoteSettings.kt", l = {WebmConstants.MkvEbmlElement.BLOCK_ADDITIONAL, MdtaMetadataEntry.TYPE_INDICATOR_UNSIGNED_INT64, 95}, m = "updateSettings")
    public static final class AnonymousClass1 extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return RemoteSettings.this.updateSettings(this);
        }
    }

    static {
        wt2.a aVar = wt2.c;
        defaultCacheDuration = (int) wt2.k(yt2.e(24, au2.HOURS), au2.SECONDS);
        sanitizeRegex = new g17("com/google/firebase/sessions//");
    }

    public RemoteSettings(TimeProvider timeProvider, FirebaseInstallationsApi firebaseInstallationsApi, ApplicationInfo applicationInfo, CrashlyticsSettingsFetcher crashlyticsSettingsFetcher, SettingsCache settingsCache) {
        timeProvider.getClass();
        firebaseInstallationsApi.getClass();
        applicationInfo.getClass();
        crashlyticsSettingsFetcher.getClass();
        settingsCache.getClass();
        this.timeProvider = timeProvider;
        this.firebaseInstallationsApi = firebaseInstallationsApi;
        this.appInfo = applicationInfo;
        this.configsFetcher = crashlyticsSettingsFetcher;
        this.settingsCache = settingsCache;
        this.fetchInProgress = new ch5();
    }

    private final String sanitize(String str) {
        return sanitizeRegex.g("", str);
    }

    public final Object clearCachedSettings$com_google_firebase_firebase_sessions(e02<? super j59> e02Var) {
        Object objUpdateConfigs = this.settingsCache.updateConfigs(SessionConfigsSerializer.INSTANCE.getDefaultValue(), e02Var);
        return objUpdateConfigs == a32.COROUTINE_SUSPENDED ? objUpdateConfigs : j59.a;
    }

    @Override // com.google.firebase.sessions.settings.SettingsProvider
    public Double getSamplingRate() {
        return this.settingsCache.sessionSamplingRate();
    }

    @Override // com.google.firebase.sessions.settings.SettingsProvider
    public Boolean getSessionEnabled() {
        return this.settingsCache.sessionsEnabled();
    }

    @Override // com.google.firebase.sessions.settings.SettingsProvider
    /* JADX INFO: renamed from: getSessionRestartTimeout-FghU774 */
    public wt2 mo9507getSessionRestartTimeoutFghU774() {
        Integer numSessionRestartTimeout = this.settingsCache.sessionRestartTimeout();
        if (numSessionRestartTimeout == null) {
            return null;
        }
        wt2.a aVar = wt2.c;
        return new wt2(yt2.e(numSessionRestartTimeout.intValue(), au2.SECONDS));
    }

    @Override // com.google.firebase.sessions.settings.SettingsProvider
    public boolean isSettingsStale() {
        return this.settingsCache.hasCacheExpired();
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00b1 A[Catch: all -> 0x008d, TRY_LEAVE, TryCatch #2 {all -> 0x008d, blocks: (B:45:0x00a3, B:47:0x00b1, B:50:0x00bc, B:35:0x007a, B:37:0x0082, B:42:0x0093), top: B:63:0x007a }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00bc A[Catch: all -> 0x008d, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x008d, blocks: (B:45:0x00a3, B:47:0x00b1, B:50:0x00bc, B:35:0x007a, B:37:0x0082, B:42:0x0093), top: B:63:0x007a }] */
    /* JADX WARN: Code duplicated, block: B:53:0x0132  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Instruction removed from duplicated block: B:50:0x00bc, please report this as an issue */
    @Override // com.google.firebase.sessions.settings.SettingsProvider
    public Object updateSettings(e02<? super j59> e02Var) throws Throwable {
        AnonymousClass1 anonymousClass1;
        yg5 yg5Var;
        Throwable th;
        yg5 yg5Var2;
        Object objCreate;
        String fid;
        Map<String, String> mapE;
        CrashlyticsSettingsFetcher crashlyticsSettingsFetcher;
        RemoteSettings$updateSettings$2$1 remoteSettings$updateSettings$2$1;
        RemoteSettings$updateSettings$2$2 remoteSettings$updateSettings$2$2;
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
        try {
            if (i2 == 0) {
                r57.b(obj);
                if (!this.fetchInProgress.isLocked() && !this.settingsCache.hasCacheExpired()) {
                    return j59.a;
                }
                yg5Var = this.fetchInProgress;
                anonymousClass1.L$0 = yg5Var;
                anonymousClass1.label = 1;
                if (yg5Var.lock(null, anonymousClass1) != a32Var) {
                }
                return a32Var;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    yg5Var2 = (yg5) anonymousClass1.L$0;
                    try {
                        r57.b(obj);
                        j59 j59Var = j59.a;
                        yg5Var2.unlock(null);
                        return j59.a;
                    } catch (Throwable th2) {
                        th = th2;
                        yg5Var2.unlock(null);
                        throw th;
                    }
                }
                yg5 yg5Var3 = (yg5) anonymousClass1.L$0;
                try {
                    r57.b(obj);
                    objCreate = obj;
                    yg5Var = yg5Var3;
                    fid = ((InstallationId) objCreate).getFid();
                    if (aa4.e(fid, "")) {
                        Log.w(FirebaseSessions.TAG, "Error getting Firebase Installation ID. Skipping this Session Event.");
                        j59 j59Var2 = j59.a;
                        yg5Var.unlock(null);
                        return j59Var2;
                    }
                    b36 b36Var = new b36("X-Crashlytics-Installation-ID", fid);
                    b36 b36Var2 = new b36("X-Crashlytics-Device-Model", sanitize(Build.MANUFACTURER + Build.MODEL));
                    String str = Build.VERSION.INCREMENTAL;
                    str.getClass();
                    b36 b36Var3 = new b36("X-Crashlytics-OS-Build-Version", sanitize(str));
                    String str2 = Build.VERSION.RELEASE;
                    str2.getClass();
                    mapE = n05.e(b36Var, b36Var2, b36Var3, new b36("X-Crashlytics-OS-Display-Version", sanitize(str2)), new b36("X-Crashlytics-API-Client-Version", this.appInfo.getSessionSdkVersion()));
                    Log.d(FirebaseSessions.TAG, "Fetching settings from server.");
                    crashlyticsSettingsFetcher = this.configsFetcher;
                    remoteSettings$updateSettings$2$1 = new RemoteSettings$updateSettings$2$1(this, null);
                    remoteSettings$updateSettings$2$2 = new RemoteSettings$updateSettings$2$2(null);
                    anonymousClass1.L$0 = yg5Var;
                    anonymousClass1.label = 3;
                    if (crashlyticsSettingsFetcher.doConfigFetch(mapE, remoteSettings$updateSettings$2$1, remoteSettings$updateSettings$2$2, anonymousClass1) != a32Var) {
                        yg5Var2 = yg5Var;
                        j59 j59Var3 = j59.a;
                        yg5Var2.unlock(null);
                        return j59.a;
                    }
                    return a32Var;
                } catch (Throwable th3) {
                    th = th3;
                    yg5Var2 = yg5Var3;
                    yg5Var2.unlock(null);
                    throw th;
                }
            }
            yg5 yg5Var4 = (yg5) anonymousClass1.L$0;
            r57.b(obj);
            yg5Var = yg5Var4;
            if (!this.settingsCache.hasCacheExpired()) {
                Log.d(FirebaseSessions.TAG, "Remote settings cache not expired. Using cached values.");
                j59 j59Var4 = j59.a;
                yg5Var.unlock(null);
                return j59Var4;
            }
            InstallationId.Companion companion = InstallationId.Companion;
            FirebaseInstallationsApi firebaseInstallationsApi = this.firebaseInstallationsApi;
            anonymousClass1.L$0 = yg5Var;
            anonymousClass1.label = 2;
            objCreate = companion.create(firebaseInstallationsApi, anonymousClass1);
            if (objCreate != a32Var) {
                fid = ((InstallationId) objCreate).getFid();
                if (aa4.e(fid, "")) {
                    Log.w(FirebaseSessions.TAG, "Error getting Firebase Installation ID. Skipping this Session Event.");
                    j59 j59Var5 = j59.a;
                    yg5Var.unlock(null);
                    return j59Var5;
                }
                b36 b36Var4 = new b36("X-Crashlytics-Installation-ID", fid);
                b36 b36Var5 = new b36("X-Crashlytics-Device-Model", sanitize(Build.MANUFACTURER + Build.MODEL));
                String str3 = Build.VERSION.INCREMENTAL;
                str3.getClass();
                b36 b36Var6 = new b36("X-Crashlytics-OS-Build-Version", sanitize(str3));
                String str4 = Build.VERSION.RELEASE;
                str4.getClass();
                mapE = n05.e(b36Var4, b36Var5, b36Var6, new b36("X-Crashlytics-OS-Display-Version", sanitize(str4)), new b36("X-Crashlytics-API-Client-Version", this.appInfo.getSessionSdkVersion()));
                Log.d(FirebaseSessions.TAG, "Fetching settings from server.");
                crashlyticsSettingsFetcher = this.configsFetcher;
                remoteSettings$updateSettings$2$1 = new RemoteSettings$updateSettings$2$1(this, null);
                remoteSettings$updateSettings$2$2 = new RemoteSettings$updateSettings$2$2(null);
                anonymousClass1.L$0 = yg5Var;
                anonymousClass1.label = 3;
                if (crashlyticsSettingsFetcher.doConfigFetch(mapE, remoteSettings$updateSettings$2$1, remoteSettings$updateSettings$2$2, anonymousClass1) != a32Var) {
                    yg5Var2 = yg5Var;
                    j59 j59Var6 = j59.a;
                    yg5Var2.unlock(null);
                    return j59.a;
                }
            }
            return a32Var;
        } catch (Throwable th4) {
            yg5 yg5Var5 = yg5Var;
            th = th4;
            yg5Var2 = yg5Var5;
            yg5Var2.unlock(null);
            throw th;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final int getDefaultCacheDuration() {
            return RemoteSettings.defaultCacheDuration;
        }

        public final g17 getSanitizeRegex() {
            return RemoteSettings.sanitizeRegex;
        }

        private Companion() {
        }
    }
}
