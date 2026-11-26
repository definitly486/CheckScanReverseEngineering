package androidx.camera.camera2.compat.quirk;

import android.hardware.camera2.CameraCharacteristics;
import android.util.Range;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.internal.compat.quirk.AeFpsRangeQuirk;
import defpackage.cl4;
import defpackage.eb;
import defpackage.fh8;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class AeFpsRangeLegacyQuirk implements AeFpsRangeQuirk {
    public static final Companion Companion = new Companion(null);
    private final cl4 range$delegate;

    public AeFpsRangeLegacyQuirk(CameraMetadata cameraMetadata) {
        cameraMetadata.getClass();
        this.range$delegate = new fh8(new eb(0, cameraMetadata, this));
    }

    private final Range<Integer> getCorrectedFpsRange(Range<Integer> range) {
        Integer numValueOf = (Integer) range.getUpper();
        Integer numValueOf2 = (Integer) range.getLower();
        if (((Number) range.getUpper()).intValue() >= 1000) {
            numValueOf = Integer.valueOf(((Number) range.getUpper()).intValue() / 1000);
        }
        if (((Number) range.getLower()).intValue() >= 1000) {
            numValueOf2 = Integer.valueOf(((Number) range.getLower()).intValue() / 1000);
        }
        return new Range<>(numValueOf2, numValueOf);
    }

    private final Range<Integer> getRange() {
        return (Range) this.range$delegate.getValue();
    }

    private final Range<Integer> pickSuitableFpsRange(Range<Integer>[] rangeArr) {
        Range<Integer> range = null;
        if (rangeArr != null && rangeArr.length != 0) {
            for (Range<Integer> range2 : rangeArr) {
                Range<Integer> correctedFpsRange = getCorrectedFpsRange(range2);
                Integer num = (Integer) correctedFpsRange.getUpper();
                if (num != null && num.intValue() == 30 && (range == null || ((Number) correctedFpsRange.getLower()).intValue() < ((Number) range.getLower()).intValue())) {
                    range = correctedFpsRange;
                }
            }
        }
        return range;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Range range_delegate$lambda$0(CameraMetadata cameraMetadata, AeFpsRangeLegacyQuirk aeFpsRangeLegacyQuirk) {
        CameraCharacteristics.Key key = CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES;
        key.getClass();
        return aeFpsRangeLegacyQuirk.pickSuitableFpsRange((Range[]) cameraMetadata.get(key));
    }

    @Override // androidx.camera.core.internal.compat.quirk.AeFpsRangeQuirk
    public Range<Integer> getTargetAeFpsRange() {
        Range<Integer> range = getRange();
        if (range != null) {
            return range;
        }
        Range<Integer> range2 = StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
        range2.getClass();
        return range2;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final boolean isEnabled(CameraMetadata cameraMetadata) {
            cameraMetadata.getClass();
            return CameraMetadata.Companion.isHardwareLevelLegacy(cameraMetadata);
        }

        private Companion() {
        }
    }
}
