package com.google.firebase.sessions.settings;

import android.util.Log;
import com.google.firebase.sessions.FirebaseSessions;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes4.dex */
@bd2(c = "com.google.firebase.sessions.settings.RemoteSettings$updateSettings$2$2", f = "RemoteSettings.kt", l = {}, m = "invokeSuspend")
public final class RemoteSettings$updateSettings$2$2 extends pg8 implements bm3<String, e02<? super j59>, Object> {
    /* synthetic */ Object L$0;
    int label;

    public RemoteSettings$updateSettings$2$2(e02<? super RemoteSettings$updateSettings$2$2> e02Var) {
        super(2, e02Var);
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        RemoteSettings$updateSettings$2$2 remoteSettings$updateSettings$2$2 = new RemoteSettings$updateSettings$2$2(e02Var);
        remoteSettings$updateSettings$2$2.L$0 = obj;
        return remoteSettings$updateSettings$2$2;
    }

    @Override // defpackage.bm3
    public final Object invoke(String str, e02<? super j59> e02Var) {
        return ((RemoteSettings$updateSettings$2$2) create(str, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label != 0) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        Log.e(FirebaseSessions.TAG, "Error failed to fetch the remote configs: " + ((String) this.L$0));
        return j59.a;
    }
}
