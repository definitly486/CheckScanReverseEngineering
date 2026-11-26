package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.FrameGraph;

/* JADX INFO: loaded from: classes.dex */
@FrameGraphScope
public interface FrameGraphComponent {

    public interface Builder {
        FrameGraphComponent build();

        Builder frameGraphConfigModule(FrameGraphConfigModule frameGraphConfigModule);
    }

    FrameGraph frameGraph();
}
