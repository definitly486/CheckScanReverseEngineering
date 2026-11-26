package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.FrameGraph;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.framegraph.FrameGraphImpl;
import defpackage.jd8;
import defpackage.jh2;
import defpackage.mb4;
import defpackage.o22;
import defpackage.w22;
import defpackage.y22;
import defpackage.z22;

/* JADX INFO: loaded from: classes.dex */
public abstract class FrameGraphModule {
    public static final Companion Companion = new Companion(null);

    public abstract FrameGraph bindFrameGraph(FrameGraphImpl frameGraphImpl);

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        @FrameGraphScope
        @FrameGraphCoroutineScope
        public final y22 provideFrameGraphCoroutineScope(Threads threads, @CameraPipeJob mb4 mb4Var) {
            threads.getClass();
            mb4Var.getClass();
            return z22.a(o22.a.C0306a.d(new jd8(mb4Var), threads.getLightweightDispatcher().plus(new w22("CXCP-FrameGraph"))));
        }

        private Companion() {
        }
    }
}
