package defpackage;

import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.impl.SurfaceCombination;
import androidx.camera.core.impl.SurfaceConfig;
import androidx.media3.exoplayer.drm.DrmSessionManager;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentSkipListMap;
import yads.dx1;
import yads.h32;
import yads.l66;
import yads.st3;
import yads.x92;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class xy implements mq5, DrmSessionManager.DrmSessionReference, st3, l66 {
    public final /* synthetic */ int b;

    public /* synthetic */ xy(int i) {
        this.b = i;
    }

    public static SurfaceCombination b(SurfaceCombination surfaceCombination, SurfaceConfig surfaceConfig, ArrayList arrayList, SurfaceCombination surfaceCombination2) {
        surfaceCombination.addSurfaceConfig(surfaceConfig);
        arrayList.add(surfaceCombination2);
        return new SurfaceCombination();
    }

    public static Object d(int i, List list) {
        return list.get(list.size() - i);
    }

    public static String e(StringBuilder sb, String str, float f) {
        sb.append(f);
        sb.append(str);
        return sb.toString();
    }

    public static /* synthetic */ void f(String str, Object obj, Throwable th) {
        throw new RuntimeException(str + obj, th);
    }

    public static boolean g(CameraMetadata cameraMetadata, CameraMetadata.Companion companion, CameraMetadata cameraMetadata2, int i) {
        cameraMetadata.getClass();
        return yr.C(companion.getAvailableCapabilities(cameraMetadata2), i);
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        Long l = (Long) obj;
        switch (this.b) {
            case 7:
                return h32.b(l.longValue());
            default:
                return x92.c(l.longValue());
        }
    }

    @Override // defpackage.mq5
    public Object c() {
        return new ConcurrentSkipListMap();
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionManager.DrmSessionReference
    public void release() {
        DrmSessionManager.DrmSessionReference.lambda$static$0();
    }

    @Override // yads.st3
    public boolean a(List list) {
        return dx1.b(list);
    }
}
