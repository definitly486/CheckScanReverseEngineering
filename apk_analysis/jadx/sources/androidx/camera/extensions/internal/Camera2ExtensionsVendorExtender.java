package androidx.camera.extensions.internal;

import android.content.Context;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraExtensionCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.os.Build;
import android.util.Log;
import android.util.Pair;
import android.util.Range;
import android.util.Size;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.SessionProcessor;
import androidx.camera.core.impl.utils.CompareSizesByArea;
import androidx.camera.core.internal.utils.SizeUtil;
import androidx.camera.extensions.internal.compat.workaround.ExtensionCharacteristicsAccessGuard;
import androidx.camera.extensions.internal.sessionprocessor.Camera2ExtensionsSessionProcessor;
import androidx.core.util.Preconditions;
import defpackage.aa4;
import defpackage.kx2;
import defpackage.mx2;
import defpackage.qn1;
import defpackage.qz0;
import defpackage.u4;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2ExtensionsVendorExtender implements VendorExtender {
    private final int camera2ExtensionMode;
    private final Camera2ExtensionsInfoProvider camera2ExtensionsInfo;
    private CameraExtensionCharacteristics cameraExtensionCharacteristics;
    private String cameraId;
    private final ExtensionCharacteristicsAccessGuard extensionCharacteristicsAccessGuard;
    private boolean isCurrentExtensionModeSupported;
    private boolean isExtensionStrengthSupported;
    private final Object lock;
    private final int mode;

    public Camera2ExtensionsVendorExtender(int i, Camera2ExtensionsInfoProvider camera2ExtensionsInfoProvider) {
        camera2ExtensionsInfoProvider.getClass();
        this.mode = i;
        this.camera2ExtensionsInfo = camera2ExtensionsInfoProvider;
        this.extensionCharacteristicsAccessGuard = new ExtensionCharacteristicsAccessGuard();
        this.camera2ExtensionMode = Camera2ExtensionsUtil.INSTANCE.convertCameraXModeToCamera2Mode(i);
        this.lock = new Object();
    }

    private final void checkInitialized() {
        Preconditions.checkState(this.cameraId != null, "VendorExtender#init() must be called first");
    }

    private final List<CaptureRequest.Key<?>> getAvailableCaptureRequestKeys() {
        ArrayList arrayList = new ArrayList();
        boolean zIsCamera2ExtensionAvailable = isCamera2ExtensionAvailable();
        kx2 kx2Var = kx2.b;
        if (!zIsCamera2ExtensionAvailable) {
            return kx2Var;
        }
        if (Build.VERSION.SDK_INT >= 33) {
            try {
                CameraExtensionCharacteristics cameraExtensionCharacteristics = this.cameraExtensionCharacteristics;
                if (cameraExtensionCharacteristics == null) {
                    aa4.j("cameraExtensionCharacteristics");
                    throw null;
                }
                Set<CaptureRequest.Key> availableCaptureRequestKeys = cameraExtensionCharacteristics.getAvailableCaptureRequestKeys(this.camera2ExtensionMode);
                availableCaptureRequestKeys.getClass();
                for (CaptureRequest.Key key : availableCaptureRequestKeys) {
                    key.getClass();
                    arrayList.add(key);
                }
            } catch (IllegalArgumentException e) {
                Log.e("Camera2ExtExtender", "Failed to retrieve available capture request keys", e);
                return kx2Var;
            }
        }
        return arrayList;
    }

    private final Size getCamera2ExtensionsMaximumSupportedSize() {
        Camera2ExtensionsInfoProvider camera2ExtensionsInfoProvider = this.camera2ExtensionsInfo;
        String str = this.cameraId;
        if (str == null) {
            aa4.j("cameraId");
            throw null;
        }
        List<Size> supportedOutputSizes = camera2ExtensionsInfoProvider.getSupportedOutputSizes(str, this.camera2ExtensionMode, 256);
        if (supportedOutputSizes.isEmpty()) {
            Size size = SizeUtil.RESOLUTION_ZERO;
            size.getClass();
            return size;
        }
        CompareSizesByArea compareSizesByArea = new CompareSizesByArea(true);
        Iterator<T> it = supportedOutputSizes.iterator();
        if (!it.hasNext()) {
            qz0.e();
            return null;
        }
        Object next = it.next();
        while (it.hasNext()) {
            Object next2 = it.next();
            if (compareSizesByArea.compare(next, next2) < 0) {
                next = next2;
            }
        }
        return (Size) next;
    }

    private final List<Pair<Integer, Size[]>> getExtensionSupportedSizes(int[] iArr) {
        ArrayList arrayList = new ArrayList();
        for (int i : iArr) {
            try {
                Camera2ExtensionsInfoProvider camera2ExtensionsInfoProvider = this.camera2ExtensionsInfo;
                String str = this.cameraId;
                if (str == null) {
                    aa4.j("cameraId");
                    throw null;
                }
                Size[] sizeArr = (Size[]) camera2ExtensionsInfoProvider.getSupportedOutputSizes(str, this.camera2ExtensionMode, i).toArray(new Size[0]);
                if (!(sizeArr.length == 0)) {
                    Pair pairCreate = Pair.create(Integer.valueOf(i), sizeArr);
                    pairCreate.getClass();
                    arrayList.add(pairCreate);
                }
            } catch (IllegalArgumentException e) {
                Log.e("Camera2ExtExtender", "Failed to retrieve supported output sizes of format " + i, e);
            }
        }
        return arrayList;
    }

    private final boolean isCamera2ExtensionAvailable() {
        Camera2ExtensionsInfoProvider camera2ExtensionsInfoProvider = this.camera2ExtensionsInfo;
        String str = this.cameraId;
        if (str != null) {
            return camera2ExtensionsInfoProvider.isExtensionAvailable(str, this.camera2ExtensionMode);
        }
        aa4.j("cameraId");
        throw null;
    }

    @Override // androidx.camera.extensions.internal.VendorExtender
    public SessionProcessor createSessionProcessor(Context context) {
        context.getClass();
        checkInitialized();
        return new Camera2ExtensionsSessionProcessor(getAvailableCaptureRequestKeys(), this.mode, this);
    }

    @Override // androidx.camera.extensions.internal.VendorExtender
    public List<Pair<CameraCharacteristics.Key<?>, Object>> getAvailableCharacteristicsKeyValues() {
        checkInitialized();
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 35) {
            CameraExtensionCharacteristics cameraExtensionCharacteristics = this.cameraExtensionCharacteristics;
            if (cameraExtensionCharacteristics == null) {
                aa4.j("cameraExtensionCharacteristics");
                throw null;
            }
            Set<CameraCharacteristics.Key> keys = cameraExtensionCharacteristics.getKeys(this.camera2ExtensionMode);
            keys.getClass();
            for (CameraCharacteristics.Key key : keys) {
                CameraExtensionCharacteristics cameraExtensionCharacteristics2 = this.cameraExtensionCharacteristics;
                if (cameraExtensionCharacteristics2 == null) {
                    aa4.j("cameraExtensionCharacteristics");
                    throw null;
                }
                Object obj = cameraExtensionCharacteristics2.get(this.camera2ExtensionMode, key);
                if (obj != null) {
                    Pair pairCreate = Pair.create(key, obj);
                    pairCreate.getClass();
                    arrayList.add(pairCreate);
                }
            }
        }
        return arrayList;
    }

    @Override // androidx.camera.extensions.internal.VendorExtender
    public Range<Long> getEstimatedCaptureLatencyRange(Size size) {
        checkInitialized();
        if (!isCamera2ExtensionAvailable()) {
            return null;
        }
        CameraExtensionCharacteristics cameraExtensionCharacteristics = this.cameraExtensionCharacteristics;
        if (cameraExtensionCharacteristics == null) {
            aa4.j("cameraExtensionCharacteristics");
            throw null;
        }
        int i = this.camera2ExtensionMode;
        if (size == null) {
            size = getCamera2ExtensionsMaximumSupportedSize();
        }
        return cameraExtensionCharacteristics.getEstimatedCaptureLatencyRangeMillis(i, size, 256);
    }

    @Override // androidx.camera.extensions.internal.VendorExtender
    public List<Pair<Integer, Size[]>> getSupportedCaptureOutputResolutions() {
        checkInitialized();
        return isCamera2ExtensionAvailable() ? getExtensionSupportedSizes(new int[]{256, 35, 4101}) : kx2.b;
    }

    @Override // androidx.camera.extensions.internal.VendorExtender
    public List<CaptureResult.Key<?>> getSupportedCaptureResultKeys() {
        checkInitialized();
        if (!isCamera2ExtensionAvailable() || Build.VERSION.SDK_INT < 33) {
            return kx2.b;
        }
        CameraExtensionCharacteristics cameraExtensionCharacteristics = this.cameraExtensionCharacteristics;
        if (cameraExtensionCharacteristics == null) {
            aa4.j("cameraExtensionCharacteristics");
            throw null;
        }
        Set<CaptureResult.Key> availableCaptureResultKeys = cameraExtensionCharacteristics.getAvailableCaptureResultKeys(this.camera2ExtensionMode);
        availableCaptureResultKeys.getClass();
        return qn1.t0(availableCaptureResultKeys);
    }

    @Override // androidx.camera.extensions.internal.VendorExtender
    public Map<Integer, List<Size>> getSupportedPostviewResolutions(Size size) {
        size.getClass();
        checkInitialized();
        if (!isCamera2ExtensionAvailable()) {
            return mx2.b;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (Build.VERSION.SDK_INT >= 34) {
            int[] iArr = {256, 35, 4101};
            for (int i = 0; i < 3; i++) {
                int i2 = iArr[i];
                try {
                    CameraExtensionCharacteristics cameraExtensionCharacteristics = this.cameraExtensionCharacteristics;
                    if (cameraExtensionCharacteristics == null) {
                        aa4.j("cameraExtensionCharacteristics");
                        throw null;
                    }
                    List<Size> postviewSupportedSizes = cameraExtensionCharacteristics.getPostviewSupportedSizes(this.camera2ExtensionMode, size, i2);
                    postviewSupportedSizes.getClass();
                    if (!postviewSupportedSizes.isEmpty()) {
                        linkedHashMap.put(Integer.valueOf(i2), postviewSupportedSizes);
                    }
                } catch (IllegalArgumentException e) {
                    Log.e("Camera2ExtExtender", "Failed to retrieve postview supported output sizes of format " + i2, e);
                }
            }
        }
        return linkedHashMap;
    }

    @Override // androidx.camera.extensions.internal.VendorExtender
    public List<Pair<Integer, Size[]>> getSupportedPreviewOutputResolutions() {
        checkInitialized();
        return isCamera2ExtensionAvailable() ? getExtensionSupportedSizes(new int[]{34, 35}) : kx2.b;
    }

    @Override // androidx.camera.extensions.internal.VendorExtender
    public Size[] getSupportedYuvAnalysisResolutions() {
        checkInitialized();
        Size[] supportedYuvAnalysisResolutions = super.getSupportedYuvAnalysisResolutions();
        supportedYuvAnalysisResolutions.getClass();
        return supportedYuvAnalysisResolutions;
    }

    @Override // androidx.camera.extensions.internal.VendorExtender
    public void init(CameraInfo cameraInfo) {
        boolean zContains;
        cameraInfo.getClass();
        String cameraId = ((CameraInfoInternal) cameraInfo).getCameraId();
        cameraId.getClass();
        this.cameraId = cameraId;
        Object objCheckNotNull = Preconditions.checkNotNull(this.camera2ExtensionsInfo.getExtensionCharacteristics(cameraId));
        objCheckNotNull.getClass();
        this.cameraExtensionCharacteristics = u4.b(objCheckNotNull);
        boolean zContains2 = false;
        if (!isCamera2ExtensionAvailable() || Build.VERSION.SDK_INT < 34) {
            zContains = false;
        } else {
            CameraExtensionCharacteristics cameraExtensionCharacteristics = this.cameraExtensionCharacteristics;
            if (cameraExtensionCharacteristics == null) {
                aa4.j("cameraExtensionCharacteristics");
                throw null;
            }
            zContains = cameraExtensionCharacteristics.getAvailableCaptureRequestKeys(this.camera2ExtensionMode).contains(CaptureRequest.EXTENSION_STRENGTH);
        }
        this.isExtensionStrengthSupported = zContains;
        if (isCamera2ExtensionAvailable() && Build.VERSION.SDK_INT >= 34) {
            CameraExtensionCharacteristics cameraExtensionCharacteristics2 = this.cameraExtensionCharacteristics;
            if (cameraExtensionCharacteristics2 == null) {
                aa4.j("cameraExtensionCharacteristics");
                throw null;
            }
            zContains2 = cameraExtensionCharacteristics2.getAvailableCaptureResultKeys(this.camera2ExtensionMode).contains(CaptureResult.EXTENSION_CURRENT_TYPE);
        }
        this.isCurrentExtensionModeSupported = zContains2;
    }

    @Override // androidx.camera.extensions.internal.VendorExtender
    public boolean isCaptureProcessProgressAvailable() {
        checkInitialized();
        if (!isCamera2ExtensionAvailable() || Build.VERSION.SDK_INT < 34 || !this.extensionCharacteristicsAccessGuard.allowCaptureProcessProgressAvailabilityCheck()) {
            return false;
        }
        try {
            CameraExtensionCharacteristics cameraExtensionCharacteristics = this.cameraExtensionCharacteristics;
            if (cameraExtensionCharacteristics != null) {
                return cameraExtensionCharacteristics.isCaptureProcessProgressAvailable(this.camera2ExtensionMode);
            }
            aa4.j("cameraExtensionCharacteristics");
            throw null;
        } catch (IllegalArgumentException e) {
            Log.e("Camera2ExtExtender", "Failed to retrieve capture process progress availability", e);
            return false;
        }
    }

    @Override // androidx.camera.extensions.internal.VendorExtender
    public boolean isCurrentExtensionModeAvailable() {
        checkInitialized();
        return this.isCurrentExtensionModeSupported;
    }

    @Override // androidx.camera.extensions.internal.VendorExtender
    public boolean isExtensionAvailable(String str, Map<String, CameraCharacteristics> map) {
        str.getClass();
        map.getClass();
        return this.camera2ExtensionsInfo.isExtensionAvailable(str, this.camera2ExtensionMode);
    }

    @Override // androidx.camera.extensions.internal.VendorExtender
    public boolean isExtensionStrengthAvailable() {
        checkInitialized();
        return this.isExtensionStrengthSupported;
    }

    @Override // androidx.camera.extensions.internal.VendorExtender
    public boolean isPostviewAvailable() {
        checkInitialized();
        if (!isCamera2ExtensionAvailable() || Build.VERSION.SDK_INT < 34 || !this.extensionCharacteristicsAccessGuard.allowPostviewAvailabilityCheck()) {
            return false;
        }
        try {
            CameraExtensionCharacteristics cameraExtensionCharacteristics = this.cameraExtensionCharacteristics;
            if (cameraExtensionCharacteristics != null) {
                return cameraExtensionCharacteristics.isPostviewAvailable(this.camera2ExtensionMode);
            }
            aa4.j("cameraExtensionCharacteristics");
            throw null;
        } catch (NoSuchMethodError e) {
            Log.e("Camera2ExtExtender", "Failed to retrieve postview availability", e);
            return false;
        }
    }
}
