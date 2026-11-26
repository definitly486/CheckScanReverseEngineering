package androidx.camera.camera2.compat;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.params.DynamicRangeProfiles;
import android.os.Build;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.DynamicRange;
import defpackage.j2;
import defpackage.jh2;
import defpackage.kv2;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class DynamicRangeProfilesCompat {
    public static final Companion Companion = new Companion(null);
    private final DynamicRangeProfilesCompatImpl impl;

    public interface DynamicRangeProfilesCompatImpl {
        Set<DynamicRange> getDynamicRangeCaptureRequestConstraints(DynamicRange dynamicRange);

        Set<DynamicRange> getSupportedDynamicRanges();

        boolean isExtraLatencyPresent(DynamicRange dynamicRange);

        DynamicRangeProfiles unwrap();
    }

    public DynamicRangeProfilesCompat(DynamicRangeProfilesCompatImpl dynamicRangeProfilesCompatImpl) {
        dynamicRangeProfilesCompatImpl.getClass();
        this.impl = dynamicRangeProfilesCompatImpl;
    }

    public final Set<DynamicRange> getDynamicRangeCaptureRequestConstraints(DynamicRange dynamicRange) {
        dynamicRange.getClass();
        return this.impl.getDynamicRangeCaptureRequestConstraints(dynamicRange);
    }

    public final Set<DynamicRange> getSupportedDynamicRanges() {
        return this.impl.getSupportedDynamicRanges();
    }

    public final boolean isExtraLatencyPresent(DynamicRange dynamicRange) {
        dynamicRange.getClass();
        return this.impl.isExtraLatencyPresent(dynamicRange);
    }

    public final DynamicRangeProfiles toDynamicRangeProfiles() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 33) {
            return this.impl.unwrap();
        }
        j2.d(kv2.b(i, "DynamicRangesCompat can only be converted to DynamicRangeProfiles on API 33 or higher. is not supported on API ", " (requires API 33)"));
        return null;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final DynamicRangeProfilesCompat fromCameraMetaData(CameraMetadata cameraMetadata) {
            DynamicRangeProfilesCompat dynamicRangesCompat;
            cameraMetadata.getClass();
            if (Build.VERSION.SDK_INT >= 33) {
                CameraCharacteristics.Key key = CameraCharacteristics.REQUEST_AVAILABLE_DYNAMIC_RANGE_PROFILES;
                key.getClass();
                dynamicRangesCompat = toDynamicRangesCompat((DynamicRangeProfiles) cameraMetadata.get(key));
            } else {
                dynamicRangesCompat = null;
            }
            return dynamicRangesCompat == null ? DynamicRangeProfilesCompatBaseImpl.Companion.getCOMPAT_INSTANCE() : dynamicRangesCompat;
        }

        public final DynamicRangeProfilesCompat toDynamicRangesCompat(DynamicRangeProfiles dynamicRangeProfiles) {
            if (dynamicRangeProfiles == null) {
                return null;
            }
            int i = Build.VERSION.SDK_INT;
            if (i >= 33) {
                return new DynamicRangeProfilesCompat(new DynamicRangeProfilesCompatApi33Impl(dynamicRangeProfiles));
            }
            j2.d(kv2.b(i, "DynamicRangeProfiles can only be converted to DynamicRangesCompat on API 33 or higher. is not supported on API ", " (requires API 33)"));
            return null;
        }

        private Companion() {
        }
    }
}
