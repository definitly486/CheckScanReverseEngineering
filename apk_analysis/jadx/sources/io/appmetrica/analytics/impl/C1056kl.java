package io.appmetrica.analytics.impl;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import defpackage.me0;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import org.json.JSONObject;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.kl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1056kl {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final int h;
    public final String i;
    public final String j;
    public final String k;
    public final String l;
    public final int m;
    public final String n;
    public final String o;

    public C1056kl(JSONObject jSONObject) {
        this.a = jSONObject.toString();
        this.b = jSONObject.optString("dId", "");
        this.c = jSONObject.optString("uId", "");
        this.d = jSONObject.optString("appVer", "");
        this.e = jSONObject.optString(RemoteConfigConstants.RequestFieldKey.APP_BUILD, "");
        this.f = jSONObject.optString("kitBuildType", "");
        this.g = jSONObject.optString("osVer", "");
        this.h = jSONObject.optInt("osApiLev", -1);
        this.i = jSONObject.optString("lang", "");
        this.j = jSONObject.optString("root", "");
        this.k = jSONObject.optString("app_debuggable", "");
        this.l = jSONObject.optString(CommonUrlParts.APP_FRAMEWORK, "");
        this.m = jSONObject.optInt("attribution_id", 0);
        this.n = jSONObject.optString("analyticsSdkVersionName", "");
        this.o = jSONObject.optString("kitBuildNumber", "");
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SessionRequestParams(deviceId='");
        sb.append(this.b);
        sb.append("', uuid='");
        sb.append(this.c);
        sb.append("', appVersion='");
        sb.append(this.d);
        sb.append("', appBuild='");
        sb.append(this.e);
        sb.append("', kitBuildType='");
        sb.append(this.f);
        sb.append("', osVersion='");
        sb.append(this.g);
        sb.append("', apiLevel=");
        sb.append(this.h);
        sb.append(", locale='");
        sb.append(this.i);
        sb.append("', deviceRootStatus='");
        sb.append(this.j);
        sb.append("', appDebuggable='");
        sb.append(this.k);
        sb.append("', appFramework='");
        sb.append(this.l);
        sb.append("', attributionId=");
        sb.append(this.m);
        sb.append(", kitVersionName='");
        sb.append(this.n);
        sb.append("', kitBuildNumber='");
        return me0.d(sb, this.o, "')");
    }
}
