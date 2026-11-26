package androidx.camera.camera2.compat;

import android.graphics.Rect;
import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import android.util.Range;
import androidx.camera.camera2.compat.workaround.CameraMetadataSafeGetterKt;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.Logger;
import defpackage.j59;
import defpackage.jh2;
import defpackage.mk2;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface ZoomCompat {
    mk2<j59> applyAsync(float f, UseCaseCameraRequestControl useCaseCameraRequestControl);

    Rect getCropSensorRegion();

    float getMaxZoomRatio();

    float getMinZoomRatio();

    mk2<j59> resetAsync(UseCaseCameraRequestControl useCaseCameraRequestControl);

    public static abstract class Bindings {
        public static final Companion Companion = new Companion(null);

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final ZoomCompat provideZoomCompat(CameraProperties cameraProperties) {
                Range<Float> controlZoomRatioRangeSafely;
                cameraProperties.getClass();
                if ("robolectric".equals(Build.FINGERPRINT)) {
                    List<CameraCharacteristics.Key<Rect>> requiredCharacteristics = NoOpZoomCompat.Companion.getRequiredCharacteristics();
                    if (!(requiredCharacteristics instanceof Collection) || !requiredCharacteristics.isEmpty()) {
                        Iterator<T> it = requiredCharacteristics.iterator();
                        while (it.hasNext()) {
                            CameraCharacteristics.Key key = (CameraCharacteristics.Key) it.next();
                            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                            if (Logger.isWarnEnabled(Log.TAG)) {
                                android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "Failed to read " + key + " for zoom features.");
                            }
                            CameraMetadata metadata = cameraProperties.getMetadata();
                            key.getClass();
                            if (metadata.get(key) == null) {
                                return new NoOpZoomCompat(cameraProperties);
                            }
                        }
                    }
                } else if (Build.VERSION.SDK_INT >= 30 && (controlZoomRatioRangeSafely = CameraMetadataSafeGetterKt.getControlZoomRatioRangeSafely(cameraProperties.getMetadata())) != null) {
                    return new AndroidRZoomCompat(cameraProperties, controlZoomRatioRangeSafely);
                }
                return new CropRegionZoomCompat(cameraProperties);
            }

            private Companion() {
            }
        }
    }
}
