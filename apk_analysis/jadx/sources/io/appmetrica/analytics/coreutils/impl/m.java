package io.appmetrica.analytics.coreutils.impl;

import defpackage.gh4;
import defpackage.ll3;
import io.appmetrica.analytics.coreutils.internal.services.FirstExecutionConditionServiceImpl;
import io.appmetrica.analytics.coreutils.internal.services.UtilityServiceProvider;

/* JADX INFO: loaded from: classes5.dex */
public final class m extends gh4 implements ll3 {
    public final /* synthetic */ UtilityServiceProvider a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(UtilityServiceProvider utilityServiceProvider) {
        super(0);
        this.a = utilityServiceProvider;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        return new FirstExecutionConditionServiceImpl(this.a);
    }
}
