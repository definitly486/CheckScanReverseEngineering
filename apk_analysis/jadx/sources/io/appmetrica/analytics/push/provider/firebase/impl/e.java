package io.appmetrica.analytics.push.provider.firebase.impl;

import defpackage.gh4;
import defpackage.ll3;

/* JADX INFO: loaded from: classes5.dex */
public final class e extends gh4 implements ll3 {
    public final /* synthetic */ n a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(n nVar) {
        super(0);
        this.a = nVar;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        n nVar = this.a;
        return new m(nVar.a(), nVar.b(), nVar.d(), nVar.c());
    }
}
