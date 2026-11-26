package androidx.camera.camera2.pipe;

import defpackage.kt;
import defpackage.lt;

/* JADX INFO: loaded from: classes.dex */
public final class CameraPipeKt {
    private static final lt cameraPipeIds = kt.b(0);

    public static final CameraPipe CameraPipe(CameraPipe.Config config) {
        config.getClass();
        return CameraPipe.Companion.create(config);
    }

    public static final lt getCameraPipeIds() {
        return cameraPipeIds;
    }
}
