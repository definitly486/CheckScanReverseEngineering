package androidx.camera.core.processing.util;

import android.graphics.Rect;
import android.util.Size;
import defpackage.dh;
import defpackage.o2;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_OutConfig extends OutConfig {
    private final Rect getCropRect;
    private final int getFormat;
    private final int getRotationDegrees;
    private final Size getSize;
    private final int getTargets;
    private final UUID getUuid;
    private final boolean isMirroring;
    private final boolean shouldRespectInputCropRect;

    public AutoValue_OutConfig(UUID uuid, int i, int i2, Rect rect, Size size, int i3, boolean z, boolean z2) {
        if (uuid == null) {
            o2.d("Null getUuid");
            throw null;
        }
        this.getUuid = uuid;
        this.getTargets = i;
        this.getFormat = i2;
        if (rect == null) {
            o2.d("Null getCropRect");
            throw null;
        }
        this.getCropRect = rect;
        if (size == null) {
            o2.d("Null getSize");
            throw null;
        }
        this.getSize = size;
        this.getRotationDegrees = i3;
        this.isMirroring = z;
        this.shouldRespectInputCropRect = z2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof OutConfig) {
            OutConfig outConfig = (OutConfig) obj;
            if (this.getUuid.equals(outConfig.getUuid()) && this.getTargets == outConfig.getTargets() && this.getFormat == outConfig.getFormat() && this.getCropRect.equals(outConfig.getCropRect()) && this.getSize.equals(outConfig.getSize()) && this.getRotationDegrees == outConfig.getRotationDegrees() && this.isMirroring == outConfig.isMirroring() && this.shouldRespectInputCropRect == outConfig.shouldRespectInputCropRect()) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.camera.core.processing.util.OutConfig
    public Rect getCropRect() {
        return this.getCropRect;
    }

    @Override // androidx.camera.core.processing.util.OutConfig
    public int getFormat() {
        return this.getFormat;
    }

    @Override // androidx.camera.core.processing.util.OutConfig
    public int getRotationDegrees() {
        return this.getRotationDegrees;
    }

    @Override // androidx.camera.core.processing.util.OutConfig
    public Size getSize() {
        return this.getSize;
    }

    @Override // androidx.camera.core.processing.util.OutConfig
    public int getTargets() {
        return this.getTargets;
    }

    @Override // androidx.camera.core.processing.util.OutConfig
    public UUID getUuid() {
        return this.getUuid;
    }

    public int hashCode() {
        return ((((((((((((((this.getUuid.hashCode() ^ 1000003) * 1000003) ^ this.getTargets) * 1000003) ^ this.getFormat) * 1000003) ^ this.getCropRect.hashCode()) * 1000003) ^ this.getSize.hashCode()) * 1000003) ^ this.getRotationDegrees) * 1000003) ^ (this.isMirroring ? 1231 : 1237)) * 1000003) ^ (this.shouldRespectInputCropRect ? 1231 : 1237);
    }

    @Override // androidx.camera.core.processing.util.OutConfig
    public boolean isMirroring() {
        return this.isMirroring;
    }

    @Override // androidx.camera.core.processing.util.OutConfig
    public boolean shouldRespectInputCropRect() {
        return this.shouldRespectInputCropRect;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("OutConfig{getUuid=");
        sb.append(this.getUuid);
        sb.append(", getTargets=");
        sb.append(this.getTargets);
        sb.append(", getFormat=");
        sb.append(this.getFormat);
        sb.append(", getCropRect=");
        sb.append(this.getCropRect);
        sb.append(", getSize=");
        sb.append(this.getSize);
        sb.append(", getRotationDegrees=");
        sb.append(this.getRotationDegrees);
        sb.append(", isMirroring=");
        sb.append(this.isMirroring);
        sb.append(", shouldRespectInputCropRect=");
        return dh.e(sb, this.shouldRespectInputCropRect, "}");
    }
}
