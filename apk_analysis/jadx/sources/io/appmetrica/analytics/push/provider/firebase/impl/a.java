package io.appmetrica.analytics.push.provider.firebase.impl;

import defpackage.gh4;
import defpackage.ll3;

/* JADX INFO: loaded from: classes5.dex */
public final class a extends gh4 implements ll3 {
    public final /* synthetic */ b a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(b bVar) {
        super(0);
        this.a = bVar;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        b bVar = this.a;
        return Boolean.valueOf(bVar.b == null && bVar.a != null);
    }
}
