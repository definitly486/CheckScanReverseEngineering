package io.appmetrica.analytics.impl;

import defpackage.gh4;
import defpackage.ll3;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.AdRevenueConstants;
import java.util.HashMap;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.qn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1214qn extends gh4 implements ll3 {
    public final /* synthetic */ C1239rn a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1214qn(C1239rn c1239rn) {
        super(0);
        this.a = c1239rn;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        HashMap map = new HashMap();
        C1239rn c1239rn = this.a;
        String strA = c1239rn.a.a();
        if (strA != null) {
        }
        String strA2 = c1239rn.b.a();
        if (strA2 != null) {
            map.put(AdRevenueConstants.PLUGIN_SUPPORTED_SOURCES_KEY, strA2);
        }
        return map;
    }
}
