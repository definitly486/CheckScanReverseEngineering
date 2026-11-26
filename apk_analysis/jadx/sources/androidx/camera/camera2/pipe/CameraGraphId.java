package androidx.camera.camera2.pipe;

import defpackage.jh2;
import defpackage.kt;
import defpackage.lt;

/* JADX INFO: loaded from: classes.dex */
public final class CameraGraphId {
    public static final Companion Companion = new Companion(null);
    private static final lt cameraGraphIds = kt.b(0);
    private final String name;

    private CameraGraphId(String str) {
        this.name = str;
    }

    public static final CameraGraphId nextId() {
        return Companion.nextId();
    }

    public String toString() {
        return this.name;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final CameraGraphId nextId() {
            return new CameraGraphId("CameraGraph-" + CameraGraphId.cameraGraphIds.b(), null);
        }

        private Companion() {
        }
    }

    public /* synthetic */ CameraGraphId(String str, jh2 jh2Var) {
        this(str);
    }
}
