package com.google.firebase.remoteconfig;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.ll3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.sg6;
import defpackage.ug6;

/* JADX INFO: loaded from: classes4.dex */
@bd2(c = "com.google.firebase.remoteconfig.RemoteConfigKt$configUpdates$1", f = "RemoteConfig.kt", l = {76}, m = "invokeSuspend")
public final class RemoteConfigKt$configUpdates$1 extends pg8 implements bm3<ug6<? super ConfigUpdate>, e02<? super j59>, Object> {
    final /* synthetic */ FirebaseRemoteConfig $this_configUpdates;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteConfigKt$configUpdates$1(FirebaseRemoteConfig firebaseRemoteConfig, e02<? super RemoteConfigKt$configUpdates$1> e02Var) {
        super(2, e02Var);
        this.$this_configUpdates = firebaseRemoteConfig;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invokeSuspend$lambda$0(ConfigUpdateListenerRegistration configUpdateListenerRegistration) {
        configUpdateListenerRegistration.remove();
        return j59.a;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        RemoteConfigKt$configUpdates$1 remoteConfigKt$configUpdates$1 = new RemoteConfigKt$configUpdates$1(this.$this_configUpdates, e02Var);
        remoteConfigKt$configUpdates$1.L$0 = obj;
        return remoteConfigKt$configUpdates$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(ug6<? super ConfigUpdate> ug6Var, e02<? super j59> e02Var) {
        return ((RemoteConfigKt$configUpdates$1) create(ug6Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            ug6 ug6Var = (ug6) this.L$0;
            FirebaseRemoteConfig firebaseRemoteConfig = this.$this_configUpdates;
            final ConfigUpdateListenerRegistration configUpdateListenerRegistrationAddOnConfigUpdateListener = firebaseRemoteConfig.addOnConfigUpdateListener(new RemoteConfigKt$configUpdates$1$registration$1(firebaseRemoteConfig, ug6Var));
            configUpdateListenerRegistrationAddOnConfigUpdateListener.getClass();
            ll3 ll3Var = new ll3() { // from class: com.google.firebase.remoteconfig.a
                @Override // defpackage.ll3
                public final Object invoke() {
                    return RemoteConfigKt$configUpdates$1.invokeSuspend$lambda$0(configUpdateListenerRegistrationAddOnConfigUpdateListener);
                }
            };
            this.label = 1;
            if (sg6.a(ug6Var, ll3Var, this) == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return j59.a;
    }
}
