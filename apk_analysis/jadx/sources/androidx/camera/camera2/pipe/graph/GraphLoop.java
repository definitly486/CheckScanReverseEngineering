package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.CameraGraphId;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestsKt;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.ProcessingQueue;
import androidx.window.core.layout.WindowSizeClass;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.c32;
import defpackage.e02;
import defpackage.f02;
import defpackage.ht;
import defpackage.j59;
import defpackage.jh2;
import defpackage.jy8;
import defpackage.kt;
import defpackage.kx2;
import defpackage.kz1;
import defpackage.me0;
import defpackage.mx2;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.qn1;
import defpackage.r22;
import defpackage.u96;
import defpackage.uz4;
import defpackage.w22;
import defpackage.y22;
import defpackage.z22;
import java.io.Closeable;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class GraphLoop implements Closeable {
    public static final Companion Companion = new Companion(null);
    private final ht _captureProcessingEnabled;
    private Map<?, ? extends Object> _graph3AParameters;
    private Map<?, ? extends Object> _graphParameters;
    private Request _repeatingRequest;
    private List<? extends Request.Listener> _requestListeners;
    private GraphRequestProcessor _requestProcessor;
    private final CameraGraphId cameraGraphId;
    private volatile boolean closed;
    private Map<?, ? extends Object> currentGraph3AParameters;
    private Map<?, ? extends Object> currentGraphParameters;
    private Request currentRepeatingRequest;
    private List<? extends Request.Listener> currentRequestListeners;
    private GraphRequestProcessor currentRequestProcessor;
    private Map<?, ? extends Object> currentRequiredParameters;
    private final Map<?, Object> defaultParameters;
    private final y22 graphLoopScope;
    private final List<Listener> listeners;
    private final Object lock;
    private final ProcessingQueue<GraphCommand> processingQueue;
    private final List<Request.Listener> requiredListeners;
    private final Map<?, Object> requiredParameters;
    private final y22 shutdownScope;

    public interface Listener {
        void onGraphShutdown();

        void onGraphStopped();

        void onStopRepeating();
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.graph.GraphLoop$finalizeUnprocessedCommands$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.graph.GraphLoop$finalizeUnprocessedCommands$1", f = "GraphLoop.kt", l = {630, 631}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ GraphCommand $command;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(GraphCommand graphCommand, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$command = graphCommand;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass1(this.$command, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0041, code lost:
        
            if (r5.shutdown$camera_camera2_pipe(r4) == r0) goto L19;
         */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r5) {
            /*
                r4 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r4.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L1b
                if (r1 == r3) goto L17
                if (r1 != r2) goto L10
                defpackage.r57.b(r5)
                goto L44
            L10:
                java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r4)
                r4 = 0
                return r4
            L17:
                defpackage.r57.b(r5)
                goto L31
            L1b:
                defpackage.r57.b(r5)
                androidx.camera.camera2.pipe.graph.GraphCommand r5 = r4.$command
                androidx.camera.camera2.pipe.graph.GraphCommand$RequestProcessor r5 = (androidx.camera.camera2.pipe.graph.GraphCommand.RequestProcessor) r5
                androidx.camera.camera2.pipe.graph.GraphRequestProcessor r5 = r5.getOld()
                if (r5 == 0) goto L31
                r4.label = r3
                java.lang.Object r5 = r5.shutdown$camera_camera2_pipe(r4)
                if (r5 != r0) goto L31
                goto L43
            L31:
                androidx.camera.camera2.pipe.graph.GraphCommand r5 = r4.$command
                androidx.camera.camera2.pipe.graph.GraphCommand$RequestProcessor r5 = (androidx.camera.camera2.pipe.graph.GraphCommand.RequestProcessor) r5
                androidx.camera.camera2.pipe.graph.GraphRequestProcessor r5 = r5.getNew()
                if (r5 == 0) goto L44
                r4.label = r2
                java.lang.Object r4 = r5.shutdown$camera_camera2_pipe(r4)
                if (r4 != r0) goto L44
            L43:
                return r0
            L44:
                j59 r4 = defpackage.j59.a
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.graph.GraphLoop.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.graph.GraphLoop$processRequestProcessor$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.pipe.graph.GraphLoop", f = "GraphLoop.kt", l = {479, WindowSizeClass.HEIGHT_DP_MEDIUM_LOWER_BOUND, 488}, m = "processRequestProcessor", v = 1)
    public static final class C04261 extends f02 {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        public C04261(e02<? super C04261> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return GraphLoop.this.processRequestProcessor(null, 0, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.graph.GraphLoop$processShutdown$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.pipe.graph.GraphLoop", f = "GraphLoop.kt", l = {566, 572, 573}, m = "processShutdown", v = 1)
    public static final class C04271 extends f02 {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C04271(e02<? super C04271> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return GraphLoop.this.processShutdown(null, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public GraphLoop(CameraGraphId cameraGraphId, Map<?, ? extends Object> map, Map<?, ? extends Object> map2, List<? extends Request.Listener> list, List<? extends Listener> list2, y22 y22Var, r22 r22Var) {
        cameraGraphId.getClass();
        map.getClass();
        map2.getClass();
        list.getClass();
        list2.getClass();
        y22Var.getClass();
        r22Var.getClass();
        this.cameraGraphId = cameraGraphId;
        this.defaultParameters = map;
        this.requiredParameters = map2;
        this.requiredListeners = list;
        this.listeners = list2;
        this.shutdownScope = y22Var;
        kz1 kz1VarA = z22.a(r22Var.plus(new w22("CXCP-GraphLoop")));
        this.graphLoopScope = kz1VarA;
        this.processingQueue = ProcessingQueue.Companion.processIn(new ProcessingQueue(0, new GraphLoop$processingQueue$1(this), new GraphLoop$processingQueue$2(this), 1, null), kz1VarA);
        this.lock = new Object();
        mx2 mx2Var = mx2.b;
        this._graphParameters = mx2Var;
        this._graph3AParameters = mx2Var;
        this._requestListeners = kx2.b;
        this._captureProcessingEnabled = kt.a(true);
        this.currentGraphParameters = mx2Var;
        this.currentGraph3AParameters = mx2Var;
        this.currentRequiredParameters = map2;
        this.currentRequestListeners = list;
    }

    private final void abortRequests(List<Request> list) {
        List<Request> list2 = list;
        int size = list2.size();
        for (int i = 0; i < size; i++) {
            Request request = list.get(i);
            int size2 = this.currentRequestListeners.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.currentRequestListeners.get(i2).onAborted(request);
            }
        }
        int size3 = list2.size();
        for (int i3 = 0; i3 < size3; i3++) {
            Request request2 = list.get(i3);
            int size4 = request2.getListeners().size();
            for (int i4 = 0; i4 < size4; i4++) {
                request2.getListeners().get(i4).onAborted(request2);
            }
        }
    }

    private final boolean buildAndSubmit(boolean z, List<Request> list, Map<?, ? extends Object> map) {
        Map<?, ? extends Object> mapB;
        GraphRequestProcessor graphRequestProcessor = this.currentRequestProcessor;
        if (graphRequestProcessor == null) {
            return false;
        }
        Map<?, ? extends Object> map2 = this.defaultParameters;
        Map<?, ? extends Object> map3 = this.currentGraphParameters;
        if (map.isEmpty()) {
            mapB = this.currentRequiredParameters;
        } else {
            uz4 uz4Var = new uz4();
            RequestsKt.putAllMetadata(uz4Var, this.currentGraph3AParameters);
            RequestsKt.putAllMetadata(uz4Var, map);
            RequestsKt.putAllMetadata(uz4Var, this.requiredParameters);
            j59 j59Var = j59.a;
            mapB = uz4Var.b();
        }
        boolean zSubmit$camera_camera2_pipe = graphRequestProcessor.submit$camera_camera2_pipe(z, list, map2, map3, mapB, this.currentRequestListeners);
        if (!zSubmit$camera_camera2_pipe) {
            if (z) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w(Log.TAG, "Failed to repeat with " + qn1.k0(list));
                    return zSubmit$camera_camera2_pipe;
                }
            } else if (map.isEmpty()) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w(Log.TAG, "Failed to submit capture with " + list);
                    return zSubmit$camera_camera2_pipe;
                }
            } else if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "Failed to trigger with " + qn1.k0(list) + " and " + map);
            }
        }
        return zSubmit$camera_camera2_pipe;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ boolean buildAndSubmit$default(GraphLoop graphLoop, boolean z, List list, Map map, int i, Object obj) {
        if ((i & 4) != 0) {
            map = mx2.b;
        }
        return graphLoop.buildAndSubmit(z, list, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void finalizeUnprocessedCommands(List<? extends GraphCommand> list) {
        for (GraphCommand graphCommand : list) {
            if (graphCommand instanceof GraphCommand.Capture) {
                abortRequests(((GraphCommand.Capture) graphCommand).getRequests());
            } else if (graphCommand instanceof GraphCommand.RequestProcessor) {
                av0.c(this.shutdownScope, null, c32.UNDISPATCHED, new AnonymousClass1(graphCommand, null), 1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object process(List<GraphCommand> list, e02<? super j59> e02Var) {
        int iSelectGraphCommand = selectGraphCommand(list);
        GraphCommand graphCommand = list.get(iSelectGraphCommand);
        if (aa4.e(graphCommand, GraphCommand.Invalidate.INSTANCE)) {
            list.remove(iSelectGraphCommand);
        } else {
            if (aa4.e(graphCommand, GraphCommand.Shutdown.INSTANCE)) {
                Object objProcessShutdown = processShutdown(list, e02Var);
                return objProcessShutdown == a32.COROUTINE_SUSPENDED ? objProcessShutdown : j59.a;
            }
            if (aa4.e(graphCommand, GraphCommand.Abort.INSTANCE)) {
                processAbort(list, iSelectGraphCommand);
            } else if (aa4.e(graphCommand, GraphCommand.Stop.INSTANCE)) {
                processStop(list, iSelectGraphCommand);
            } else {
                if (graphCommand instanceof GraphCommand.RequestProcessor) {
                    Object objProcessRequestProcessor = processRequestProcessor(list, iSelectGraphCommand, (GraphCommand.RequestProcessor) graphCommand, e02Var);
                    return objProcessRequestProcessor == a32.COROUTINE_SUSPENDED ? objProcessRequestProcessor : j59.a;
                }
                if (graphCommand instanceof GraphCommand.Capture) {
                    processCapture$default(this, list, iSelectGraphCommand, (GraphCommand.Capture) graphCommand, false, 8, null);
                } else if (graphCommand instanceof GraphCommand.Trigger) {
                    processTrigger(list, iSelectGraphCommand, (GraphCommand.Trigger) graphCommand);
                } else if (graphCommand instanceof GraphCommand.Parameters) {
                    processParameters(list, iSelectGraphCommand, (GraphCommand.Parameters) graphCommand);
                } else if (graphCommand instanceof GraphCommand.Listeners) {
                    processListeners(list, iSelectGraphCommand, (GraphCommand.Listeners) graphCommand);
                } else {
                    if (!(graphCommand instanceof GraphCommand.Repeat)) {
                        me0.e();
                        return null;
                    }
                    processRepeat$default(this, list, iSelectGraphCommand, false, 4, null);
                }
            }
        }
        return j59.a;
    }

    private final void processAbort(List<GraphCommand> list, int i) {
        GraphRequestProcessor graphRequestProcessor = this.currentRequestProcessor;
        if (graphRequestProcessor != null) {
            graphRequestProcessor.abortCaptures$camera_camera2_pipe();
        }
        this.currentRepeatingRequest = null;
        list.remove(i);
        int i2 = 0;
        while (i2 < i) {
            GraphCommand graphCommand = list.get(i2);
            if (!aa4.e(graphCommand, GraphCommand.Stop.INSTANCE) && !aa4.e(graphCommand, GraphCommand.Abort.INSTANCE) && !(graphCommand instanceof GraphCommand.Repeat) && !(graphCommand instanceof GraphCommand.Trigger)) {
                if (graphCommand instanceof GraphCommand.Capture) {
                    abortRequests(((GraphCommand.Capture) graphCommand).getRequests());
                } else {
                    i2++;
                }
            }
            list.remove(i2);
            i--;
        }
    }

    private final void processCapture(List<GraphCommand> list, int i, GraphCommand.Capture capture, boolean z) {
        GraphLoop graphLoop;
        if (getCaptureProcessingEnabled()) {
            graphLoop = this;
            if (buildAndSubmit$default(graphLoop, false, capture.getRequests(), null, 4, null)) {
                list.remove(i);
                return;
            }
        } else {
            graphLoop = this;
        }
        if (!z || i <= 0) {
            return;
        }
        int i2 = i - 1;
        if (list.get(i2) instanceof GraphCommand.Repeat) {
            graphLoop.processRepeat(list, i2, false);
        } else {
            ah.f("Check failed.");
        }
    }

    public static /* synthetic */ void processCapture$default(GraphLoop graphLoop, List list, int i, GraphCommand.Capture capture, boolean z, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            z = true;
        }
        graphLoop.processCapture(list, i, capture, z);
    }

    private final void processListeners(List<GraphCommand> list, int i, GraphCommand.Listeners listeners) {
        this.currentRequestListeners = qn1.t0(qn1.x0(qn1.h0(this.requiredListeners, listeners.getListeners())));
        list.remove(i);
        int i2 = 0;
        while (i2 < i) {
            if (list.get(i2) instanceof GraphCommand.Listeners) {
                list.remove(i2);
                i--;
            } else {
                i2++;
            }
        }
        reissueRepeatingRequest();
    }

    private final void processParameters(List<GraphCommand> list, int i, GraphCommand.Parameters parameters) {
        Map<?, ? extends Object> mapB;
        this.currentGraphParameters = parameters.getGraphParameters();
        this.currentGraph3AParameters = parameters.getGraph3AParameters();
        if (parameters.getGraph3AParameters().isEmpty()) {
            mapB = this.requiredParameters;
        } else {
            uz4 uz4Var = new uz4();
            RequestsKt.putAllMetadata(uz4Var, parameters.getGraph3AParameters());
            RequestsKt.putAllMetadata(uz4Var, this.requiredParameters);
            mapB = uz4Var.b();
        }
        this.currentRequiredParameters = mapB;
        list.remove(i);
        int i2 = 0;
        while (i2 < i) {
            if (list.get(i2) instanceof GraphCommand.Parameters) {
                list.remove(i2);
                i--;
            } else {
                i2++;
            }
        }
        reissueRepeatingRequest();
    }

    private final void processRepeat(List<GraphCommand> list, int i, boolean z) {
        int i2;
        GraphLoop graphLoop;
        int i3 = i;
        while (true) {
            int i4 = 0;
            if (-1 >= i3) {
                GraphLoop graphLoop2 = this;
                if (!z || (i2 = i + 1) >= list.size()) {
                    return;
                }
                GraphCommand graphCommand = list.get(i2);
                if (graphCommand instanceof GraphCommand.Capture) {
                    graphLoop2.processCapture(list, i2, (GraphCommand.Capture) graphCommand, false);
                    return;
                } else {
                    if (graphCommand instanceof GraphCommand.Trigger) {
                        graphLoop2.processTrigger(list, i2, (GraphCommand.Trigger) graphCommand);
                        return;
                    }
                    return;
                }
            }
            GraphCommand graphCommand2 = list.get(i3);
            if (graphCommand2 instanceof GraphCommand.Repeat) {
                GraphCommand.Repeat repeat = (GraphCommand.Repeat) graphCommand2;
                graphLoop = this;
                if (buildAndSubmit$default(graphLoop, true, u96.h(repeat.getRequest()), null, 4, null)) {
                    graphLoop.currentRepeatingRequest = repeat.getRequest();
                    list.remove(i3);
                    while (i4 < i3) {
                        if (list.get(i4) instanceof GraphCommand.Repeat) {
                            list.remove(i4);
                            i3--;
                        } else {
                            i4++;
                        }
                    }
                    return;
                }
            } else {
                graphLoop = this;
            }
            i3--;
            this = graphLoop;
        }
    }

    public static /* synthetic */ void processRepeat$default(GraphLoop graphLoop, List list, int i, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z = true;
        }
        graphLoop.processRepeat(list, i, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:20:0x0094  */
    /* JADX WARN: Code duplicated, block: B:38:0x0102  */
    /* JADX WARN: Code duplicated, block: B:40:0x0105  */
    /* JADX WARN: Code duplicated, block: B:41:0x010b  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00da -> B:37:0x00f5). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00f3 -> B:36:0x00f4). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0102 -> B:39:0x0103). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object processRequestProcessor(java.util.List<androidx.camera.camera2.pipe.graph.GraphCommand> r18, int r19, androidx.camera.camera2.pipe.graph.GraphCommand.RequestProcessor r20, defpackage.e02<? super defpackage.j59> r21) {
        /*
            Method dump skipped, instruction units count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.graph.GraphLoop.processRequestProcessor(java.util.List, int, androidx.camera.camera2.pipe.graph.GraphCommand$RequestProcessor, e02):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:31:0x009e  */
    /* JADX WARN: Code duplicated, block: B:48:0x00e4 A[PHI: r3 r8 r11
      0x00e4: PHI (r3v5 int) = (r3v3 int), (r3v8 int) binds: [B:32:0x00a6, B:47:0x00e2] A[DONT_GENERATE, DONT_INLINE]
      0x00e4: PHI (r8v8 java.util.List<androidx.camera.camera2.pipe.graph.GraphCommand>) = 
      (r8v7 java.util.List<androidx.camera.camera2.pipe.graph.GraphCommand>)
      (r8v9 java.util.List<androidx.camera.camera2.pipe.graph.GraphCommand>)
     binds: [B:32:0x00a6, B:47:0x00e2] A[DONT_GENERATE, DONT_INLINE]
      0x00e4: PHI (r11v6 int) = (r11v5 int), (r11v7 int) binds: [B:32:0x00a6, B:47:0x00e2] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a6 -> B:48:0x00e4). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00cf -> B:47:0x00e2). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00df -> B:47:0x00e2). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object processShutdown(java.util.List<androidx.camera.camera2.pipe.graph.GraphCommand> r11, defpackage.e02<? super defpackage.j59> r12) {
        /*
            Method dump skipped, instruction units count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.graph.GraphLoop.processShutdown(java.util.List, e02):java.lang.Object");
    }

    private final void processStop(List<GraphCommand> list, int i) {
        GraphRequestProcessor graphRequestProcessor = this.currentRequestProcessor;
        if (graphRequestProcessor != null) {
            graphRequestProcessor.stopRepeating$camera_camera2_pipe();
        }
        this.currentRepeatingRequest = null;
        list.remove(i);
        int i2 = 0;
        while (i2 < i) {
            GraphCommand graphCommand = list.get(i2);
            if (aa4.e(graphCommand, GraphCommand.Stop.INSTANCE) || (graphCommand instanceof GraphCommand.Repeat)) {
                list.remove(i2);
                i--;
            } else {
                i2++;
            }
        }
    }

    private final void processTrigger(List<GraphCommand> list, int i, GraphCommand.Trigger trigger) {
        Request request = this.currentRepeatingRequest;
        if (request == null && i == 0) {
            list.remove(i);
            return;
        }
        if (getCaptureProcessingEnabled() && request != null && buildAndSubmit(false, u96.h(request), trigger.getTriggerParameters())) {
            list.remove(i);
            return;
        }
        if (i > 0) {
            int i2 = i - 1;
            if (list.get(i2) instanceof GraphCommand.Repeat) {
                processRepeat(list, i2, false);
            } else {
                ah.f("Check failed.");
            }
        }
    }

    private final boolean reissueRepeatingRequest() {
        GraphRequestProcessor graphRequestProcessor = this.currentRequestProcessor;
        if (graphRequestProcessor == null) {
            return false;
        }
        Request request = this.currentRepeatingRequest;
        return aa4.e(request != null ? Boolean.valueOf(graphRequestProcessor.submit$camera_camera2_pipe(true, u96.h(request), this.defaultParameters, this.currentGraphParameters, this.currentRequiredParameters, this.currentRequestListeners)) : null, Boolean.TRUE);
    }

    private final int selectGraphCommand(List<GraphCommand> list) {
        if (list.size() == 1) {
            return 0;
        }
        List<GraphCommand> list2 = list;
        int size = list2.size() - 1;
        int i = -1;
        if (size >= 0) {
            while (true) {
                int i2 = size - 1;
                GraphCommand graphCommand = list.get(size);
                if (aa4.e(graphCommand, GraphCommand.Abort.INSTANCE) || aa4.e(graphCommand, GraphCommand.Invalidate.INSTANCE) || aa4.e(graphCommand, GraphCommand.Stop.INSTANCE) || aa4.e(graphCommand, GraphCommand.Shutdown.INSTANCE)) {
                    return size;
                }
                if ((graphCommand instanceof GraphCommand.RequestProcessor) && i < 0) {
                    i = size;
                }
                if (i2 < 0) {
                    break;
                }
                size = i2;
            }
        }
        if (i >= 0) {
            return i;
        }
        int size2 = list2.size();
        int i3 = -1;
        int i4 = -1;
        for (int i5 = 0; i5 < size2; i5++) {
            GraphCommand graphCommand2 = list.get(i5);
            if (!(graphCommand2 instanceof GraphCommand.Parameters)) {
                if (!(graphCommand2 instanceof GraphCommand.Listeners)) {
                    if (!(graphCommand2 instanceof GraphCommand.Repeat)) {
                        break;
                    }
                } else {
                    i4 = i5;
                }
            } else {
                i3 = i5;
            }
        }
        if (i3 >= 0) {
            return i3;
        }
        if (i4 >= 0) {
            return i4;
        }
        if (this.currentRepeatingRequest != null && getCaptureProcessingEnabled()) {
            int size3 = list2.size();
            for (int i6 = 0; i6 < size3; i6++) {
                GraphCommand graphCommand3 = list.get(i6);
                if ((graphCommand3 instanceof GraphCommand.Capture) || (graphCommand3 instanceof GraphCommand.Trigger)) {
                    return i6;
                }
            }
        }
        int size4 = list2.size();
        int i7 = -1;
        int i8 = 0;
        while (i8 < size4 && (list.get(i8) instanceof GraphCommand.Repeat)) {
            int i9 = i8;
            i8++;
            i7 = i9;
        }
        if (i7 >= 0) {
            return i7;
        }
        return 0;
    }

    public final void abort() {
        this.processingQueue.tryEmit(GraphCommand.Abort.INSTANCE);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.lock) {
            try {
                if (this.closed) {
                    return;
                }
                this.closed = true;
                GraphRequestProcessor graphRequestProcessor = this._requestProcessor;
                if (graphRequestProcessor != null) {
                    av0.c(this.shutdownScope, null, null, new GraphLoop$close$1$1$1(graphRequestProcessor, null), 3);
                }
                this._requestProcessor = null;
                this.processingQueue.tryEmit(GraphCommand.Shutdown.INSTANCE);
                int size = this.listeners.size();
                for (int i = 0; i < size; i++) {
                    this.listeners.get(i).onGraphShutdown();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean getCaptureProcessingEnabled() {
        return this._captureProcessingEnabled.b();
    }

    public final Map<?, Object> getGraph3AParameters() {
        Map<?, ? extends Object> map;
        synchronized (this.lock) {
            map = this._graph3AParameters;
        }
        return map;
    }

    public final Map<?, Object> getGraphParameters() {
        Map<?, ? extends Object> map;
        synchronized (this.lock) {
            map = this._graphParameters;
        }
        return map;
    }

    public final Request getRepeatingRequest() {
        Request request;
        synchronized (this.lock) {
            request = this._repeatingRequest;
        }
        return request;
    }

    public final List<Request.Listener> getRequestListeners() {
        List list;
        synchronized (this.lock) {
            list = this._requestListeners;
        }
        return list;
    }

    public final GraphRequestProcessor getRequestProcessor() {
        GraphRequestProcessor graphRequestProcessor;
        synchronized (this.lock) {
            graphRequestProcessor = this._requestProcessor;
        }
        return graphRequestProcessor;
    }

    public final void invalidate() {
        this.processingQueue.tryEmit(GraphCommand.Invalidate.INSTANCE);
    }

    public final void setCaptureProcessingEnabled(boolean z) {
        this._captureProcessingEnabled.a = z ? 1 : 0;
        jy8.a aVar = jy8.a.a;
        if (z) {
            invalidate();
        }
    }

    public final void setGraph3AParameters(Map<?, ? extends Object> map) {
        map.getClass();
        synchronized (this.lock) {
            this._graph3AParameters = map;
            this.processingQueue.tryEmit(new GraphCommand.Parameters(this._graphParameters, map));
            j59 j59Var = j59.a;
        }
    }

    public final void setGraphParameters(Map<?, ? extends Object> map) {
        map.getClass();
        synchronized (this.lock) {
            this._graphParameters = map;
            this.processingQueue.tryEmit(new GraphCommand.Parameters(map, this._graph3AParameters));
            j59 j59Var = j59.a;
        }
    }

    public final void setRepeatingRequest(Request request) {
        synchronized (this.lock) {
            try {
                Request request2 = this._repeatingRequest;
                this._repeatingRequest = request;
                if (request2 != null || request != null) {
                    ProcessingQueue<GraphCommand> processingQueue = this.processingQueue;
                    if (request != null) {
                        processingQueue.tryEmit(new GraphCommand.Repeat(request));
                    } else {
                        processingQueue.tryEmit(GraphCommand.Stop.INSTANCE);
                    }
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (request == null) {
            int size = this.listeners.size();
            for (int i = 0; i < size; i++) {
                this.listeners.get(i).onStopRepeating();
            }
        }
    }

    public final void setRequestListeners(List<? extends Request.Listener> list) {
        list.getClass();
        synchronized (this.lock) {
            this._requestListeners = list;
            this.processingQueue.tryEmit(new GraphCommand.Listeners(list));
            j59 j59Var = j59.a;
        }
    }

    public final void setRequestProcessor(GraphRequestProcessor graphRequestProcessor) {
        synchronized (this.lock) {
            GraphRequestProcessor graphRequestProcessor2 = this._requestProcessor;
            this._requestProcessor = graphRequestProcessor;
            if (this.closed) {
                this._requestProcessor = null;
                if (graphRequestProcessor != null) {
                    av0.c(this.shutdownScope, null, null, new GraphLoop$requestProcessor$2$1(graphRequestProcessor, null), 3);
                }
                return;
            }
            if (graphRequestProcessor2 != graphRequestProcessor) {
                this.processingQueue.tryEmit(new GraphCommand.RequestProcessor(graphRequestProcessor2, graphRequestProcessor));
            }
            j59 j59Var = j59.a;
            if (graphRequestProcessor == null) {
                int size = this.listeners.size();
                for (int i = 0; i < size; i++) {
                    this.listeners.get(i).onGraphStopped();
                }
            }
        }
    }

    public final boolean submit(List<Request> list) {
        list.getClass();
        if (this.processingQueue.tryEmit(new GraphCommand.Capture(list))) {
            return true;
        }
        abortRequests(list);
        return false;
    }

    public String toString() {
        return "GraphLoop(" + this.cameraGraphId + ')';
    }

    public final boolean trigger(Map<?, ? extends Object> map) {
        map.getClass();
        if (getRepeatingRequest() != null) {
            return this.processingQueue.tryEmit(new GraphCommand.Trigger(map));
        }
        ah.f("Cannot submit parameters without an active repeating request!");
        return false;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private final <T> void removeUpTo(List<T> list, int i, nl3<? super T, Boolean> nl3Var) {
            int i2 = 0;
            while (i2 < i) {
                if (nl3Var.invoke(list.get(i2)).booleanValue()) {
                    list.remove(i2);
                    i--;
                } else {
                    i2++;
                }
            }
        }

        private Companion() {
        }
    }

    public final boolean submit(Request request) {
        request.getClass();
        return submit(u96.h(request));
    }
}
