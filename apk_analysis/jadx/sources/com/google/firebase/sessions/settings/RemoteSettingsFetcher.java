package com.google.firebase.sessions.settings;

import android.net.Uri;
import androidx.media3.container.MdtaMetadataEntry;
import androidx.webkit.ProxyConfig;
import com.google.firebase.annotations.concurrent.Blocking;
import com.google.firebase.sessions.ApplicationInfo;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.jh2;
import defpackage.o22;
import defpackage.pg8;
import defpackage.r07;
import defpackage.r57;
import defpackage.y22;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class RemoteSettingsFetcher implements CrashlyticsSettingsFetcher {
    public static final Companion Companion = new Companion(null);
    private static final String FIREBASE_PLATFORM = "android";
    private static final String FIREBASE_SESSIONS_BASE_URL_STRING = "firebase-settings.crashlytics.com";
    private final ApplicationInfo appInfo;
    private final o22 blockingDispatcher;

    /* JADX INFO: renamed from: com.google.firebase.sessions.settings.RemoteSettingsFetcher$doConfigFetch$2, reason: invalid class name */
    @bd2(c = "com.google.firebase.sessions.settings.RemoteSettingsFetcher$doConfigFetch$2", f = "RemoteSettingsFetcher.kt", l = {73, MdtaMetadataEntry.TYPE_INDICATOR_8_BIT_UNSIGNED_INT, MdtaMetadataEntry.TYPE_INDICATOR_UNSIGNED_INT64}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ Map<String, String> $headerOptions;
        final /* synthetic */ bm3<String, e02<? super j59>, Object> $onFailure;
        final /* synthetic */ bm3<JSONObject, e02<? super j59>, Object> $onSuccess;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(Map<String, String> map, bm3<? super JSONObject, ? super e02<? super j59>, ? extends Object> bm3Var, bm3<? super String, ? super e02<? super j59>, ? extends Object> bm3Var2, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$headerOptions = map;
            this.$onSuccess = bm3Var;
            this.$onFailure = bm3Var2;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return RemoteSettingsFetcher.this.new AnonymousClass2(this.$headerOptions, this.$onSuccess, this.$onFailure, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:29:0x00c6, code lost:
        
            if (r8.invoke(r1, r7) == r0) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00db, code lost:
        
            if (r1.invoke(r3, r7) == r0) goto L36;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r6v0, types: [T, java.lang.String] */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            try {
                if (i == 0) {
                    r57.b(obj);
                    URLConnection uRLConnectionOpenConnection = RemoteSettingsFetcher.this.settingsUrl().openConnection();
                    uRLConnectionOpenConnection.getClass();
                    HttpsURLConnection httpsURLConnection = (HttpsURLConnection) uRLConnectionOpenConnection;
                    httpsURLConnection.setRequestMethod("GET");
                    httpsURLConnection.setRequestProperty("Accept", "application/json");
                    for (Map.Entry<String, String> entry : this.$headerOptions.entrySet()) {
                        httpsURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
                    }
                    int responseCode = httpsURLConnection.getResponseCode();
                    if (responseCode == 200) {
                        InputStream inputStream = httpsURLConnection.getInputStream();
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                        StringBuilder sb = new StringBuilder();
                        r07 r07Var = new r07();
                        while (true) {
                            ?? line = bufferedReader.readLine();
                            r07Var.b = line;
                            if (line == 0) {
                                break;
                            }
                            sb.append((String) line);
                        }
                        bufferedReader.close();
                        inputStream.close();
                        JSONObject jSONObject = new JSONObject(sb.toString());
                        bm3<JSONObject, e02<? super j59>, Object> bm3Var = this.$onSuccess;
                        this.label = 1;
                        if (bm3Var.invoke(jSONObject, this) == a32Var) {
                            return a32Var;
                        }
                    } else {
                        bm3<String, e02<? super j59>, Object> bm3Var2 = this.$onFailure;
                        String str = "Bad response code: " + responseCode;
                        this.label = 2;
                    }
                } else {
                    if (i != 1 && i != 2 && i != 3) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r57.b(obj);
                }
            } catch (Exception e) {
                bm3<String, e02<? super j59>, Object> bm3Var3 = this.$onFailure;
                String message = e.getMessage();
                if (message == null) {
                    message = e.toString();
                }
                this.label = 3;
            }
            return j59.a;
        }
    }

    public RemoteSettingsFetcher(ApplicationInfo applicationInfo, @Blocking o22 o22Var) {
        applicationInfo.getClass();
        o22Var.getClass();
        this.appInfo = applicationInfo;
        this.blockingDispatcher = o22Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final URL settingsUrl() {
        return new URL(new Uri.Builder().scheme(ProxyConfig.MATCH_HTTPS).authority(FIREBASE_SESSIONS_BASE_URL_STRING).appendPath("spi").appendPath("v2").appendPath("platforms").appendPath("android").appendPath("gmp").appendPath(this.appInfo.getAppId()).appendPath("settings").appendQueryParameter("build_version", this.appInfo.getAndroidAppInfo().getAppBuildVersion()).appendQueryParameter("display_version", this.appInfo.getAndroidAppInfo().getVersionName()).build().toString());
    }

    @Override // com.google.firebase.sessions.settings.CrashlyticsSettingsFetcher
    public Object doConfigFetch(Map<String, String> map, bm3<? super JSONObject, ? super e02<? super j59>, ? extends Object> bm3Var, bm3<? super String, ? super e02<? super j59>, ? extends Object> bm3Var2, e02<? super j59> e02Var) throws Throwable {
        Object objD = av0.d(this.blockingDispatcher, new AnonymousClass2(map, bm3Var, bm3Var2, null), e02Var);
        return objD == a32.COROUTINE_SUSPENDED ? objD : j59.a;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }
}
