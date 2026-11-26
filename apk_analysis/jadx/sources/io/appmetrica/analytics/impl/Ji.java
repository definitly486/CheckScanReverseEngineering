package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.validation.Validator;

/* JADX INFO: loaded from: classes5.dex */
public final class Ji extends Md {
    public Ji(int i, String str, Validator<String> validator, InterfaceC1396y2 interfaceC1396y2) {
        super(i, str, validator, new Ii(interfaceC1396y2));
    }

    @Override // io.appmetrica.analytics.impl.Md, io.appmetrica.analytics.impl.InterfaceC1215qo
    public final void a(C1189po c1189po) {
        if (f()) {
            this.d.a(c1189po, null, this);
        }
    }
}
