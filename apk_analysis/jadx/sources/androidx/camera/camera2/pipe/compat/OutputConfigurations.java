package androidx.camera.camera2.pipe.compat;

import android.view.Surface;
import androidx.camera.camera2.pipe.OutputId;
import androidx.camera.camera2.pipe.StreamId;
import defpackage.aa4;
import defpackage.g2;
import defpackage.k;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class OutputConfigurations {
    private final List<OutputConfigurationWrapper> all;
    private final Map<StreamId, OutputConfigurationWrapper> deferred;
    private final Map<OutputId, Surface> outputSurfaceMap;
    private final OutputConfigurationWrapper postviewOutput;

    /* JADX WARN: Multi-variable type inference failed */
    public OutputConfigurations(List<? extends OutputConfigurationWrapper> list, Map<StreamId, ? extends OutputConfigurationWrapper> map, OutputConfigurationWrapper outputConfigurationWrapper, Map<OutputId, ? extends Surface> map2) {
        list.getClass();
        map.getClass();
        map2.getClass();
        this.all = list;
        this.deferred = map;
        this.postviewOutput = outputConfigurationWrapper;
        this.outputSurfaceMap = map2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ OutputConfigurations copy$default(OutputConfigurations outputConfigurations, List list, Map map, OutputConfigurationWrapper outputConfigurationWrapper, Map map2, int i, Object obj) {
        if ((i & 1) != 0) {
            list = outputConfigurations.all;
        }
        if ((i & 2) != 0) {
            map = outputConfigurations.deferred;
        }
        if ((i & 4) != 0) {
            outputConfigurationWrapper = outputConfigurations.postviewOutput;
        }
        if ((i & 8) != 0) {
            map2 = outputConfigurations.outputSurfaceMap;
        }
        return outputConfigurations.copy(list, map, outputConfigurationWrapper, map2);
    }

    public final List<OutputConfigurationWrapper> component1() {
        return this.all;
    }

    public final Map<StreamId, OutputConfigurationWrapper> component2() {
        return this.deferred;
    }

    public final OutputConfigurationWrapper component3() {
        return this.postviewOutput;
    }

    public final Map<OutputId, Surface> component4() {
        return this.outputSurfaceMap;
    }

    public final OutputConfigurations copy(List<? extends OutputConfigurationWrapper> list, Map<StreamId, ? extends OutputConfigurationWrapper> map, OutputConfigurationWrapper outputConfigurationWrapper, Map<OutputId, ? extends Surface> map2) {
        list.getClass();
        map.getClass();
        map2.getClass();
        return new OutputConfigurations(list, map, outputConfigurationWrapper, map2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OutputConfigurations)) {
            return false;
        }
        OutputConfigurations outputConfigurations = (OutputConfigurations) obj;
        return aa4.e(this.all, outputConfigurations.all) && aa4.e(this.deferred, outputConfigurations.deferred) && aa4.e(this.postviewOutput, outputConfigurations.postviewOutput) && aa4.e(this.outputSurfaceMap, outputConfigurations.outputSurfaceMap);
    }

    public final List<OutputConfigurationWrapper> getAll() {
        return this.all;
    }

    public final Map<StreamId, OutputConfigurationWrapper> getDeferred() {
        return this.deferred;
    }

    public final Map<OutputId, Surface> getOutputSurfaceMap() {
        return this.outputSurfaceMap;
    }

    public final OutputConfigurationWrapper getPostviewOutput() {
        return this.postviewOutput;
    }

    public int hashCode() {
        int iC = k.c(this.deferred, this.all.hashCode() * 31, 31);
        OutputConfigurationWrapper outputConfigurationWrapper = this.postviewOutput;
        return this.outputSurfaceMap.hashCode() + ((iC + (outputConfigurationWrapper == null ? 0 : outputConfigurationWrapper.hashCode())) * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("OutputConfigurations(all=");
        sb.append(this.all);
        sb.append(", deferred=");
        sb.append(this.deferred);
        sb.append(", postviewOutput=");
        sb.append(this.postviewOutput);
        sb.append(", outputSurfaceMap=");
        return g2.c(sb, this.outputSurfaceMap, ')');
    }
}
