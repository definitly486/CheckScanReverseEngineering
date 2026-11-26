package io.appmetrica.analytics.impl;

import defpackage.gh4;
import defpackage.nl3;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class Cd extends gh4 implements nl3 {
    public final /* synthetic */ C1279tb a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Cd(C1279tb c1279tb) {
        super(1);
        this.a = c1279tb;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        C1048kd c1048kd = (C1048kd) ((Map.Entry) obj).getValue();
        return c1048kd.b.parse(this.a);
    }
}
