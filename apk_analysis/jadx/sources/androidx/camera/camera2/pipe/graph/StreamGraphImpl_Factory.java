package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.CameraController;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.media.ImageSources;
import defpackage.ws6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class StreamGraphImpl_Factory implements xs6 {
    private final xs6<CameraController> cameraControllerProvider;
    private final xs6<CameraMetadata> cameraMetadataProvider;
    private final xs6<CameraGraph.Config> graphConfigProvider;
    private final xs6<ImageSources> imageSourcesProvider;

    private StreamGraphImpl_Factory(xs6<CameraMetadata> xs6Var, xs6<CameraGraph.Config> xs6Var2, xs6<ImageSources> xs6Var3, xs6<CameraController> xs6Var4) {
        this.cameraMetadataProvider = xs6Var;
        this.graphConfigProvider = xs6Var2;
        this.imageSourcesProvider = xs6Var3;
        this.cameraControllerProvider = xs6Var4;
    }

    public static StreamGraphImpl_Factory create(xs6<CameraMetadata> xs6Var, xs6<CameraGraph.Config> xs6Var2, xs6<ImageSources> xs6Var3, xs6<CameraController> xs6Var4) {
        return new StreamGraphImpl_Factory(xs6Var, xs6Var2, xs6Var3, xs6Var4);
    }

    public static StreamGraphImpl newInstance(CameraMetadata cameraMetadata, CameraGraph.Config config, ImageSources imageSources, ws6<CameraController> ws6Var) {
        return new StreamGraphImpl(cameraMetadata, config, imageSources, ws6Var);
    }

    @Override // defpackage.ws6
    public StreamGraphImpl get() {
        return newInstance(this.cameraMetadataProvider.get(), this.graphConfigProvider.get(), this.imageSourcesProvider.get(), this.cameraControllerProvider);
    }
}
