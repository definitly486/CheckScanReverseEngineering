package com.google.firebase.sessions.settings;

import android.util.Log;
import com.google.firebase.sessions.FirebaseSessions;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.vc3;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@bd2(c = "com.google.firebase.sessions.settings.RemoteSettings$updateSettings$2$1", f = "RemoteSettings.kt", l = {126}, m = "invokeSuspend")
public final class RemoteSettings$updateSettings$2$1 extends pg8 implements bm3<JSONObject, e02<? super j59>, Object> {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ RemoteSettings this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteSettings$updateSettings$2$1(RemoteSettings remoteSettings, e02<? super RemoteSettings$updateSettings$2$1> e02Var) {
        super(2, e02Var);
        this.this$0 = remoteSettings;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        RemoteSettings$updateSettings$2$1 remoteSettings$updateSettings$2$1 = new RemoteSettings$updateSettings$2$1(this.this$0, e02Var);
        remoteSettings$updateSettings$2$1.L$0 = obj;
        return remoteSettings$updateSettings$2$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(JSONObject jSONObject, e02<? super j59> e02Var) {
        return ((RemoteSettings$updateSettings$2$1) create(jSONObject, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws JSONException {
        Boolean bool;
        Double d;
        Integer num;
        JSONException jSONException;
        Integer num2;
        Integer num3;
        Double d2;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        Integer num4 = null;
        num4 = null;
        Boolean bool2 = null;
        if (i == 0) {
            r57.b(obj);
            JSONObject jSONObject = (JSONObject) this.L$0;
            Log.d(FirebaseSessions.TAG, "Fetched settings: " + jSONObject);
            if (jSONObject.has("app_quality")) {
                Object obj2 = jSONObject.get("app_quality");
                obj2.getClass();
                JSONObject jSONObject2 = (JSONObject) obj2;
                try {
                    Boolean bool3 = jSONObject2.has("sessions_enabled") ? (Boolean) jSONObject2.get("sessions_enabled") : null;
                    try {
                        d2 = jSONObject2.has("sampling_rate") ? (Double) jSONObject2.get("sampling_rate") : null;
                        try {
                            num3 = jSONObject2.has("session_timeout_seconds") ? (Integer) jSONObject2.get("session_timeout_seconds") : null;
                            try {
                                num4 = jSONObject2.has("cache_duration") ? (Integer) jSONObject2.get("cache_duration") : null;
                                j59 j59Var = j59.a;
                                num = num3;
                                d = d2;
                                bool = bool3;
                            } catch (JSONException e) {
                                jSONException = e;
                                num2 = num4;
                                bool2 = bool3;
                                vc3.a(Log.e(FirebaseSessions.TAG, "Error parsing the configs remotely fetched: ", jSONException));
                                num = num3;
                                d = d2;
                                bool = bool2;
                                num4 = num2;
                            }
                        } catch (JSONException e2) {
                            jSONException = e2;
                            num2 = null;
                            num3 = null;
                        }
                    } catch (JSONException e3) {
                        jSONException = e3;
                        num2 = null;
                        num3 = null;
                        d2 = null;
                    }
                } catch (JSONException e4) {
                    jSONException = e4;
                    num2 = null;
                    num3 = null;
                    d2 = null;
                }
            } else {
                bool = null;
                d = null;
                num = null;
            }
            SettingsCache settingsCache = this.this$0.settingsCache;
            SessionConfigs sessionConfigs = new SessionConfigs(bool, d, num, new Integer(num4 != null ? num4.intValue() : RemoteSettings.Companion.getDefaultCacheDuration()), new Long(this.this$0.timeProvider.currentTime().getSeconds()));
            this.label = 1;
            if (settingsCache.updateConfigs(sessionConfigs, this) == a32Var) {
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
