package androidx.camera.core.processing;

import androidx.camera.core.processing.util.OutConfig;
import defpackage.bg;
import defpackage.o2;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_SurfaceProcessorNode_In extends SurfaceProcessorNode.In {
    private final List<OutConfig> outConfigs;
    private final SurfaceEdge surfaceEdge;

    public AutoValue_SurfaceProcessorNode_In(SurfaceEdge surfaceEdge, List<OutConfig> list) {
        if (surfaceEdge == null) {
            o2.d("Null surfaceEdge");
            throw null;
        }
        this.surfaceEdge = surfaceEdge;
        if (list != null) {
            this.outConfigs = list;
        } else {
            o2.d("Null outConfigs");
            throw null;
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SurfaceProcessorNode.In) {
            SurfaceProcessorNode.In in = (SurfaceProcessorNode.In) obj;
            if (this.surfaceEdge.equals(in.getSurfaceEdge()) && this.outConfigs.equals(in.getOutConfigs())) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.camera.core.processing.SurfaceProcessorNode.In
    public List<OutConfig> getOutConfigs() {
        return this.outConfigs;
    }

    @Override // androidx.camera.core.processing.SurfaceProcessorNode.In
    public SurfaceEdge getSurfaceEdge() {
        return this.surfaceEdge;
    }

    public int hashCode() {
        return this.outConfigs.hashCode() ^ ((this.surfaceEdge.hashCode() ^ 1000003) * 1000003);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("In{surfaceEdge=");
        sb.append(this.surfaceEdge);
        sb.append(", outConfigs=");
        return bg.e("}", this.outConfigs, sb);
    }
}
