package io.appmetrica.analytics.impl;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import defpackage.me0;
import io.appmetrica.analytics.coreutils.internal.services.FrameworkDetector;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.y7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1401y7 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final String h;
    public final String i;
    public final String j;
    public final String k;
    public final String l;
    public final String m;
    public final String n;

    public C1401y7(C1279tb c1279tb) {
        this.a = c1279tb.c("dId");
        this.b = c1279tb.c("uId");
        this.c = c1279tb.c("analyticsSdkVersionName");
        this.d = c1279tb.c("kitBuildNumber");
        this.e = c1279tb.c("kitBuildType");
        this.f = c1279tb.c("appVer");
        this.g = c1279tb.optString("app_debuggable", CommonUrlParts.Values.FALSE_INTEGER);
        this.h = c1279tb.c(RemoteConfigConstants.RequestFieldKey.APP_BUILD);
        this.i = c1279tb.c("osVer");
        this.k = c1279tb.c("lang");
        this.l = c1279tb.c("root");
        this.m = c1279tb.optString(CommonUrlParts.APP_FRAMEWORK, FrameworkDetector.framework());
        int iOptInt = c1279tb.optInt("osApiLev", -1);
        this.j = iOptInt == -1 ? null : String.valueOf(iOptInt);
        int iOptInt2 = c1279tb.optInt("attribution_id", 0);
        this.n = iOptInt2 > 0 ? String.valueOf(iOptInt2) : null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DbNetworkTaskConfig{deviceId='");
        sb.append(this.a);
        sb.append("', uuid='");
        sb.append(this.b);
        sb.append("', analyticsSdkVersionName='");
        sb.append(this.c);
        sb.append("', kitBuildNumber='");
        sb.append(this.d);
        sb.append("', kitBuildType='");
        sb.append(this.e);
        sb.append("', appVersion='");
        sb.append(this.f);
        sb.append("', appDebuggable='");
        sb.append(this.g);
        sb.append("', appBuildNumber='");
        sb.append(this.h);
        sb.append("', osVersion='");
        sb.append(this.i);
        sb.append("', osApiLevel='");
        sb.append(this.j);
        sb.append("', locale='");
        sb.append(this.k);
        sb.append("', deviceRootStatus='");
        sb.append(this.l);
        sb.append("', appFramework='");
        sb.append(this.m);
        sb.append("', attributionId='");
        return me0.d(sb, this.n, "'}");
    }

    public C1401y7() {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = null;
    }
}
