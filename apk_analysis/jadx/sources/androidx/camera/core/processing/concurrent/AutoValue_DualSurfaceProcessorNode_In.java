package androidx.camera.core.processing.concurrent;

import androidx.camera.core.processing.SurfaceEdge;
import defpackage.bg;
import defpackage.o2;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_DualSurfaceProcessorNode_In extends DualSurfaceProcessorNode.In {
    private final List<DualOutConfig> outConfigs;
    private final SurfaceEdge primarySurfaceEdge;
    private final SurfaceEdge secondarySurfaceEdge;

    public AutoValue_DualSurfaceProcessorNode_In(SurfaceEdge surfaceEdge, SurfaceEdge surfaceEdge2, List<DualOutConfig> list) {
        if (surfaceEdge == null) {
            o2.d("Null primarySurfaceEdge");
            throw null;
        }
        this.primarySurfaceEdge = surfaceEdge;
        if (surfaceEdge2 == null) {
            o2.d("Null secondarySurfaceEdge");
            throw null;
        }
        this.secondarySurfaceEdge = surfaceEdge2;
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
        if (obj instanceof DualSurfaceProcessorNode.In) {
            DualSurfaceProcessorNode.In in = (DualSurfaceProcessorNode.In) obj;
            if (this.primarySurfaceEdge.equals(in.getPrimarySurfaceEdge()) && this.secondarySurfaceEdge.equals(in.getSecondarySurfaceEdge()) && this.outConfigs.equals(in.getOutConfigs())) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.camera.core.processing.concurrent.DualSurfaceProcessorNode.In
    public List<DualOutConfig> getOutConfigs() {
        return this.outConfigs;
    }

    @Override // androidx.camera.core.processing.concurrent.DualSurfaceProcessorNode.In
    public SurfaceEdge getPrimarySurfaceEdge() {
        return this.primarySurfaceEdge;
    }

    @Override // androidx.camera.core.processing.concurrent.DualSurfaceProcessorNode.In
    public SurfaceEdge getSecondarySurfaceEdge() {
        return this.secondarySurfaceEdge;
    }

    public int hashCode() {
        return this.outConfigs.hashCode() ^ ((((this.primarySurfaceEdge.hashCode() ^ 1000003) * 1000003) ^ this.secondarySurfaceEdge.hashCode()) * 1000003);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("In{primarySurfaceEdge=");
        sb.append(this.primarySurfaceEdge);
        sb.append(", secondarySurfaceEdge=");
        sb.append(this.secondarySurfaceEdge);
        sb.append(", outConfigs=");
        return bg.e("}", this.outConfigs, sb);
    }
}
