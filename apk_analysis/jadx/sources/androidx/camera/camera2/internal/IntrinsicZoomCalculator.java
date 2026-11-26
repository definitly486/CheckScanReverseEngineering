package androidx.camera.camera2.internal;

import androidx.camera.camera2.pipe.CameraMetadata;

/* JADX INFO: loaded from: classes.dex */
public interface IntrinsicZoomCalculator {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static abstract class Bindings {
        public abstract IntrinsicZoomCalculator bindIntrinsicZoomCalculatorImpl(IntrinsicZoomCalculatorImpl intrinsicZoomCalculatorImpl);
    }

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final IntrinsicZoomCalculator NO_OP_INTRINSIC_ZOOM_CALCULATOR = new IntrinsicZoomCalculator() { // from class: androidx.camera.camera2.internal.IntrinsicZoomCalculator$Companion$NO_OP_INTRINSIC_ZOOM_CALCULATOR$1
            @Override // androidx.camera.camera2.internal.IntrinsicZoomCalculator
            public Float calculateIntrinsicZoomRatio(CameraMetadata cameraMetadata) {
                cameraMetadata.getClass();
                return Float.valueOf(1.0f);
            }
        };

        private Companion() {
        }

        public final IntrinsicZoomCalculator getNO_OP_INTRINSIC_ZOOM_CALCULATOR() {
            return NO_OP_INTRINSIC_ZOOM_CALCULATOR;
        }
    }

    Float calculateIntrinsicZoomRatio(CameraMetadata cameraMetadata);
}
