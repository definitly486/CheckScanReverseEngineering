package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraGraphId;
import androidx.camera.camera2.pipe.GraphState;
import androidx.camera.camera2.pipe.GraphStateListener;
import androidx.camera.camera2.pipe.InputRequest;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.compat.Camera2Quirks;
import androidx.camera.camera2.pipe.compat.CameraPipeKeys;
import androidx.camera.camera2.pipe.config.CameraGraphScope;
import androidx.camera.camera2.pipe.config.ForCameraGraph;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import defpackage.aa4;
import defpackage.px;
import defpackage.qn1;
import defpackage.u96;
import defpackage.xg5;
import defpackage.y68;
import defpackage.yr;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@CameraGraphScope
public final class GraphProcessorImpl implements GraphProcessor, GraphListener {
    private final xg5<GraphState> _graphState;
    private final CameraGraph.Config cameraGraphConfig;
    private final CameraGraphId cameraGraphId;
    private final List<GraphStateListener> externalStateGraphListeners;
    private final GraphLoop graphLoop;

    public GraphProcessorImpl(Threads threads, CameraGraphId cameraGraphId, CameraGraph.Config config, Listener3A listener3A, @ForCameraGraph List<Request.Listener> list, Camera2Quirks camera2Quirks) {
        threads.getClass();
        cameraGraphId.getClass();
        config.getClass();
        listener3A.getClass();
        list.getClass();
        camera2Quirks.getClass();
        this.cameraGraphId = cameraGraphId;
        this.cameraGraphConfig = config;
        this.externalStateGraphListeners = config.getGraphStateListeners();
        Map<?, Object> defaultParameters = config.getDefaultParameters();
        Map<?, Object> requiredParameters = config.getRequiredParameters();
        CameraPipeKeys cameraPipeKeys = CameraPipeKeys.INSTANCE;
        Object obj = defaultParameters.get(cameraPipeKeys.getIgnore3ARequiredParameters());
        Boolean bool = Boolean.TRUE;
        if ((aa4.e(obj, bool) || aa4.e(requiredParameters.get(cameraPipeKeys.getIgnore3ARequiredParameters()), bool)) && Log.INSTANCE.getINFO_LOGGABLE()) {
            android.util.Log.i(Log.TAG, cameraPipeKeys.getIgnore3ARequiredParameters() + " is set to true, ignoring GraphState3A parameters.");
        }
        int repeatingRequestFrameCountForCapture$camera_camera2_pipe = camera2Quirks.getRepeatingRequestFrameCountForCapture$camera_camera2_pipe(config.getFlags());
        CaptureLimiter captureLimiter = repeatingRequestFrameCountForCapture$camera_camera2_pipe != 0 ? new CaptureLimiter(repeatingRequestFrameCountForCapture$camera_camera2_pipe) : null;
        GraphLoop graphLoop = new GraphLoop(cameraGraphId, defaultParameters, requiredParameters, qn1.h0(u96.j(captureLimiter), list), yr.G(new Object[]{listener3A, captureLimiter}), threads.getCameraPipeScope(), threads.getLightweightDispatcher());
        this.graphLoop = graphLoop;
        if (captureLimiter != null) {
            captureLimiter.setGraphLoop(graphLoop);
        }
        this._graphState = px.a(GraphState.GraphStateStopped.INSTANCE);
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphProcessor
    public void abort() {
        this.graphLoop.abort();
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphProcessor
    public void close() {
        this.graphLoop.close();
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphProcessor
    public y68<GraphState> getGraphState() {
        return this._graphState;
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphProcessor
    public Request getRepeatingRequest() {
        return this.graphLoop.getRepeatingRequest();
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphProcessor
    public void invalidate() {
        this.graphLoop.invalidate();
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphListener
    public void onGraphError(GraphState.GraphStateError graphStateError) {
        GraphState value;
        GraphState graphState;
        graphStateError.getClass();
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, this + " onGraphError(" + graphStateError + ')');
        }
        xg5<GraphState> xg5Var = this._graphState;
        do {
            value = xg5Var.getValue();
            graphState = value;
        } while (!xg5Var.a(value, ((graphState instanceof GraphState.GraphStateStopping) || (graphState instanceof GraphState.GraphStateStopped)) ? GraphState.GraphStateStopped.INSTANCE : graphStateError));
        Iterator<GraphStateListener> it = this.externalStateGraphListeners.iterator();
        while (it.hasNext()) {
            it.next().onGraphError(graphStateError);
        }
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphListener
    public void onGraphModified(GraphRequestProcessor graphRequestProcessor) {
        graphRequestProcessor.getClass();
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, this + " onGraphModified");
        }
        this.graphLoop.invalidate();
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphListener
    public void onGraphStarted(GraphRequestProcessor graphRequestProcessor) {
        graphRequestProcessor.getClass();
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, this + " onGraphStarted");
        }
        this._graphState.setValue(GraphState.GraphStateStarted.INSTANCE);
        this.graphLoop.setRequestProcessor(graphRequestProcessor);
        Iterator<GraphStateListener> it = this.externalStateGraphListeners.iterator();
        while (it.hasNext()) {
            it.next().onGraphStarted();
        }
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphListener
    public void onGraphStarting() {
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, this + " onGraphStarting");
        }
        this._graphState.setValue(GraphState.GraphStateStarting.INSTANCE);
        Iterator<GraphStateListener> it = this.externalStateGraphListeners.iterator();
        while (it.hasNext()) {
            it.next().onGraphStarting();
        }
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphListener
    public void onGraphStopped(GraphRequestProcessor graphRequestProcessor) {
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, this + " onGraphStopped");
        }
        this._graphState.setValue(GraphState.GraphStateStopped.INSTANCE);
        this.graphLoop.setRequestProcessor(null);
        Iterator<GraphStateListener> it = this.externalStateGraphListeners.iterator();
        while (it.hasNext()) {
            it.next().onGraphStopped();
        }
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphListener
    public void onGraphStopping() {
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, this + " onGraphStopping");
        }
        this._graphState.setValue(GraphState.GraphStateStopping.INSTANCE);
        this.graphLoop.setRequestProcessor(null);
        Iterator<GraphStateListener> it = this.externalStateGraphListeners.iterator();
        while (it.hasNext()) {
            it.next().onGraphStopping();
        }
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphProcessor
    public void setRepeatingRequest(Request request) {
        this.graphLoop.setRepeatingRequest(request);
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphProcessor
    public boolean submit(List<Request> list) {
        Object next;
        list.getClass();
        Iterator<T> it = list.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((Request) next).getInputRequest() == null);
        Request request = (Request) next;
        if (request == null || this.cameraGraphConfig.getInput() != null) {
            return this.graphLoop.submit(list);
        }
        StringBuilder sb = new StringBuilder("Cannot submit ");
        sb.append(request);
        InputRequest inputRequest = request.getInputRequest();
        sb.append(" with input request ");
        sb.append(inputRequest);
        sb.append(" to ");
        sb.append(this);
        sb.append(" because CameraGraph was not configured to support reprocessing");
        throw new IllegalStateException(sb.toString().toString());
    }

    public String toString() {
        return "GraphProcessor(cameraGraph: " + this.cameraGraphId + ')';
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphProcessor
    public boolean trigger(Map<?, ? extends Object> map) {
        map.getClass();
        return this.graphLoop.trigger(map);
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphProcessor
    public void update3AParameters(Map<?, ? extends Object> map) {
        map.getClass();
        this.graphLoop.setGraph3AParameters(map);
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphProcessor
    public void updateGraphParameters(Map<?, ? extends Object> map) {
        map.getClass();
        this.graphLoop.setGraphParameters(map);
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphProcessor
    public void updateRequestListeners(List<? extends Request.Listener> list) {
        list.getClass();
        this.graphLoop.setRequestListeners(list);
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphProcessor
    public boolean submit(Request request) {
        request.getClass();
        return submit(u96.h(request));
    }
}
