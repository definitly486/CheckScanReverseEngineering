package io.appmetrica.analytics.impl;

import defpackage.gh4;
import defpackage.nl3;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessor;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.s5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1247s5 extends gh4 implements nl3 {
    public static final C1247s5 a = new C1247s5();

    public C1247s5() {
        super(1);
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        return ((ModuleAdRevenueProcessor) obj).getDescription();
    }
}
