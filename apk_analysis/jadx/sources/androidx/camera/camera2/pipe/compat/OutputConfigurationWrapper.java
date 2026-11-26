package androidx.camera.camera2.pipe.compat;

import android.view.Surface;
import androidx.camera.camera2.pipe.UnsafeWrapper;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface OutputConfigurationWrapper extends UnsafeWrapper {
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final int SURFACE_GROUP_ID_NONE = -1;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final int SURFACE_GROUP_ID_NONE = -1;

        private Companion() {
        }
    }

    void addSurface(Surface surface);

    int getMaxSharedSurfaceCount();

    /* JADX INFO: renamed from: getPhysicalCameraId-1LO98Z0 */
    String mo746getPhysicalCameraId1LO98Z0();

    Surface getSurface();

    int getSurfaceGroupId();

    boolean getSurfaceSharing();

    List<Surface> getSurfaces();

    void removeSurface(Surface surface);
}
