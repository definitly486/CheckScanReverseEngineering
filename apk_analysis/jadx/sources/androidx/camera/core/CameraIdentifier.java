package androidx.camera.core;

import androidx.camera.core.impl.AdapterCameraInfo;
import androidx.camera.core.impl.Identifier;
import androidx.core.util.Preconditions;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.qn1;
import defpackage.u96;
import defpackage.xp;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class CameraIdentifier {
    private final List<String> cameraIds;
    private final Identifier compatibilityId;

    private CameraIdentifier(List<String> list, Identifier identifier) {
        this.cameraIds = list;
        this.compatibilityId = identifier;
        Preconditions.checkArgument(!list.isEmpty(), "Camera ID set cannot be empty.");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CameraIdentifier)) {
            return false;
        }
        CameraIdentifier cameraIdentifier = (CameraIdentifier) obj;
        return aa4.e(this.cameraIds, cameraIdentifier.cameraIds) && aa4.e(this.compatibilityId, cameraIdentifier.compatibilityId);
    }

    public final List<String> getCameraIds() {
        return this.cameraIds;
    }

    public final Identifier getCompatibilityId() {
        return this.compatibilityId;
    }

    public final String getInternalId() {
        Preconditions.checkState(this.cameraIds.size() == 1, "getInternalId() is only available for single-camera identifiers.");
        return (String) qn1.T(this.cameraIds);
    }

    public int hashCode() {
        int iHashCode = this.cameraIds.hashCode() * 31;
        Identifier identifier = this.compatibilityId;
        return iHashCode + (identifier != null ? identifier.hashCode() : 0);
    }

    public final boolean isOf(Camera camera) {
        camera.getClass();
        Preconditions.checkNotNull(camera);
        return equals(camera.getCameraInfo().getCameraIdentifier());
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder("CameraIdentifier{cameraIds=");
        sb.append(qn1.a0(this.cameraIds, StringUtils.COMMA, null, null, 0, null, 62));
        Identifier identifier = this.compatibilityId;
        if (identifier != null) {
            str = ", compatId=" + identifier;
        } else {
            str = "";
        }
        return xp.e(sb, str, '}');
    }

    public static final class Factory {
        public static final Factory INSTANCE = new Factory();

        private Factory() {
        }

        public static final CameraIdentifier create(String str, String str2, Identifier identifier) {
            str.getClass();
            ArrayList arrayListK = u96.k(str);
            if (str2 != null) {
                arrayListK.add(str2);
            }
            return create(arrayListK, identifier);
        }

        public static /* synthetic */ CameraIdentifier create$default(String str, String str2, Identifier identifier, int i, Object obj) {
            if ((i & 2) != 0) {
                str2 = null;
            }
            if ((i & 4) != 0) {
                identifier = null;
            }
            return create(str, str2, identifier);
        }

        public static final CameraIdentifier fromAdapterInfos(AdapterCameraInfo adapterCameraInfo, AdapterCameraInfo adapterCameraInfo2) {
            adapterCameraInfo.getClass();
            String cameraId = adapterCameraInfo2 != null ? adapterCameraInfo2.getCameraId() : null;
            Identifier compatibilityId = adapterCameraInfo.getCameraConfig().getCompatibilityId();
            compatibilityId.getClass();
            String cameraId2 = adapterCameraInfo.getCameraId();
            cameraId2.getClass();
            return create(cameraId2, cameraId, compatibilityId);
        }

        public static /* synthetic */ CameraIdentifier create$default(List list, Identifier identifier, int i, Object obj) {
            if ((i & 2) != 0) {
                identifier = null;
            }
            return create((List<String>) list, identifier);
        }

        public static final CameraIdentifier create(String str, String str2) {
            str.getClass();
            return create$default(str, str2, null, 4, null);
        }

        public static final CameraIdentifier create(List<String> list) {
            list.getClass();
            return create$default(list, null, 2, null);
        }

        public static final CameraIdentifier create(List<String> list, Identifier identifier) {
            list.getClass();
            return new CameraIdentifier(list, identifier, null);
        }

        public static final CameraIdentifier create(String str) {
            str.getClass();
            return create$default(str, null, null, 6, null);
        }
    }

    public final boolean isOf(CameraInfo cameraInfo) {
        cameraInfo.getClass();
        Preconditions.checkNotNull(cameraInfo);
        return equals(cameraInfo.getCameraIdentifier());
    }

    public /* synthetic */ CameraIdentifier(List list, Identifier identifier, jh2 jh2Var) {
        this(list, identifier);
    }
}
