package androidx.camera.lifecycle;

import androidx.camera.core.impl.utils.ContextUtil;
import defpackage.j59;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class LifecycleCameraRepositories {
    public static final LifecycleCameraRepositories INSTANCE = new LifecycleCameraRepositories();
    private static final Map<Integer, LifecycleCameraRepository> repositoryMap = new LinkedHashMap();

    private LifecycleCameraRepositories() {
    }

    public static final LifecycleCameraRepository getInstance$camera_lifecycle(int i) {
        LifecycleCameraRepository lifecycleCameraRepository;
        Map<Integer, LifecycleCameraRepository> map = repositoryMap;
        synchronized (map) {
            try {
                Integer numValueOf = Integer.valueOf(i);
                LifecycleCameraRepository lifecycleCameraRepository2 = map.get(numValueOf);
                if (lifecycleCameraRepository2 == null) {
                    lifecycleCameraRepository2 = new LifecycleCameraRepository(i);
                    map.put(numValueOf, lifecycleCameraRepository2);
                }
                lifecycleCameraRepository = lifecycleCameraRepository2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return lifecycleCameraRepository;
    }

    public static /* synthetic */ LifecycleCameraRepository getInstance$camera_lifecycle$default(int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = ContextUtil.getDefaultDeviceId();
        }
        return getInstance$camera_lifecycle(i);
    }

    public final void clear$camera_lifecycle() {
        Map<Integer, LifecycleCameraRepository> map = repositoryMap;
        synchronized (map) {
            map.clear();
            j59 j59Var = j59.a;
        }
    }
}
