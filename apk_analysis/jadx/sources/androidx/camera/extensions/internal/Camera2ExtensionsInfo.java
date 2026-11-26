package androidx.camera.extensions.internal;

import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraExtensionCharacteristics;
import android.hardware.camera2.CameraManager;
import android.os.Build;
import android.util.Size;
import androidx.camera.core.Logger;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.mz0;
import defpackage.u4;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2ExtensionsInfo implements Camera2ExtensionsInfoProvider {
    private static final Companion Companion = new Companion(null);
    private static final String TAG = "Camera2ExtensionsInfo";
    private final Map<String, CameraExtensionCharacteristics> cachedCharacteristics;
    private final Map<String, List<Integer>> cachedSupportedExtensions;
    private final Map<String, List<Size>> cachedSupportedOutputSizes;
    private final CameraManager cameraManager;
    private final Object lock;

    public Camera2ExtensionsInfo(CameraManager cameraManager) {
        cameraManager.getClass();
        this.cameraManager = cameraManager;
        this.lock = new Object();
        this.cachedCharacteristics = new LinkedHashMap();
        this.cachedSupportedOutputSizes = new LinkedHashMap();
        this.cachedSupportedExtensions = new LinkedHashMap();
    }

    private final String getCachedOutputSizesKey(String str, int i, int i2) {
        return str + '-' + i + '-' + i2;
    }

    private final List<Integer> getSupportedExtensions(String str) {
        List<Integer> supportedExtensions;
        synchronized (this.lock) {
            supportedExtensions = this.cachedSupportedExtensions.get(str);
            if (supportedExtensions == null) {
                supportedExtensions = getExtensionCharacteristics(str).getSupportedExtensions();
                this.cachedSupportedExtensions.put(str, supportedExtensions);
                supportedExtensions.getClass();
            }
        }
        return supportedExtensions;
    }

    @Override // androidx.camera.extensions.internal.Camera2ExtensionsInfoProvider
    public CameraExtensionCharacteristics getExtensionCharacteristics(String str) {
        CameraExtensionCharacteristics cameraExtensionCharacteristicsB;
        str.getClass();
        synchronized (this.lock) {
            cameraExtensionCharacteristicsB = u4.b(this.cachedCharacteristics.get(str));
            if (cameraExtensionCharacteristicsB == null) {
                cameraExtensionCharacteristicsB = this.cameraManager.getCameraExtensionCharacteristics(str);
                this.cachedCharacteristics.put(str, cameraExtensionCharacteristicsB);
                cameraExtensionCharacteristicsB.getClass();
            }
        }
        return cameraExtensionCharacteristicsB;
    }

    @Override // androidx.camera.extensions.internal.Camera2ExtensionsInfoProvider
    public List<Size> getSupportedOutputSizes(String str, int i, int i2) {
        List<Size> list;
        str.getClass();
        if (Build.VERSION.SDK_INT < 31) {
            return kx2.b;
        }
        String cachedOutputSizesKey = getCachedOutputSizesKey(str, i, i2);
        synchronized (this.lock) {
            list = this.cachedSupportedOutputSizes.get(cachedOutputSizesKey);
        }
        if (list != null) {
            return list;
        }
        try {
            List<Size> extensionSupportedSizes = i2 == 34 ? getExtensionCharacteristics(str).getExtensionSupportedSizes(i, SurfaceTexture.class) : getExtensionCharacteristics(str).getExtensionSupportedSizes(i, i2);
            synchronized (this.lock) {
                this.cachedSupportedOutputSizes.put(cachedOutputSizesKey, extensionSupportedSizes);
                j59 j59Var = j59.a;
            }
            extensionSupportedSizes.getClass();
            return extensionSupportedSizes;
        } catch (IllegalArgumentException e) {
            StringBuilder sbA = mz0.a(i, "Failed to retrieve supported output sizes for camera ", str, ", mode ", ", format ");
            sbA.append(i2);
            Logger.e(TAG, sbA.toString(), e);
            return kx2.b;
        }
    }

    @Override // androidx.camera.extensions.internal.Camera2ExtensionsInfoProvider
    public boolean isExtensionAvailable(String str, int i) {
        str.getClass();
        if (Build.VERSION.SDK_INT < 31) {
            return false;
        }
        return getSupportedExtensions(str).contains(Integer.valueOf(i));
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }
}
