package androidx.camera.camera2.pipe;

import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class ImageSourceConfig {
    private final int capacity;
    private final Integer defaultDataSpace;
    private final Integer defaultHardwareBufferFormat;
    private boolean enableConcurrentOutputs;
    private final Long usageFlags;

    public /* synthetic */ ImageSourceConfig(int i, Long l, Integer num, Integer num2, int i2, jh2 jh2Var) {
        this(i, (i2 & 2) != 0 ? null : l, (i2 & 4) != 0 ? null : num, (i2 & 8) != 0 ? null : num2);
    }

    public final int getCapacity() {
        return this.capacity;
    }

    public final Integer getDefaultDataSpace() {
        return this.defaultDataSpace;
    }

    public final Integer getDefaultHardwareBufferFormat() {
        return this.defaultHardwareBufferFormat;
    }

    public final boolean getEnableConcurrentOutputs() {
        return this.enableConcurrentOutputs;
    }

    public final Long getUsageFlags() {
        return this.usageFlags;
    }

    public final void setEnableConcurrentOutputs(boolean z) {
        this.enableConcurrentOutputs = z;
    }

    public ImageSourceConfig(int i, Long l, Integer num, Integer num2) {
        this.capacity = i;
        this.usageFlags = l;
        this.defaultDataSpace = num;
        this.defaultHardwareBufferFormat = num2;
    }
}
