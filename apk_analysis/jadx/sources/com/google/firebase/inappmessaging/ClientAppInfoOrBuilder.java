package com.google.firebase.inappmessaging;

import com.google.protobuf.a0;
import defpackage.fx0;
import defpackage.ha5;

/* JADX INFO: loaded from: classes4.dex */
public interface ClientAppInfoOrBuilder extends ha5 {
    @Override // defpackage.ha5
    /* synthetic */ a0 getDefaultInstanceForType();

    String getFirebaseInstanceId();

    fx0 getFirebaseInstanceIdBytes();

    String getGoogleAppId();

    fx0 getGoogleAppIdBytes();

    boolean hasFirebaseInstanceId();

    boolean hasGoogleAppId();

    @Override // defpackage.ha5
    /* synthetic */ boolean isInitialized();
}
