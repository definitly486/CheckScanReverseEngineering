package androidx.camera.core.impl;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.Logger;
import defpackage.jh2;
import defpackage.kn1;
import defpackage.qn1;
import defpackage.sg;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class CameraValidatorImpl implements CameraValidator {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "CameraValidator";
    private final CameraSelector availableCamerasSelector;
    private final Context context;
    private final boolean isVirtualDevice;
    private final ValidationCriteria validationCriteria;

    public static final class Api34Impl {
        public static final Api34Impl INSTANCE = new Api34Impl();

        private Api34Impl() {
        }

        public final int getDeviceId(Context context) {
            context.getClass();
            return context.getDeviceId();
        }
    }

    public static final class ValidationCriteria {
        private final boolean checkBack;
        private final boolean checkFront;

        public ValidationCriteria(boolean z, boolean z2) {
            this.checkBack = z;
            this.checkFront = z2;
        }

        public static /* synthetic */ ValidationCriteria copy$default(ValidationCriteria validationCriteria, boolean z, boolean z2, int i, Object obj) {
            if ((i & 1) != 0) {
                z = validationCriteria.checkBack;
            }
            if ((i & 2) != 0) {
                z2 = validationCriteria.checkFront;
            }
            return validationCriteria.copy(z, z2);
        }

        public final boolean component1() {
            return this.checkBack;
        }

        public final boolean component2() {
            return this.checkFront;
        }

        public final ValidationCriteria copy(boolean z, boolean z2) {
            return new ValidationCriteria(z, z2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ValidationCriteria)) {
                return false;
            }
            ValidationCriteria validationCriteria = (ValidationCriteria) obj;
            return this.checkBack == validationCriteria.checkBack && this.checkFront == validationCriteria.checkFront;
        }

        public final boolean getCheckBack() {
            return this.checkBack;
        }

        public final boolean getCheckFront() {
            return this.checkFront;
        }

        public int hashCode() {
            return Boolean.hashCode(this.checkFront) + (Boolean.hashCode(this.checkBack) * 31);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("ValidationCriteria(checkBack=");
            sb.append(this.checkBack);
            sb.append(", checkFront=");
            return sg.d(sb, this.checkFront, ')');
        }
    }

    public CameraValidatorImpl(Context context, CameraSelector cameraSelector) {
        context.getClass();
        this.context = context;
        this.availableCamerasSelector = cameraSelector;
        this.isVirtualDevice = isVirtualDevice(context);
        this.validationCriteria = getValidationCriteria();
    }

    private final ValidationCriteria getValidationCriteria() {
        PackageManager packageManager = this.context.getPackageManager();
        CameraSelector cameraSelector = this.availableCamerasSelector;
        Integer lensFacing = cameraSelector != null ? cameraSelector.getLensFacing() : null;
        boolean zHasSystemFeature = packageManager.hasSystemFeature("android.hardware.camera");
        boolean zHasSystemFeature2 = packageManager.hasSystemFeature("android.hardware.camera.front");
        boolean z = false;
        boolean z2 = zHasSystemFeature && (lensFacing == null || lensFacing.intValue() == 1);
        if (zHasSystemFeature2 && (lensFacing == null || lensFacing.intValue() == 0)) {
            z = true;
        }
        return new ValidationCriteria(z2, z);
    }

    private final boolean hasCamera(Set<? extends CameraInternal> set, CameraSelector cameraSelector) {
        try {
            cameraSelector.select(new LinkedHashSet<>(set));
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    private final boolean isVirtualDevice(Context context) {
        return Build.VERSION.SDK_INT >= 34 && Api34Impl.INSTANCE.getDeviceId(context) != 0;
    }

    @Override // androidx.camera.core.impl.CameraValidator
    public boolean isChangeInvalid(Set<? extends CameraInternal> set, Set<CameraIdentifier> set2) {
        set.getClass();
        set2.getClass();
        if (this.isVirtualDevice || !(this.validationCriteria.getCheckBack() || this.validationCriteria.getCheckFront())) {
            return false;
        }
        CameraSelector cameraSelector = CameraSelector.DEFAULT_BACK_CAMERA;
        cameraSelector.getClass();
        boolean zHasCamera = hasCamera(set, cameraSelector);
        CameraSelector cameraSelector2 = CameraSelector.DEFAULT_FRONT_CAMERA;
        cameraSelector2.getClass();
        boolean zHasCamera2 = hasCamera(set, cameraSelector2);
        Set<CameraIdentifier> set3 = set2;
        ArrayList arrayList = new ArrayList(kn1.q(set3, 10));
        Iterator<T> it = set3.iterator();
        while (it.hasNext()) {
            arrayList.add(((CameraIdentifier) it.next()).getInternalId());
        }
        Set setY0 = qn1.y0(arrayList);
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : set) {
            if (!setY0.contains(((CameraInternal) obj).getCameraInfoInternal().getCameraId())) {
                arrayList2.add(obj);
            }
        }
        Set<? extends CameraInternal> setY1 = qn1.y0(arrayList2);
        CameraSelector cameraSelector3 = CameraSelector.DEFAULT_BACK_CAMERA;
        cameraSelector3.getClass();
        boolean zHasCamera3 = hasCamera(setY1, cameraSelector3);
        CameraSelector cameraSelector4 = CameraSelector.DEFAULT_FRONT_CAMERA;
        cameraSelector4.getClass();
        return (this.validationCriteria.getCheckBack() && zHasCamera && !zHasCamera3) || (this.validationCriteria.getCheckFront() && zHasCamera2 && !hasCamera(setY1, cameraSelector4));
    }

    @Override // androidx.camera.core.impl.CameraValidator
    public void validateOnFirstInit(CameraRepository cameraRepository) throws CameraValidator.CameraIdListIncorrectException {
        cameraRepository.getClass();
        if (this.isVirtualDevice) {
            Logger.d(TAG, "Virtual device with " + cameraRepository.getCameras().size() + " cameras. Skipping validation.");
            return;
        }
        Logger.d(TAG, "Verifying camera lens facing on " + Build.DEVICE);
        if (this.validationCriteria.getCheckBack()) {
            try {
                CameraSelector.DEFAULT_BACK_CAMERA.select(cameraRepository.getCameras()).getClass();
            } catch (RuntimeException e) {
                e = e;
                Logger.w(TAG, "Camera LENS_FACING_BACK verification failed", e);
            }
        }
        e = null;
        if (this.validationCriteria.getCheckFront()) {
            try {
                CameraSelector.DEFAULT_FRONT_CAMERA.select(cameraRepository.getCameras()).getClass();
            } catch (RuntimeException e2) {
                Logger.w(TAG, "Camera LENS_FACING_FRONT verification failed", e2);
                if (e == null) {
                    e = e2;
                }
            }
        }
        if (e != null) {
            throw new CameraValidator.CameraIdListIncorrectException("Expected camera missing from device.", cameraRepository.getCameras().size(), e);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }
}
