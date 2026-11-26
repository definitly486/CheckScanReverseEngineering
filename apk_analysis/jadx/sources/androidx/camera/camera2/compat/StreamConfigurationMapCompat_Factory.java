package androidx.camera.camera2.compat;

import android.hardware.camera2.params.StreamConfigurationMap;
import androidx.camera.camera2.compat.workaround.OutputSizesCorrector;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class StreamConfigurationMapCompat_Factory implements xs6 {
    private final xs6<StreamConfigurationMap> mapProvider;
    private final xs6<OutputSizesCorrector> outputSizesCorrectorProvider;

    private StreamConfigurationMapCompat_Factory(xs6<StreamConfigurationMap> xs6Var, xs6<OutputSizesCorrector> xs6Var2) {
        this.mapProvider = xs6Var;
        this.outputSizesCorrectorProvider = xs6Var2;
    }

    public static StreamConfigurationMapCompat_Factory create(xs6<StreamConfigurationMap> xs6Var, xs6<OutputSizesCorrector> xs6Var2) {
        return new StreamConfigurationMapCompat_Factory(xs6Var, xs6Var2);
    }

    public static StreamConfigurationMapCompat newInstance(StreamConfigurationMap streamConfigurationMap, OutputSizesCorrector outputSizesCorrector) {
        return new StreamConfigurationMapCompat(streamConfigurationMap, outputSizesCorrector);
    }

    @Override // defpackage.ws6
    public StreamConfigurationMapCompat get() {
        return newInstance(this.mapProvider.get(), this.outputSizesCorrectorProvider.get());
    }
}
