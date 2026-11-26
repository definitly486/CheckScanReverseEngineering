package androidx.camera.camera2.compat.quirk;

import android.util.Size;
import androidx.camera.camera2.compat.StreamConfigurationMapCompat;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.Quirk;
import defpackage.az0;
import defpackage.cl4;
import defpackage.fh8;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.qn1;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class CamcorderProfileResolutionQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);
    private final StreamConfigurationMapCompat streamConfigurationMapCompat;
    private final cl4 supportedResolution$delegate;

    public CamcorderProfileResolutionQuirk(StreamConfigurationMapCompat streamConfigurationMapCompat) {
        streamConfigurationMapCompat.getClass();
        this.streamConfigurationMapCompat = streamConfigurationMapCompat;
        this.supportedResolution$delegate = new fh8(new az0(this, 0));
    }

    private final List<Size> getSupportedResolution() {
        return (List) this.supportedResolution$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List supportedResolution_delegate$lambda$0(CamcorderProfileResolutionQuirk camcorderProfileResolutionQuirk) {
        List listAsList;
        Size[] outputSizes = camcorderProfileResolutionQuirk.streamConfigurationMapCompat.getOutputSizes(34);
        if (outputSizes != null) {
            listAsList = Arrays.asList(outputSizes);
            listAsList.getClass();
        } else {
            listAsList = kx2.b;
        }
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "supportedResolutions = " + listAsList);
        }
        return listAsList;
    }

    public final List<Size> getSupportedResolutions() {
        return qn1.t0(getSupportedResolution());
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final boolean isEnabled(CameraMetadata cameraMetadata) {
            cameraMetadata.getClass();
            return CameraMetadata.Companion.isHardwareLevelLegacy(cameraMetadata);
        }

        private Companion() {
        }
    }
}
