package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.CameraMetadata;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class Controller3A_Factory implements xs6 {
    private final xs6<Listener3A> graphListener3AProvider;
    private final xs6<GraphProcessor> graphProcessorProvider;
    private final xs6<GraphState3A> graphState3AProvider;
    private final xs6<CameraMetadata> metadataProvider;

    private Controller3A_Factory(xs6<GraphProcessor> xs6Var, xs6<CameraMetadata> xs6Var2, xs6<GraphState3A> xs6Var3, xs6<Listener3A> xs6Var4) {
        this.graphProcessorProvider = xs6Var;
        this.metadataProvider = xs6Var2;
        this.graphState3AProvider = xs6Var3;
        this.graphListener3AProvider = xs6Var4;
    }

    public static Controller3A_Factory create(xs6<GraphProcessor> xs6Var, xs6<CameraMetadata> xs6Var2, xs6<GraphState3A> xs6Var3, xs6<Listener3A> xs6Var4) {
        return new Controller3A_Factory(xs6Var, xs6Var2, xs6Var3, xs6Var4);
    }

    public static Controller3A newInstance(GraphProcessor graphProcessor, CameraMetadata cameraMetadata, GraphState3A graphState3A, Listener3A listener3A) {
        return new Controller3A(graphProcessor, cameraMetadata, graphState3A, listener3A);
    }

    @Override // defpackage.ws6
    public Controller3A get() {
        return newInstance(this.graphProcessorProvider.get(), this.metadataProvider.get(), this.graphState3AProvider.get(), this.graphListener3AProvider.get());
    }
}
