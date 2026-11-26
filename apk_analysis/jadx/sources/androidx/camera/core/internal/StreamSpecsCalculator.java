package androidx.camera.core.internal;

import android.util.Range;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.CameraConfig;
import androidx.camera.core.impl.CameraConfigs;
import androidx.camera.core.impl.CameraDeviceSurfaceManager;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.StreamSpec;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.window.core.layout.WindowSizeClass;
import defpackage.kx2;
import defpackage.n1;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface StreamSpecsCalculator {
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final StreamSpecsCalculator NO_OP_STREAM_SPECS_CALCULATOR = new StreamSpecsCalculator() { // from class: androidx.camera.core.internal.StreamSpecsCalculator$Companion$NO_OP_STREAM_SPECS_CALCULATOR$1
        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.camera.core.internal.StreamSpecsCalculator
        public StreamSpecQueryResult calculateSuggestedStreamSpecs(int i, CameraInfoInternal cameraInfoInternal, List<? extends UseCase> list, List<? extends UseCase> list2, CameraConfig cameraConfig, int i2, Range<Integer> range, boolean z, boolean z2) {
            cameraInfoInternal.getClass();
            list.getClass();
            list2.getClass();
            cameraConfig.getClass();
            range.getClass();
            return new StreamSpecQueryResult(null, 0, 3, 0 == true ? 1 : 0);
        }
    };

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ StreamSpecQueryResult calculateSuggestedStreamSpecs$default(StreamSpecsCalculator streamSpecsCalculator, int i, CameraInfoInternal cameraInfoInternal, List list, List list2, CameraConfig cameraConfig, int i2, Range range, boolean z, boolean z2, int i3, Object obj) {
        CameraConfig cameraConfig2;
        Range range2;
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: calculateSuggestedStreamSpecs");
            return null;
        }
        List list3 = (i3 & 8) != 0 ? kx2.b : list2;
        if ((i3 & 16) != 0) {
            CameraConfig cameraConfigDefaultConfig = CameraConfigs.defaultConfig();
            cameraConfigDefaultConfig.getClass();
            cameraConfig2 = cameraConfigDefaultConfig;
        } else {
            cameraConfig2 = cameraConfig;
        }
        int i4 = (i3 & 32) != 0 ? 0 : i2;
        if ((i3 & 64) != 0) {
            Range<Integer> range3 = StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
            range3.getClass();
            range2 = range3;
        } else {
            range2 = range;
        }
        return streamSpecsCalculator.calculateSuggestedStreamSpecs(i, cameraInfoInternal, list, list3, cameraConfig2, i4, range2, (i3 & 128) != 0 ? false : z, (i3 & 256) != 0 ? false : z2);
    }

    StreamSpecQueryResult calculateSuggestedStreamSpecs(int i, CameraInfoInternal cameraInfoInternal, List<? extends UseCase> list, List<? extends UseCase> list2, CameraConfig cameraConfig, int i2, Range<Integer> range, boolean z, boolean z2);

    default void setCameraDeviceSurfaceManager(CameraDeviceSurfaceManager cameraDeviceSurfaceManager) {
        cameraDeviceSurfaceManager.getClass();
    }

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ StreamSpecQueryResult calculateSuggestedStreamSpecsCompat$default(Companion companion, StreamSpecsCalculator streamSpecsCalculator, int i, CameraInfoInternal cameraInfoInternal, List list, CameraConfig cameraConfig, boolean z, List list2, int i2, Range range, boolean z2, int i3, Object obj) {
            CameraConfig cameraConfig2;
            Range range2;
            if ((i3 & 8) != 0) {
                CameraConfig cameraConfigDefaultConfig = CameraConfigs.defaultConfig();
                cameraConfigDefaultConfig.getClass();
                cameraConfig2 = cameraConfigDefaultConfig;
            } else {
                cameraConfig2 = cameraConfig;
            }
            boolean z3 = (i3 & 16) != 0 ? false : z;
            List list3 = (i3 & 32) != 0 ? kx2.b : list2;
            int i4 = (i3 & 64) != 0 ? 0 : i2;
            if ((i3 & 128) != 0) {
                Range<Integer> range3 = StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
                range3.getClass();
                range2 = range3;
            } else {
                range2 = range;
            }
            return companion.calculateSuggestedStreamSpecsCompat(streamSpecsCalculator, i, cameraInfoInternal, list, cameraConfig2, z3, list3, i4, range2, (i3 & 256) != 0 ? false : z2);
        }

        public final StreamSpecQueryResult calculateSuggestedStreamSpecsCompat(StreamSpecsCalculator streamSpecsCalculator, int i, CameraInfoInternal cameraInfoInternal, List<? extends UseCase> list, CameraConfig cameraConfig, boolean z, List<? extends UseCase> list2, int i2, Range<Integer> range) {
            streamSpecsCalculator.getClass();
            cameraInfoInternal.getClass();
            list.getClass();
            cameraConfig.getClass();
            list2.getClass();
            range.getClass();
            return calculateSuggestedStreamSpecsCompat$default(this, streamSpecsCalculator, i, cameraInfoInternal, list, cameraConfig, z, list2, i2, range, false, 256, null);
        }

        public final StreamSpecQueryResult calculateSuggestedStreamSpecsCompat(StreamSpecsCalculator streamSpecsCalculator, int i, CameraInfoInternal cameraInfoInternal, List<? extends UseCase> list, CameraConfig cameraConfig) {
            streamSpecsCalculator.getClass();
            cameraInfoInternal.getClass();
            list.getClass();
            cameraConfig.getClass();
            return calculateSuggestedStreamSpecsCompat$default(this, streamSpecsCalculator, i, cameraInfoInternal, list, cameraConfig, false, null, 0, null, false, 496, null);
        }

        public final StreamSpecQueryResult calculateSuggestedStreamSpecsCompat(StreamSpecsCalculator streamSpecsCalculator, int i, CameraInfoInternal cameraInfoInternal, List<? extends UseCase> list, CameraConfig cameraConfig, boolean z) {
            streamSpecsCalculator.getClass();
            cameraInfoInternal.getClass();
            list.getClass();
            cameraConfig.getClass();
            return calculateSuggestedStreamSpecsCompat$default(this, streamSpecsCalculator, i, cameraInfoInternal, list, cameraConfig, z, null, 0, null, false, WindowSizeClass.HEIGHT_DP_MEDIUM_LOWER_BOUND, null);
        }

        public final StreamSpecQueryResult calculateSuggestedStreamSpecsCompat(StreamSpecsCalculator streamSpecsCalculator, int i, CameraInfoInternal cameraInfoInternal, List<? extends UseCase> list, CameraConfig cameraConfig, boolean z, List<? extends UseCase> list2) {
            streamSpecsCalculator.getClass();
            cameraInfoInternal.getClass();
            list.getClass();
            cameraConfig.getClass();
            list2.getClass();
            return calculateSuggestedStreamSpecsCompat$default(this, streamSpecsCalculator, i, cameraInfoInternal, list, cameraConfig, z, list2, 0, null, false, 448, null);
        }

        public final StreamSpecQueryResult calculateSuggestedStreamSpecsCompat(StreamSpecsCalculator streamSpecsCalculator, int i, CameraInfoInternal cameraInfoInternal, List<? extends UseCase> list, CameraConfig cameraConfig, boolean z, List<? extends UseCase> list2, int i2) {
            streamSpecsCalculator.getClass();
            cameraInfoInternal.getClass();
            list.getClass();
            cameraConfig.getClass();
            list2.getClass();
            return calculateSuggestedStreamSpecsCompat$default(this, streamSpecsCalculator, i, cameraInfoInternal, list, cameraConfig, z, list2, i2, null, false, RendererCapabilities.DECODER_SUPPORT_MASK, null);
        }

        public final StreamSpecQueryResult calculateSuggestedStreamSpecsCompat(StreamSpecsCalculator streamSpecsCalculator, int i, CameraInfoInternal cameraInfoInternal, List<? extends UseCase> list) {
            streamSpecsCalculator.getClass();
            cameraInfoInternal.getClass();
            list.getClass();
            return calculateSuggestedStreamSpecsCompat$default(this, streamSpecsCalculator, i, cameraInfoInternal, list, null, false, null, 0, null, false, TypedValues.PositionType.TYPE_PERCENT_HEIGHT, null);
        }

        public final StreamSpecQueryResult calculateSuggestedStreamSpecsCompat(StreamSpecsCalculator streamSpecsCalculator, int i, CameraInfoInternal cameraInfoInternal, List<? extends UseCase> list, CameraConfig cameraConfig, boolean z, List<? extends UseCase> list2, int i2, Range<Integer> range, boolean z2) {
            streamSpecsCalculator.getClass();
            cameraInfoInternal.getClass();
            list.getClass();
            cameraConfig.getClass();
            list2.getClass();
            range.getClass();
            return streamSpecsCalculator.calculateSuggestedStreamSpecs(i, cameraInfoInternal, list, list2, cameraConfig, i2, range, z, z2);
        }
    }
}
