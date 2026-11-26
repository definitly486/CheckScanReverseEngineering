package com.google.firebase.perf.v1;

import com.google.protobuf.a0;
import defpackage.fx0;
import defpackage.ha5;

/* JADX INFO: loaded from: classes4.dex */
public interface AndroidApplicationInfoOrBuilder extends ha5 {
    @Override // defpackage.ha5
    /* synthetic */ a0 getDefaultInstanceForType();

    String getPackageName();

    fx0 getPackageNameBytes();

    String getSdkVersion();

    fx0 getSdkVersionBytes();

    String getVersionName();

    fx0 getVersionNameBytes();

    boolean hasPackageName();

    boolean hasSdkVersion();

    boolean hasVersionName();

    @Override // defpackage.ha5
    /* synthetic */ boolean isInitialized();
}
