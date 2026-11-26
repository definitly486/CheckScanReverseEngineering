package io.appmetrica.analytics.billingv8.impl;

import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class h extends gh4 implements ll3 {
    public final /* synthetic */ Map a;
    public final /* synthetic */ Map b;
    public final /* synthetic */ i c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(LinkedHashMap linkedHashMap, Map map, i iVar) {
        super(0);
        this.a = linkedHashMap;
        this.b = map;
        this.c = iVar;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        Map map = this.a;
        Map map2 = this.b;
        i iVar = this.c;
        m.a(map, map2, iVar.d, iVar.c.getBillingInfoManager());
        return j59.a;
    }
}
