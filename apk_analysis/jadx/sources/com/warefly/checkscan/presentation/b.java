package com.warefly.checkscan.presentation;

import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;
import defpackage.uj1;

/* JADX INFO: loaded from: classes5.dex */
public final class b extends gh4 implements ll3<j59> {
    public final /* synthetic */ a f;
    public final /* synthetic */ Deeplink.n g;
    public final /* synthetic */ uj1 h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(a aVar, Deeplink.n nVar, uj1 uj1Var) {
        super(0);
        this.f = aVar;
        this.g = nVar;
        this.h = uj1Var;
    }

    @Override // defpackage.ll3
    public final j59 invoke() {
        this.f.b(this.g, this.h);
        return j59.a;
    }
}
