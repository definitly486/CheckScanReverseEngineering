package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.core.impl.DeferrableSurface;
import defpackage.aa4;
import defpackage.j59;
import defpackage.jh2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class InactiveSurfaceCloserImpl implements InactiveSurfaceCloser {
    private final Object lock = new Object();
    private final List<ConfiguredOutput> configuredOutputs = new ArrayList();

    private final void closeIfConfigured(List<ConfiguredOutput> list, DeferrableSurface deferrableSurface) {
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            if (((ConfiguredOutput) it.next()).contains(deferrableSurface)) {
                deferrableSurface.close();
            }
        }
    }

    @Override // androidx.camera.camera2.compat.workaround.InactiveSurfaceCloser
    public void closeAll() {
        synchronized (this.lock) {
            try {
                Iterator<T> it = this.configuredOutputs.iterator();
                while (it.hasNext()) {
                    ((ConfiguredOutput) it.next()).close();
                }
                this.configuredOutputs.clear();
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.camera2.compat.workaround.InactiveSurfaceCloser
    /* JADX INFO: renamed from: configure-hB7JTeY */
    public void mo33configurehB7JTeY(int i, DeferrableSurface deferrableSurface, CameraGraph cameraGraph) {
        deferrableSurface.getClass();
        cameraGraph.getClass();
        synchronized (this.lock) {
            this.configuredOutputs.add(new ConfiguredOutput(i, deferrableSurface, cameraGraph, null));
        }
    }

    @Override // androidx.camera.camera2.compat.workaround.InactiveSurfaceCloser
    public void onSurfaceInactive(DeferrableSurface deferrableSurface) {
        deferrableSurface.getClass();
        synchronized (this.lock) {
            closeIfConfigured(this.configuredOutputs, deferrableSurface);
            j59 j59Var = j59.a;
        }
    }

    public static final class ConfiguredOutput {
        private final DeferrableSurface deferrableSurface;
        private final CameraGraph graph;
        private final int streamId;

        private ConfiguredOutput(int i, DeferrableSurface deferrableSurface, CameraGraph cameraGraph) {
            deferrableSurface.getClass();
            cameraGraph.getClass();
            this.streamId = i;
            this.deferrableSurface = deferrableSurface;
            this.graph = cameraGraph;
        }

        /* JADX INFO: renamed from: copy-hB7JTeY$default, reason: not valid java name */
        public static /* synthetic */ ConfiguredOutput m34copyhB7JTeY$default(ConfiguredOutput configuredOutput, int i, DeferrableSurface deferrableSurface, CameraGraph cameraGraph, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = configuredOutput.streamId;
            }
            if ((i2 & 2) != 0) {
                deferrableSurface = configuredOutput.deferrableSurface;
            }
            if ((i2 & 4) != 0) {
                cameraGraph = configuredOutput.graph;
            }
            return configuredOutput.m36copyhB7JTeY(i, deferrableSurface, cameraGraph);
        }

        public final void close() {
            this.graph.mo349setSurfaceNYG5g8E(this.streamId, null);
            this.deferrableSurface.close();
        }

        /* JADX INFO: renamed from: component1-ptHMqGs, reason: not valid java name */
        public final int m35component1ptHMqGs() {
            return this.streamId;
        }

        public final DeferrableSurface component2() {
            return this.deferrableSurface;
        }

        public final CameraGraph component3() {
            return this.graph;
        }

        public final boolean contains(DeferrableSurface deferrableSurface) {
            deferrableSurface.getClass();
            return aa4.e(this.deferrableSurface, deferrableSurface);
        }

        /* JADX INFO: renamed from: copy-hB7JTeY, reason: not valid java name */
        public final ConfiguredOutput m36copyhB7JTeY(int i, DeferrableSurface deferrableSurface, CameraGraph cameraGraph) {
            deferrableSurface.getClass();
            cameraGraph.getClass();
            return new ConfiguredOutput(i, deferrableSurface, cameraGraph, null);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ConfiguredOutput)) {
                return false;
            }
            ConfiguredOutput configuredOutput = (ConfiguredOutput) obj;
            return StreamId.m726equalsimpl0(this.streamId, configuredOutput.streamId) && aa4.e(this.deferrableSurface, configuredOutput.deferrableSurface) && aa4.e(this.graph, configuredOutput.graph);
        }

        public final DeferrableSurface getDeferrableSurface() {
            return this.deferrableSurface;
        }

        public final CameraGraph getGraph() {
            return this.graph;
        }

        /* JADX INFO: renamed from: getStreamId-ptHMqGs, reason: not valid java name */
        public final int m37getStreamIdptHMqGs() {
            return this.streamId;
        }

        public int hashCode() {
            return this.graph.hashCode() + ((this.deferrableSurface.hashCode() + (StreamId.m727hashCodeimpl(this.streamId) * 31)) * 31);
        }

        public String toString() {
            return "ConfiguredOutput(streamId=" + ((Object) StreamId.m728toStringimpl(this.streamId)) + ", deferrableSurface=" + this.deferrableSurface + ", graph=" + this.graph + ')';
        }

        public /* synthetic */ ConfiguredOutput(int i, DeferrableSurface deferrableSurface, CameraGraph cameraGraph, jh2 jh2Var) {
            this(i, deferrableSurface, cameraGraph);
        }
    }
}
