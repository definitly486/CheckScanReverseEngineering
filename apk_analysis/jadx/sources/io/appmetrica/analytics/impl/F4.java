package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.validation.Validator;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public abstract class F4 extends Md {
    public final Object f;

    public F4(int i, String str, Object obj, Validator validator, X2 x2) {
        super(i, str, validator, x2);
        this.f = obj;
    }

    @Override // io.appmetrica.analytics.impl.Md, io.appmetrica.analytics.impl.InterfaceC1215qo
    public final void a(C1189po c1189po) {
        if (f()) {
            X2 x2 = this.d;
            int i = this.b;
            C1240ro c1240roA = x2.a(c1189po, (C1240ro) ((HashMap) c1189po.a.get(i)).get(this.a), this);
            if (c1240roA != null) {
                a(c1240roA);
            }
        }
    }

    public abstract void a(C1240ro c1240ro);

    public final Object g() {
        return this.f;
    }
}
