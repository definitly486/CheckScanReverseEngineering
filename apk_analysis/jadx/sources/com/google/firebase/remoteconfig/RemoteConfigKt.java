package com.google.firebase.remoteconfig;

import com.google.firebase.Firebase;
import com.google.firebase.FirebaseApp;
import defpackage.hd3;
import defpackage.j59;
import defpackage.nl3;
import defpackage.s0;

/* JADX INFO: loaded from: classes4.dex */
public final class RemoteConfigKt {
    public static final CustomSignals customSignals(nl3<? super CustomSignals.Builder, j59> nl3Var) {
        nl3Var.getClass();
        CustomSignals.Builder builder = new CustomSignals.Builder();
        nl3Var.invoke(builder);
        CustomSignals customSignalsBuild = builder.build();
        customSignalsBuild.getClass();
        return customSignalsBuild;
    }

    public static final FirebaseRemoteConfigValue get(FirebaseRemoteConfig firebaseRemoteConfig, String str) {
        firebaseRemoteConfig.getClass();
        str.getClass();
        FirebaseRemoteConfigValue value = firebaseRemoteConfig.getValue(str);
        value.getClass();
        return value;
    }

    public static final hd3<ConfigUpdate> getConfigUpdates(FirebaseRemoteConfig firebaseRemoteConfig) {
        firebaseRemoteConfig.getClass();
        return s0.a(new RemoteConfigKt$configUpdates$1(firebaseRemoteConfig, null));
    }

    public static final FirebaseRemoteConfig getRemoteConfig(Firebase firebase) {
        firebase.getClass();
        FirebaseRemoteConfig firebaseRemoteConfig = FirebaseRemoteConfig.getInstance();
        firebaseRemoteConfig.getClass();
        return firebaseRemoteConfig;
    }

    public static final FirebaseRemoteConfig remoteConfig(Firebase firebase, FirebaseApp firebaseApp) {
        firebase.getClass();
        firebaseApp.getClass();
        FirebaseRemoteConfig firebaseRemoteConfig = FirebaseRemoteConfig.getInstance(firebaseApp);
        firebaseRemoteConfig.getClass();
        return firebaseRemoteConfig;
    }

    public static final FirebaseRemoteConfigSettings remoteConfigSettings(nl3<? super FirebaseRemoteConfigSettings.Builder, j59> nl3Var) {
        nl3Var.getClass();
        FirebaseRemoteConfigSettings.Builder builder = new FirebaseRemoteConfigSettings.Builder();
        nl3Var.invoke(builder);
        FirebaseRemoteConfigSettings firebaseRemoteConfigSettingsBuild = builder.build();
        firebaseRemoteConfigSettingsBuild.getClass();
        return firebaseRemoteConfigSettingsBuild;
    }
}
