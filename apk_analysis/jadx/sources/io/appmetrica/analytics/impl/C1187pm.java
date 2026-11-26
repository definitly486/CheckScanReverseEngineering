package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.networktasks.internal.BaseRequestConfig;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.pm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1187pm extends BaseRequestConfig.BaseRequestArguments {
    public final String a;
    public final String b;
    public final Map<String, String> c;
    public final boolean d;
    public final List<String> e;

    public C1187pm(V3 v3) {
        this(v3.a().c(), v3.a().d(), v3.a().a(), v3.a().h(), v3.a().b());
    }

    public final boolean a(C1187pm c1187pm) {
        return false;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.ArgumentsMerger
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final C1187pm mergeFrom(C1187pm c1187pm) {
        String str = (String) WrapUtils.getOrDefaultNullable(this.a, c1187pm.a);
        String str2 = (String) WrapUtils.getOrDefaultNullable(this.b, c1187pm.b);
        Map map = (Map) WrapUtils.getOrDefaultNullable(this.c, c1187pm.c);
        boolean z = this.d || c1187pm.d;
        if (c1187pm.d) {
            this = c1187pm;
        }
        return new C1187pm(str, str2, map, z, this.e);
    }

    @Override // io.appmetrica.analytics.networktasks.internal.ArgumentsMerger
    public final boolean compareWithOtherArguments(Object obj) {
        return false;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Arguments{distributionReferrer='");
        sb.append(this.a);
        sb.append("', installReferrerSource='");
        sb.append(this.b);
        sb.append("', clientClids=");
        sb.append(this.c);
        sb.append(", hasNewCustomHosts=");
        sb.append(this.d);
        sb.append(", newCustomHosts=");
        return defpackage.qg.f(sb, this.e, '}');
    }

    public C1187pm(String str, String str2, Map<String, String> map, boolean z, List<String> list) {
        this.a = str;
        this.b = str2;
        this.c = map;
        this.d = z;
        this.e = list;
    }

    public C1187pm() {
        this(null, null, null, false, null);
    }
}
