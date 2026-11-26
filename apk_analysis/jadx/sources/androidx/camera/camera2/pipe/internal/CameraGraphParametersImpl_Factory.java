package androidx.camera.camera2.pipe.internal;

import androidx.camera.camera2.pipe.graph.GraphProcessor;
import defpackage.xs6;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
public final class CameraGraphParametersImpl_Factory implements xs6 {
    private final xs6<GraphProcessor> graphProcessorProvider;
    private final xs6<y22> graphScopeProvider;
    private final xs6<GraphSessionLock> sessionLockProvider;

    private CameraGraphParametersImpl_Factory(xs6<GraphSessionLock> xs6Var, xs6<GraphProcessor> xs6Var2, xs6<y22> xs6Var3) {
        this.sessionLockProvider = xs6Var;
        this.graphProcessorProvider = xs6Var2;
        this.graphScopeProvider = xs6Var3;
    }

    public static CameraGraphParametersImpl_Factory create(xs6<GraphSessionLock> xs6Var, xs6<GraphProcessor> xs6Var2, xs6<y22> xs6Var3) {
        return new CameraGraphParametersImpl_Factory(xs6Var, xs6Var2, xs6Var3);
    }

    public static CameraGraphParametersImpl newInstance(GraphSessionLock graphSessionLock, GraphProcessor graphProcessor, y22 y22Var) {
        return new CameraGraphParametersImpl(graphSessionLock, graphProcessor, y22Var);
    }

    @Override // defpackage.ws6
    public CameraGraphParametersImpl get() {
        return newInstance(this.sessionLockProvider.get(), this.graphProcessorProvider.get(), this.graphScopeProvider.get());
    }
}
