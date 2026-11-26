package androidx.camera.camera2.adapter;

import android.os.Looper;
import androidx.camera.camera2.config.CameraScope;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.GraphState;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.CameraState;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.LiveDataObservable;
import androidx.core.util.Consumer;
import androidx.lifecycle.MutableLiveData;
import defpackage.aa4;
import defpackage.g00;
import defpackage.j59;
import defpackage.jh2;
import defpackage.mz0;
import defpackage.qn1;
import defpackage.r01;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
@CameraScope
public final class CameraStateAdapter {
    public static final Companion Companion = new Companion(null);
    private final Map<Consumer<CameraState>, Executor> cameraStateListeners;
    private CameraInternal.State currentCameraInternalState;
    private CameraState.StateError currentCameraStateError;
    private CameraGraph currentGraph;
    private boolean isRemoved;
    private final Object lock = new Object();
    private final LiveDataObservable<CameraInternal.State> cameraInternalState = new LiveDataObservable<>();
    private final MutableLiveData<CameraState> cameraState = new MutableLiveData<>();

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CameraInternal.State.values().length];
            try {
                iArr[CameraInternal.State.CLOSED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CameraInternal.State.OPENING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CameraInternal.State.OPEN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CameraInternal.State.CLOSING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[CameraInternal.State.PENDING_OPEN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public CameraStateAdapter() {
        CameraInternal.State state = CameraInternal.State.CLOSED;
        this.currentCameraInternalState = state;
        this.cameraStateListeners = new LinkedHashMap();
        postCameraState$default(this, state, null, 2, null);
    }

    private final void handleStateTransition(CameraGraph cameraGraph, GraphState graphState) {
        if (!aa4.e(cameraGraph, this.currentGraph)) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Ignored stale transition " + graphState + " for " + cameraGraph);
                return;
            }
            return;
        }
        CombinedCameraState combinedCameraStateCalculateNextState$camera_camera2 = calculateNextState$camera_camera2(this.currentCameraInternalState, graphState);
        if (combinedCameraStateCalculateNextState$camera_camera2 == null) {
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isWarnEnabled(Log.TAG)) {
                android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "Impermissible state transition: current camera internal state: " + this.currentCameraInternalState + ", received graph state: " + graphState);
                return;
            }
            return;
        }
        this.currentCameraInternalState = combinedCameraStateCalculateNextState$camera_camera2.getState();
        this.currentCameraStateError = combinedCameraStateCalculateNextState$camera_camera2.getError();
        Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Updated current camera internal state to " + combinedCameraStateCalculateNextState$camera_camera2);
        }
        postCameraState(this.currentCameraInternalState, this.currentCameraStateError);
    }

    private final void postCameraState(CameraInternal.State state, CameraState.StateError stateError) {
        List<Map.Entry> listT0;
        this.cameraInternalState.postValue(state);
        Companion companion = Companion;
        CameraState cameraStateCreate = CameraState.create(companion.toCameraState$camera_camera2(state), stateError);
        cameraStateCreate.getClass();
        companion.setOrPostValue$camera_camera2(this.cameraState, cameraStateCreate);
        synchronized (this.lock) {
            listT0 = qn1.t0(this.cameraStateListeners.entrySet());
        }
        for (Map.Entry entry : listT0) {
            ((Executor) entry.getValue()).execute(new g00(1, (Consumer) entry.getKey(), cameraStateCreate));
        }
    }

    public static /* synthetic */ void postCameraState$default(CameraStateAdapter cameraStateAdapter, CameraInternal.State state, CameraState.StateError stateError, int i, Object obj) {
        if ((i & 2) != 0) {
            stateError = null;
        }
        cameraStateAdapter.postCameraState(state, stateError);
    }

    public final void addCameraStateListener$camera_camera2(Executor executor, Consumer<CameraState> consumer) {
        executor.getClass();
        consumer.getClass();
        synchronized (this.lock) {
            this.cameraStateListeners.put(consumer, executor);
            j59 j59Var = j59.a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final CombinedCameraState calculateNextState$camera_camera2(CameraInternal.State state, GraphState graphState) {
        state.getClass();
        graphState.getClass();
        int i = WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
        int i2 = 2;
        CameraState.StateError stateError = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        Object[] objArr4 = 0;
        Object[] objArr5 = 0;
        Object[] objArr6 = 0;
        Object[] objArr7 = 0;
        Object[] objArr8 = 0;
        Object[] objArr9 = 0;
        Object[] objArr10 = 0;
        Object[] objArr11 = 0;
        Object[] objArr12 = 0;
        Object[] objArr13 = 0;
        Object[] objArr14 = 0;
        Object[] objArr15 = 0;
        Object[] objArr16 = 0;
        Object[] objArr17 = 0;
        Object[] objArr18 = 0;
        Object[] objArr19 = 0;
        Object[] objArr20 = 0;
        Object[] objArr21 = 0;
        if (i == 1) {
            if (graphState.equals(GraphState.GraphStateStarting.INSTANCE)) {
                return new CombinedCameraState(CameraInternal.State.OPENING, objArr4 == true ? 1 : 0, i2, objArr3 == true ? 1 : 0);
            }
            if (graphState.equals(GraphState.GraphStateStarted.INSTANCE)) {
                return new CombinedCameraState(CameraInternal.State.OPEN, objArr2 == true ? 1 : 0, i2, objArr == true ? 1 : 0);
            }
            return null;
        }
        if (i == 2) {
            if (graphState.equals(GraphState.GraphStateStarted.INSTANCE)) {
                return new CombinedCameraState(CameraInternal.State.OPEN, objArr10 == true ? 1 : 0, i2, objArr9 == true ? 1 : 0);
            }
            if (graphState instanceof GraphState.GraphStateError) {
                GraphState.GraphStateError graphStateError = (GraphState.GraphStateError) graphState;
                if (graphStateError.getWillAttemptRetry()) {
                    return new CombinedCameraState(CameraInternal.State.OPENING, Companion.m5toCameraStateError90vkdD0$camera_camera2(graphStateError.m478getCameraErrorv7Vf74A()));
                }
                Companion companion = Companion;
                return companion.m4isRecoverableError90vkdD0$camera_camera2(graphStateError.m478getCameraErrorv7Vf74A()) ? new CombinedCameraState(CameraInternal.State.PENDING_OPEN, companion.m5toCameraStateError90vkdD0$camera_camera2(graphStateError.m478getCameraErrorv7Vf74A())) : new CombinedCameraState(CameraInternal.State.CLOSING, companion.m5toCameraStateError90vkdD0$camera_camera2(graphStateError.m478getCameraErrorv7Vf74A()));
            }
            if (graphState.equals(GraphState.GraphStateStopping.INSTANCE)) {
                return new CombinedCameraState(CameraInternal.State.CLOSING, objArr8 == true ? 1 : 0, i2, objArr7 == true ? 1 : 0);
            }
            if (graphState.equals(GraphState.GraphStateStopped.INSTANCE)) {
                return new CombinedCameraState(CameraInternal.State.CLOSED, objArr6 == true ? 1 : 0, i2, objArr5 == true ? 1 : 0);
            }
            return null;
        }
        if (i == 3) {
            if (graphState.equals(GraphState.GraphStateStopping.INSTANCE)) {
                return new CombinedCameraState(CameraInternal.State.CLOSING, objArr14 == true ? 1 : 0, i2, objArr13 == true ? 1 : 0);
            }
            if (graphState.equals(GraphState.GraphStateStopped.INSTANCE)) {
                return new CombinedCameraState(CameraInternal.State.CLOSED, objArr12 == true ? 1 : 0, i2, objArr11 == true ? 1 : 0);
            }
            if (!(graphState instanceof GraphState.GraphStateError)) {
                return null;
            }
            Companion companion2 = Companion;
            GraphState.GraphStateError graphStateError2 = (GraphState.GraphStateError) graphState;
            return companion2.m4isRecoverableError90vkdD0$camera_camera2(graphStateError2.m478getCameraErrorv7Vf74A()) ? new CombinedCameraState(CameraInternal.State.PENDING_OPEN, companion2.m5toCameraStateError90vkdD0$camera_camera2(graphStateError2.m478getCameraErrorv7Vf74A())) : new CombinedCameraState(CameraInternal.State.CLOSED, companion2.m5toCameraStateError90vkdD0$camera_camera2(graphStateError2.m478getCameraErrorv7Vf74A()));
        }
        if (i == 4) {
            if (graphState.equals(GraphState.GraphStateStopped.INSTANCE)) {
                return new CombinedCameraState(CameraInternal.State.CLOSED, objArr18 == true ? 1 : 0, i2, objArr17 == true ? 1 : 0);
            }
            if (graphState.equals(GraphState.GraphStateStarting.INSTANCE)) {
                return new CombinedCameraState(CameraInternal.State.OPENING, objArr16 == true ? 1 : 0, i2, objArr15 == true ? 1 : 0);
            }
            if (graphState instanceof GraphState.GraphStateError) {
                return new CombinedCameraState(CameraInternal.State.CLOSING, Companion.m5toCameraStateError90vkdD0$camera_camera2(((GraphState.GraphStateError) graphState).m478getCameraErrorv7Vf74A()));
            }
            return null;
        }
        if (i != 5) {
            return null;
        }
        if (graphState.equals(GraphState.GraphStateStarting.INSTANCE)) {
            return new CombinedCameraState(CameraInternal.State.OPENING, stateError, i2, objArr21 == true ? 1 : 0);
        }
        if (graphState.equals(GraphState.GraphStateStarted.INSTANCE)) {
            return new CombinedCameraState(CameraInternal.State.OPEN, objArr20 == true ? 1 : 0, i2, objArr19 == true ? 1 : 0);
        }
        if (!(graphState instanceof GraphState.GraphStateError)) {
            return null;
        }
        Companion companion3 = Companion;
        GraphState.GraphStateError graphStateError3 = (GraphState.GraphStateError) graphState;
        return companion3.m4isRecoverableError90vkdD0$camera_camera2(graphStateError3.m478getCameraErrorv7Vf74A()) ? new CombinedCameraState(CameraInternal.State.PENDING_OPEN, companion3.m5toCameraStateError90vkdD0$camera_camera2(graphStateError3.m478getCameraErrorv7Vf74A())) : new CombinedCameraState(CameraInternal.State.CLOSED, companion3.m5toCameraStateError90vkdD0$camera_camera2(graphStateError3.m478getCameraErrorv7Vf74A()));
    }

    public final LiveDataObservable<CameraInternal.State> getCameraInternalState$camera_camera2() {
        return this.cameraInternalState;
    }

    public final MutableLiveData<CameraState> getCameraState$camera_camera2() {
        return this.cameraState;
    }

    public final void onGraphStateUpdated(CameraGraph cameraGraph, GraphState graphState) {
        cameraGraph.getClass();
        graphState.getClass();
        synchronized (this.lock) {
            if (this.isRemoved) {
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isWarnEnabled(Log.TAG)) {
                    android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "Ignoring graph state update " + graphState + " on removed camera.");
                }
                return;
            }
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, cameraGraph + " state updated to " + graphState);
            }
            handleStateTransition(cameraGraph, graphState);
            j59 j59Var = j59.a;
        }
    }

    public final void onGraphUpdated(CameraGraph cameraGraph) {
        cameraGraph.getClass();
        synchronized (this.lock) {
            try {
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Camera graph updated from " + this.currentGraph + " to " + cameraGraph);
                }
                CameraInternal.State state = this.currentCameraInternalState;
                CameraInternal.State state2 = CameraInternal.State.CLOSED;
                if (state != state2) {
                    postCameraState$default(this, CameraInternal.State.CLOSING, null, 2, null);
                    postCameraState$default(this, state2, null, 2, null);
                }
                this.currentGraph = cameraGraph;
                this.currentCameraInternalState = state2;
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void onRemoved() {
        CameraState.StateError stateErrorCreate = CameraState.StateError.create(8);
        stateErrorCreate.getClass();
        synchronized (this.lock) {
            try {
                if (this.isRemoved) {
                    return;
                }
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Camera is removed, forcing state to CLOSED.");
                }
                this.isRemoved = true;
                CameraInternal.State state = CameraInternal.State.CLOSED;
                this.currentCameraInternalState = state;
                this.currentCameraStateError = stateErrorCreate;
                postCameraState(state, stateErrorCreate);
                this.currentGraph = null;
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void removeCameraStateListener$camera_camera2(Consumer<CameraState> consumer) {
        consumer.getClass();
        synchronized (this.lock) {
            this.cameraStateListeners.remove(consumer);
        }
    }

    public static final class Companion {

        public static final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[CameraInternal.State.values().length];
                try {
                    iArr[CameraInternal.State.CLOSED.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[CameraInternal.State.OPENING.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[CameraInternal.State.OPEN.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[CameraInternal.State.CLOSING.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[CameraInternal.State.PENDING_OPEN.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: isRecoverableError-90vkdD0$camera_camera2, reason: not valid java name */
        public final boolean m4isRecoverableError90vkdD0$camera_camera2(int i) {
            CameraError.Companion companion = CameraError.Companion;
            return CameraError.m279equalsimpl0(i, companion.m289getERROR_CAMERA_DISCONNECTEDv7Vf74A()) || CameraError.m279equalsimpl0(i, companion.m290getERROR_CAMERA_IN_USEv7Vf74A()) || CameraError.m279equalsimpl0(i, companion.m291getERROR_CAMERA_LIMIT_EXCEEDEDv7Vf74A()) || CameraError.m279equalsimpl0(i, companion.m287getERROR_CAMERA_DEVICEv7Vf74A());
        }

        public final void setOrPostValue$camera_camera2(MutableLiveData<CameraState> mutableLiveData, CameraState cameraState) {
            mutableLiveData.getClass();
            cameraState.getClass();
            if (aa4.e(Looper.myLooper(), Looper.getMainLooper())) {
                mutableLiveData.setValue(cameraState);
            } else {
                mutableLiveData.postValue(cameraState);
            }
        }

        public final CameraState.Type toCameraState$camera_camera2(CameraInternal.State state) {
            state.getClass();
            int i = WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
            if (i == 1) {
                return CameraState.Type.CLOSED;
            }
            if (i == 2) {
                return CameraState.Type.OPENING;
            }
            if (i == 3) {
                return CameraState.Type.OPEN;
            }
            if (i == 4) {
                return CameraState.Type.CLOSING;
            }
            if (i == 5) {
                return CameraState.Type.PENDING_OPEN;
            }
            r01.e(state, "Unexpected CameraInternal state: ");
            return null;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x001a  */
        /* JADX INFO: renamed from: toCameraStateError-90vkdD0$camera_camera2, reason: not valid java name */
        public final CameraState.StateError m5toCameraStateError90vkdD0$camera_camera2(int i) {
            CameraError.Companion companion = CameraError.Companion;
            int i2 = 6;
            if (!CameraError.m279equalsimpl0(i, companion.m299getERROR_UNDETERMINEDv7Vf74A())) {
                if (CameraError.m279equalsimpl0(i, companion.m290getERROR_CAMERA_IN_USEv7Vf74A())) {
                    i2 = 2;
                } else if (CameraError.m279equalsimpl0(i, companion.m291getERROR_CAMERA_LIMIT_EXCEEDEDv7Vf74A())) {
                    i2 = 1;
                } else if (CameraError.m279equalsimpl0(i, companion.m288getERROR_CAMERA_DISABLEDv7Vf74A())) {
                    i2 = 5;
                } else if (CameraError.m279equalsimpl0(i, companion.m287getERROR_CAMERA_DEVICEv7Vf74A())) {
                    i2 = 3;
                } else if (!CameraError.m279equalsimpl0(i, companion.m294getERROR_CAMERA_SERVICEv7Vf74A())) {
                    if (CameraError.m279equalsimpl0(i, companion.m289getERROR_CAMERA_DISCONNECTEDv7Vf74A())) {
                        i2 = 2;
                    } else if (!CameraError.m279equalsimpl0(i, companion.m297getERROR_ILLEGAL_ARGUMENT_EXCEPTIONv7Vf74A()) && !CameraError.m279equalsimpl0(i, companion.m298getERROR_SECURITY_EXCEPTIONv7Vf74A())) {
                        if (CameraError.m279equalsimpl0(i, companion.m296getERROR_GRAPH_CONFIGv7Vf74A())) {
                            i2 = 4;
                        } else if (CameraError.m279equalsimpl0(i, companion.m295getERROR_DO_NOT_DISTURB_ENABLEDv7Vf74A())) {
                            i2 = 7;
                        } else if (!CameraError.m279equalsimpl0(i, companion.m300getERROR_UNKNOWN_EXCEPTIONv7Vf74A()) && !CameraError.m279equalsimpl0(i, companion.m292getERROR_CAMERA_OPENERv7Vf74A()) && !CameraError.m279equalsimpl0(i, companion.m293getERROR_CAMERA_OPEN_TIMEOUTv7Vf74A())) {
                            mz0.c(CameraError.m282toStringimpl(i), "Unexpected CameraError: ");
                            return null;
                        }
                    }
                }
            }
            CameraState.StateError stateErrorCreate = CameraState.StateError.create(i2);
            stateErrorCreate.getClass();
            return stateErrorCreate;
        }

        private Companion() {
        }
    }

    public static final class CombinedCameraState {
        private final CameraState.StateError error;
        private final CameraInternal.State state;

        public CombinedCameraState(CameraInternal.State state, CameraState.StateError stateError) {
            state.getClass();
            this.state = state;
            this.error = stateError;
        }

        public static /* synthetic */ CombinedCameraState copy$default(CombinedCameraState combinedCameraState, CameraInternal.State state, CameraState.StateError stateError, int i, Object obj) {
            if ((i & 1) != 0) {
                state = combinedCameraState.state;
            }
            if ((i & 2) != 0) {
                stateError = combinedCameraState.error;
            }
            return combinedCameraState.copy(state, stateError);
        }

        public final CameraInternal.State component1() {
            return this.state;
        }

        public final CameraState.StateError component2() {
            return this.error;
        }

        public final CombinedCameraState copy(CameraInternal.State state, CameraState.StateError stateError) {
            state.getClass();
            return new CombinedCameraState(state, stateError);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CombinedCameraState)) {
                return false;
            }
            CombinedCameraState combinedCameraState = (CombinedCameraState) obj;
            return this.state == combinedCameraState.state && aa4.e(this.error, combinedCameraState.error);
        }

        public final CameraState.StateError getError() {
            return this.error;
        }

        public final CameraInternal.State getState() {
            return this.state;
        }

        public int hashCode() {
            int iHashCode = this.state.hashCode() * 31;
            CameraState.StateError stateError = this.error;
            return iHashCode + (stateError == null ? 0 : stateError.hashCode());
        }

        public String toString() {
            return "CombinedCameraState(state=" + this.state + ", error=" + this.error + ')';
        }

        public /* synthetic */ CombinedCameraState(CameraInternal.State state, CameraState.StateError stateError, int i, jh2 jh2Var) {
            this(state, (i & 2) != 0 ? null : stateError);
        }
    }
}
