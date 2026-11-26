package com.google.firebase.perf.v1;

import com.google.protobuf.a0;
import defpackage.ha5;

/* JADX INFO: loaded from: classes4.dex */
public interface NetworkConnectionInfoOrBuilder extends ha5 {
    @Override // defpackage.ha5
    /* synthetic */ a0 getDefaultInstanceForType();

    NetworkConnectionInfo.MobileSubtype getMobileSubtype();

    NetworkConnectionInfo.NetworkType getNetworkType();

    boolean hasMobileSubtype();

    boolean hasNetworkType();

    @Override // defpackage.ha5
    /* synthetic */ boolean isInitialized();
}
