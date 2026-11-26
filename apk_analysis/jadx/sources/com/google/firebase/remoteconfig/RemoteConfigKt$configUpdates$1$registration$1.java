package com.google.firebase.remoteconfig;

import defpackage.kb;
import defpackage.pib;
import defpackage.ug6;
import defpackage.z22;

/* JADX INFO: loaded from: classes4.dex */
public final class RemoteConfigKt$configUpdates$1$registration$1 implements ConfigUpdateListener {
    final /* synthetic */ ug6<ConfigUpdate> $$this$callbackFlow;
    final /* synthetic */ FirebaseRemoteConfig $this_configUpdates;

    /* JADX WARN: Multi-variable type inference failed */
    public RemoteConfigKt$configUpdates$1$registration$1(FirebaseRemoteConfig firebaseRemoteConfig, ug6<? super ConfigUpdate> ug6Var) {
        this.$this_configUpdates = firebaseRemoteConfig;
        this.$$this$callbackFlow = ug6Var;
    }

    @Override // com.google.firebase.remoteconfig.ConfigUpdateListener
    public void onError(FirebaseRemoteConfigException firebaseRemoteConfigException) {
        firebaseRemoteConfigException.getClass();
        z22.b(this.$$this$callbackFlow, pib.a("Error listening for config updates.", firebaseRemoteConfigException));
    }

    @Override // com.google.firebase.remoteconfig.ConfigUpdateListener
    public void onUpdate(ConfigUpdate configUpdate) {
        configUpdate.getClass();
        this.$this_configUpdates.schedule(new kb(2, this.$$this$callbackFlow, configUpdate));
    }
}
