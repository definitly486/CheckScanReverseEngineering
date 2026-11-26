package io.appmetrica.analytics.logger.common.impl;

import defpackage.cl4;
import defpackage.gh4;
import defpackage.nl3;
import defpackage.r15;
import defpackage.ta8;

/* JADX INFO: loaded from: classes5.dex */
public final class b extends gh4 implements nl3 {
    public static final b a = new b();

    public b() {
        super(1);
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        cl4 cl4Var = c.a;
        String value = ((r15) obj).getValue();
        return ta8.V(value, 8, value.length() - 4, "-xxxx-xxxx-xxxx-xxxxxxxx").toString();
    }
}
