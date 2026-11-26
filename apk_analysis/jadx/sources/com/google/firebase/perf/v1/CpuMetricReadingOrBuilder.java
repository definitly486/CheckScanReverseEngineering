package com.google.firebase.perf.v1;

import com.google.protobuf.a0;
import defpackage.ha5;

/* JADX INFO: loaded from: classes4.dex */
public interface CpuMetricReadingOrBuilder extends ha5 {
    long getClientTimeUs();

    @Override // defpackage.ha5
    /* synthetic */ a0 getDefaultInstanceForType();

    long getSystemTimeUs();

    long getUserTimeUs();

    boolean hasClientTimeUs();

    boolean hasSystemTimeUs();

    boolean hasUserTimeUs();

    @Override // defpackage.ha5
    /* synthetic */ boolean isInitialized();
}
