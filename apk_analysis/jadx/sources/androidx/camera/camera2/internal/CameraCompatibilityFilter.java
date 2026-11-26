package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.pipe.CameraDevices;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.InitializationException;
import androidx.camera.core.Logger;
import defpackage.aa4;
import defpackage.yr;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class CameraCompatibilityFilter {
    public static final CameraCompatibilityFilter INSTANCE = new CameraCompatibilityFilter();

    private CameraCompatibilityFilter() {
    }

    public static final List<String> getBackwardCompatibleCameraIds(CameraDevices cameraDevices, List<String> list) {
        cameraDevices.getClass();
        list.getClass();
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (aa4.e(str, CommonUrlParts.Values.FALSE_INTEGER) || aa4.e(str, "1")) {
                arrayList.add(str);
            } else if (isBackwardCompatible(str, cameraDevices)) {
                arrayList.add(str);
            } else {
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Camera " + str + " is filtered out because its capabilities do not contain REQUEST_AVAILABLE_CAPABILITIES_BACKWARD_COMPATIBLE.");
                }
            }
        }
        return arrayList;
    }

    public static final boolean isBackwardCompatible(String str, CameraDevices cameraDevices) throws InitializationException {
        str.getClass();
        cameraDevices.getClass();
        if (aa4.e(Build.FINGERPRINT, "robolectric")) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (!Logger.isDebugEnabled(Log.TAG)) {
                return true;
            }
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "isBackwardCompatible method returns true because robolectric build detected.");
            return true;
        }
        try {
            CameraMetadata cameraMetadataM237awaitCameraMetadataFpsL5FU$default = CameraDevices.m237awaitCameraMetadataFpsL5FU$default(cameraDevices, CameraId.m352constructorimpl(str), null, 2, null);
            if (cameraMetadataM237awaitCameraMetadataFpsL5FU$default == null) {
                throw new IllegalStateException("Required value was null.");
            }
            CameraCharacteristics.Key key = CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES;
            key.getClass();
            int[] iArr = (int[]) cameraMetadataM237awaitCameraMetadataFpsL5FU$default.get(key);
            if (iArr != null) {
                return yr.C(iArr, 0);
            }
            return false;
        } catch (CameraAccessException e) {
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isErrorEnabled(Log.TAG)) {
                android.util.Log.e(Camera2Logger.TRUNCATED_TAG, "Error while accessing metadata for cameraID: ".concat(str), e);
            }
            throw new InitializationException(e);
        }
    }
}
