package androidx.camera.camera2.impl;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.util.Size;
import androidx.camera.camera2.compat.workaround.SupportedRepeatingSurfaceSizeKt;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.Logger;
import androidx.window.core.layout.WindowSizeClass;
import defpackage.pp1;
import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public final class MeteringRepeatingKt {
    private static final Size DEFAULT_PREVIEW_SIZE = new Size(640, WindowSizeClass.HEIGHT_DP_MEDIUM_LOWER_BOUND);

    private static final Size[] getOutputSizes(CameraProperties cameraProperties) {
        CameraMetadata metadata = cameraProperties.getMetadata();
        CameraCharacteristics.Key key = CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP;
        key.getClass();
        StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) metadata.get(key);
        if (streamConfigurationMap != null) {
            return streamConfigurationMap.getOutputSizes(34);
        }
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (!Logger.isErrorEnabled(Log.TAG)) {
            return null;
        }
        android.util.Log.e(Camera2Logger.TRUNCATED_TAG, "Can not retrieve SCALER_STREAM_CONFIGURATION_MAP.");
        return null;
    }

    public static final Size getProperPreviewSize(CameraProperties cameraProperties, DisplayInfoManager displayInfoManager) {
        cameraProperties.getClass();
        displayInfoManager.getClass();
        Size[] outputSizes = getOutputSizes(cameraProperties);
        if (outputSizes != null && outputSizes.length != 0) {
            Size[] supportedRepeatingSurfaceSizes = SupportedRepeatingSurfaceSizeKt.getSupportedRepeatingSurfaceSizes(outputSizes);
            if (supportedRepeatingSurfaceSizes.length == 0) {
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isWarnEnabled(Log.TAG)) {
                    android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "No supported output size list, fallback to current list");
                }
            } else {
                outputSizes = supportedRepeatingSurfaceSizes;
            }
            if (outputSizes.length > 1) {
                Comparator comparator = new Comparator() { // from class: androidx.camera.camera2.impl.MeteringRepeatingKt$getProperPreviewSize$$inlined$sortBy$1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        Size size = (Size) t;
                        Size size2 = (Size) t2;
                        return pp1.a(Long.valueOf(((long) size.getWidth()) * ((long) size.getHeight())), Long.valueOf(((long) size2.getWidth()) * ((long) size2.getHeight())));
                    }
                };
                if (outputSizes.length > 1) {
                    Arrays.sort(outputSizes, comparator);
                }
            }
            Size previewSize = displayInfoManager.getPreviewSize();
            long jMin = Math.min(307200L, ((long) previewSize.getWidth()) * ((long) previewSize.getHeight()));
            int length = outputSizes.length;
            Size size = null;
            int i = 0;
            while (i < length) {
                Size size2 = outputSizes[i];
                long width = ((long) size2.getWidth()) * ((long) size2.getHeight());
                if (width == jMin) {
                    return size2;
                }
                if (width > jMin) {
                    if (size == null) {
                        break;
                    }
                    return size;
                }
                i++;
                size = size2;
            }
            return size == null ? outputSizes[0] : size;
        }
        return DEFAULT_PREVIEW_SIZE;
    }
}
