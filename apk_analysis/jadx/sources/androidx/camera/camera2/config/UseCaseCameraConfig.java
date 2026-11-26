package androidx.camera.camera2.config;

import android.util.Pair;
import androidx.camera.camera2.adapter.CameraStateAdapter;
import androidx.camera.camera2.adapter.GraphStateToCameraStateAdapter;
import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.camera2.config.UseCaseCameraConfig;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.impl.CameraGraphConfigProvider;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.SessionProcessor;
import defpackage.aa4;
import defpackage.cl4;
import defpackage.fh8;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.ws6;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class UseCaseCameraConfig {
    public static final Companion Companion = new Companion(null);
    private final nl3<CameraGraph.Config, CameraGraph> cameraGraphFactory;
    private final GraphStateToCameraStateAdapter graphStateToCameraStateAdapter;
    private final cl4<CameraGraphConfigProvider.CameraGraphCreationResult> lazyCreationResult;
    private final SessionConfigAdapter sessionConfigAdapter;
    private final SessionProcessor sessionProcessor;

    /* JADX WARN: Multi-variable type inference failed */
    public UseCaseCameraConfig(nl3<? super CameraGraph.Config, ? extends CameraGraph> nl3Var, GraphStateToCameraStateAdapter graphStateToCameraStateAdapter, SessionConfigAdapter sessionConfigAdapter, SessionProcessor sessionProcessor, cl4<CameraGraphConfigProvider.CameraGraphCreationResult> cl4Var) {
        nl3Var.getClass();
        graphStateToCameraStateAdapter.getClass();
        sessionConfigAdapter.getClass();
        cl4Var.getClass();
        this.cameraGraphFactory = nl3Var;
        this.graphStateToCameraStateAdapter = graphStateToCameraStateAdapter;
        this.sessionConfigAdapter = sessionConfigAdapter;
        this.sessionProcessor = sessionProcessor;
        this.lazyCreationResult = cl4Var;
    }

    private final nl3<CameraGraph.Config, CameraGraph> component1() {
        return this.cameraGraphFactory;
    }

    private final GraphStateToCameraStateAdapter component2() {
        return this.graphStateToCameraStateAdapter;
    }

    private final SessionConfigAdapter component3() {
        return this.sessionConfigAdapter;
    }

    private final SessionProcessor component4() {
        return this.sessionProcessor;
    }

    private final cl4<CameraGraphConfigProvider.CameraGraphCreationResult> component5() {
        return this.lazyCreationResult;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ UseCaseCameraConfig copy$default(UseCaseCameraConfig useCaseCameraConfig, nl3 nl3Var, GraphStateToCameraStateAdapter graphStateToCameraStateAdapter, SessionConfigAdapter sessionConfigAdapter, SessionProcessor sessionProcessor, cl4 cl4Var, int i, Object obj) {
        if ((i & 1) != 0) {
            nl3Var = useCaseCameraConfig.cameraGraphFactory;
        }
        if ((i & 2) != 0) {
            graphStateToCameraStateAdapter = useCaseCameraConfig.graphStateToCameraStateAdapter;
        }
        if ((i & 4) != 0) {
            sessionConfigAdapter = useCaseCameraConfig.sessionConfigAdapter;
        }
        if ((i & 8) != 0) {
            sessionProcessor = useCaseCameraConfig.sessionProcessor;
        }
        if ((i & 16) != 0) {
            cl4Var = useCaseCameraConfig.lazyCreationResult;
        }
        cl4 cl4Var2 = cl4Var;
        SessionConfigAdapter sessionConfigAdapter2 = sessionConfigAdapter;
        return useCaseCameraConfig.copy(nl3Var, graphStateToCameraStateAdapter, sessionConfigAdapter2, sessionProcessor, cl4Var2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraGraph provideUseCaseGraphContext$lambda$1(UseCaseCameraConfig useCaseCameraConfig) {
        return useCaseCameraConfig.cameraGraphFactory.invoke(useCaseCameraConfig.getCameraGraphConfig());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map provideUseCaseGraphContext$lambda$2(UseCaseCameraConfig useCaseCameraConfig) {
        return useCaseCameraConfig.lazyCreationResult.getValue().getStreamConfigMap();
    }

    public final UseCaseCameraConfig copy(nl3<? super CameraGraph.Config, ? extends CameraGraph> nl3Var, GraphStateToCameraStateAdapter graphStateToCameraStateAdapter, SessionConfigAdapter sessionConfigAdapter, SessionProcessor sessionProcessor, cl4<CameraGraphConfigProvider.CameraGraphCreationResult> cl4Var) {
        nl3Var.getClass();
        graphStateToCameraStateAdapter.getClass();
        sessionConfigAdapter.getClass();
        cl4Var.getClass();
        return new UseCaseCameraConfig(nl3Var, graphStateToCameraStateAdapter, sessionConfigAdapter, sessionProcessor, cl4Var);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!UseCaseCameraConfig.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        UseCaseCameraConfig useCaseCameraConfig = (UseCaseCameraConfig) obj;
        return aa4.e(this.sessionConfigAdapter, useCaseCameraConfig.sessionConfigAdapter) && aa4.e(this.graphStateToCameraStateAdapter, useCaseCameraConfig.graphStateToCameraStateAdapter) && aa4.e(this.sessionProcessor, useCaseCameraConfig.sessionProcessor);
    }

    public final CameraGraph.Config getCameraGraphConfig() {
        return this.lazyCreationResult.getValue().getConfig();
    }

    public int hashCode() {
        int iHashCode = (this.graphStateToCameraStateAdapter.hashCode() + (this.sessionConfigAdapter.hashCode() * 31)) * 31;
        SessionProcessor sessionProcessor = this.sessionProcessor;
        return iHashCode + (sessionProcessor != null ? sessionProcessor.hashCode() : 0);
    }

    @UseCaseCameraScope
    public final SessionConfigAdapter provideSessionConfigAdapter() {
        return this.sessionConfigAdapter;
    }

    @UseCaseCameraScope
    public final SessionProcessor provideSessionProcessor() {
        return this.sessionProcessor;
    }

    @UseCaseCameraScope
    public final UseCaseGraphContext provideUseCaseGraphContext(CameraStateAdapter cameraStateAdapter) {
        cameraStateAdapter.getClass();
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Prepared UseCaseGraphContext (Deferred)");
        }
        return new UseCaseGraphContext(new ws6() { // from class: j99
            @Override // defpackage.ws6
            public final Object get() {
                return UseCaseCameraConfig.provideUseCaseGraphContext$lambda$1(this.a);
            }
        }, cameraStateAdapter, this.graphStateToCameraStateAdapter, new ws6() { // from class: k99
            @Override // defpackage.ws6
            public final Object get() {
                return UseCaseCameraConfig.provideUseCaseGraphContext$lambda$2(this.a);
            }
        }, null, 16, null);
    }

    public String toString() {
        return "UseCaseCameraConfig(cameraGraphFactory=" + this.cameraGraphFactory + ", graphStateToCameraStateAdapter=" + this.graphStateToCameraStateAdapter + ", sessionConfigAdapter=" + this.sessionConfigAdapter + ", sessionProcessor=" + this.sessionProcessor + ", lazyCreationResult=" + this.lazyCreationResult + ')';
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final CameraGraphConfigProvider.CameraGraphCreationResult create$lambda$0(SessionConfigAdapter sessionConfigAdapter, boolean z, SessionProcessor sessionProcessor, CameraGraphConfigProvider cameraGraphConfigProvider, GraphStateToCameraStateAdapter graphStateToCameraStateAdapter) {
            int iM342getNORMAL2uNL3no;
            Pair<Integer, Integer> implementationType;
            SessionConfig validSessionConfigOrNull = sessionConfigAdapter.getValidSessionConfigOrNull();
            if (z) {
                iM342getNORMAL2uNL3no = CameraGraph.OperatingMode.Companion.m340getEXTENSION2uNL3no();
            } else if (validSessionConfigOrNull == null) {
                iM342getNORMAL2uNL3no = CameraGraph.OperatingMode.Companion.m342getNORMAL2uNL3no();
            } else if (validSessionConfigOrNull.getSessionType() == 1) {
                iM342getNORMAL2uNL3no = CameraGraph.OperatingMode.Companion.m341getHIGH_SPEED2uNL3no();
            } else {
                iM342getNORMAL2uNL3no = validSessionConfigOrNull.getSessionType() == 0 ? CameraGraph.OperatingMode.Companion.m342getNORMAL2uNL3no() : CameraGraph.OperatingMode.Companion.m339customEP6OhB0(validSessionConfigOrNull.getSessionType());
            }
            int i = iM342getNORMAL2uNL3no;
            Integer num = null;
            if (z && sessionProcessor != null && (implementationType = sessionProcessor.getImplementationType()) != null) {
                num = (Integer) implementationType.second;
            }
            return cameraGraphConfigProvider.m49create79VDu0o(i, validSessionConfigOrNull, false, graphStateToCameraStateAdapter, num, sessionConfigAdapter.getSurfaceToStreamUseCaseMap(), sessionConfigAdapter.getSurfaceToStreamUseHintMap());
        }

        public final UseCaseCameraConfig create(final SessionConfigAdapter sessionConfigAdapter, final CameraGraphConfigProvider cameraGraphConfigProvider, nl3<? super CameraGraph.Config, ? extends CameraGraph> nl3Var, final GraphStateToCameraStateAdapter graphStateToCameraStateAdapter, final SessionProcessor sessionProcessor, final boolean z) {
            sessionConfigAdapter.getClass();
            cameraGraphConfigProvider.getClass();
            nl3Var.getClass();
            graphStateToCameraStateAdapter.getClass();
            return new UseCaseCameraConfig(nl3Var, graphStateToCameraStateAdapter, sessionConfigAdapter, sessionProcessor, new fh8(new ll3() { // from class: l99
                @Override // defpackage.ll3
                public final Object invoke() {
                    return UseCaseCameraConfig.Companion.create$lambda$0(sessionConfigAdapter, z, sessionProcessor, cameraGraphConfigProvider, graphStateToCameraStateAdapter);
                }
            }));
        }

        private Companion() {
        }
    }
}
