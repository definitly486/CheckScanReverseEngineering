package androidx.camera.camera2.interop;

import android.hardware.camera2.CameraCharacteristics;
import android.util.Pair;
import androidx.camera.camera2.adapter.CameraInfoAdapter;
import androidx.camera.camera2.compat.workaround.CameraMetadataSafeGetterKt;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.impl.AdapterCameraInfo;
import androidx.camera.core.impl.SessionProcessor;
import defpackage.aa4;
import defpackage.h8;
import defpackage.jh2;
import defpackage.x07;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2CameraInfo {
    public static final Companion Companion = new Companion(null);
    public final /* synthetic */ String cameraId;
    private final CameraProperties cameraProperties;
    private final List<Pair<CameraCharacteristics.Key<?>, Object>> extensionsSpecificChars;

    /* JADX WARN: Multi-variable type inference failed */
    private Camera2CameraInfo(CameraProperties cameraProperties, List<? extends Pair<CameraCharacteristics.Key<?>, Object>> list) {
        this.cameraProperties = cameraProperties;
        this.extensionsSpecificChars = list;
        this.cameraId = cameraProperties.mo57getCameraIdDz_R5H8();
    }

    public static final Camera2CameraInfo create(CameraProperties cameraProperties) {
        return Companion.create(cameraProperties);
    }

    public static final Camera2CameraInfo from(CameraInfo cameraInfo) {
        return Companion.from(cameraInfo);
    }

    public final <T> T getCameraCharacteristic(CameraCharacteristics.Key<T> key) {
        key.getClass();
        List<Pair<CameraCharacteristics.Key<?>, Object>> list = this.extensionsSpecificChars;
        if (list != null) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                if (aa4.e(pair.first, key)) {
                    return (T) pair.second;
                }
            }
        }
        return (T) CameraMetadataSafeGetterKt.getSafely(this.cameraProperties.getMetadata(), key);
    }

    public final String getCameraId() {
        return this.cameraId;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Camera2CameraInfo create(CameraProperties cameraProperties) {
            cameraProperties.getClass();
            return new Camera2CameraInfo(cameraProperties, null, 2, 0 == true ? 1 : 0);
        }

        public final Camera2CameraInfo from(CameraInfo cameraInfo) {
            cameraInfo.getClass();
            Camera2CameraInfo camera2CameraInfo = (Camera2CameraInfo) CameraInfoAdapter.Companion.unwrapAs(cameraInfo, x07.a(Camera2CameraInfo.class));
            jh2 jh2Var = null;
            if (camera2CameraInfo == null) {
                h8.f(cameraInfo, "Could not unwrap ", " as Camera2CameraInfo!");
                return null;
            }
            if (cameraInfo instanceof AdapterCameraInfo) {
                AdapterCameraInfo adapterCameraInfo = (AdapterCameraInfo) cameraInfo;
                if (adapterCameraInfo.getSessionProcessor() != null) {
                    CameraProperties cameraProperties = camera2CameraInfo.cameraProperties;
                    SessionProcessor sessionProcessor = adapterCameraInfo.getSessionProcessor();
                    return new Camera2CameraInfo(cameraProperties, sessionProcessor != null ? sessionProcessor.getAvailableCharacteristicsKeyValues() : null, jh2Var);
                }
            }
            return camera2CameraInfo;
        }

        private Companion() {
        }
    }

    public /* synthetic */ Camera2CameraInfo(CameraProperties cameraProperties, List list, jh2 jh2Var) {
        this(cameraProperties, list);
    }

    public /* synthetic */ Camera2CameraInfo(CameraProperties cameraProperties, List list, int i, jh2 jh2Var) {
        this(cameraProperties, (i & 2) != 0 ? null : list);
    }
}
