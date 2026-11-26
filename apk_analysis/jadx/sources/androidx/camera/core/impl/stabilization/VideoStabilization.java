package androidx.camera.core.impl.stabilization;

import defpackage.g03;
import defpackage.h03;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public enum VideoStabilization {
    UNSPECIFIED,
    OFF,
    ON,
    PREVIEW;

    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());
    public static final Companion Companion = new Companion(null);

    public static g03<VideoStabilization> getEntries() {
        return $ENTRIES;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public static /* synthetic */ VideoStabilization from$camera_core$default(Companion companion, int i, int i2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i = 0;
            }
            if ((i3 & 2) != 0) {
                i2 = 0;
            }
            return companion.from$camera_core(i, i2);
        }

        public final VideoStabilization from$camera_core(int i, int i2) {
            if (i == 1 || i2 == 1) {
                return VideoStabilization.OFF;
            }
            if (i == 2) {
                return VideoStabilization.PREVIEW;
            }
            return i2 == 2 ? VideoStabilization.ON : VideoStabilization.UNSPECIFIED;
        }

        private Companion() {
        }
    }
}
