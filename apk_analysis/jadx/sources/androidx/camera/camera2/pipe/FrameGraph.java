package androidx.camera.camera2.pipe;

import defpackage.c9;
import defpackage.i2;
import defpackage.l1;
import defpackage.ln;
import defpackage.mx2;
import defpackage.n1;
import defpackage.ox2;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public interface FrameGraph extends CameraGraphBase<Session>, CameraControls3A, UnsafeWrapper {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final int DEFAULT_FRAME_BUFFER_CAPACITY = 1;

        private Companion() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: captureWith---NP5ps$default, reason: not valid java name */
        public static /* synthetic */ FrameBuffer m452captureWithNP5ps$default(Companion companion, FrameGraph frameGraph, int i, Map map, int i2, int i3, Object obj) {
            if ((i3 & 2) != 0) {
                map = mx2.b;
            }
            if ((i3 & 4) != 0) {
                i2 = 1;
            }
            return companion.m453captureWithNP5ps(frameGraph, i, map, i2);
        }

        /* JADX INFO: renamed from: captureWith---NP5ps, reason: not valid java name */
        public final FrameBuffer m453captureWithNP5ps(FrameGraph frameGraph, int i, Map<Object, ? extends Object> map, int i2) {
            frameGraph.getClass();
            map.getClass();
            return frameGraph.captureWith(l1.f(StreamId.m723boximpl(i)), map, i2);
        }
    }

    public static final class ConcurrentConfig {
        private final CameraGraph.ConcurrentConfig cameraGraphConfigs;
        private final List<Config> frameGraphConfigs;

        public ConcurrentConfig(CameraGraph.ConcurrentConfig concurrentConfig, List<Config> list) {
            concurrentConfig.getClass();
            list.getClass();
            this.cameraGraphConfigs = concurrentConfig;
            this.frameGraphConfigs = list;
            int size = concurrentConfig.getGraphConfigs().size();
            int size2 = concurrentConfig.getGraphConfigs().size();
            if (size2 != size) {
                c9.f(ln.c(size, size2, "Invalid FrameGraph.ConcurrentConfig! Expected ", " configs, but received ", " FrameGraph.Config(s)."));
                throw null;
            }
            for (Config config : list) {
                if (!this.cameraGraphConfigs.getGraphConfigs().contains(config.getCameraGraphConfig())) {
                    StringBuilder sb = new StringBuilder("Mismatched ");
                    sb.append(config);
                    i2.e(sb, "! Config is not present within ", this.cameraGraphConfigs.getGraphConfigs());
                    throw null;
                }
            }
        }

        public final CameraGraph.ConcurrentConfig getCameraGraphConfigs() {
            return this.cameraGraphConfigs;
        }

        public final List<Config> getFrameGraphConfigs() {
            return this.frameGraphConfigs;
        }
    }

    public static final class Config {
        private final CameraGraph.Config cameraGraphConfig;

        public Config(CameraGraph.Config config) {
            config.getClass();
            this.cameraGraphConfig = config;
        }

        public final CameraGraph.Config getCameraGraphConfig() {
            return this.cameraGraphConfig;
        }
    }

    public interface Session extends CameraGraph.Session {
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ FrameBuffer captureWith$default(FrameGraph frameGraph, Set set, Map map, int i, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: captureWith");
            return null;
        }
        if ((i2 & 1) != 0) {
            set = ox2.b;
        }
        if ((i2 & 2) != 0) {
            map = mx2.b;
        }
        if ((i2 & 4) != 0) {
            i = 1;
        }
        return frameGraph.captureWith(set, map, i);
    }

    /* JADX INFO: renamed from: captureWith---NP5ps, reason: not valid java name */
    static FrameBuffer m451captureWithNP5ps(FrameGraph frameGraph, int i, Map<Object, ? extends Object> map, int i2) {
        return Companion.m453captureWithNP5ps(frameGraph, i, map, i2);
    }

    FrameBuffer captureWith(Set<StreamId> set, Map<Object, ? extends Object> map, int i);
}
