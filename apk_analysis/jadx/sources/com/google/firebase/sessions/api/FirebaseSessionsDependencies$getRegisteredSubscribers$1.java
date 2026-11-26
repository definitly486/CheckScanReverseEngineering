package com.google.firebase.sessions.api;

import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes4.dex */
@bd2(c = "com.google.firebase.sessions.api.FirebaseSessionsDependencies", f = "FirebaseSessionsDependencies.kt", l = {76}, m = "getRegisteredSubscribers$com_google_firebase_firebase_sessions")
public final class FirebaseSessionsDependencies$getRegisteredSubscribers$1 extends f02 {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ FirebaseSessionsDependencies this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirebaseSessionsDependencies$getRegisteredSubscribers$1(FirebaseSessionsDependencies firebaseSessionsDependencies, e02<? super FirebaseSessionsDependencies$getRegisteredSubscribers$1> e02Var) {
        super(e02Var);
        this.this$0 = firebaseSessionsDependencies;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.getRegisteredSubscribers$com_google_firebase_firebase_sessions(this);
    }
}
