package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.graph.GraphProcessor;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class FrameGraphConfigModule_ProvideGraphProcessorFactory implements xs6 {
    private final FrameGraphConfigModule module;

    private FrameGraphConfigModule_ProvideGraphProcessorFactory(FrameGraphConfigModule frameGraphConfigModule) {
        this.module = frameGraphConfigModule;
    }

    public static FrameGraphConfigModule_ProvideGraphProcessorFactory create(FrameGraphConfigModule frameGraphConfigModule) {
        return new FrameGraphConfigModule_ProvideGraphProcessorFactory(frameGraphConfigModule);
    }

    public static GraphProcessor provideGraphProcessor(FrameGraphConfigModule frameGraphConfigModule) {
        GraphProcessor graphProcessorProvideGraphProcessor = frameGraphConfigModule.provideGraphProcessor();
        te6.b(graphProcessorProvideGraphProcessor);
        return graphProcessorProvideGraphProcessor;
    }

    @Override // defpackage.ws6
    public GraphProcessor get() {
        return provideGraphProcessor(this.module);
    }
}
