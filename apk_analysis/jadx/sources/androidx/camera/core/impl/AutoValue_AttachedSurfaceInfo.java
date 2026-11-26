package androidx.camera.core.impl;

import android.util.Range;
import android.util.Size;
import androidx.camera.core.DynamicRange;
import defpackage.l2;
import defpackage.o2;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_AttachedSurfaceInfo extends AttachedSurfaceInfo {
    private final List<UseCaseConfigFactory.CaptureType> captureTypes;
    private final int customMaxFrameRate;
    private final DynamicRange dynamicRange;
    private final int imageFormat;
    private final Config implementationOptions;
    private final int sessionType;
    private final Size size;
    private final boolean strictFrameRateRequired;
    private final SurfaceConfig surfaceConfig;
    private final Range<Integer> targetFrameRate;

    public AutoValue_AttachedSurfaceInfo(SurfaceConfig surfaceConfig, int i, Size size, DynamicRange dynamicRange, List<UseCaseConfigFactory.CaptureType> list, Config config, int i2, Range<Integer> range, boolean z, int i3) {
        if (surfaceConfig == null) {
            o2.d("Null surfaceConfig");
            throw null;
        }
        this.surfaceConfig = surfaceConfig;
        this.imageFormat = i;
        if (size == null) {
            o2.d("Null size");
            throw null;
        }
        this.size = size;
        if (dynamicRange == null) {
            o2.d("Null dynamicRange");
            throw null;
        }
        this.dynamicRange = dynamicRange;
        if (list == null) {
            o2.d("Null captureTypes");
            throw null;
        }
        this.captureTypes = list;
        this.implementationOptions = config;
        this.sessionType = i2;
        if (range == null) {
            o2.d("Null targetFrameRate");
            throw null;
        }
        this.targetFrameRate = range;
        this.strictFrameRateRequired = z;
        this.customMaxFrameRate = i3;
    }

    public boolean equals(Object obj) {
        Config config;
        if (obj == this) {
            return true;
        }
        if (obj instanceof AttachedSurfaceInfo) {
            AttachedSurfaceInfo attachedSurfaceInfo = (AttachedSurfaceInfo) obj;
            if (this.surfaceConfig.equals(attachedSurfaceInfo.getSurfaceConfig()) && this.imageFormat == attachedSurfaceInfo.getImageFormat() && this.size.equals(attachedSurfaceInfo.getSize()) && this.dynamicRange.equals(attachedSurfaceInfo.getDynamicRange()) && this.captureTypes.equals(attachedSurfaceInfo.getCaptureTypes()) && ((config = this.implementationOptions) != null ? config.equals(attachedSurfaceInfo.getImplementationOptions()) : attachedSurfaceInfo.getImplementationOptions() == null) && this.sessionType == attachedSurfaceInfo.getSessionType() && this.targetFrameRate.equals(attachedSurfaceInfo.getTargetFrameRate()) && this.strictFrameRateRequired == attachedSurfaceInfo.isStrictFrameRateRequired() && this.customMaxFrameRate == attachedSurfaceInfo.getCustomMaxFrameRate()) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.camera.core.impl.AttachedSurfaceInfo
    public List<UseCaseConfigFactory.CaptureType> getCaptureTypes() {
        return this.captureTypes;
    }

    @Override // androidx.camera.core.impl.AttachedSurfaceInfo
    public int getCustomMaxFrameRate() {
        return this.customMaxFrameRate;
    }

    @Override // androidx.camera.core.impl.AttachedSurfaceInfo
    public DynamicRange getDynamicRange() {
        return this.dynamicRange;
    }

    @Override // androidx.camera.core.impl.AttachedSurfaceInfo
    public int getImageFormat() {
        return this.imageFormat;
    }

    @Override // androidx.camera.core.impl.AttachedSurfaceInfo
    public Config getImplementationOptions() {
        return this.implementationOptions;
    }

    @Override // androidx.camera.core.impl.AttachedSurfaceInfo
    public int getSessionType() {
        return this.sessionType;
    }

    @Override // androidx.camera.core.impl.AttachedSurfaceInfo
    public Size getSize() {
        return this.size;
    }

    @Override // androidx.camera.core.impl.AttachedSurfaceInfo
    public SurfaceConfig getSurfaceConfig() {
        return this.surfaceConfig;
    }

    @Override // androidx.camera.core.impl.AttachedSurfaceInfo
    public Range<Integer> getTargetFrameRate() {
        return this.targetFrameRate;
    }

    public int hashCode() {
        int iHashCode = (((((((((this.surfaceConfig.hashCode() ^ 1000003) * 1000003) ^ this.imageFormat) * 1000003) ^ this.size.hashCode()) * 1000003) ^ this.dynamicRange.hashCode()) * 1000003) ^ this.captureTypes.hashCode()) * 1000003;
        Config config = this.implementationOptions;
        return this.customMaxFrameRate ^ ((((((((iHashCode ^ (config == null ? 0 : config.hashCode())) * 1000003) ^ this.sessionType) * 1000003) ^ this.targetFrameRate.hashCode()) * 1000003) ^ (this.strictFrameRateRequired ? 1231 : 1237)) * 1000003);
    }

    @Override // androidx.camera.core.impl.AttachedSurfaceInfo
    public boolean isStrictFrameRateRequired() {
        return this.strictFrameRateRequired;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AttachedSurfaceInfo{surfaceConfig=");
        sb.append(this.surfaceConfig);
        sb.append(", imageFormat=");
        sb.append(this.imageFormat);
        sb.append(", size=");
        sb.append(this.size);
        sb.append(", dynamicRange=");
        sb.append(this.dynamicRange);
        sb.append(", captureTypes=");
        sb.append(this.captureTypes);
        sb.append(", implementationOptions=");
        sb.append(this.implementationOptions);
        sb.append(", sessionType=");
        sb.append(this.sessionType);
        sb.append(", targetFrameRate=");
        sb.append(this.targetFrameRate);
        sb.append(", strictFrameRateRequired=");
        sb.append(this.strictFrameRateRequired);
        sb.append(", customMaxFrameRate=");
        return l2.e(sb, "}", this.customMaxFrameRate);
    }
}
