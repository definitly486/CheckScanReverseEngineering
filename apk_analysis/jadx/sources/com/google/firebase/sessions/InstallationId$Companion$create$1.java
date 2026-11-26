package com.google.firebase.sessions;

import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes4.dex */
@bd2(c = "com.google.firebase.sessions.InstallationId$Companion", f = "InstallationId.kt", l = {31, 39}, m = "create")
public final class InstallationId$Companion$create$1 extends f02 {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ InstallationId.Companion this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InstallationId$Companion$create$1(InstallationId.Companion companion, e02<? super InstallationId$Companion$create$1> e02Var) {
        super(e02Var);
        this.this$0 = companion;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.create(null, this);
    }
}
