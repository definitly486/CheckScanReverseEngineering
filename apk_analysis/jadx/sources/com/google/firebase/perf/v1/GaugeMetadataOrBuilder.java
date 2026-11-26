package com.google.firebase.perf.v1;

import com.google.protobuf.a0;
import defpackage.fx0;
import defpackage.ha5;

/* JADX INFO: loaded from: classes4.dex */
public interface GaugeMetadataOrBuilder extends ha5 {
    int getCpuClockRateKhz();

    int getCpuProcessorCount();

    @Override // defpackage.ha5
    /* synthetic */ a0 getDefaultInstanceForType();

    int getDeviceRamSizeKb();

    int getMaxAppJavaHeapMemoryKb();

    int getMaxEncouragedAppJavaHeapMemoryKb();

    @Deprecated
    String getProcessName();

    @Deprecated
    fx0 getProcessNameBytes();

    boolean hasCpuClockRateKhz();

    boolean hasCpuProcessorCount();

    boolean hasDeviceRamSizeKb();

    boolean hasMaxAppJavaHeapMemoryKb();

    boolean hasMaxEncouragedAppJavaHeapMemoryKb();

    @Deprecated
    boolean hasProcessName();

    @Override // defpackage.ha5
    /* synthetic */ boolean isInitialized();
}
