package androidx.camera.core.impl;

import defpackage.aa4;
import defpackage.k;
import defpackage.rg;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class SurfaceStreamSpecQueryResult {
    private final Map<AttachedSurfaceInfo, StreamSpec> attachedSurfaceStreamSpecs;
    private final int maxSupportedFrameRate;
    private final Map<UseCaseConfig<?>, StreamSpec> useCaseStreamSpecs;

    /* JADX WARN: Multi-variable type inference failed */
    public SurfaceStreamSpecQueryResult(Map<UseCaseConfig<?>, ? extends StreamSpec> map, Map<AttachedSurfaceInfo, ? extends StreamSpec> map2, int i) {
        map.getClass();
        map2.getClass();
        this.useCaseStreamSpecs = map;
        this.attachedSurfaceStreamSpecs = map2;
        this.maxSupportedFrameRate = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SurfaceStreamSpecQueryResult copy$default(SurfaceStreamSpecQueryResult surfaceStreamSpecQueryResult, Map map, Map map2, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            map = surfaceStreamSpecQueryResult.useCaseStreamSpecs;
        }
        if ((i2 & 2) != 0) {
            map2 = surfaceStreamSpecQueryResult.attachedSurfaceStreamSpecs;
        }
        if ((i2 & 4) != 0) {
            i = surfaceStreamSpecQueryResult.maxSupportedFrameRate;
        }
        return surfaceStreamSpecQueryResult.copy(map, map2, i);
    }

    public final Map<UseCaseConfig<?>, StreamSpec> component1() {
        return this.useCaseStreamSpecs;
    }

    public final Map<AttachedSurfaceInfo, StreamSpec> component2() {
        return this.attachedSurfaceStreamSpecs;
    }

    public final int component3() {
        return this.maxSupportedFrameRate;
    }

    public final SurfaceStreamSpecQueryResult copy(Map<UseCaseConfig<?>, ? extends StreamSpec> map, Map<AttachedSurfaceInfo, ? extends StreamSpec> map2, int i) {
        map.getClass();
        map2.getClass();
        return new SurfaceStreamSpecQueryResult(map, map2, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SurfaceStreamSpecQueryResult)) {
            return false;
        }
        SurfaceStreamSpecQueryResult surfaceStreamSpecQueryResult = (SurfaceStreamSpecQueryResult) obj;
        return aa4.e(this.useCaseStreamSpecs, surfaceStreamSpecQueryResult.useCaseStreamSpecs) && aa4.e(this.attachedSurfaceStreamSpecs, surfaceStreamSpecQueryResult.attachedSurfaceStreamSpecs) && this.maxSupportedFrameRate == surfaceStreamSpecQueryResult.maxSupportedFrameRate;
    }

    public final Map<AttachedSurfaceInfo, StreamSpec> getAttachedSurfaceStreamSpecs() {
        return this.attachedSurfaceStreamSpecs;
    }

    public final int getMaxSupportedFrameRate() {
        return this.maxSupportedFrameRate;
    }

    public final Map<UseCaseConfig<?>, StreamSpec> getUseCaseStreamSpecs() {
        return this.useCaseStreamSpecs;
    }

    public int hashCode() {
        return Integer.hashCode(this.maxSupportedFrameRate) + k.c(this.attachedSurfaceStreamSpecs, this.useCaseStreamSpecs.hashCode() * 31, 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SurfaceStreamSpecQueryResult(useCaseStreamSpecs=");
        sb.append(this.useCaseStreamSpecs);
        sb.append(", attachedSurfaceStreamSpecs=");
        sb.append(this.attachedSurfaceStreamSpecs);
        sb.append(", maxSupportedFrameRate=");
        return rg.h(sb, this.maxSupportedFrameRate, ')');
    }
}
