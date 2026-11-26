package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCharacteristics;
import androidx.camera.camera2.config.CameraAppComponent;
import androidx.camera.camera2.config.CameraConfig;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.pipe.CameraDevices;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.DoNotDisturbException;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.InitializationException;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraFactory;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.internal.StreamSpecsCalculator;
import defpackage.aa4;
import defpackage.ah;
import defpackage.jh2;
import defpackage.kn1;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class CameraSelectionOptimizer {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private final String decideSkippedCameraIdByHeuristic(CameraDevices cameraDevices, Integer num) {
            if (num == null) {
                return null;
            }
            try {
                if (num.intValue() == 1) {
                    CameraMetadata cameraMetadataM237awaitCameraMetadataFpsL5FU$default = CameraDevices.m237awaitCameraMetadataFpsL5FU$default(cameraDevices, CameraId.m352constructorimpl(CommonUrlParts.Values.FALSE_INTEGER), null, 2, null);
                    if (cameraMetadataM237awaitCameraMetadataFpsL5FU$default == null) {
                        throw new IllegalStateException("Required value was null.");
                    }
                    CameraCharacteristics.Key key = CameraCharacteristics.LENS_FACING;
                    key.getClass();
                    Integer num2 = (Integer) cameraMetadataM237awaitCameraMetadataFpsL5FU$default.get(key);
                    if (num2 != null && num2.intValue() == 1) {
                        return "1";
                    }
                } else if (num.intValue() == 0) {
                    CameraMetadata cameraMetadataM237awaitCameraMetadataFpsL5FU$default2 = CameraDevices.m237awaitCameraMetadataFpsL5FU$default(cameraDevices, CameraId.m352constructorimpl("1"), null, 2, null);
                    if (cameraMetadataM237awaitCameraMetadataFpsL5FU$default2 == null) {
                        throw new IllegalStateException("Required value was null.");
                    }
                    CameraCharacteristics.Key key2 = CameraCharacteristics.LENS_FACING;
                    key2.getClass();
                    Integer num3 = (Integer) cameraMetadataM237awaitCameraMetadataFpsL5FU$default2.get(key2);
                    if (num3 != null && num3.intValue() == 0) {
                        return CommonUrlParts.Values.FALSE_INTEGER;
                    }
                }
            } catch (DoNotDisturbException unused) {
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isErrorEnabled(Log.TAG)) {
                    android.util.Log.e(Camera2Logger.TRUNCATED_TAG, "Received Do Not Disturb exception while deciding camera id to skip. Please turn off Do Not Disturb mode");
                }
            }
            return null;
        }

        public final List<String> getSelectedAvailableCameraIds(CameraAppComponent cameraAppComponent, CameraSelector cameraSelector, List<String> list, StreamSpecsCalculator streamSpecsCalculator) {
            String strDecideSkippedCameraIdByHeuristic;
            cameraAppComponent.getClass();
            list.getClass();
            streamSpecsCalculator.getClass();
            try {
                ArrayList arrayList = new ArrayList();
                CameraDevices cameraDevices = cameraAppComponent.getCameraDevices();
                if (cameraSelector == null) {
                    return list;
                }
                try {
                    strDecideSkippedCameraIdByHeuristic = decideSkippedCameraIdByHeuristic(cameraDevices, cameraSelector.getLensFacing());
                } catch (IllegalStateException e) {
                    Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled(Log.TAG)) {
                        android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Unable to get Metadata for cameraID 0 and/or 1", e);
                    }
                    strDecideSkippedCameraIdByHeuristic = null;
                }
                ArrayList arrayList2 = new ArrayList();
                for (String str : list) {
                    if (!aa4.e(str, strDecideSkippedCameraIdByHeuristic)) {
                        CameraInfoInternal cameraInfoInternal = cameraAppComponent.cameraBuilder().config(new CameraConfig(CameraId.m352constructorimpl(str), null)).streamSpecsCalculator(streamSpecsCalculator).build().getCameraInternal().getCameraInfoInternal();
                        cameraInfoInternal.getClass();
                        arrayList2.add(cameraInfoInternal);
                    }
                }
                List<CameraInfo> listFilter = cameraSelector.filter(arrayList2);
                listFilter.getClass();
                for (CameraInfo cameraInfo : listFilter) {
                    cameraInfo.getClass();
                    String cameraId = ((CameraInfoInternal) cameraInfo).getCameraId();
                    cameraId.getClass();
                    arrayList.add(cameraId);
                }
                return arrayList;
            } catch (IllegalStateException e2) {
                Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                if (Logger.isErrorEnabled(Log.TAG)) {
                    android.util.Log.e(Camera2Logger.TRUNCATED_TAG, "Error while accessing info about cameras.", e2);
                }
                throw new InitializationException(e2);
            }
        }

        private Companion() {
        }

        public final List<String> getSelectedAvailableCameraIds(CameraFactory cameraFactory, CameraSelector cameraSelector, StreamSpecsCalculator streamSpecsCalculator) {
            cameraFactory.getClass();
            streamSpecsCalculator.getClass();
            Object cameraManager = cameraFactory.getCameraManager();
            cameraManager.getClass();
            CameraAppComponent cameraAppComponent = (CameraAppComponent) cameraManager;
            List listM236awaitCameraIdsSeavPBo$default = CameraDevices.m236awaitCameraIdsSeavPBo$default(cameraAppComponent.getCameraDevices(), null, 1, null);
            if (listM236awaitCameraIdsSeavPBo$default != null) {
                List list = listM236awaitCameraIdsSeavPBo$default;
                ArrayList arrayList = new ArrayList(kn1.q(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(((CameraId) it.next()).m358unboximpl());
                }
                return getSelectedAvailableCameraIds(cameraAppComponent, cameraSelector, arrayList, streamSpecsCalculator);
            }
            ah.f("Required value was null.");
            return null;
        }
    }
}
