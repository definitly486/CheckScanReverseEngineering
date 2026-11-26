package io.appmetrica.analytics.impl;

import defpackage.gh4;
import defpackage.nl3;
import io.appmetrica.analytics.coreapi.internal.io.IExecutionPolicy;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.p5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1170p5 extends gh4 implements nl3 {
    public static final C1170p5 a = new C1170p5();

    public C1170p5() {
        super(1);
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        return ((IExecutionPolicy) obj).description();
    }
}
