package io.appmetrica.analytics.billingv6.impl;

import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.PurchasesResponseListener;
import defpackage.ll3;
import io.appmetrica.analytics.billinginterface.internal.library.UtilsProvider;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class k implements PurchasesResponseListener {
    public final UtilsProvider a;
    public final ll3 b;
    public final List c;
    public final List d;
    public final d e;
    public final n f;

    public k(UtilsProvider utilsProvider, ll3 ll3Var, List list, List list2, d dVar, n nVar) {
        this.a = utilsProvider;
        this.b = ll3Var;
        this.c = list;
        this.d = list2;
        this.e = dVar;
        this.f = nVar;
    }

    @Override // com.android.billingclient.api.PurchasesResponseListener
    public final void onQueryPurchasesResponse(BillingResult billingResult, List list) {
        this.a.getWorkerExecutor().execute(new j(this, billingResult, list));
    }
}
