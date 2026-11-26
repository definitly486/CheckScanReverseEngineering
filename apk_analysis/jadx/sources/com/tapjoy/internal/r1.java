package com.tapjoy.internal;

import com.tapjoy.TJPurchases;

/* JADX INFO: loaded from: classes4.dex */
public final class r1 {
    public final String a;
    public final Double b;
    public final Long c;
    public final Double d;
    public final Integer e;

    public r1() {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        TJPurchases tJPurchases = TJPurchases.INSTANCE;
        this.a = tJPurchases.getPurchaseCurrency();
        this.b = tJPurchases.getPurchaseTotalPrice();
        this.c = tJPurchases.getPurchaseLastTime();
        this.d = tJPurchases.getPurchaseLastPrice();
        this.e = tJPurchases.getPurchaseTotalCount();
    }
}
