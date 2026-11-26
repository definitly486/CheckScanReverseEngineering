package io.appmetrica.analytics.billing.impl;

import defpackage.rg;

/* JADX INFO: loaded from: classes5.dex */
public final class y {
    public final int a;
    public final int b;

    public y(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ServiceSideBillingConfig(sendFrequencySeconds=");
        sb.append(this.a);
        sb.append(", firstCollectingInappMaxAgeSeconds=");
        return rg.h(sb, this.b, ')');
    }
}
