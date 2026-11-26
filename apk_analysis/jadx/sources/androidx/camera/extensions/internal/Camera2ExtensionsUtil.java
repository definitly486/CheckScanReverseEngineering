package androidx.camera.extensions.internal;

import android.content.Context;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraExtensionCharacteristics;
import android.hardware.camera2.CameraManager;
import android.os.Build;
import android.util.Log;
import defpackage.fg;
import defpackage.mx2;
import defpackage.qz0;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2ExtensionsUtil {
    public static final Camera2ExtensionsUtil INSTANCE = new Camera2ExtensionsUtil();
    private static final String TAG = "Camera2ExtensionsUtil";

    private Camera2ExtensionsUtil() {
    }

    public static final Map<String, CameraExtensionCharacteristics> createCameraId2CameraExtensionCharacteristicsMap(Context context) {
        context.getClass();
        if (Build.VERSION.SDK_INT < 31) {
            return mx2.b;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        try {
            CameraManager cameraManager = (CameraManager) context.getSystemService(CameraManager.class);
            String[] cameraIdList = cameraManager.getCameraIdList();
            cameraIdList.getClass();
            for (String str : cameraIdList) {
                str.getClass();
                CameraExtensionCharacteristics cameraExtensionCharacteristics = cameraManager.getCameraExtensionCharacteristics(str);
                cameraExtensionCharacteristics.getClass();
                linkedHashMap.put(str, cameraExtensionCharacteristics);
            }
            return linkedHashMap;
        } catch (CameraAccessException e) {
            Log.e(TAG, "Failed to retrieve CameraExtensionCharacteristics info. ", e);
            return linkedHashMap;
        }
    }

    public final Integer convertCamera2ModeToCameraXMode(int i) {
        if (i == 0) {
            return 5;
        }
        if (i == 1) {
            return 4;
        }
        if (i == 2) {
            return 1;
        }
        if (i == 3) {
            return 2;
        }
        if (i == 4) {
            return 3;
        }
        Log.w(TAG, "Unknown Camera2 extension mode (" + i + ')');
        return null;
    }

    public final int convertCameraXModeToCamera2Mode(int i) {
        if (i == 1) {
            return 2;
        }
        if (i == 2) {
            return 3;
        }
        if (i == 3) {
            return 4;
        }
        if (i == 4) {
            return 1;
        }
        if (i == 5) {
            return 0;
        }
        fg.c(qz0.d("Unavailable CameraX extension mode (", i, ')'));
        return 0;
    }
}
