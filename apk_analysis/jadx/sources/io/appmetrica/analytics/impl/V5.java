package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessorsHolder;

/* JADX INFO: loaded from: classes5.dex */
public final class V5 implements U5 {
    public final C1273t5 a;

    public V5(C1273t5 c1273t5) {
        this.a = c1273t5;
    }

    @Override // io.appmetrica.analytics.impl.U5, io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueContext
    public final C1273t5 getAdRevenueProcessorsHolder() {
        return this.a;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueContext
    public final ModuleAdRevenueProcessorsHolder getAdRevenueProcessorsHolder() {
        return this.a;
    }
}
