package androidx.camera.camera2.pipe.internal;

import android.content.res.TypedArray;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.Frame;
import androidx.camera.camera2.pipe.FrameId;
import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.OutputStatus;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.media.OutputImage;
import androidx.camera.camera2.pipe.media.SharedOutputImage;
import defpackage.a32;
import defpackage.ah;
import defpackage.ar4;
import defpackage.e02;
import defpackage.g03;
import defpackage.h03;
import defpackage.jh2;
import defpackage.jy8;
import defpackage.kn1;
import defpackage.kt;
import defpackage.lg;
import defpackage.lt;
import defpackage.me0;
import defpackage.mi2;
import defpackage.mk2;
import defpackage.mt;
import defpackage.ot;
import defpackage.qn1;
import defpackage.r57;
import defpackage.u96;
import defpackage.xp1;
import defpackage.yp1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class FrameState {
    public static final Companion Companion = new Companion(null);
    private static final mt frameIds = kt.c();
    private final long frameId;
    private final FrameInfoOutput frameInfoOutput;
    private final long frameNumber;
    private final long frameTimestamp;
    private final List<ImageOutput> imageOutputs;
    private final CopyOnWriteArrayList<ListenerState> listenerStates;
    private final lt remainingStreamCount;
    private final RequestMetadata requestMetadata;
    private final ot<State> state;

    public final class FrameInfoOutput extends FrameOutput<FrameInfo> implements OutputDistributor.OutputListener<FrameInfo> {
        public FrameInfoOutput() {
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // androidx.camera.camera2.pipe.internal.FrameState.FrameOutput
        public Object await(e02<? super FrameInfo> e02Var) {
            FrameState$FrameInfoOutput$await$1 frameState$FrameInfoOutput$await$1;
            if (e02Var instanceof FrameState$FrameInfoOutput$await$1) {
                frameState$FrameInfoOutput$await$1 = (FrameState$FrameInfoOutput$await$1) e02Var;
                int i = frameState$FrameInfoOutput$await$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    frameState$FrameInfoOutput$await$1.label = i - Integer.MIN_VALUE;
                } else {
                    frameState$FrameInfoOutput$await$1 = new FrameState$FrameInfoOutput$await$1(this, e02Var);
                }
            } else {
                frameState$FrameInfoOutput$await$1 = new FrameState$FrameInfoOutput$await$1(this, e02Var);
            }
            Object objZ = frameState$FrameInfoOutput$await$1.result;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i2 = frameState$FrameInfoOutput$await$1.label;
            if (i2 == 0) {
                r57.b(objZ);
                mk2<OutputResult<FrameInfo>> result = getResult();
                frameState$FrameInfoOutput$await$1.label = 1;
                objZ = result.Z(frameState$FrameInfoOutput$await$1);
                if (objZ == a32Var) {
                    return a32Var;
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(objZ);
            }
            Object objM974unboximpl = ((OutputResult) objZ).m974unboximpl();
            if (OutputResult.m968getAvailableimpl(objM974unboximpl)) {
                return objM974unboximpl;
            }
            return null;
        }

        @Override // androidx.camera.camera2.pipe.internal.OutputDistributor.OutputListener
        /* JADX INFO: renamed from: onOutputComplete-3ejhThk, reason: not valid java name */
        public void mo943onOutputComplete3ejhThk(long j, long j2, long j3, long j4, Object obj) {
            getInternalResult().f(OutputResult.m964boximpl(obj));
            FrameState.this.onFrameInfoComplete();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.camera.camera2.pipe.internal.FrameState.FrameOutput
        public FrameInfo outputOrNull() {
            OutputResult.Companion companion = OutputResult.Companion;
            mk2<OutputResult<FrameInfo>> result = getResult();
            Object obj = null;
            if (result.P() && !result.isCancelled()) {
                Object objM974unboximpl = result.m().m974unboximpl();
                if (OutputResult.m968getAvailableimpl(objM974unboximpl)) {
                    obj = objM974unboximpl;
                }
            }
            return (FrameInfo) obj;
        }

        @Override // androidx.camera.camera2.pipe.internal.FrameState.FrameOutput
        public void release() {
        }
    }

    public static abstract class FrameOutput<T> {
        private final lt count = kt.b(1);
        private final xp1<OutputResult<T>> internalResult = new yp1();

        public abstract Object await(e02<? super T> e02Var);

        public final void decrement() {
            if (this.count.a() == 0) {
                OutputResult.Companion companion = OutputResult.Companion;
                this.internalResult.f(OutputResult.m964boximpl(OutputResult.m965constructorimpl(OutputStatus.m510boximpl(OutputStatus.Companion.m523getUNAVAILABLEU7r42EA()))));
                release();
            }
        }

        public final xp1<OutputResult<T>> getInternalResult() {
            return this.internalResult;
        }

        public final mk2<OutputResult<T>> getResult() {
            return this.internalResult;
        }

        /* JADX INFO: renamed from: getStatus-U7r42EA, reason: not valid java name */
        public final int m944getStatusU7r42EA() {
            if (this.count.a == 0) {
                return OutputStatus.Companion.m523getUNAVAILABLEU7r42EA();
            }
            OutputResult.Companion companion = OutputResult.Companion;
            xp1<OutputResult<T>> xp1Var = this.internalResult;
            if (!xp1Var.P()) {
                return OutputStatus.Companion.m522getPENDINGU7r42EA();
            }
            if (xp1Var.isCancelled()) {
                return OutputStatus.Companion.m523getUNAVAILABLEU7r42EA();
            }
            Object objM974unboximpl = xp1Var.m().m974unboximpl();
            if (OutputResult.m968getAvailableimpl(objM974unboximpl)) {
                return OutputStatus.Companion.m517getAVAILABLEU7r42EA();
            }
            return objM974unboximpl == null ? OutputStatus.Companion.m523getUNAVAILABLEU7r42EA() : ((OutputStatus) objM974unboximpl).m516unboximpl();
        }

        public final boolean increment() {
            int i;
            boolean zCompareAndSet;
            lt ltVar = this.count;
            do {
                int i2 = ltVar.a;
                i = i2 <= 0 ? 0 : i2 + 1;
                zCompareAndSet = lt.b.compareAndSet(ltVar, i2, i);
                if (zCompareAndSet) {
                    jy8.a aVar = jy8.a.a;
                }
            } while (!zCompareAndSet);
            return i != 0;
        }

        public abstract T outputOrNull();

        public abstract void release();
    }

    public enum State {
        STARTED,
        FRAME_INFO_COMPLETE,
        STREAM_RESULTS_COMPLETE,
        COMPLETE;

        private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

        public static g03<State> getEntries() {
            return $ENTRIES;
        }
    }

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[State.values().length];
            try {
                iArr[State.STARTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[State.FRAME_INFO_COMPLETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[State.STREAM_RESULTS_COMPLETE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[State.COMPLETE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private FrameState(RequestMetadata requestMetadata, long j, long j2, Set<CameraStream> set) {
        Object next;
        requestMetadata.getClass();
        set.getClass();
        this.requestMetadata = requestMetadata;
        this.frameNumber = j;
        this.frameTimestamp = j2;
        this.frameId = Companion.m942nextFrameIdOMxQvVY();
        this.frameInfoOutput = new FrameInfoOutput();
        ar4 ar4VarE = u96.e();
        Iterator<StreamId> it = requestMetadata.getStreams().keySet().iterator();
        while (it.hasNext()) {
            int iM729unboximpl = it.next().m729unboximpl();
            Iterator<T> it2 = set.iterator();
            do {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
            } while (!StreamId.m726equalsimpl0(((CameraStream) next).m383getIdptHMqGs(), iM729unboximpl));
            CameraStream cameraStream = (CameraStream) next;
            if (cameraStream != null) {
                List<OutputStream> outputs = cameraStream.getOutputs();
                lt ltVarB = kt.b(outputs.size());
                int size = outputs.size();
                for (int i = 0; i < size; i++) {
                    ar4VarE.add(new ImageOutput(this, iM729unboximpl, outputs.get(i).mo527getId4LaLFng(), ltVarB, null));
                }
            }
        }
        ar4 ar4VarD = u96.d(ar4VarE);
        this.imageOutputs = ar4VarD;
        this.state = kt.d(State.STARTED);
        ArrayList arrayList = new ArrayList(kn1.q(ar4VarD, 10));
        Iterator<E> it3 = ar4VarD.iterator();
        while (it3.hasNext()) {
            arrayList.add(StreamId.m723boximpl(((ImageOutput) it3.next()).m946getStreamIdptHMqGs()));
        }
        this.remainingStreamCount = kt.b(qn1.t0(qn1.x0(arrayList)).size());
        this.listenerStates = new CopyOnWriteArrayList<>();
    }

    private final void invokeOnFrameComplete() {
        Iterator<ListenerState> it = this.listenerStates.iterator();
        it.getClass();
        while (it.hasNext()) {
            it.next().m947invokeOnFrameCompletecfZT5Y(this.frameNumber, this.frameTimestamp);
        }
    }

    public final void addListener(Frame.Listener listener) {
        listener.getClass();
        ListenerState listenerState = new ListenerState(listener);
        this.listenerStates.add(listenerState);
        int i = WhenMappings.$EnumSwitchMapping$0[this.state.b.ordinal()];
        if (i == 1) {
            listenerState.m951invokeOnStartedcfZT5Y(this.frameNumber, this.frameTimestamp);
            return;
        }
        if (i == 2) {
            listenerState.m948invokeOnFrameInfoAvailablecfZT5Y(this.frameNumber, this.frameTimestamp);
            return;
        }
        if (i == 3) {
            listenerState.m950invokeOnImagesAvailablecfZT5Y(this.frameNumber, this.frameTimestamp);
        } else if (i == 4) {
            listenerState.m947invokeOnFrameCompletecfZT5Y(this.frameNumber, this.frameTimestamp);
        } else {
            me0.e();
        }
    }

    /* JADX INFO: renamed from: getFrameId-OMxQvVY, reason: not valid java name */
    public final long m937getFrameIdOMxQvVY() {
        return this.frameId;
    }

    public final FrameInfoOutput getFrameInfoOutput() {
        return this.frameInfoOutput;
    }

    /* JADX INFO: renamed from: getFrameNumber-Ugla2oM, reason: not valid java name */
    public final long m938getFrameNumberUgla2oM() {
        return this.frameNumber;
    }

    /* JADX INFO: renamed from: getFrameTimestamp-LS1Wq50, reason: not valid java name */
    public final long m939getFrameTimestampLS1Wq50() {
        return this.frameTimestamp;
    }

    public final List<ImageOutput> getImageOutputs() {
        return this.imageOutputs;
    }

    public final RequestMetadata getRequestMetadata() {
        return this.requestMetadata;
    }

    public final void onFrameInfoComplete() {
        State state;
        State state2;
        ot<State> otVar = this.state;
        do {
            state = otVar.b;
            State state3 = state;
            int i = WhenMappings.$EnumSwitchMapping$0[state3.ordinal()];
            if (i == 1) {
                state2 = State.FRAME_INFO_COMPLETE;
            } else {
                if (i != 3) {
                    throw new IllegalStateException("Unexpected frame state for " + this + "! State is " + state3 + ' ');
                }
                state2 = State.COMPLETE;
            }
        } while (!otVar.a(state, state2));
        Iterator<ListenerState> it = this.listenerStates.iterator();
        it.getClass();
        while (it.hasNext()) {
            it.next().m948invokeOnFrameInfoAvailablecfZT5Y(this.frameNumber, this.frameTimestamp);
        }
        if (state2 == State.COMPLETE) {
            invokeOnFrameComplete();
        }
    }

    /* JADX INFO: renamed from: onStreamResultComplete-aKI5c8E, reason: not valid java name */
    public final void m940onStreamResultCompleteaKI5c8E(int i) {
        State state;
        State state2;
        if (this.remainingStreamCount.a() != 0) {
            return;
        }
        ot<State> otVar = this.state;
        do {
            state = otVar.b;
            State state3 = state;
            int i2 = WhenMappings.$EnumSwitchMapping$0[state3.ordinal()];
            if (i2 == 1) {
                state2 = State.STREAM_RESULTS_COMPLETE;
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("Unexpected frame state for " + this + "! State is " + state3 + ' ');
                }
                state2 = State.COMPLETE;
            }
        } while (!otVar.a(state, state2));
        Iterator<ListenerState> it = this.listenerStates.iterator();
        it.getClass();
        while (it.hasNext()) {
            it.next().m950invokeOnImagesAvailablecfZT5Y(this.frameNumber, this.frameTimestamp);
        }
        if (state2 == State.COMPLETE) {
            invokeOnFrameComplete();
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Frame-");
        sb.append((Object) FrameId.m459toStringimpl(this.frameId));
        sb.append('(');
        sb.append(this.frameNumber);
        sb.append('@');
        return lg.f(sb, this.frameTimestamp, ')');
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: nextFrameId-OMxQvVY, reason: not valid java name */
        public final long m942nextFrameIdOMxQvVY() {
            return FrameId.m455constructorimpl(FrameState.frameIds.a());
        }

        private Companion() {
        }
    }

    public final class ImageOutput extends FrameOutput<SharedOutputImage> implements OutputDistributor.OutputListener<OutputImage> {
        private final int outputId;
        private final lt remainingOutputResults;
        private final int streamId;
        final /* synthetic */ FrameState this$0;

        private ImageOutput(FrameState frameState, int i, int i2, lt ltVar) {
            ltVar.getClass();
            this.this$0 = frameState;
            this.streamId = i;
            this.outputId = i2;
            this.remainingOutputResults = ltVar;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // androidx.camera.camera2.pipe.internal.FrameState.FrameOutput
        public Object await(e02<? super SharedOutputImage> e02Var) {
            FrameState$ImageOutput$await$1 frameState$ImageOutput$await$1;
            if (e02Var instanceof FrameState$ImageOutput$await$1) {
                frameState$ImageOutput$await$1 = (FrameState$ImageOutput$await$1) e02Var;
                int i = frameState$ImageOutput$await$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    frameState$ImageOutput$await$1.label = i - Integer.MIN_VALUE;
                } else {
                    frameState$ImageOutput$await$1 = new FrameState$ImageOutput$await$1(this, e02Var);
                }
            } else {
                frameState$ImageOutput$await$1 = new FrameState$ImageOutput$await$1(this, e02Var);
            }
            Object objZ = frameState$ImageOutput$await$1.result;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i2 = frameState$ImageOutput$await$1.label;
            if (i2 == 0) {
                r57.b(objZ);
                mk2<OutputResult<SharedOutputImage>> result = getResult();
                frameState$ImageOutput$await$1.label = 1;
                objZ = result.Z(frameState$ImageOutput$await$1);
                if (objZ == a32Var) {
                    return a32Var;
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(objZ);
            }
            Object objM974unboximpl = ((OutputResult) objZ).m974unboximpl();
            if (!OutputResult.m968getAvailableimpl(objM974unboximpl)) {
                objM974unboximpl = null;
            }
            SharedOutputImage sharedOutputImage = (SharedOutputImage) objM974unboximpl;
            if (sharedOutputImage != null) {
                return sharedOutputImage.acquireOrNull();
            }
            return null;
        }

        /* JADX INFO: renamed from: getOutputId-4LaLFng, reason: not valid java name */
        public final int m945getOutputId4LaLFng() {
            return this.outputId;
        }

        /* JADX INFO: renamed from: getStreamId-ptHMqGs, reason: not valid java name */
        public final int m946getStreamIdptHMqGs() {
            return this.streamId;
        }

        @Override // androidx.camera.camera2.pipe.internal.OutputDistributor.OutputListener
        /* JADX INFO: renamed from: onOutputComplete-3ejhThk */
        public void mo943onOutputComplete3ejhThk(long j, long j2, long j3, long j4, Object obj) throws Exception {
            int iM523getUNAVAILABLEU7r42EA;
            boolean zIsTerminated;
            OutputImage outputImage = (OutputImage) (OutputResult.m968getAvailableimpl(obj) ? obj : null);
            if (outputImage != null) {
                AutoCloseable autoCloseableFrom = SharedOutputImage.Companion.from(outputImage);
                if (!getInternalResult().f(OutputResult.m964boximpl(OutputResult.m965constructorimpl(autoCloseableFrom)))) {
                    if (autoCloseableFrom instanceof AutoCloseable) {
                        autoCloseableFrom.close();
                    } else if (autoCloseableFrom instanceof ExecutorService) {
                        ExecutorService executorService = (ExecutorService) autoCloseableFrom;
                        if (executorService != ForkJoinPool.commonPool() && !(zIsTerminated = executorService.isTerminated())) {
                            executorService.shutdown();
                            boolean z = false;
                            while (!zIsTerminated) {
                                try {
                                    zIsTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
                                } catch (InterruptedException unused) {
                                    if (!z) {
                                        executorService.shutdownNow();
                                        z = true;
                                    }
                                }
                            }
                            if (z) {
                                Thread.currentThread().interrupt();
                            }
                        }
                    } else if (autoCloseableFrom instanceof TypedArray) {
                        ((TypedArray) autoCloseableFrom).recycle();
                    } else if (autoCloseableFrom instanceof MediaMetadataRetriever) {
                        ((MediaMetadataRetriever) autoCloseableFrom).release();
                    } else {
                        if (!(autoCloseableFrom instanceof MediaDrm)) {
                            mi2.b();
                            return;
                        }
                        ((MediaDrm) autoCloseableFrom).release();
                    }
                }
            } else {
                xp1<OutputResult<SharedOutputImage>> internalResult = getInternalResult();
                if (OutputResult.m968getAvailableimpl(obj)) {
                    iM523getUNAVAILABLEU7r42EA = OutputStatus.Companion.m517getAVAILABLEU7r42EA();
                } else {
                    iM523getUNAVAILABLEU7r42EA = obj == null ? OutputStatus.Companion.m523getUNAVAILABLEU7r42EA() : ((OutputStatus) obj).m516unboximpl();
                }
                internalResult.f(OutputResult.m964boximpl(OutputResult.m965constructorimpl(OutputStatus.m510boximpl(iM523getUNAVAILABLEU7r42EA))));
            }
            if (this.remainingOutputResults.a() == 0) {
                Iterator it = this.this$0.listenerStates.iterator();
                it.getClass();
                while (it.hasNext()) {
                    ((ListenerState) it.next()).m949invokeOnImageAvailableaKI5c8E(this.streamId);
                }
                this.this$0.m940onStreamResultCompleteaKI5c8E(this.streamId);
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Code duplicated, block: B:9:0x0024  */
        @Override // androidx.camera.camera2.pipe.internal.FrameState.FrameOutput
        public SharedOutputImage outputOrNull() {
            Object objM974unboximpl;
            OutputResult.Companion companion = OutputResult.Companion;
            mk2<OutputResult<SharedOutputImage>> result = getResult();
            if (!result.P() || result.isCancelled()) {
                objM974unboximpl = null;
            } else {
                objM974unboximpl = result.m().m974unboximpl();
                if (!OutputResult.m968getAvailableimpl(objM974unboximpl)) {
                    objM974unboximpl = null;
                }
            }
            SharedOutputImage sharedOutputImage = (SharedOutputImage) objM974unboximpl;
            if (sharedOutputImage != null) {
                return sharedOutputImage.acquireOrNull();
            }
            return null;
        }

        @Override // androidx.camera.camera2.pipe.internal.FrameState.FrameOutput
        public void release() throws Exception {
            boolean zIsTerminated;
            OutputResult.Companion companion = OutputResult.Companion;
            xp1<OutputResult<SharedOutputImage>> internalResult = getInternalResult();
            Object obj = null;
            if (internalResult.P() && !internalResult.isCancelled()) {
                Object objM974unboximpl = internalResult.m().m974unboximpl();
                if (OutputResult.m968getAvailableimpl(objM974unboximpl)) {
                    obj = objM974unboximpl;
                }
            }
            AutoCloseable autoCloseable = (SharedOutputImage) obj;
            if (autoCloseable != null) {
                if (autoCloseable instanceof AutoCloseable) {
                    autoCloseable.close();
                    return;
                }
                if (!(autoCloseable instanceof ExecutorService)) {
                    if (autoCloseable instanceof TypedArray) {
                        ((TypedArray) autoCloseable).recycle();
                        return;
                    }
                    if (autoCloseable instanceof MediaMetadataRetriever) {
                        ((MediaMetadataRetriever) autoCloseable).release();
                        return;
                    } else if (autoCloseable instanceof MediaDrm) {
                        ((MediaDrm) autoCloseable).release();
                        return;
                    } else {
                        mi2.b();
                        return;
                    }
                }
                ExecutorService executorService = (ExecutorService) autoCloseable;
                if (executorService == ForkJoinPool.commonPool() || (zIsTerminated = executorService.isTerminated())) {
                    return;
                }
                executorService.shutdown();
                boolean z = false;
                while (!zIsTerminated) {
                    try {
                        zIsTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
                    } catch (InterruptedException unused) {
                        if (!z) {
                            executorService.shutdownNow();
                            z = true;
                        }
                    }
                }
                if (z) {
                    Thread.currentThread().interrupt();
                }
            }
        }

        public /* synthetic */ ImageOutput(FrameState frameState, int i, int i2, lt ltVar, jh2 jh2Var) {
            this(frameState, i, i2, ltVar);
        }
    }

    public /* synthetic */ FrameState(RequestMetadata requestMetadata, long j, long j2, Set set, jh2 jh2Var) {
        this(requestMetadata, j, j2, set);
    }
}
