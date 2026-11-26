package androidx.camera.camera2.impl;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.view.Surface;
import androidx.camera.camera2.adapter.CaptureConfigAdapter;
import androidx.camera.camera2.adapter.CaptureResultAdapter;
import androidx.camera.camera2.compat.workaround.FlashAvailabilityCheckerKt;
import androidx.camera.camera2.compat.workaround.UseTorchAsFlash;
import androidx.camera.camera2.config.UseCaseCameraScope;
import androidx.camera.camera2.config.UseCaseGraphContext;
import androidx.camera.camera2.impl.CapturePipelineImpl;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.Lock3ABehavior;
import androidx.camera.camera2.pipe.Metadata;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.RequestNumber;
import androidx.camera.camera2.pipe.RequestTemplate;
import androidx.camera.camera2.pipe.Result3A;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.Logger;
import androidx.camera.core.imagecapture.CameraCapturePipeline;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ConvergenceUtils;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.muxer.WebmConstants;
import com.google.common.util.concurrent.ListenableFuture;
import com.wdullaer.materialdatetimepicker.Utils;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.aq5;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.cl4;
import defpackage.e02;
import defpackage.f02;
import defpackage.fh8;
import defpackage.g03;
import defpackage.ga1;
import defpackage.h03;
import defpackage.j59;
import defpackage.jh2;
import defpackage.k31;
import defpackage.kx2;
import defpackage.l31;
import defpackage.m31;
import defpackage.mk2;
import defpackage.mx2;
import defpackage.ne4;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.u96;
import defpackage.ws6;
import defpackage.y22;
import defpackage.yp1;
import defpackage.yv8;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@UseCaseCameraScope
public final class CapturePipelineImpl implements CapturePipeline {
    private final CaptureConfigAdapter configAdapter;
    private final CapturePipelineImpl$emptyRequestMetadata$1 emptyRequestMetadata;
    private final FlashControl flashControl;
    private FrameMetadata frameMetadata;
    private final cl4 hasFlashUnit$delegate;
    private final ComboRequestListener requestListener;
    private int template;
    private final UseCaseThreads threads;
    private final TorchControl torchControl;
    private final cl4 useCaseCameraState$delegate;
    private final ws6<UseCaseCameraState> useCaseCameraStateProvider;
    private final UseCaseGraphContext useCaseGraphContext;
    private final UseTorchAsFlash useTorchAsFlash;
    private final VideoUsageControl videoUsageControl;

    public enum PipelineTask {
        PRE_CAPTURE,
        MAIN_CAPTURE,
        POST_CAPTURE;

        private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

        public static g03<PipelineTask> getEntries() {
            return $ENTRIES;
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$aePreCaptureApplyCapture$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.impl.CapturePipelineImpl", f = "CapturePipeline.kt", l = {887, 494, 499}, m = "aePreCaptureApplyCapture", v = 1)
    public static final class AnonymousClass1 extends f02 {
        int I$0;
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CapturePipelineImpl.this.aePreCaptureApplyCapture(null, 0L, 0, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$defaultCapture$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.impl.CapturePipelineImpl", f = "CapturePipeline.kt", l = {352, 357, 359, 362}, m = "defaultCapture", v = 1)
    public static final class C03771 extends f02 {
        int I$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C03771(e02<? super C03771> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CapturePipelineImpl.this.defaultCapture(null, 0, 0, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$defaultNoFlashCapture$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.impl.CapturePipelineImpl", f = "CapturePipeline.kt", l = {378}, m = "defaultNoFlashCapture", v = 1)
    public static final class C03781 extends f02 {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public C03781(e02<? super C03781> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CapturePipelineImpl.this.defaultNoFlashCapture(null, 0, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$getFrameMetadata$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.impl.CapturePipelineImpl", f = "CapturePipeline.kt", l = {WebmConstants.MkvEbmlElement.PIXEL_WIDTH}, m = "getFrameMetadata", v = 1)
    public static final class C03791 extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C03791(e02<? super C03791> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CapturePipelineImpl.this.getFrameMetadata(this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$invokeCaptureTasks$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.impl.CapturePipelineImpl", f = "CapturePipeline.kt", l = {216, 217, 218, 220}, m = "invokeCaptureTasks", v = 1)
    public static final class C03801 extends f02 {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C03801(e02<? super C03801> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CapturePipelineImpl.this.invokeCaptureTasks(null, 0, 0, 0, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$invokeScreenFlashPostCaptureTasks$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.impl.CapturePipelineImpl", f = "CapturePipeline.kt", l = {563, 875, 570}, m = "invokeScreenFlashPostCaptureTasks", v = 1)
    public static final class C03811 extends f02 {
        int I$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C03811(e02<? super C03811> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CapturePipelineImpl.this.invokeScreenFlashPostCaptureTasks(0, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$invokeScreenFlashPreCaptureTasks$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.impl.CapturePipelineImpl", f = "CapturePipeline.kt", l = {Utils.PULSE_ANIMATOR_DURATION, 871, 551, 556}, m = "invokeScreenFlashPreCaptureTasks", v = 1)
    public static final class C03821 extends f02 {
        int I$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C03821(e02<? super C03821> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CapturePipelineImpl.this.invokeScreenFlashPreCaptureTasks(0, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$isPhysicalFlashRequired$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.impl.CapturePipelineImpl", f = "CapturePipeline.kt", l = {772}, m = "isPhysicalFlashRequired", v = 1)
    public static final class C03831 extends f02 {
        int label;
        /* synthetic */ Object result;

        public C03831(e02<? super C03831> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CapturePipelineImpl.this.isPhysicalFlashRequired(0, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$isTorchAsFlash$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.impl.CapturePipelineImpl$isTorchAsFlash$2", f = "CapturePipeline.kt", l = {808}, m = "invokeSuspend", v = 1)
    public static final class C03842 extends pg8 implements nl3<e02<? super FrameMetadata>, Object> {
        int label;

        public C03842(e02<? super C03842> e02Var) {
            super(1, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return CapturePipelineImpl.this.new C03842(e02Var);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<? super FrameMetadata> e02Var) {
            return ((C03842) create(e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    r57.b(obj);
                    return obj;
                }
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            CapturePipelineImpl capturePipelineImpl = CapturePipelineImpl.this;
            this.label = 1;
            Object frameMetadata = capturePipelineImpl.getFrameMetadata(this);
            return frameMetadata == a32Var ? a32Var : frameMetadata;
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$lockAf$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.impl.CapturePipelineImpl", f = "CapturePipeline.kt", l = {871, 585, 594}, m = "lockAf", v = 1)
    public static final class C03851 extends f02 {
        long J$0;
        Object L$0;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        public C03851(e02<? super C03851> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CapturePipelineImpl.this.lockAf(0L, false, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$screenFlashCapture$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.impl.CapturePipelineImpl", f = "CapturePipeline.kt", l = {528}, m = "screenFlashCapture", v = 1)
    public static final class C03861 extends f02 {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public C03861(e02<? super C03861> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CapturePipelineImpl.this.screenFlashCapture(null, 0, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$torchApplyCapture$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.impl.CapturePipelineImpl", f = "CapturePipeline.kt", l = {408, 895, TypedValues.CycleType.TYPE_PATH_ROTATE, TypedValues.CycleType.TYPE_WAVE_SHAPE, 436, 440}, m = "torchApplyCapture", v = 1)
    public static final class C03871 extends f02 {
        int I$0;
        int I$1;
        int I$2;
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        public C03871(e02<? super C03871> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CapturePipelineImpl.this.torchApplyCapture(null, 0, 0L, null, false, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$torchAsFlashCapture$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.impl.CapturePipelineImpl", f = "CapturePipeline.kt", l = {330, 331, 341}, m = "torchAsFlashCapture", v = 1)
    public static final class C03881 extends f02 {
        int I$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C03881(e02<? super C03881> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CapturePipelineImpl.this.torchAsFlashCapture(null, 0, 0, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$unlockAf$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.impl.CapturePipelineImpl", f = "CapturePipeline.kt", l = {871, 648, 649}, m = "unlockAf", v = 1)
    public static final class C03891 extends f02 {
        long J$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C03891(e02<? super C03891> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CapturePipelineImpl.this.unlockAf(0L, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$waitForResult$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.impl.CapturePipelineImpl", f = "CapturePipeline.kt", l = {793}, m = "waitForResult", v = 1)
    public static final class C03901 extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C03901(e02<? super C03901> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CapturePipelineImpl.this.waitForResult(0L, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$waitForResult$3, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.impl.CapturePipelineImpl$waitForResult$3", f = "CapturePipeline.kt", l = {796}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass3 extends pg8 implements bm3<y22, e02<? super FrameInfo>, Object> {
        final /* synthetic */ ResultListener $resultListener;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(ResultListener resultListener, e02<? super AnonymousClass3> e02Var) {
            super(2, e02Var);
            this.$resultListener = resultListener;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass3(this.$resultListener, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super FrameInfo> e02Var) {
            return ((AnonymousClass3) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    r57.b(obj);
                    return obj;
                }
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            mk2<FrameInfo> result = this.$resultListener.getResult();
            this.label = 1;
            Object objZ = result.Z(this);
            return objZ == a32Var ? a32Var : objZ;
        }
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [androidx.camera.camera2.impl.CapturePipelineImpl$emptyRequestMetadata$1] */
    public CapturePipelineImpl(CaptureConfigAdapter captureConfigAdapter, FlashControl flashControl, TorchControl torchControl, VideoUsageControl videoUsageControl, UseCaseThreads useCaseThreads, ComboRequestListener comboRequestListener, UseTorchAsFlash useTorchAsFlash, CameraProperties cameraProperties, ws6<UseCaseCameraState> ws6Var, UseCaseGraphContext useCaseGraphContext) {
        captureConfigAdapter.getClass();
        flashControl.getClass();
        torchControl.getClass();
        videoUsageControl.getClass();
        useCaseThreads.getClass();
        comboRequestListener.getClass();
        useTorchAsFlash.getClass();
        cameraProperties.getClass();
        ws6Var.getClass();
        useCaseGraphContext.getClass();
        this.configAdapter = captureConfigAdapter;
        this.flashControl = flashControl;
        this.torchControl = torchControl;
        this.videoUsageControl = videoUsageControl;
        this.threads = useCaseThreads;
        this.requestListener = comboRequestListener;
        this.useTorchAsFlash = useTorchAsFlash;
        this.useCaseCameraStateProvider = ws6Var;
        this.useCaseGraphContext = useCaseGraphContext;
        int i = 0;
        this.hasFlashUnit$delegate = new fh8(new l31(cameraProperties, i));
        this.useCaseCameraState$delegate = new fh8(new m31(this, i));
        this.template = 1;
        this.emptyRequestMetadata = new RequestMetadata() { // from class: androidx.camera.camera2.impl.CapturePipelineImpl$emptyRequestMetadata$1
            private final int template = RequestTemplate.m647constructorimpl(0);
            private final Map<StreamId, Surface> streams = mx2.b;
            private final boolean repeating = true;
            private final Request request = new Request(kx2.b, null, null, null, null, null, 62, null);
            private final long requestNumber = RequestNumber.m640constructorimpl(0);

            @Override // androidx.camera.camera2.pipe.RequestMetadata
            public <T> T get(CaptureRequest.Key<T> key) {
                key.getClass();
                return null;
            }

            @Override // androidx.camera.camera2.pipe.RequestMetadata
            public <T> T getOrDefault(CaptureRequest.Key<T> key, T t) {
                key.getClass();
                return t;
            }

            @Override // androidx.camera.camera2.pipe.RequestMetadata
            public boolean getRepeating() {
                return this.repeating;
            }

            @Override // androidx.camera.camera2.pipe.RequestMetadata
            public Request getRequest() {
                return this.request;
            }

            @Override // androidx.camera.camera2.pipe.RequestMetadata
            /* JADX INFO: renamed from: getRequestNumber-my6kx4g, reason: not valid java name */
            public long mo62getRequestNumbermy6kx4g() {
                return this.requestNumber;
            }

            @Override // androidx.camera.camera2.pipe.RequestMetadata
            public Map<StreamId, Surface> getStreams() {
                return this.streams;
            }

            @Override // androidx.camera.camera2.pipe.RequestMetadata
            /* JADX INFO: renamed from: getTemplate-fGx8uWA, reason: not valid java name */
            public int mo63getTemplatefGx8uWA() {
                return this.template;
            }

            @Override // androidx.camera.camera2.pipe.UnsafeWrapper
            public <T> T unwrapAs(ne4<T> ne4Var) {
                ne4Var.getClass();
                return null;
            }

            @Override // androidx.camera.camera2.pipe.Metadata
            public <T> T getOrDefault(Metadata.Key<T> key, T t) {
                key.getClass();
                return t;
            }

            @Override // androidx.camera.camera2.pipe.Metadata
            public <T> T get(Metadata.Key<T> key) {
                key.getClass();
                return null;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:100:0x01fa  */
    /* JADX WARN: Code duplicated, block: B:67:0x0174  */
    /* JADX WARN: Code duplicated, block: B:70:0x0180 A[Catch: all -> 0x004b, TryCatch #4 {all -> 0x004b, blocks: (B:15:0x0046, B:68:0x0178, B:70:0x0180, B:71:0x0189), top: B:110:0x0046 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x0195  */
    /* JADX WARN: Code duplicated, block: B:87:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:89:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:8:0x001a  */
    /* JADX WARN: Code duplicated, block: B:91:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:93:0x01d6  */
    /* JADX WARN: Code duplicated, block: B:95:0x01e2  */
    /* JADX WARN: Code duplicated, block: B:97:0x01e9  */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v25, types: [c32, e02, o22] */
    /* JADX WARN: Type inference failed for: r2v29 */
    public final Object aePreCaptureApplyCapture(MainCaptureParams mainCaptureParams, long j, int i, List<? extends PipelineTask> list, e02<? super List<? extends mk2<Void>>> e02Var) throws Exception {
        AnonymousClass1 anonymousClass1;
        MainCaptureParams mainCaptureParams2;
        int i2;
        CapturePipelineImpl capturePipelineImpl;
        List<? extends PipelineTask> list2;
        MainCaptureParams mainCaptureParams3;
        Object obj;
        int i3;
        long j2;
        CapturePipelineImpl capturePipelineImpl2;
        AutoCloseable autoCloseable;
        AutoCloseable autoCloseable2;
        CameraGraph.Session session;
        Throwable th;
        AutoCloseable autoCloseable3;
        boolean z;
        CapturePipelineImpl capturePipelineImpl3;
        List<? extends PipelineTask> list3;
        boolean z2;
        MainCaptureParams mainCaptureParams4;
        int i4;
        List<? extends PipelineTask> list4;
        List<? extends PipelineTask> list5;
        ?? r2;
        List<mk2<Void>> listH;
        List<? extends PipelineTask> list6 = list;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i5 = anonymousClass1.label;
            if ((i5 & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i5 - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(e02Var);
        }
        AnonymousClass1 anonymousClass2 = anonymousClass1;
        Object obj2 = anonymousClass2.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i6 = anonymousClass2.label;
        try {
            try {
                if (i6 == 0) {
                    r57.b(obj2);
                    Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled(Log.TAG)) {
                        android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#aePreCaptureApplyCapture");
                    }
                    if (Logger.isDebugEnabled(Log.TAG)) {
                        android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: tasks = " + list6);
                    }
                    if (list6.contains(PipelineTask.PRE_CAPTURE)) {
                        if (Logger.isDebugEnabled(Log.TAG)) {
                            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: starting PRE_CAPTURE");
                        }
                        if (Logger.isDebugEnabled(Log.TAG)) {
                            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#aePreCaptureApplyCapture: Acquiring session for locking 3A");
                        }
                        CameraGraph graph = this.useCaseGraphContext.getGraph();
                        anonymousClass2.L$0 = this;
                        anonymousClass2.L$1 = list6;
                        anonymousClass2.L$2 = mainCaptureParams;
                        anonymousClass2.J$0 = j;
                        anonymousClass2.I$0 = i;
                        anonymousClass2.label = 1;
                        Object objAcquireSession = graph.acquireSession(anonymousClass2);
                        if (objAcquireSession != a32Var) {
                            list2 = list6;
                            mainCaptureParams3 = mainCaptureParams;
                            obj = objAcquireSession;
                            i3 = i;
                            j2 = j;
                            capturePipelineImpl2 = this;
                        }
                        return a32Var;
                    }
                    mainCaptureParams2 = mainCaptureParams;
                    i2 = i;
                    capturePipelineImpl = this;
                    if (list6.contains(PipelineTask.MAIN_CAPTURE)) {
                        if (Logger.isDebugEnabled(Log.TAG)) {
                            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: starting MAIN_CAPTURE");
                        }
                        if (mainCaptureParams2 != null) {
                            ah.f("Required value was null.");
                            return null;
                        }
                        List<mk2<Void>> listSubmitRequestInternal = capturePipelineImpl.submitRequestInternal(mainCaptureParams2);
                        if (Logger.isDebugEnabled(Log.TAG)) {
                            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: MAIN_CAPTURE completed");
                        }
                        listH = listSubmitRequestInternal;
                        r2 = 0;
                    } else {
                        r2 = 0;
                        listH = u96.h(ga1.a(null));
                    }
                    if (list6.contains(PipelineTask.POST_CAPTURE)) {
                        av0.c(capturePipelineImpl.threads.getSequentialScope(), r2, r2, new CapturePipelineImpl$aePreCaptureApplyCapture$$inlined$invoke$1(listH, r2, this, i2), 3);
                    }
                    return listH;
                }
                if (i6 != 1) {
                    if (i6 != 2) {
                        if (i6 != 3) {
                            ah.f("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        i4 = anonymousClass2.I$0;
                        autoCloseable3 = (AutoCloseable) anonymousClass2.L$3;
                        mainCaptureParams2 = (MainCaptureParams) anonymousClass2.L$2;
                        list5 = (List) anonymousClass2.L$1;
                        capturePipelineImpl = (CapturePipelineImpl) anonymousClass2.L$0;
                        try {
                            r57.b(obj2);
                            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                            if (Logger.isDebugEnabled(Log.TAG)) {
                                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#aePreCaptureApplyCapture: Locking 3A for capture done");
                            }
                            j59 j59Var = j59.a;
                            aq5.c(autoCloseable3, null);
                            if (Logger.isDebugEnabled(Log.TAG)) {
                                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: PRE_CAPTURE completed");
                            }
                            i2 = i4;
                            list6 = list5;
                            if (list6.contains(PipelineTask.MAIN_CAPTURE)) {
                                if (Logger.isDebugEnabled(Log.TAG)) {
                                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: starting MAIN_CAPTURE");
                                }
                                if (mainCaptureParams2 != null) {
                                    ah.f("Required value was null.");
                                    return null;
                                }
                                List<mk2<Void>> listSubmitRequestInternal2 = capturePipelineImpl.submitRequestInternal(mainCaptureParams2);
                                if (Logger.isDebugEnabled(Log.TAG)) {
                                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: MAIN_CAPTURE completed");
                                }
                                listH = listSubmitRequestInternal2;
                                r2 = 0;
                            } else {
                                r2 = 0;
                                listH = u96.h(ga1.a(null));
                            }
                            if (list6.contains(PipelineTask.POST_CAPTURE)) {
                                av0.c(capturePipelineImpl.threads.getSequentialScope(), r2, r2, new CapturePipelineImpl$aePreCaptureApplyCapture$$inlined$invoke$1(listH, r2, this, i2), 3);
                            }
                            return listH;
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                throw th;
                            } catch (Throwable th3) {
                                aq5.c(autoCloseable3, th);
                                throw th3;
                            }
                        }
                    }
                    i4 = anonymousClass2.I$0;
                    AutoCloseable autoCloseable4 = (AutoCloseable) anonymousClass2.L$3;
                    mainCaptureParams4 = (MainCaptureParams) anonymousClass2.L$2;
                    List<? extends PipelineTask> list7 = (List) anonymousClass2.L$1;
                    CapturePipelineImpl capturePipelineImpl4 = (CapturePipelineImpl) anonymousClass2.L$0;
                    try {
                        r57.b(obj2);
                        autoCloseable2 = autoCloseable4;
                        list4 = list7;
                        capturePipelineImpl = capturePipelineImpl4;
                        anonymousClass2.L$0 = capturePipelineImpl;
                        anonymousClass2.L$1 = list4;
                        anonymousClass2.L$2 = mainCaptureParams4;
                        anonymousClass2.L$3 = autoCloseable2;
                        anonymousClass2.I$0 = i4;
                        anonymousClass2.label = 3;
                        if (((mk2) obj2).e0(anonymousClass2) != a32Var) {
                            MainCaptureParams mainCaptureParams5 = mainCaptureParams4;
                            list5 = list4;
                            mainCaptureParams2 = mainCaptureParams5;
                            autoCloseable3 = autoCloseable2;
                            Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
                            if (Logger.isDebugEnabled(Log.TAG)) {
                                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#aePreCaptureApplyCapture: Locking 3A for capture done");
                            }
                            j59 j59Var2 = j59.a;
                            aq5.c(autoCloseable3, null);
                            if (Logger.isDebugEnabled(Log.TAG)) {
                                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: PRE_CAPTURE completed");
                            }
                            i2 = i4;
                            list6 = list5;
                            if (list6.contains(PipelineTask.MAIN_CAPTURE)) {
                                if (Logger.isDebugEnabled(Log.TAG)) {
                                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: starting MAIN_CAPTURE");
                                }
                                if (mainCaptureParams2 != null) {
                                    ah.f("Required value was null.");
                                    return null;
                                }
                                List<mk2<Void>> listSubmitRequestInternal3 = capturePipelineImpl.submitRequestInternal(mainCaptureParams2);
                                if (Logger.isDebugEnabled(Log.TAG)) {
                                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: MAIN_CAPTURE completed");
                                }
                                listH = listSubmitRequestInternal3;
                                r2 = 0;
                            } else {
                                r2 = 0;
                                listH = u96.h(ga1.a(null));
                            }
                            if (list6.contains(PipelineTask.POST_CAPTURE)) {
                                av0.c(capturePipelineImpl.threads.getSequentialScope(), r2, r2, new CapturePipelineImpl$aePreCaptureApplyCapture$$inlined$invoke$1(listH, r2, this, i2), 3);
                            }
                            return listH;
                        }
                        return a32Var;
                    } catch (Throwable th4) {
                        th = th4;
                        autoCloseable3 = autoCloseable4;
                        throw th;
                    }
                }
                int i7 = anonymousClass2.I$0;
                long j3 = anonymousClass2.J$0;
                MainCaptureParams mainCaptureParams6 = (MainCaptureParams) anonymousClass2.L$2;
                List<? extends PipelineTask> list8 = (List) anonymousClass2.L$1;
                capturePipelineImpl2 = (CapturePipelineImpl) anonymousClass2.L$0;
                r57.b(obj2);
                i3 = i7;
                mainCaptureParams3 = mainCaptureParams6;
                list2 = list8;
                j2 = j3;
                obj = obj2;
                Object objLock3AForCapture$default = CameraGraph.Session.lock3AForCapture$default(session, z2, z, 0, j2, anonymousClass2, 4, null);
                if (objLock3AForCapture$default != a32Var) {
                    mainCaptureParams4 = mainCaptureParams3;
                    i4 = i3;
                    obj2 = objLock3AForCapture$default;
                    capturePipelineImpl = capturePipelineImpl3;
                    list4 = list3;
                    anonymousClass2.L$0 = capturePipelineImpl;
                    anonymousClass2.L$1 = list4;
                    anonymousClass2.L$2 = mainCaptureParams4;
                    anonymousClass2.L$3 = autoCloseable2;
                    anonymousClass2.I$0 = i4;
                    anonymousClass2.label = 3;
                    if (((mk2) obj2).e0(anonymousClass2) != a32Var) {
                        MainCaptureParams mainCaptureParams7 = mainCaptureParams4;
                        list5 = list4;
                        mainCaptureParams2 = mainCaptureParams7;
                        autoCloseable3 = autoCloseable2;
                        Camera2Logger camera2Logger4 = Camera2Logger.INSTANCE;
                        if (Logger.isDebugEnabled(Log.TAG)) {
                            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#aePreCaptureApplyCapture: Locking 3A for capture done");
                        }
                        j59 j59Var3 = j59.a;
                        aq5.c(autoCloseable3, null);
                        if (Logger.isDebugEnabled(Log.TAG)) {
                            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: PRE_CAPTURE completed");
                        }
                        i2 = i4;
                        list6 = list5;
                        if (list6.contains(PipelineTask.MAIN_CAPTURE)) {
                            if (Logger.isDebugEnabled(Log.TAG)) {
                                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: starting MAIN_CAPTURE");
                            }
                            if (mainCaptureParams2 != null) {
                                ah.f("Required value was null.");
                                return null;
                            }
                            List<mk2<Void>> listSubmitRequestInternal4 = capturePipelineImpl.submitRequestInternal(mainCaptureParams2);
                            if (Logger.isDebugEnabled(Log.TAG)) {
                                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: MAIN_CAPTURE completed");
                            }
                            listH = listSubmitRequestInternal4;
                            r2 = 0;
                        } else {
                            r2 = 0;
                            listH = u96.h(ga1.a(null));
                        }
                        if (list6.contains(PipelineTask.POST_CAPTURE)) {
                            av0.c(capturePipelineImpl.threads.getSequentialScope(), r2, r2, new CapturePipelineImpl$aePreCaptureApplyCapture$$inlined$invoke$1(listH, r2, this, i2), 3);
                        }
                        return listH;
                    }
                }
                return a32Var;
            } catch (Throwable th5) {
                th = th5;
                th = th;
                autoCloseable3 = autoCloseable2;
                throw th;
            }
            session = (CameraGraph.Session) autoCloseable;
            Camera2Logger camera2Logger5 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                try {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#aePreCaptureApplyCapture: Locking 3A for capture");
                } catch (Throwable th6) {
                    th = th6;
                    autoCloseable3 = autoCloseable;
                    throw th;
                }
            }
            boolean z3 = i3 == 0;
            z = i3 == 0;
            anonymousClass2.L$0 = capturePipelineImpl2;
            anonymousClass2.L$1 = list2;
            anonymousClass2.L$2 = mainCaptureParams3;
            anonymousClass2.L$3 = autoCloseable;
            anonymousClass2.I$0 = i3;
            anonymousClass2.label = 2;
            capturePipelineImpl3 = capturePipelineImpl2;
            list3 = list2;
            z2 = z3;
            autoCloseable2 = autoCloseable;
        } catch (Throwable th7) {
            th = th7;
            autoCloseable2 = autoCloseable;
            th = th;
            autoCloseable3 = autoCloseable2;
            throw th;
        }
        autoCloseable = (AutoCloseable) obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object defaultCapture(MainCaptureParams mainCaptureParams, int i, int i2, List<? extends PipelineTask> list, e02<? super List<? extends mk2<Void>>> e02Var) throws Exception {
        C03771 c03771;
        if (e02Var instanceof C03771) {
            c03771 = (C03771) e02Var;
            int i3 = c03771.label;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                c03771.label = i3 - Integer.MIN_VALUE;
            } else {
                c03771 = new C03771(e02Var);
            }
        } else {
            c03771 = new C03771(e02Var);
        }
        C03771 c03772 = c03771;
        Object objIsPhysicalFlashRequired = c03772.result;
        Object obj = a32.COROUTINE_SUSPENDED;
        int i4 = c03772.label;
        if (i4 == 0) {
            r57.b(objIsPhysicalFlashRequired);
            if (getHasFlashUnit()) {
                c03772.L$0 = mainCaptureParams;
                c03772.L$1 = list;
                c03772.I$0 = i;
                c03772.label = 1;
                objIsPhysicalFlashRequired = isPhysicalFlashRequired(i2, c03772);
                if (objIsPhysicalFlashRequired != obj) {
                }
            } else {
                c03772.label = 4;
                Object objDefaultNoFlashCapture = defaultNoFlashCapture(mainCaptureParams, i, list, c03772);
                if (objDefaultNoFlashCapture != obj) {
                    return objDefaultNoFlashCapture;
                }
            }
            return obj;
        }
        if (i4 != 1) {
            if (i4 == 2) {
                r57.b(objIsPhysicalFlashRequired);
                return objIsPhysicalFlashRequired;
            }
            if (i4 == 3) {
                r57.b(objIsPhysicalFlashRequired);
                return objIsPhysicalFlashRequired;
            }
            if (i4 == 4) {
                r57.b(objIsPhysicalFlashRequired);
                return objIsPhysicalFlashRequired;
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        i = c03772.I$0;
        list = (List) c03772.L$1;
        mainCaptureParams = (MainCaptureParams) c03772.L$0;
        r57.b(objIsPhysicalFlashRequired);
        MainCaptureParams mainCaptureParams2 = mainCaptureParams;
        int i5 = i;
        boolean zBooleanValue = ((Boolean) objIsPhysicalFlashRequired).booleanValue();
        long j = zBooleanValue ? CapturePipelineKt.CHECK_3A_WITH_FLASH_TIMEOUT_IN_NS : CapturePipelineKt.CHECK_3A_TIMEOUT_IN_NS;
        if (zBooleanValue || i5 == 0) {
            c03772.L$0 = null;
            c03772.L$1 = null;
            c03772.label = 2;
            Object objAePreCaptureApplyCapture = aePreCaptureApplyCapture(mainCaptureParams2, j, i5, list, c03772);
            if (objAePreCaptureApplyCapture != obj) {
                return objAePreCaptureApplyCapture;
            }
        } else {
            c03772.L$0 = null;
            c03772.L$1 = null;
            c03772.label = 3;
            Object objDefaultNoFlashCapture2 = defaultNoFlashCapture(mainCaptureParams2, i5, list, c03772);
            if (objDefaultNoFlashCapture2 != obj) {
                return objDefaultNoFlashCapture2;
            }
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:42:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:46:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:48:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:50:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:52:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:53:0x0106  */
    /* JADX WARN: Code duplicated, block: B:55:0x010c  */
    /* JADX WARN: Code duplicated, block: B:58:0x011c  */
    /* JADX WARN: Code duplicated, block: B:60:0x0126  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object defaultNoFlashCapture(MainCaptureParams mainCaptureParams, int i, List<? extends PipelineTask> list, e02<? super List<? extends mk2<Void>>> e02Var) {
        C03781 c03781;
        int i2;
        CapturePipelineImpl capturePipelineImpl;
        List<mk2<Void>> listH;
        if (e02Var instanceof C03781) {
            c03781 = (C03781) e02Var;
            int i3 = c03781.label;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                c03781.label = i3 - Integer.MIN_VALUE;
            } else {
                c03781 = new C03781(e02Var);
            }
        } else {
            c03781 = new C03781(e02Var);
        }
        Object obj = c03781.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i4 = c03781.label;
        if (i4 == 0) {
            r57.b(obj);
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#defaultNoFlashCapture");
            }
            i2 = i == 0 ? 1 : 0;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: tasks = " + list);
            }
            if (list.contains(PipelineTask.PRE_CAPTURE)) {
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: starting PRE_CAPTURE");
                }
                if (i2 != 0) {
                    if (Logger.isDebugEnabled(Log.TAG)) {
                        android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#defaultNoFlashCapture: Locking 3A");
                    }
                    long j = CapturePipelineKt.CHECK_3A_TIMEOUT_IN_NS;
                    c03781.L$0 = this;
                    c03781.L$1 = list;
                    c03781.L$2 = mainCaptureParams;
                    c03781.I$0 = i2;
                    c03781.label = 1;
                    if (lockAf(j, false, c03781) == a32Var) {
                        return a32Var;
                    }
                    capturePipelineImpl = this;
                } else {
                    capturePipelineImpl = this;
                }
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: PRE_CAPTURE completed");
                }
            } else {
                capturePipelineImpl = this;
            }
            if (list.contains(PipelineTask.MAIN_CAPTURE)) {
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: starting MAIN_CAPTURE");
                }
                if (mainCaptureParams != null) {
                    ah.f("Required value was null.");
                    return null;
                }
                listH = capturePipelineImpl.submitRequestInternal(mainCaptureParams);
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: MAIN_CAPTURE completed");
                }
            } else {
                listH = u96.h(ga1.a(null));
            }
            if (list.contains(PipelineTask.POST_CAPTURE)) {
                av0.c(capturePipelineImpl.threads.getSequentialScope(), null, null, new CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1(listH, null, i2 != 0, this), 3);
            }
            return listH;
        }
        if (i4 != 1) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        int i5 = c03781.I$0;
        MainCaptureParams mainCaptureParams2 = (MainCaptureParams) c03781.L$2;
        list = (List) c03781.L$1;
        capturePipelineImpl = (CapturePipelineImpl) c03781.L$0;
        r57.b(obj);
        i2 = i5;
        mainCaptureParams = mainCaptureParams2;
        Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#defaultNoFlashCapture: Locking 3A done");
        }
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: PRE_CAPTURE completed");
        }
        if (list.contains(PipelineTask.MAIN_CAPTURE)) {
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: starting MAIN_CAPTURE");
            }
            if (mainCaptureParams != null) {
                ah.f("Required value was null.");
                return null;
            }
            listH = capturePipelineImpl.submitRequestInternal(mainCaptureParams);
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: MAIN_CAPTURE completed");
            }
        } else {
            listH = u96.h(ga1.a(null));
        }
        if (list.contains(PipelineTask.POST_CAPTURE)) {
            av0.c(capturePipelineImpl.threads.getSequentialScope(), null, null, new CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1(listH, null, i2 != 0, this), 3);
        }
        return listH;
    }

    private final nl3<FrameMetadata, Boolean> getConvergeCondition(final boolean z) {
        return new nl3() { // from class: n31
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return Boolean.valueOf(CapturePipelineImpl.getConvergeCondition$lambda$0(this.b, z, (FrameMetadata) obj));
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean getConvergeCondition$lambda$0(CapturePipelineImpl capturePipelineImpl, boolean z, FrameMetadata frameMetadata) {
        frameMetadata.getClass();
        return ConvergenceUtils.is3AConverged(capturePipelineImpl.toCameraCaptureResult(frameMetadata), z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:31:0x0078  */
    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    /* JADX WARN: Instruction removed from duplicated block: B:31:0x0078, please report this as an issue */
    public final Object getFrameMetadata(e02<? super FrameMetadata> e02Var) {
        C03791 c03791;
        CapturePipelineImpl capturePipelineImpl;
        CapturePipelineImpl capturePipelineImpl2;
        if (e02Var instanceof C03791) {
            c03791 = (C03791) e02Var;
            int i = c03791.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c03791.label = i - Integer.MIN_VALUE;
            } else {
                c03791 = new C03791(e02Var);
            }
        } else {
            c03791 = new C03791(e02Var);
        }
        C03791 c03792 = c03791;
        Object objWaitForResult$default = c03792.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c03792.label;
        if (i2 == 0) {
            r57.b(objWaitForResult$default);
            if (this.frameMetadata == null) {
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "getFrameMetadata: waiting for result");
                }
                long j = CapturePipelineKt.CHECK_FLASH_REQUIRED_TIMEOUT_IN_NS;
                c03792.L$0 = this;
                c03792.label = 1;
                capturePipelineImpl = this;
                objWaitForResult$default = waitForResult$default(capturePipelineImpl, j, null, c03792, 2, null);
                if (objWaitForResult$default == a32Var) {
                    return a32Var;
                }
                capturePipelineImpl2 = capturePipelineImpl;
            } else {
                capturePipelineImpl = this;
            }
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "getFrameMetadata: frameMetadata = " + capturePipelineImpl.frameMetadata);
            }
            return capturePipelineImpl.frameMetadata;
        }
        if (i2 != 1) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        capturePipelineImpl2 = (CapturePipelineImpl) c03792.L$0;
        r57.b(objWaitForResult$default);
        capturePipelineImpl = this;
        FrameInfo frameInfo = (FrameInfo) objWaitForResult$default;
        capturePipelineImpl2.frameMetadata = frameInfo != null ? frameInfo.getMetadata() : null;
        Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "getFrameMetadata: frameMetadata = " + capturePipelineImpl.frameMetadata);
        }
        return capturePipelineImpl.frameMetadata;
    }

    private final boolean getHasFlashUnit() {
        return ((Boolean) this.hasFlashUnit$delegate.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final UseCaseCameraState getUseCaseCameraState() {
        return (UseCaseCameraState) this.useCaseCameraState$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean hasFlashUnit_delegate$lambda$0(CameraProperties cameraProperties) {
        return FlashAvailabilityCheckerKt.isFlashAvailable$default(cameraProperties, false, 1, null);
    }

    private final Object invoke(List<? extends PipelineTask> list, MainCaptureParams mainCaptureParams, nl3<? super e02<? super j59>, ? extends Object> nl3Var, nl3<? super e02<? super j59>, ? extends Object> nl3Var2, e02<? super List<? extends mk2<Void>>> e02Var) {
        List<mk2<Void>> listH;
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: tasks = " + list);
        }
        if (list.contains(PipelineTask.PRE_CAPTURE)) {
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: starting PRE_CAPTURE");
            }
            nl3Var.invoke(e02Var);
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: PRE_CAPTURE completed");
            }
        }
        if (list.contains(PipelineTask.MAIN_CAPTURE)) {
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: starting MAIN_CAPTURE");
            }
            if (mainCaptureParams == null) {
                ah.f("Required value was null.");
                return null;
            }
            listH = submitRequestInternal(mainCaptureParams);
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: MAIN_CAPTURE completed");
            }
            j59 j59Var = j59.a;
        } else {
            listH = u96.h(ga1.a(null));
        }
        List<mk2<Void>> list2 = listH;
        if (list.contains(PipelineTask.POST_CAPTURE)) {
            av0.c(this.threads.getSequentialScope(), null, null, new CapturePipelineImpl$invoke$7$1(list2, nl3Var2, null), 3);
        }
        j59 j59Var2 = j59.a;
        return listH;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object invokeCaptureTasks(List<? extends PipelineTask> list, int i, int i2, int i3, MainCaptureParams mainCaptureParams, e02<? super List<? extends mk2<Void>>> e02Var) throws Exception {
        C03801 c03801;
        if (e02Var instanceof C03801) {
            c03801 = (C03801) e02Var;
            int i4 = c03801.label;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                c03801.label = i4 - Integer.MIN_VALUE;
            } else {
                c03801 = new C03801(e02Var);
            }
        } else {
            c03801 = new C03801(e02Var);
        }
        Object objIsTorchAsFlash = c03801.result;
        Object obj = a32.COROUTINE_SUSPENDED;
        int i5 = c03801.label;
        if (i5 == 0) {
            r57.b(objIsTorchAsFlash);
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#invokeCaptureTasks: tasks = " + list + ", captureMode = " + i + ", flashMode = " + i2 + ", flashType = " + i3);
            }
            this.frameMetadata = null;
            if (list.contains(PipelineTask.MAIN_CAPTURE) && mainCaptureParams == null) {
                ah.f("Must not be null for PipelineType.MAIN_CAPTURE");
                return null;
            }
            if (i2 == 3) {
                c03801.label = 1;
                Object objScreenFlashCapture = screenFlashCapture(mainCaptureParams, i, list, c03801);
                if (objScreenFlashCapture != obj) {
                    return objScreenFlashCapture;
                }
            } else {
                c03801.L$0 = list;
                c03801.L$1 = mainCaptureParams;
                c03801.I$0 = i;
                c03801.I$1 = i2;
                c03801.label = 2;
                objIsTorchAsFlash = isTorchAsFlash(i3, c03801);
                if (objIsTorchAsFlash != obj) {
                }
            }
            return obj;
        }
        if (i5 == 1) {
            r57.b(objIsTorchAsFlash);
            return objIsTorchAsFlash;
        }
        if (i5 != 2) {
            if (i5 == 3) {
                r57.b(objIsTorchAsFlash);
                return objIsTorchAsFlash;
            }
            if (i5 == 4) {
                r57.b(objIsTorchAsFlash);
                return objIsTorchAsFlash;
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        i2 = c03801.I$1;
        i = c03801.I$0;
        mainCaptureParams = (MainCaptureParams) c03801.L$1;
        list = (List) c03801.L$0;
        r57.b(objIsTorchAsFlash);
        List<? extends PipelineTask> list2 = list;
        MainCaptureParams mainCaptureParams2 = mainCaptureParams;
        if (((Boolean) objIsTorchAsFlash).booleanValue()) {
            c03801.L$0 = null;
            c03801.L$1 = null;
            c03801.label = 3;
            Object obj2 = torchAsFlashCapture(mainCaptureParams2, i, i2, list2, c03801);
            if (obj2 != obj) {
                return obj2;
            }
        } else {
            C03801 c03802 = c03801;
            c03802.L$0 = null;
            c03802.L$1 = null;
            c03802.label = 4;
            Object objDefaultCapture = defaultCapture(mainCaptureParams2, i, i2, list2, c03802);
            if (objDefaultCapture != obj) {
                return objDefaultCapture;
            }
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:24:0x0043  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object isPhysicalFlashRequired(int i, e02<? super Boolean> e02Var) {
        C03831 c03831;
        if (e02Var instanceof C03831) {
            c03831 = (C03831) e02Var;
            int i2 = c03831.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c03831.label = i2 - Integer.MIN_VALUE;
            } else {
                c03831 = new C03831(e02Var);
            }
        } else {
            c03831 = new C03831(e02Var);
        }
        Object frameMetadata = c03831.result;
        Object obj = a32.COROUTINE_SUSPENDED;
        int i3 = c03831.label;
        boolean z = false;
        if (i3 == 0) {
            r57.b(frameMetadata);
            if (i == 0) {
                c03831.label = 1;
                frameMetadata = getFrameMetadata(c03831);
                if (frameMetadata == obj) {
                    return obj;
                }
            } else if (i == 1) {
                z = true;
            } else if (i != 2 && i != 3) {
                throw new AssertionError(i);
            }
            return Boolean.valueOf(z);
        }
        if (i3 != 1) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(frameMetadata);
        FrameMetadata frameMetadata2 = (FrameMetadata) frameMetadata;
        if (frameMetadata2 != null) {
            CaptureResult.Key key = CaptureResult.CONTROL_AE_STATE;
            key.getClass();
            Integer num = (Integer) frameMetadata2.get(key);
            if (num != null && num.intValue() == 4) {
                z = true;
            }
        }
        return Boolean.valueOf(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object isTorchAsFlash(int i, e02<? super Boolean> e02Var) {
        return (getTemplate() == 3 || i == 1) ? Boolean.TRUE : this.useTorchAsFlash.shouldUseTorchAsFlash(new C03842(null), e02Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:37:0x00d1 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:54:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object lockAf(long j, boolean z, e02<? super Result3A> e02Var) throws Exception {
        C03851 c03851;
        long j2;
        boolean z2;
        long j3;
        AutoCloseable autoCloseable;
        AutoCloseable autoCloseable2;
        a32 a32Var;
        Throwable th;
        C03851 c03852;
        AutoCloseable autoCloseable3;
        Throwable th2;
        Object objZ;
        if (e02Var instanceof C03851) {
            c03851 = (C03851) e02Var;
            int i = c03851.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c03851.label = i - Integer.MIN_VALUE;
            } else {
                c03851 = new C03851(e02Var);
            }
        } else {
            c03851 = new C03851(e02Var);
        }
        Object objAcquireSession = c03851.result;
        a32 a32Var2 = a32.COROUTINE_SUSPENDED;
        int i2 = c03851.label;
        try {
            if (i2 == 0) {
                r57.b(objAcquireSession);
                CameraGraph graph = this.useCaseGraphContext.getGraph();
                j2 = j;
                c03851.J$0 = j2;
                z2 = z;
                c03851.Z$0 = z2;
                c03851.label = 1;
                objAcquireSession = graph.acquireSession(c03851);
                if (objAcquireSession == a32Var2) {
                    return a32Var2;
                }
            } else {
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 == 3) {
                            r57.b(objAcquireSession);
                            return objAcquireSession;
                        }
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    autoCloseable2 = (AutoCloseable) c03851.L$0;
                    try {
                        r57.b(objAcquireSession);
                        a32Var = a32Var2;
                        autoCloseable3 = autoCloseable2;
                        c03852 = c03851;
                        th = null;
                        try {
                            mk2 mk2Var = (mk2) objAcquireSession;
                            aq5.c(autoCloseable3, th);
                            c03852.L$0 = th;
                            c03852.label = 3;
                            objZ = mk2Var.Z(c03852);
                            if (objZ == a32Var) {
                                return a32Var;
                            }
                            return objZ;
                        } catch (Throwable th3) {
                            th2 = th3;
                            autoCloseable2 = autoCloseable3;
                            try {
                                throw th2;
                            } catch (Throwable th4) {
                                aq5.c(autoCloseable2, th2);
                                throw th4;
                            }
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        th2 = th;
                        throw th2;
                    }
                }
                z2 = c03851.Z$0;
                j2 = c03851.J$0;
                r57.b(objAcquireSession);
            }
            Lock3ABehavior lock3ABehaviorM490boximpl = Lock3ABehavior.m490boximpl(Lock3ABehavior.Companion.m497getAFTER_CURRENT_SCANhRqSH3k());
            nl3<FrameMetadata, Boolean> convergeCondition = getConvergeCondition(z2);
            long j4 = CapturePipelineKt.CHECK_3A_TIMEOUT_IN_NS;
            c03851.L$0 = autoCloseable;
            c03851.label = 2;
            a32Var = a32Var2;
            C03851 c03853 = c03851;
            th = null;
            Object objM344lock3AtS25XM$default = CameraGraph.Session.m344lock3AtS25XM$default((CameraGraph.Session) autoCloseable, null, null, null, null, null, null, null, lock3ABehaviorM490boximpl, null, null, convergeCondition, null, 0, j3, j4, c03853, 6719, null);
            c03852 = c03853;
            if (objM344lock3AtS25XM$default == a32Var) {
                return a32Var;
            }
            autoCloseable3 = autoCloseable;
            objAcquireSession = objM344lock3AtS25XM$default;
            mk2 mk2Var2 = (mk2) objAcquireSession;
            aq5.c(autoCloseable3, th);
            c03852.L$0 = th;
            c03852.label = 3;
            objZ = mk2Var2.Z(c03852);
            if (objZ == a32Var) {
                return a32Var;
            }
            return objZ;
        } catch (Throwable th6) {
            th = th6;
            autoCloseable2 = autoCloseable;
            th2 = th;
            throw th2;
        }
        j3 = j2;
        autoCloseable = (AutoCloseable) objAcquireSession;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:35:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:37:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:39:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:41:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:42:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:44:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:47:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object screenFlashCapture(MainCaptureParams mainCaptureParams, int i, List<? extends PipelineTask> list, e02<? super List<? extends mk2<Void>>> e02Var) {
        C03861 c03861;
        CapturePipelineImpl capturePipelineImpl;
        List<mk2<Void>> listH;
        if (e02Var instanceof C03861) {
            c03861 = (C03861) e02Var;
            int i2 = c03861.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c03861.label = i2 - Integer.MIN_VALUE;
            } else {
                c03861 = new C03861(e02Var);
            }
        } else {
            c03861 = new C03861(e02Var);
        }
        Object obj = c03861.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i3 = c03861.label;
        if (i3 == 0) {
            r57.b(obj);
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#screenFlashCapture");
            }
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: tasks = " + list);
            }
            if (list.contains(PipelineTask.PRE_CAPTURE)) {
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: starting PRE_CAPTURE");
                }
                c03861.L$0 = this;
                c03861.L$1 = list;
                c03861.L$2 = mainCaptureParams;
                c03861.I$0 = i;
                c03861.label = 1;
                if (invokeScreenFlashPreCaptureTasks(i, c03861) == a32Var) {
                    return a32Var;
                }
                capturePipelineImpl = this;
            } else {
                capturePipelineImpl = this;
            }
            if (list.contains(PipelineTask.MAIN_CAPTURE)) {
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: starting MAIN_CAPTURE");
                }
                if (mainCaptureParams != null) {
                    ah.f("Required value was null.");
                    return null;
                }
                listH = capturePipelineImpl.submitRequestInternal(mainCaptureParams);
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: MAIN_CAPTURE completed");
                }
            } else {
                listH = u96.h(ga1.a(null));
            }
            if (list.contains(PipelineTask.POST_CAPTURE)) {
                av0.c(capturePipelineImpl.threads.getSequentialScope(), null, null, new CapturePipelineImpl$screenFlashCapture$$inlined$invoke$1(listH, null, this, i), 3);
            }
            return listH;
        }
        if (i3 != 1) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        i = c03861.I$0;
        mainCaptureParams = (MainCaptureParams) c03861.L$2;
        list = (List) c03861.L$1;
        capturePipelineImpl = (CapturePipelineImpl) c03861.L$0;
        r57.b(obj);
        Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: PRE_CAPTURE completed");
        }
        if (list.contains(PipelineTask.MAIN_CAPTURE)) {
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: starting MAIN_CAPTURE");
            }
            if (mainCaptureParams != null) {
                ah.f("Required value was null.");
                return null;
            }
            listH = capturePipelineImpl.submitRequestInternal(mainCaptureParams);
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: MAIN_CAPTURE completed");
            }
        } else {
            listH = u96.h(ga1.a(null));
        }
        if (list.contains(PipelineTask.POST_CAPTURE)) {
            av0.c(capturePipelineImpl.threads.getSequentialScope(), null, null, new CapturePipelineImpl$screenFlashCapture$$inlined$invoke$1(listH, null, this, i), 3);
        }
        return listH;
    }

    private final List<mk2<Void>> submitRequestInternal(MainCaptureParams mainCaptureParams) {
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#submitRequestInternal; Submitting " + mainCaptureParams.getConfigs() + " with CameraPipe");
        }
        ArrayList arrayList = new ArrayList();
        List<CaptureConfig> configs = mainCaptureParams.getConfigs();
        ArrayList arrayList2 = new ArrayList();
        Iterator<T> it = configs.iterator();
        while (true) {
            Request requestM7mapToRequestnAberiA = null;
            if (!it.hasNext()) {
                break;
            }
            CaptureConfig captureConfig = (CaptureConfig) it.next();
            final yp1 yp1Var = new yp1();
            arrayList.add(yp1Var);
            try {
                requestM7mapToRequestnAberiA = this.configAdapter.m7mapToRequestnAberiA(captureConfig, mainCaptureParams.m61getRequestTemplatefGx8uWA(), mainCaptureParams.getSessionConfigOptions(), u96.h(new Request.Listener() { // from class: androidx.camera.camera2.impl.CapturePipelineImpl$submitRequestInternal$requests$1$1
                    @Override // androidx.camera.camera2.pipe.Request.Listener
                    public void onAborted(Request request) {
                        request.getClass();
                        yp1Var.e(new ImageCaptureException(3, "Capture request is cancelled because camera is closed", null));
                    }

                    @Override // androidx.camera.camera2.pipe.Request.Listener
                    /* JADX INFO: renamed from: onFailed-CcXjc1I */
                    public void mo10onFailedCcXjc1I(RequestMetadata requestMetadata, long j, RequestFailure requestFailure) {
                        requestMetadata.getClass();
                        requestFailure.getClass();
                        yp1Var.e(new ImageCaptureException(2, "Capture request failed with reason " + requestFailure.getReason(), null));
                    }

                    @Override // androidx.camera.camera2.pipe.Request.Listener
                    /* JADX INFO: renamed from: onTotalCaptureResult-CcXjc1I */
                    public void mo11onTotalCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, FrameInfo frameInfo) {
                        requestMetadata.getClass();
                        frameInfo.getClass();
                        yp1Var.f(null);
                    }
                }));
            } catch (IllegalStateException e) {
                Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                if (Logger.isInfoEnabled(Log.TAG)) {
                    android.util.Log.i(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#submitRequestInternal: configAdapter.mapToRequest failed!", e);
                }
                yp1Var.e(new ImageCaptureException(2, "Capture request failed with reason " + e.getMessage(), e));
            }
            if (requestM7mapToRequestnAberiA != null) {
                arrayList2.add(requestM7mapToRequestnAberiA);
            }
        }
        if (arrayList2.isEmpty()) {
            return arrayList;
        }
        av0.c(this.threads.getSequentialScope(), null, null, new CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1(null, this, arrayList, arrayList2), 3);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CameraCaptureResult toCameraCaptureResult(final FrameMetadata frameMetadata) {
        return new CaptureResultAdapter(this.emptyRequestMetadata, frameMetadata.mo462getFrameNumberUgla2oM(), new FrameInfo(frameMetadata, this) { // from class: androidx.camera.camera2.impl.CapturePipelineImpl$toCameraCaptureResult$frameInfo$1
            private final String camera;
            private final FrameMetadata frameMetadata;
            private final long frameNumber;
            private final FrameMetadata metadata;
            private final RequestMetadata requestMetadata;

            {
                this.frameMetadata = frameMetadata;
                this.metadata = frameMetadata;
                this.camera = frameMetadata.mo461getCameraDz_R5H8();
                this.frameNumber = frameMetadata.mo462getFrameNumberUgla2oM();
                this.requestMetadata = this.emptyRequestMetadata;
            }

            @Override // androidx.camera.camera2.pipe.FrameInfo
            /* JADX INFO: renamed from: get-EfqyGwQ, reason: not valid java name */
            public FrameMetadata mo64getEfqyGwQ(String str) {
                str.getClass();
                return this.frameMetadata;
            }

            @Override // androidx.camera.camera2.pipe.FrameInfo
            /* JADX INFO: renamed from: getCamera-Dz_R5H8, reason: not valid java name */
            public String mo65getCameraDz_R5H8() {
                return this.camera;
            }

            @Override // androidx.camera.camera2.pipe.FrameInfo
            /* JADX INFO: renamed from: getFrameNumber-Ugla2oM, reason: not valid java name */
            public long mo66getFrameNumberUgla2oM() {
                return this.frameNumber;
            }

            @Override // androidx.camera.camera2.pipe.FrameInfo
            public FrameMetadata getMetadata() {
                return this.metadata;
            }

            @Override // androidx.camera.camera2.pipe.FrameInfo
            public RequestMetadata getRequestMetadata() {
                return this.requestMetadata;
            }

            @Override // androidx.camera.camera2.pipe.UnsafeWrapper
            public <T> T unwrapAs(ne4<T> ne4Var) {
                ne4Var.getClass();
                return null;
            }
        }, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:101:0x02b2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:102:0x02b4  */
    /* JADX WARN: Code duplicated, block: B:104:0x02ba  */
    /* JADX WARN: Code duplicated, block: B:108:0x02db  */
    /* JADX WARN: Code duplicated, block: B:111:0x02e8  */
    /* JADX WARN: Code duplicated, block: B:113:0x02f3  */
    /* JADX WARN: Code duplicated, block: B:115:0x02f9  */
    /* JADX WARN: Code duplicated, block: B:119:0x031f  */
    /* JADX WARN: Code duplicated, block: B:122:0x032c  */
    /* JADX WARN: Code duplicated, block: B:123:0x0336  */
    /* JADX WARN: Code duplicated, block: B:126:0x0341  */
    /* JADX WARN: Code duplicated, block: B:131:0x0360  */
    /* JADX WARN: Code duplicated, block: B:133:0x0366  */
    /* JADX WARN: Code duplicated, block: B:135:0x0371  */
    /* JADX WARN: Code duplicated, block: B:137:0x037b  */
    /* JADX WARN: Code duplicated, block: B:138:0x0385  */
    /* JADX WARN: Code duplicated, block: B:140:0x038b  */
    /* JADX WARN: Code duplicated, block: B:143:0x039b  */
    /* JADX WARN: Code duplicated, block: B:145:0x03a6  */
    /* JADX WARN: Code duplicated, block: B:146:0x03a8  */
    /* JADX WARN: Code duplicated, block: B:149:0x03ac  */
    /* JADX WARN: Code duplicated, block: B:61:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:65:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:67:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:71:0x0203  */
    /* JADX WARN: Code duplicated, block: B:75:0x0213  */
    /* JADX WARN: Code duplicated, block: B:76:0x0216  */
    /* JADX WARN: Code duplicated, block: B:78:0x021a  */
    /* JADX WARN: Code duplicated, block: B:79:0x021d  */
    /* JADX WARN: Code duplicated, block: B:83:0x024e  */
    /* JADX WARN: Code duplicated, block: B:87:0x0277  */
    /* JADX WARN: Code duplicated, block: B:8:0x001c  */
    /* JADX WARN: Code duplicated, block: B:91:0x028a  */
    /* JADX WARN: Code duplicated, block: B:99:0x02ae  */
    /* JADX WARN: Instruction removed from duplicated block: B:91:0x028a, please report this as an issue */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v11, types: [c32, java.lang.Object, o22] */
    /* JADX WARN: Type inference failed for: r14v24 */
    public final Object torchApplyCapture(MainCaptureParams mainCaptureParams, int i, long j, List<? extends PipelineTask> list, boolean z, e02<? super List<? extends mk2<Void>>> e02Var) throws Exception {
        C03871 c03871;
        int i2;
        MainCaptureParams mainCaptureParams2;
        boolean z2;
        ?? r14;
        int i3;
        List<? extends PipelineTask> list2;
        CapturePipelineImpl capturePipelineImpl;
        int i4;
        boolean z3;
        int i5;
        int i6;
        boolean z4;
        List<? extends PipelineTask> list3;
        int i7;
        long j2;
        CapturePipelineImpl capturePipelineImpl2;
        long j3;
        Throwable th;
        boolean z5;
        int i8;
        nl3<FrameInfo, Boolean> nl3Var;
        int i9;
        Object objAcquireSession;
        int i10;
        int i11;
        CapturePipelineImpl capturePipelineImpl3;
        long j4;
        AutoCloseable autoCloseable;
        Throwable th2;
        AutoCloseable autoCloseable2;
        boolean z6;
        boolean z7;
        MainCaptureParams mainCaptureParams3;
        List<? extends PipelineTask> list4;
        boolean z8;
        CapturePipelineImpl capturePipelineImpl4;
        int i12;
        Throwable th3;
        Object objLock3AForCapture$default;
        AutoCloseable autoCloseable3;
        int i13;
        CapturePipelineImpl capturePipelineImpl5;
        MainCaptureParams mainCaptureParams4;
        List<? extends PipelineTask> list5;
        boolean z9;
        MainCaptureParams mainCaptureParams5;
        List<? extends PipelineTask> list6;
        CapturePipelineImpl capturePipelineImpl6;
        Throwable th4;
        Result3A result3A;
        Throwable th5;
        List<mk2<Void>> listH;
        int i14;
        boolean z10;
        Throwable th6;
        Throwable th7;
        if (e02Var instanceof C03871) {
            c03871 = (C03871) e02Var;
            int i15 = c03871.label;
            if ((i15 & Integer.MIN_VALUE) != 0) {
                c03871.label = i15 - Integer.MIN_VALUE;
            } else {
                c03871 = new C03871(e02Var);
            }
        } else {
            c03871 = new C03871(e02Var);
        }
        C03871 c03872 = c03871;
        Object objZ = c03872.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        switch (c03872.label) {
            case 0:
                r57.b(objZ);
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture");
                }
                Integer value = this.torchControl.getTorchStateLiveData().getValue();
                i2 = (value != null && value.intValue() == 0) ? 1 : 0;
                int i16 = (i2 != 0 || i == 0) ? 1 : 0;
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: tasks = " + list);
                }
                if (list.contains(PipelineTask.PRE_CAPTURE)) {
                    if (Logger.isDebugEnabled(Log.TAG)) {
                        android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: starting PRE_CAPTURE");
                    }
                    if (i2 != 0) {
                        if (Logger.isDebugEnabled(Log.TAG)) {
                            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Setting torch");
                        }
                        mk2 mk2VarM73setTorchAsyncOup_wC0$camera_camera2$default = TorchControl.m73setTorchAsyncOup_wC0$camera_camera2$default(this.torchControl, TorchControl.TorchMode.Companion.m87getUSED_AS_FLASHIRs_R8(), false, false, 6, null);
                        c03872.L$0 = this;
                        c03872.L$1 = list;
                        mainCaptureParams2 = mainCaptureParams;
                        c03872.L$2 = mainCaptureParams2;
                        c03872.I$0 = i;
                        c03872.J$0 = j;
                        c03872.Z$0 = z;
                        c03872.I$1 = i2;
                        c03872.I$2 = i16;
                        c03872.label = 1;
                        if (mk2VarM73setTorchAsyncOup_wC0$camera_camera2$default.e0(c03872) != a32Var) {
                            i5 = i2;
                            capturePipelineImpl2 = this;
                            i6 = i16;
                            z4 = z;
                            list3 = list;
                            j3 = j;
                            i7 = i;
                            j2 = j3;
                            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                            if (Logger.isDebugEnabled(Log.TAG)) {
                                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Setting torch done");
                            }
                            capturePipelineImpl = capturePipelineImpl2;
                            if (!z4) {
                                if (Logger.isDebugEnabled(Log.TAG)) {
                                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Locking 3A for capture");
                                }
                                CameraGraph graph = this.useCaseGraphContext.getGraph();
                                c03872.L$0 = capturePipelineImpl;
                                c03872.L$1 = list3;
                                c03872.L$2 = mainCaptureParams2;
                                c03872.I$0 = i7;
                                c03872.J$0 = j2;
                                c03872.Z$0 = z4;
                                c03872.I$1 = i5;
                                c03872.I$2 = i6;
                                c03872.label = 2;
                                objAcquireSession = graph.acquireSession(c03872);
                                if (objAcquireSession != a32Var) {
                                    long j5 = j2;
                                    i4 = i6;
                                    objZ = objAcquireSession;
                                    i10 = i5;
                                    i11 = i7;
                                    capturePipelineImpl3 = capturePipelineImpl;
                                    j4 = j5;
                                    autoCloseable = (AutoCloseable) objZ;
                                    try {
                                        CameraGraph.Session session = (CameraGraph.Session) autoCloseable;
                                        if (i11 == 0) {
                                            z6 = true;
                                        } else {
                                            z6 = false;
                                        }
                                        if (i11 == 0) {
                                            z7 = true;
                                        } else {
                                            z7 = false;
                                        }
                                        c03872.L$0 = capturePipelineImpl3;
                                        c03872.L$1 = list3;
                                        c03872.L$2 = mainCaptureParams2;
                                        c03872.L$3 = autoCloseable;
                                        c03872.I$0 = i11;
                                        c03872.Z$0 = z4;
                                        c03872.I$1 = i10;
                                        c03872.I$2 = i4;
                                        c03872.label = 3;
                                        mainCaptureParams3 = mainCaptureParams2;
                                        list4 = list3;
                                        z8 = z4;
                                        boolean z11 = z6;
                                        capturePipelineImpl4 = capturePipelineImpl3;
                                        i12 = i11;
                                        th3 = null;
                                        z2 = true;
                                        objLock3AForCapture$default = CameraGraph.Session.lock3AForCapture$default(session, z11, z7, 0, j4, c03872, 4, null);
                                        if (objLock3AForCapture$default != a32Var) {
                                            autoCloseable3 = autoCloseable;
                                            objZ = objLock3AForCapture$default;
                                            i13 = i12;
                                            capturePipelineImpl5 = capturePipelineImpl4;
                                            mainCaptureParams4 = mainCaptureParams3;
                                            list5 = list4;
                                            z9 = z8;
                                            c03872.L$0 = capturePipelineImpl5;
                                            c03872.L$1 = list5;
                                            c03872.L$2 = mainCaptureParams4;
                                            c03872.L$3 = autoCloseable3;
                                            c03872.I$0 = i13;
                                            c03872.Z$0 = z9;
                                            c03872.I$1 = i10;
                                            c03872.I$2 = i4;
                                            c03872.label = 4;
                                            objZ = ((mk2) objZ).Z(c03872);
                                            if (objZ != a32Var) {
                                                z5 = z9;
                                                i8 = i13;
                                                autoCloseable2 = autoCloseable3;
                                                mainCaptureParams5 = mainCaptureParams4;
                                                list6 = list5;
                                                capturePipelineImpl6 = capturePipelineImpl5;
                                                th4 = th3;
                                                result3A = (Result3A) objZ;
                                                aq5.c(autoCloseable2, th4);
                                                Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
                                                if (Logger.isDebugEnabled(Log.TAG)) {
                                                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Locking 3A for capture done, result3A = " + result3A);
                                                }
                                                i2 = i10;
                                                mainCaptureParams2 = mainCaptureParams5;
                                                list2 = list6;
                                                capturePipelineImpl = capturePipelineImpl6;
                                                th = th4;
                                                if (Logger.isDebugEnabled(Log.TAG)) {
                                                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: PRE_CAPTURE completed");
                                                }
                                                i3 = i8;
                                                z3 = z5;
                                                r14 = th;
                                            }
                                        }
                                    } catch (Throwable th8) {
                                        th2 = th8;
                                        autoCloseable2 = autoCloseable;
                                        try {
                                            throw th2;
                                        } catch (Throwable th9) {
                                            aq5.c(autoCloseable2, th2);
                                            throw th9;
                                        }
                                    }
                                }
                            } else {
                                th = null;
                                th5 = null;
                                th7 = null;
                                z2 = true;
                                if (i6 == 0) {
                                    i4 = i6;
                                    z5 = z4;
                                    i2 = i5;
                                    i8 = i7;
                                    list2 = list3;
                                } else if (i7 == 0) {
                                    if (Logger.isDebugEnabled(Log.TAG)) {
                                        android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Locking 3A");
                                    }
                                    c03872.L$0 = capturePipelineImpl;
                                    c03872.L$1 = list3;
                                    c03872.L$2 = mainCaptureParams2;
                                    c03872.I$0 = i7;
                                    c03872.Z$0 = z4;
                                    c03872.I$1 = i5;
                                    c03872.I$2 = i6;
                                    c03872.label = 5;
                                    if (lockAf(j2, true, c03872) != a32Var) {
                                        i4 = i6;
                                        z5 = z4;
                                        i9 = i5;
                                        i8 = i7;
                                        list2 = list3;
                                        Camera2Logger camera2Logger4 = Camera2Logger.INSTANCE;
                                        th6 = th5;
                                        if (Logger.isDebugEnabled(Log.TAG)) {
                                            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Locking 3A done");
                                            th6 = th5;
                                        }
                                        i2 = i9;
                                        th = th6;
                                    }
                                } else {
                                    if (Logger.isDebugEnabled(Log.TAG)) {
                                        android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Awaiting 3A convergence");
                                    }
                                    nl3Var = new nl3<FrameInfo, Boolean>() { // from class: androidx.camera.camera2.impl.CapturePipelineImpl$torchApplyCapture$3$8
                                        @Override // defpackage.nl3
                                        public final Boolean invoke(FrameInfo frameInfo) {
                                            frameInfo.getClass();
                                            return Boolean.valueOf(ConvergenceUtils.is3AConverged(this.this$0.toCameraCaptureResult(frameInfo.getMetadata()), true));
                                        }
                                    };
                                    c03872.L$0 = capturePipelineImpl;
                                    c03872.L$1 = list3;
                                    c03872.L$2 = mainCaptureParams2;
                                    c03872.I$0 = i7;
                                    c03872.Z$0 = z4;
                                    c03872.I$1 = i5;
                                    c03872.I$2 = i6;
                                    c03872.label = 6;
                                    if (waitForResult(j2, nl3Var, c03872) != a32Var) {
                                        i4 = i6;
                                        z5 = z4;
                                        i9 = i5;
                                        i8 = i7;
                                        list2 = list3;
                                        Camera2Logger camera2Logger5 = Camera2Logger.INSTANCE;
                                        th6 = th7;
                                        if (Logger.isDebugEnabled(Log.TAG)) {
                                            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: 3A convergence waiting done");
                                            th6 = th7;
                                        }
                                        i2 = i9;
                                        th = th6;
                                    }
                                }
                                if (Logger.isDebugEnabled(Log.TAG)) {
                                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: PRE_CAPTURE completed");
                                }
                                i3 = i8;
                                z3 = z5;
                                r14 = th;
                            }
                        }
                    } else {
                        mainCaptureParams2 = mainCaptureParams;
                        i5 = i2;
                        i6 = i16;
                        z4 = z;
                        list3 = list;
                        i7 = i;
                        capturePipelineImpl = this;
                        j2 = j;
                        if (!z4) {
                            if (Logger.isDebugEnabled(Log.TAG)) {
                                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Locking 3A for capture");
                            }
                            CameraGraph graph2 = this.useCaseGraphContext.getGraph();
                            c03872.L$0 = capturePipelineImpl;
                            c03872.L$1 = list3;
                            c03872.L$2 = mainCaptureParams2;
                            c03872.I$0 = i7;
                            c03872.J$0 = j2;
                            c03872.Z$0 = z4;
                            c03872.I$1 = i5;
                            c03872.I$2 = i6;
                            c03872.label = 2;
                            objAcquireSession = graph2.acquireSession(c03872);
                            if (objAcquireSession != a32Var) {
                                long j6 = j2;
                                i4 = i6;
                                objZ = objAcquireSession;
                                i10 = i5;
                                i11 = i7;
                                capturePipelineImpl3 = capturePipelineImpl;
                                j4 = j6;
                                autoCloseable = (AutoCloseable) objZ;
                                CameraGraph.Session session2 = (CameraGraph.Session) autoCloseable;
                                if (i11 == 0) {
                                    z6 = true;
                                } else {
                                    z6 = false;
                                }
                                if (i11 == 0) {
                                    z7 = true;
                                } else {
                                    z7 = false;
                                }
                                c03872.L$0 = capturePipelineImpl3;
                                c03872.L$1 = list3;
                                c03872.L$2 = mainCaptureParams2;
                                c03872.L$3 = autoCloseable;
                                c03872.I$0 = i11;
                                c03872.Z$0 = z4;
                                c03872.I$1 = i10;
                                c03872.I$2 = i4;
                                c03872.label = 3;
                                mainCaptureParams3 = mainCaptureParams2;
                                list4 = list3;
                                z8 = z4;
                                boolean z12 = z6;
                                capturePipelineImpl4 = capturePipelineImpl3;
                                i12 = i11;
                                th3 = null;
                                z2 = true;
                                objLock3AForCapture$default = CameraGraph.Session.lock3AForCapture$default(session2, z12, z7, 0, j4, c03872, 4, null);
                                if (objLock3AForCapture$default != a32Var) {
                                    autoCloseable3 = autoCloseable;
                                    objZ = objLock3AForCapture$default;
                                    i13 = i12;
                                    capturePipelineImpl5 = capturePipelineImpl4;
                                    mainCaptureParams4 = mainCaptureParams3;
                                    list5 = list4;
                                    z9 = z8;
                                    c03872.L$0 = capturePipelineImpl5;
                                    c03872.L$1 = list5;
                                    c03872.L$2 = mainCaptureParams4;
                                    c03872.L$3 = autoCloseable3;
                                    c03872.I$0 = i13;
                                    c03872.Z$0 = z9;
                                    c03872.I$1 = i10;
                                    c03872.I$2 = i4;
                                    c03872.label = 4;
                                    objZ = ((mk2) objZ).Z(c03872);
                                    if (objZ != a32Var) {
                                        z5 = z9;
                                        i8 = i13;
                                        autoCloseable2 = autoCloseable3;
                                        mainCaptureParams5 = mainCaptureParams4;
                                        list6 = list5;
                                        capturePipelineImpl6 = capturePipelineImpl5;
                                        th4 = th3;
                                        result3A = (Result3A) objZ;
                                        aq5.c(autoCloseable2, th4);
                                        Camera2Logger camera2Logger6 = Camera2Logger.INSTANCE;
                                        if (Logger.isDebugEnabled(Log.TAG)) {
                                            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Locking 3A for capture done, result3A = " + result3A);
                                        }
                                        i2 = i10;
                                        mainCaptureParams2 = mainCaptureParams5;
                                        list2 = list6;
                                        capturePipelineImpl = capturePipelineImpl6;
                                        th = th4;
                                        if (Logger.isDebugEnabled(Log.TAG)) {
                                            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: PRE_CAPTURE completed");
                                        }
                                        i3 = i8;
                                        z3 = z5;
                                        r14 = th;
                                    }
                                }
                            }
                        } else {
                            th = null;
                            th5 = null;
                            th7 = null;
                            z2 = true;
                            if (i6 == 0) {
                                i4 = i6;
                                z5 = z4;
                                i2 = i5;
                                i8 = i7;
                                list2 = list3;
                            } else if (i7 == 0) {
                                if (Logger.isDebugEnabled(Log.TAG)) {
                                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Locking 3A");
                                }
                                c03872.L$0 = capturePipelineImpl;
                                c03872.L$1 = list3;
                                c03872.L$2 = mainCaptureParams2;
                                c03872.I$0 = i7;
                                c03872.Z$0 = z4;
                                c03872.I$1 = i5;
                                c03872.I$2 = i6;
                                c03872.label = 5;
                                if (lockAf(j2, true, c03872) != a32Var) {
                                    i4 = i6;
                                    z5 = z4;
                                    i9 = i5;
                                    i8 = i7;
                                    list2 = list3;
                                    Camera2Logger camera2Logger7 = Camera2Logger.INSTANCE;
                                    th6 = th5;
                                    if (Logger.isDebugEnabled(Log.TAG)) {
                                        android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Locking 3A done");
                                        th6 = th5;
                                    }
                                    i2 = i9;
                                    th = th6;
                                }
                            } else {
                                if (Logger.isDebugEnabled(Log.TAG)) {
                                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Awaiting 3A convergence");
                                }
                                nl3Var = new nl3<FrameInfo, Boolean>() { // from class: androidx.camera.camera2.impl.CapturePipelineImpl$torchApplyCapture$3$8
                                    @Override // defpackage.nl3
                                    public final Boolean invoke(FrameInfo frameInfo) {
                                        frameInfo.getClass();
                                        return Boolean.valueOf(ConvergenceUtils.is3AConverged(this.this$0.toCameraCaptureResult(frameInfo.getMetadata()), true));
                                    }
                                };
                                c03872.L$0 = capturePipelineImpl;
                                c03872.L$1 = list3;
                                c03872.L$2 = mainCaptureParams2;
                                c03872.I$0 = i7;
                                c03872.Z$0 = z4;
                                c03872.I$1 = i5;
                                c03872.I$2 = i6;
                                c03872.label = 6;
                                if (waitForResult(j2, nl3Var, c03872) != a32Var) {
                                    i4 = i6;
                                    z5 = z4;
                                    i9 = i5;
                                    i8 = i7;
                                    list2 = list3;
                                    Camera2Logger camera2Logger8 = Camera2Logger.INSTANCE;
                                    th6 = th7;
                                    if (Logger.isDebugEnabled(Log.TAG)) {
                                        android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: 3A convergence waiting done");
                                        th6 = th7;
                                    }
                                    i2 = i9;
                                    th = th6;
                                }
                            }
                            if (Logger.isDebugEnabled(Log.TAG)) {
                                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: PRE_CAPTURE completed");
                            }
                            i3 = i8;
                            z3 = z5;
                            r14 = th;
                        }
                    }
                    return a32Var;
                }
                mainCaptureParams2 = mainCaptureParams;
                z2 = true;
                r14 = 0;
                i3 = i;
                list2 = list;
                capturePipelineImpl = this;
                i4 = i16;
                z3 = z;
                if (list2.contains(PipelineTask.MAIN_CAPTURE)) {
                    if (Logger.isDebugEnabled(Log.TAG)) {
                        android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: starting MAIN_CAPTURE");
                    }
                    if (mainCaptureParams2 != null) {
                        ah.f("Required value was null.");
                        return r14;
                    }
                    listH = capturePipelineImpl.submitRequestInternal(mainCaptureParams2);
                    if (Logger.isDebugEnabled(Log.TAG)) {
                        android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: MAIN_CAPTURE completed");
                    }
                } else {
                    listH = u96.h(ga1.a(r14));
                }
                if (list2.contains(PipelineTask.POST_CAPTURE)) {
                    y22 sequentialScope = capturePipelineImpl.threads.getSequentialScope();
                    i14 = i4;
                    if (i2 != 0) {
                        z10 = z2;
                    } else {
                        z10 = false;
                    }
                    if (i14 == 0) {
                        z2 = false;
                    }
                    av0.c(sequentialScope, r14, r14, new CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1(listH, null, z10, this, z3, z2, i3), 3);
                }
                return listH;
            case 1:
                int i17 = c03872.I$2;
                int i18 = c03872.I$1;
                z4 = c03872.Z$0;
                long j7 = c03872.J$0;
                i7 = c03872.I$0;
                MainCaptureParams mainCaptureParams6 = (MainCaptureParams) c03872.L$2;
                list3 = (List) c03872.L$1;
                capturePipelineImpl2 = (CapturePipelineImpl) c03872.L$0;
                r57.b(objZ);
                i6 = i17;
                j3 = j7;
                i5 = i18;
                mainCaptureParams2 = mainCaptureParams6;
                j2 = j3;
                Camera2Logger camera2Logger9 = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Setting torch done");
                }
                capturePipelineImpl = capturePipelineImpl2;
                if (!z4) {
                    th = null;
                    th5 = null;
                    th7 = null;
                    z2 = true;
                    if (i6 == 0) {
                        i4 = i6;
                        z5 = z4;
                        i2 = i5;
                        i8 = i7;
                        list2 = list3;
                    } else if (i7 == 0) {
                        if (Logger.isDebugEnabled(Log.TAG)) {
                            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Locking 3A");
                        }
                        c03872.L$0 = capturePipelineImpl;
                        c03872.L$1 = list3;
                        c03872.L$2 = mainCaptureParams2;
                        c03872.I$0 = i7;
                        c03872.Z$0 = z4;
                        c03872.I$1 = i5;
                        c03872.I$2 = i6;
                        c03872.label = 5;
                        if (lockAf(j2, true, c03872) != a32Var) {
                            i4 = i6;
                            z5 = z4;
                            i9 = i5;
                            i8 = i7;
                            list2 = list3;
                            Camera2Logger camera2Logger10 = Camera2Logger.INSTANCE;
                            th6 = th5;
                            if (Logger.isDebugEnabled(Log.TAG)) {
                                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Locking 3A done");
                                th6 = th5;
                            }
                            i2 = i9;
                            th = th6;
                        }
                    } else {
                        if (Logger.isDebugEnabled(Log.TAG)) {
                            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Awaiting 3A convergence");
                        }
                        nl3Var = new nl3<FrameInfo, Boolean>() { // from class: androidx.camera.camera2.impl.CapturePipelineImpl$torchApplyCapture$3$8
                            @Override // defpackage.nl3
                            public final Boolean invoke(FrameInfo frameInfo) {
                                frameInfo.getClass();
                                return Boolean.valueOf(ConvergenceUtils.is3AConverged(this.this$0.toCameraCaptureResult(frameInfo.getMetadata()), true));
                            }
                        };
                        c03872.L$0 = capturePipelineImpl;
                        c03872.L$1 = list3;
                        c03872.L$2 = mainCaptureParams2;
                        c03872.I$0 = i7;
                        c03872.Z$0 = z4;
                        c03872.I$1 = i5;
                        c03872.I$2 = i6;
                        c03872.label = 6;
                        if (waitForResult(j2, nl3Var, c03872) != a32Var) {
                            i4 = i6;
                            z5 = z4;
                            i9 = i5;
                            i8 = i7;
                            list2 = list3;
                            Camera2Logger camera2Logger11 = Camera2Logger.INSTANCE;
                            th6 = th7;
                            if (Logger.isDebugEnabled(Log.TAG)) {
                                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: 3A convergence waiting done");
                                th6 = th7;
                            }
                            i2 = i9;
                            th = th6;
                        }
                    }
                    if (Logger.isDebugEnabled(Log.TAG)) {
                        android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: PRE_CAPTURE completed");
                    }
                    i3 = i8;
                    z3 = z5;
                    r14 = th;
                    if (list2.contains(PipelineTask.MAIN_CAPTURE)) {
                        if (Logger.isDebugEnabled(Log.TAG)) {
                            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: starting MAIN_CAPTURE");
                        }
                        if (mainCaptureParams2 != null) {
                            ah.f("Required value was null.");
                            return r14;
                        }
                        listH = capturePipelineImpl.submitRequestInternal(mainCaptureParams2);
                        if (Logger.isDebugEnabled(Log.TAG)) {
                            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: MAIN_CAPTURE completed");
                        }
                    } else {
                        listH = u96.h(ga1.a(r14));
                    }
                    if (list2.contains(PipelineTask.POST_CAPTURE)) {
                        y22 sequentialScope2 = capturePipelineImpl.threads.getSequentialScope();
                        i14 = i4;
                        if (i2 != 0) {
                            z10 = z2;
                        } else {
                            z10 = false;
                        }
                        if (i14 == 0) {
                            z2 = false;
                        }
                        av0.c(sequentialScope2, r14, r14, new CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1(listH, null, z10, this, z3, z2, i3), 3);
                    }
                    return listH;
                }
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Locking 3A for capture");
                }
                CameraGraph graph3 = this.useCaseGraphContext.getGraph();
                c03872.L$0 = capturePipelineImpl;
                c03872.L$1 = list3;
                c03872.L$2 = mainCaptureParams2;
                c03872.I$0 = i7;
                c03872.J$0 = j2;
                c03872.Z$0 = z4;
                c03872.I$1 = i5;
                c03872.I$2 = i6;
                c03872.label = 2;
                objAcquireSession = graph3.acquireSession(c03872);
                if (objAcquireSession != a32Var) {
                    long j8 = j2;
                    i4 = i6;
                    objZ = objAcquireSession;
                    i10 = i5;
                    i11 = i7;
                    capturePipelineImpl3 = capturePipelineImpl;
                    j4 = j8;
                    autoCloseable = (AutoCloseable) objZ;
                    CameraGraph.Session session3 = (CameraGraph.Session) autoCloseable;
                    if (i11 == 0) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (i11 == 0) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    c03872.L$0 = capturePipelineImpl3;
                    c03872.L$1 = list3;
                    c03872.L$2 = mainCaptureParams2;
                    c03872.L$3 = autoCloseable;
                    c03872.I$0 = i11;
                    c03872.Z$0 = z4;
                    c03872.I$1 = i10;
                    c03872.I$2 = i4;
                    c03872.label = 3;
                    mainCaptureParams3 = mainCaptureParams2;
                    list4 = list3;
                    z8 = z4;
                    boolean z13 = z6;
                    capturePipelineImpl4 = capturePipelineImpl3;
                    i12 = i11;
                    th3 = null;
                    z2 = true;
                    objLock3AForCapture$default = CameraGraph.Session.lock3AForCapture$default(session3, z13, z7, 0, j4, c03872, 4, null);
                    if (objLock3AForCapture$default != a32Var) {
                        autoCloseable3 = autoCloseable;
                        objZ = objLock3AForCapture$default;
                        i13 = i12;
                        capturePipelineImpl5 = capturePipelineImpl4;
                        mainCaptureParams4 = mainCaptureParams3;
                        list5 = list4;
                        z9 = z8;
                        c03872.L$0 = capturePipelineImpl5;
                        c03872.L$1 = list5;
                        c03872.L$2 = mainCaptureParams4;
                        c03872.L$3 = autoCloseable3;
                        c03872.I$0 = i13;
                        c03872.Z$0 = z9;
                        c03872.I$1 = i10;
                        c03872.I$2 = i4;
                        c03872.label = 4;
                        objZ = ((mk2) objZ).Z(c03872);
                        if (objZ != a32Var) {
                            z5 = z9;
                            i8 = i13;
                            autoCloseable2 = autoCloseable3;
                            mainCaptureParams5 = mainCaptureParams4;
                            list6 = list5;
                            capturePipelineImpl6 = capturePipelineImpl5;
                            th4 = th3;
                            result3A = (Result3A) objZ;
                            aq5.c(autoCloseable2, th4);
                            Camera2Logger camera2Logger12 = Camera2Logger.INSTANCE;
                            if (Logger.isDebugEnabled(Log.TAG)) {
                                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Locking 3A for capture done, result3A = " + result3A);
                            }
                            i2 = i10;
                            mainCaptureParams2 = mainCaptureParams5;
                            list2 = list6;
                            capturePipelineImpl = capturePipelineImpl6;
                            th = th4;
                            if (Logger.isDebugEnabled(Log.TAG)) {
                                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: PRE_CAPTURE completed");
                            }
                            i3 = i8;
                            z3 = z5;
                            r14 = th;
                            if (list2.contains(PipelineTask.MAIN_CAPTURE)) {
                                if (Logger.isDebugEnabled(Log.TAG)) {
                                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: starting MAIN_CAPTURE");
                                }
                                if (mainCaptureParams2 != null) {
                                    ah.f("Required value was null.");
                                    return r14;
                                }
                                listH = capturePipelineImpl.submitRequestInternal(mainCaptureParams2);
                                if (Logger.isDebugEnabled(Log.TAG)) {
                                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: MAIN_CAPTURE completed");
                                }
                            } else {
                                listH = u96.h(ga1.a(r14));
                            }
                            if (list2.contains(PipelineTask.POST_CAPTURE)) {
                                y22 sequentialScope3 = capturePipelineImpl.threads.getSequentialScope();
                                i14 = i4;
                                if (i2 != 0) {
                                    z10 = z2;
                                } else {
                                    z10 = false;
                                }
                                if (i14 == 0) {
                                    z2 = false;
                                }
                                av0.c(sequentialScope3, r14, r14, new CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1(listH, null, z10, this, z3, z2, i3), 3);
                            }
                            return listH;
                        }
                    }
                }
                return a32Var;
            case 2:
                i4 = c03872.I$2;
                i10 = c03872.I$1;
                z4 = c03872.Z$0;
                long j9 = c03872.J$0;
                int i19 = c03872.I$0;
                MainCaptureParams mainCaptureParams7 = (MainCaptureParams) c03872.L$2;
                List<? extends PipelineTask> list7 = (List) c03872.L$1;
                CapturePipelineImpl capturePipelineImpl7 = (CapturePipelineImpl) c03872.L$0;
                r57.b(objZ);
                capturePipelineImpl3 = capturePipelineImpl7;
                i11 = i19;
                j4 = j9;
                mainCaptureParams2 = mainCaptureParams7;
                list3 = list7;
                autoCloseable = (AutoCloseable) objZ;
                CameraGraph.Session session4 = (CameraGraph.Session) autoCloseable;
                if (i11 == 0) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (i11 == 0) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                c03872.L$0 = capturePipelineImpl3;
                c03872.L$1 = list3;
                c03872.L$2 = mainCaptureParams2;
                c03872.L$3 = autoCloseable;
                c03872.I$0 = i11;
                c03872.Z$0 = z4;
                c03872.I$1 = i10;
                c03872.I$2 = i4;
                c03872.label = 3;
                mainCaptureParams3 = mainCaptureParams2;
                list4 = list3;
                z8 = z4;
                boolean z14 = z6;
                capturePipelineImpl4 = capturePipelineImpl3;
                i12 = i11;
                th3 = null;
                z2 = true;
                objLock3AForCapture$default = CameraGraph.Session.lock3AForCapture$default(session4, z14, z7, 0, j4, c03872, 4, null);
                if (objLock3AForCapture$default != a32Var) {
                    autoCloseable3 = autoCloseable;
                    objZ = objLock3AForCapture$default;
                    i13 = i12;
                    capturePipelineImpl5 = capturePipelineImpl4;
                    mainCaptureParams4 = mainCaptureParams3;
                    list5 = list4;
                    z9 = z8;
                    c03872.L$0 = capturePipelineImpl5;
                    c03872.L$1 = list5;
                    c03872.L$2 = mainCaptureParams4;
                    c03872.L$3 = autoCloseable3;
                    c03872.I$0 = i13;
                    c03872.Z$0 = z9;
                    c03872.I$1 = i10;
                    c03872.I$2 = i4;
                    c03872.label = 4;
                    objZ = ((mk2) objZ).Z(c03872);
                    if (objZ != a32Var) {
                        z5 = z9;
                        i8 = i13;
                        autoCloseable2 = autoCloseable3;
                        mainCaptureParams5 = mainCaptureParams4;
                        list6 = list5;
                        capturePipelineImpl6 = capturePipelineImpl5;
                        th4 = th3;
                        result3A = (Result3A) objZ;
                        aq5.c(autoCloseable2, th4);
                        Camera2Logger camera2Logger13 = Camera2Logger.INSTANCE;
                        if (Logger.isDebugEnabled(Log.TAG)) {
                            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Locking 3A for capture done, result3A = " + result3A);
                        }
                        i2 = i10;
                        mainCaptureParams2 = mainCaptureParams5;
                        list2 = list6;
                        capturePipelineImpl = capturePipelineImpl6;
                        th = th4;
                        if (Logger.isDebugEnabled(Log.TAG)) {
                            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: PRE_CAPTURE completed");
                        }
                        i3 = i8;
                        z3 = z5;
                        r14 = th;
                        if (list2.contains(PipelineTask.MAIN_CAPTURE)) {
                            if (Logger.isDebugEnabled(Log.TAG)) {
                                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: starting MAIN_CAPTURE");
                            }
                            if (mainCaptureParams2 != null) {
                                ah.f("Required value was null.");
                                return r14;
                            }
                            listH = capturePipelineImpl.submitRequestInternal(mainCaptureParams2);
                            if (Logger.isDebugEnabled(Log.TAG)) {
                                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: MAIN_CAPTURE completed");
                            }
                        } else {
                            listH = u96.h(ga1.a(r14));
                        }
                        if (list2.contains(PipelineTask.POST_CAPTURE)) {
                            y22 sequentialScope4 = capturePipelineImpl.threads.getSequentialScope();
                            i14 = i4;
                            if (i2 != 0) {
                                z10 = z2;
                            } else {
                                z10 = false;
                            }
                            if (i14 == 0) {
                                z2 = false;
                            }
                            av0.c(sequentialScope4, r14, r14, new CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1(listH, null, z10, this, z3, z2, i3), 3);
                        }
                        return listH;
                    }
                }
                return a32Var;
            case 3:
                i4 = c03872.I$2;
                i10 = c03872.I$1;
                z9 = c03872.Z$0;
                i13 = c03872.I$0;
                autoCloseable3 = (AutoCloseable) c03872.L$3;
                mainCaptureParams4 = (MainCaptureParams) c03872.L$2;
                list5 = (List) c03872.L$1;
                capturePipelineImpl5 = (CapturePipelineImpl) c03872.L$0;
                try {
                    r57.b(objZ);
                    z2 = true;
                    th3 = null;
                    c03872.L$0 = capturePipelineImpl5;
                    c03872.L$1 = list5;
                    c03872.L$2 = mainCaptureParams4;
                    c03872.L$3 = autoCloseable3;
                    c03872.I$0 = i13;
                    c03872.Z$0 = z9;
                    c03872.I$1 = i10;
                    c03872.I$2 = i4;
                    c03872.label = 4;
                    objZ = ((mk2) objZ).Z(c03872);
                    if (objZ != a32Var) {
                        z5 = z9;
                        i8 = i13;
                        autoCloseable2 = autoCloseable3;
                        mainCaptureParams5 = mainCaptureParams4;
                        list6 = list5;
                        capturePipelineImpl6 = capturePipelineImpl5;
                        th4 = th3;
                        result3A = (Result3A) objZ;
                        aq5.c(autoCloseable2, th4);
                        Camera2Logger camera2Logger14 = Camera2Logger.INSTANCE;
                        if (Logger.isDebugEnabled(Log.TAG)) {
                            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Locking 3A for capture done, result3A = " + result3A);
                        }
                        i2 = i10;
                        mainCaptureParams2 = mainCaptureParams5;
                        list2 = list6;
                        capturePipelineImpl = capturePipelineImpl6;
                        th = th4;
                        if (Logger.isDebugEnabled(Log.TAG)) {
                            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: PRE_CAPTURE completed");
                        }
                        i3 = i8;
                        z3 = z5;
                        r14 = th;
                        if (list2.contains(PipelineTask.MAIN_CAPTURE)) {
                            if (Logger.isDebugEnabled(Log.TAG)) {
                                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: starting MAIN_CAPTURE");
                            }
                            if (mainCaptureParams2 != null) {
                                ah.f("Required value was null.");
                                return r14;
                            }
                            listH = capturePipelineImpl.submitRequestInternal(mainCaptureParams2);
                            if (Logger.isDebugEnabled(Log.TAG)) {
                                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: MAIN_CAPTURE completed");
                            }
                        } else {
                            listH = u96.h(ga1.a(r14));
                        }
                        if (list2.contains(PipelineTask.POST_CAPTURE)) {
                            y22 sequentialScope5 = capturePipelineImpl.threads.getSequentialScope();
                            i14 = i4;
                            if (i2 != 0) {
                                z10 = z2;
                            } else {
                                z10 = false;
                            }
                            if (i14 == 0) {
                                z2 = false;
                            }
                            av0.c(sequentialScope5, r14, r14, new CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1(listH, null, z10, this, z3, z2, i3), 3);
                        }
                        return listH;
                    }
                    return a32Var;
                } catch (Throwable th10) {
                    th2 = th10;
                    autoCloseable2 = autoCloseable3;
                    throw th2;
                }
            case 4:
                i4 = c03872.I$2;
                i10 = c03872.I$1;
                z5 = c03872.Z$0;
                i8 = c03872.I$0;
                autoCloseable2 = (AutoCloseable) c03872.L$3;
                mainCaptureParams5 = (MainCaptureParams) c03872.L$2;
                list6 = (List) c03872.L$1;
                capturePipelineImpl6 = (CapturePipelineImpl) c03872.L$0;
                try {
                    r57.b(objZ);
                    z2 = true;
                    th4 = null;
                    result3A = (Result3A) objZ;
                    aq5.c(autoCloseable2, th4);
                    Camera2Logger camera2Logger15 = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled(Log.TAG)) {
                        android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Locking 3A for capture done, result3A = " + result3A);
                    }
                    i2 = i10;
                    mainCaptureParams2 = mainCaptureParams5;
                    list2 = list6;
                    capturePipelineImpl = capturePipelineImpl6;
                    th = th4;
                    if (Logger.isDebugEnabled(Log.TAG)) {
                        android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: PRE_CAPTURE completed");
                    }
                    i3 = i8;
                    z3 = z5;
                    r14 = th;
                    if (list2.contains(PipelineTask.MAIN_CAPTURE)) {
                        if (Logger.isDebugEnabled(Log.TAG)) {
                            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: starting MAIN_CAPTURE");
                        }
                        if (mainCaptureParams2 != null) {
                            ah.f("Required value was null.");
                            return r14;
                        }
                        listH = capturePipelineImpl.submitRequestInternal(mainCaptureParams2);
                        if (Logger.isDebugEnabled(Log.TAG)) {
                            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: MAIN_CAPTURE completed");
                        }
                    } else {
                        listH = u96.h(ga1.a(r14));
                    }
                    if (list2.contains(PipelineTask.POST_CAPTURE)) {
                        y22 sequentialScope6 = capturePipelineImpl.threads.getSequentialScope();
                        i14 = i4;
                        if (i2 != 0) {
                            z10 = z2;
                        } else {
                            z10 = false;
                        }
                        if (i14 == 0) {
                            z2 = false;
                        }
                        av0.c(sequentialScope6, r14, r14, new CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1(listH, null, z10, this, z3, z2, i3), 3);
                    }
                    return listH;
                } catch (Throwable th11) {
                    th2 = th11;
                    throw th2;
                }
            case 5:
                i4 = c03872.I$2;
                i9 = c03872.I$1;
                z5 = c03872.Z$0;
                i8 = c03872.I$0;
                mainCaptureParams2 = (MainCaptureParams) c03872.L$2;
                list2 = (List) c03872.L$1;
                capturePipelineImpl = (CapturePipelineImpl) c03872.L$0;
                r57.b(objZ);
                z2 = true;
                th5 = null;
                Camera2Logger camera2Logger16 = Camera2Logger.INSTANCE;
                th6 = th5;
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Locking 3A done");
                    th6 = th5;
                }
                i2 = i9;
                th = th6;
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: PRE_CAPTURE completed");
                }
                i3 = i8;
                z3 = z5;
                r14 = th;
                if (list2.contains(PipelineTask.MAIN_CAPTURE)) {
                    if (Logger.isDebugEnabled(Log.TAG)) {
                        android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: starting MAIN_CAPTURE");
                    }
                    if (mainCaptureParams2 != null) {
                        ah.f("Required value was null.");
                        return r14;
                    }
                    listH = capturePipelineImpl.submitRequestInternal(mainCaptureParams2);
                    if (Logger.isDebugEnabled(Log.TAG)) {
                        android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: MAIN_CAPTURE completed");
                    }
                } else {
                    listH = u96.h(ga1.a(r14));
                }
                if (list2.contains(PipelineTask.POST_CAPTURE)) {
                    y22 sequentialScope7 = capturePipelineImpl.threads.getSequentialScope();
                    i14 = i4;
                    if (i2 != 0) {
                        z10 = z2;
                    } else {
                        z10 = false;
                    }
                    if (i14 == 0) {
                        z2 = false;
                    }
                    av0.c(sequentialScope7, r14, r14, new CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1(listH, null, z10, this, z3, z2, i3), 3);
                }
                return listH;
            case 6:
                i4 = c03872.I$2;
                i9 = c03872.I$1;
                z5 = c03872.Z$0;
                i8 = c03872.I$0;
                mainCaptureParams2 = (MainCaptureParams) c03872.L$2;
                list2 = (List) c03872.L$1;
                capturePipelineImpl = (CapturePipelineImpl) c03872.L$0;
                r57.b(objZ);
                z2 = true;
                th7 = null;
                Camera2Logger camera2Logger17 = Camera2Logger.INSTANCE;
                th6 = th7;
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: 3A convergence waiting done");
                    th6 = th7;
                }
                i2 = i9;
                th = th6;
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: PRE_CAPTURE completed");
                }
                i3 = i8;
                z3 = z5;
                r14 = th;
                if (list2.contains(PipelineTask.MAIN_CAPTURE)) {
                    if (Logger.isDebugEnabled(Log.TAG)) {
                        android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: starting MAIN_CAPTURE");
                    }
                    if (mainCaptureParams2 != null) {
                        ah.f("Required value was null.");
                        return r14;
                    }
                    listH = capturePipelineImpl.submitRequestInternal(mainCaptureParams2);
                    if (Logger.isDebugEnabled(Log.TAG)) {
                        android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: MAIN_CAPTURE completed");
                    }
                } else {
                    listH = u96.h(ga1.a(r14));
                }
                if (list2.contains(PipelineTask.POST_CAPTURE)) {
                    y22 sequentialScope8 = capturePipelineImpl.threads.getSequentialScope();
                    i14 = i4;
                    if (i2 != 0) {
                        z10 = z2;
                    } else {
                        z10 = false;
                    }
                    if (i14 == 0) {
                        z2 = false;
                    }
                    av0.c(sequentialScope8, r14, r14, new CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1(listH, null, z10, this, z3, z2, i3), 3);
                }
                return listH;
            default:
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:46:0x00b9 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object torchAsFlashCapture(MainCaptureParams mainCaptureParams, int i, int i2, List<? extends PipelineTask> list, e02<? super List<? extends mk2<Void>>> e02Var) throws Exception {
        C03881 c03881;
        Object objDefaultNoFlashCapture;
        if (e02Var instanceof C03881) {
            c03881 = (C03881) e02Var;
            int i3 = c03881.label;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                c03881.label = i3 - Integer.MIN_VALUE;
            } else {
                c03881 = new C03881(e02Var);
            }
        } else {
            c03881 = new C03881(e02Var);
        }
        C03881 c03882 = c03881;
        Object objIsPhysicalFlashRequired = c03882.result;
        Object obj = a32.COROUTINE_SUSPENDED;
        int i4 = c03882.label;
        if (i4 == 0) {
            r57.b(objIsPhysicalFlashRequired);
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchAsFlashCapture");
            }
            if (getHasFlashUnit()) {
                c03882.L$0 = mainCaptureParams;
                c03882.L$1 = list;
                c03882.I$0 = i;
                c03882.label = 1;
                objIsPhysicalFlashRequired = isPhysicalFlashRequired(i2, c03882);
                if (objIsPhysicalFlashRequired != obj) {
                }
            } else {
                c03882.L$0 = null;
                c03882.L$1 = null;
                c03882.label = 3;
                objDefaultNoFlashCapture = defaultNoFlashCapture(mainCaptureParams, i, list, c03882);
                if (objDefaultNoFlashCapture == obj) {
                    return objDefaultNoFlashCapture;
                }
            }
            return obj;
        }
        if (i4 != 1) {
            if (i4 == 2) {
                r57.b(objIsPhysicalFlashRequired);
                return objIsPhysicalFlashRequired;
            }
            if (i4 == 3) {
                r57.b(objIsPhysicalFlashRequired);
                return objIsPhysicalFlashRequired;
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        i = c03882.I$0;
        list = (List) c03882.L$1;
        mainCaptureParams = (MainCaptureParams) c03882.L$0;
        r57.b(objIsPhysicalFlashRequired);
        List<? extends PipelineTask> list2 = list;
        if (((Boolean) objIsPhysicalFlashRequired).booleanValue()) {
            boolean z = true;
            long j = CapturePipelineKt.CHECK_3A_WITH_FLASH_TIMEOUT_IN_NS;
            if (this.useTorchAsFlash.shouldDisableAePrecapture() || this.videoUsageControl.isInVideoUsage()) {
                z = false;
            }
            boolean z2 = z;
            c03882.L$0 = null;
            c03882.L$1 = null;
            c03882.label = 2;
            Object obj2 = torchApplyCapture(mainCaptureParams, i, j, list2, z2, c03882);
            if (obj2 != obj) {
                return obj2;
            }
        } else {
            list = list2;
            c03882.L$0 = null;
            c03882.L$1 = null;
            c03882.label = 3;
            objDefaultNoFlashCapture = defaultNoFlashCapture(mainCaptureParams, i, list, c03882);
            if (objDefaultNoFlashCapture == obj) {
                return objDefaultNoFlashCapture;
            }
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:37:0x008f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:8:0x0018  */
    public final Object unlockAf(long j, e02<? super Result3A> e02Var) throws Exception {
        C03891 c03891;
        long j2;
        AutoCloseable autoCloseable;
        AutoCloseable autoCloseable2;
        Throwable th;
        Object objZ;
        if (e02Var instanceof C03891) {
            c03891 = (C03891) e02Var;
            int i = c03891.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c03891.label = i - Integer.MIN_VALUE;
            } else {
                c03891 = new C03891(e02Var);
            }
        } else {
            c03891 = new C03891(e02Var);
        }
        C03891 c03892 = c03891;
        Object objAcquireSession = c03892.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c03892.label;
        try {
            if (i2 == 0) {
                r57.b(objAcquireSession);
                CameraGraph graph = this.useCaseGraphContext.getGraph();
                c03892.J$0 = j;
                c03892.label = 1;
                objAcquireSession = graph.acquireSession(c03892);
                if (objAcquireSession != a32Var) {
                    j2 = j;
                }
                return a32Var;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 == 3) {
                        r57.b(objAcquireSession);
                        return objAcquireSession;
                    }
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                autoCloseable2 = (AutoCloseable) c03892.L$0;
                try {
                    r57.b(objAcquireSession);
                    mk2 mk2Var = (mk2) objAcquireSession;
                    aq5.c(autoCloseable2, null);
                    c03892.L$0 = null;
                    c03892.label = 3;
                    objZ = mk2Var.Z(c03892);
                    if (objZ != a32Var) {
                        return a32Var;
                    }
                    return objZ;
                } catch (Throwable th2) {
                    th = th2;
                    th = th;
                    try {
                        throw th;
                    } catch (Throwable th3) {
                        aq5.c(autoCloseable2, th);
                        throw th3;
                    }
                }
            }
            long j3 = c03892.J$0;
            r57.b(objAcquireSession);
            j2 = j3;
            Boolean bool = Boolean.TRUE;
            c03892.L$0 = autoCloseable;
            c03892.label = 2;
            Object objUnlock3A$default = CameraGraph.Session.unlock3A$default((CameraGraph.Session) autoCloseable, null, bool, null, null, 0, j2, c03892, 29, null);
            if (objUnlock3A$default != a32Var) {
                autoCloseable2 = autoCloseable;
                objAcquireSession = objUnlock3A$default;
                mk2 mk2Var2 = (mk2) objAcquireSession;
                aq5.c(autoCloseable2, null);
                c03892.L$0 = null;
                c03892.label = 3;
                objZ = mk2Var2.Z(c03892);
                if (objZ != a32Var) {
                    return objZ;
                }
            }
            return a32Var;
        } catch (Throwable th4) {
            th = th4;
            autoCloseable2 = autoCloseable;
            th = th;
            throw th;
        }
        autoCloseable = (AutoCloseable) objAcquireSession;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UseCaseCameraState useCaseCameraState_delegate$lambda$0(CapturePipelineImpl capturePipelineImpl) {
        return capturePipelineImpl.useCaseCameraStateProvider.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object waitForResult(long j, nl3<? super FrameInfo, Boolean> nl3Var, e02<? super FrameInfo> e02Var) {
        C03901 c03901;
        ResultListener resultListener;
        if (e02Var instanceof C03901) {
            c03901 = (C03901) e02Var;
            int i = c03901.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c03901.label = i - Integer.MIN_VALUE;
            } else {
                c03901 = new C03901(e02Var);
            }
        } else {
            c03901 = new C03901(e02Var);
        }
        Object obj = c03901.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c03901.label;
        if (i2 == 0) {
            r57.b(obj);
            ResultListener resultListener2 = new ResultListener(j, nl3Var);
            this.requestListener.addListener(resultListener2, this.threads.getSequentialExecutor());
            av0.c(this.threads.getSequentialScope(), null, null, new CapturePipelineImpl$waitForResult$resultListener$1$1(resultListener2, this, null), 3);
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(resultListener2, null);
            c03901.L$0 = resultListener2;
            c03901.label = 1;
            Object objC = yv8.c(j / 1000000, anonymousClass3, c03901);
            if (objC == a32Var) {
                return a32Var;
            }
            obj = objC;
            resultListener = resultListener2;
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            resultListener = (ResultListener) c03901.L$0;
            r57.b(obj);
        }
        if (((FrameInfo) obj) == null) {
            this.requestListener.removeListener(resultListener);
        }
        return obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object waitForResult$default(CapturePipelineImpl capturePipelineImpl, long j, nl3 nl3Var, e02 e02Var, int i, Object obj) {
        if ((i & 2) != 0) {
            nl3Var = new k31(0);
        }
        return capturePipelineImpl.waitForResult(j, nl3Var, e02Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean waitForResult$lambda$0(FrameInfo frameInfo) {
        frameInfo.getClass();
        return true;
    }

    @Override // androidx.camera.camera2.impl.CapturePipeline
    public Object getCameraCapturePipeline(final int i, final int i2, final int i3, e02<? super CameraCapturePipeline> e02Var) {
        return new CameraCapturePipeline() { // from class: androidx.camera.camera2.impl.CapturePipelineImpl.getCameraCapturePipeline.2
            @Override // androidx.camera.core.imagecapture.CameraCapturePipeline
            public ListenableFuture<Void> invokePostCapture() {
                final y22 scope = CapturePipelineImpl.this.threads.getScope();
                final CapturePipelineImpl capturePipelineImpl = CapturePipelineImpl.this;
                final int i4 = i;
                final int i5 = i2;
                final int i6 = i3;
                ListenableFuture<Void> future = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.camera2.impl.CapturePipelineImpl$getCameraCapturePipeline$2$invokePostCapture$$inlined$future$1

                    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$getCameraCapturePipeline$2$invokePostCapture$$inlined$future$1$1, reason: invalid class name */
                    @bd2(c = "androidx.camera.camera2.impl.CapturePipelineImpl$getCameraCapturePipeline$2$invokePostCapture$$inlined$future$1$1", f = "CapturePipeline.kt", l = {104, 111}, m = "invokeSuspend", v = 1)
                    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
                        final /* synthetic */ int $captureMode$inlined;
                        final /* synthetic */ CallbackToFutureAdapter.Completer $completer;
                        final /* synthetic */ int $flashMode$inlined;
                        final /* synthetic */ int $flashType$inlined;
                        Object L$0;
                        int label;
                        final /* synthetic */ CapturePipelineImpl this$0;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        public AnonymousClass1(CallbackToFutureAdapter.Completer completer, e02 e02Var, CapturePipelineImpl capturePipelineImpl, int i, int i2, int i3) {
                            super(2, e02Var);
                            this.$completer = completer;
                            this.this$0 = capturePipelineImpl;
                            this.$captureMode$inlined = i;
                            this.$flashMode$inlined = i2;
                            this.$flashType$inlined = i3;
                        }

                        @Override // defpackage.cd0
                        public final e02<j59> create(Object obj, e02<?> e02Var) {
                            return new AnonymousClass1(this.$completer, e02Var, this.this$0, this.$captureMode$inlined, this.$flashMode$inlined, this.$flashType$inlined);
                        }

                        @Override // defpackage.bm3
                        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
                        }

                        /* JADX WARN: Code restructure failed: missing block: B:15:0x0052, code lost:
                        
                            if (defpackage.oz.b((java.util.Collection) r14, r11) == r0) goto L16;
                         */
                        @Override // defpackage.cd0
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final java.lang.Object invokeSuspend(java.lang.Object r14) throws java.lang.Exception {
                            /*
                                r13 = this;
                                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                                int r1 = r13.label
                                r2 = 0
                                r3 = 2
                                r4 = 1
                                if (r1 == 0) goto L25
                                if (r1 == r4) goto L1b
                                if (r1 != r3) goto L15
                                java.lang.Object r13 = r13.L$0
                                androidx.concurrent.futures.CallbackToFutureAdapter$Completer r13 = (androidx.concurrent.futures.CallbackToFutureAdapter.Completer) r13
                                defpackage.r57.b(r14)
                                goto L55
                            L15:
                                java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
                                defpackage.ah.f(r13)
                                return r2
                            L1b:
                                java.lang.Object r1 = r13.L$0
                                androidx.concurrent.futures.CallbackToFutureAdapter$Completer r1 = (androidx.concurrent.futures.CallbackToFutureAdapter.Completer) r1
                                defpackage.r57.b(r14)
                                r11 = r13
                                r13 = r1
                                goto L48
                            L25:
                                defpackage.r57.b(r14)
                                androidx.concurrent.futures.CallbackToFutureAdapter$Completer r14 = r13.$completer
                                androidx.camera.camera2.impl.CapturePipelineImpl r5 = r13.this$0
                                androidx.camera.camera2.impl.CapturePipelineImpl$PipelineTask r1 = androidx.camera.camera2.impl.CapturePipelineImpl.PipelineTask.POST_CAPTURE
                                java.util.List r6 = defpackage.u96.h(r1)
                                int r7 = r13.$captureMode$inlined
                                int r8 = r13.$flashMode$inlined
                                int r9 = r13.$flashType$inlined
                                r13.L$0 = r14
                                r13.label = r4
                                r10 = 0
                                r11 = r13
                                java.lang.Object r13 = androidx.camera.camera2.impl.CapturePipelineImpl.access$invokeCaptureTasks(r5, r6, r7, r8, r9, r10, r11)
                                if (r13 != r0) goto L45
                                goto L54
                            L45:
                                r12 = r14
                                r14 = r13
                                r13 = r12
                            L48:
                                java.util.Collection r14 = (java.util.Collection) r14
                                r11.L$0 = r13
                                r11.label = r3
                                java.lang.Object r14 = defpackage.oz.b(r14, r11)
                                if (r14 != r0) goto L55
                            L54:
                                return r0
                            L55:
                                r13.set(r2)
                                j59 r13 = defpackage.j59.a
                                return r13
                            */
                            throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.impl.CapturePipelineImpl$getCameraCapturePipeline$2$invokePostCapture$$inlined$future$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
                        }
                    }

                    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
                    public final Object attachCompleter(CallbackToFutureAdapter.Completer<T> completer) {
                        completer.getClass();
                        return av0.c(scope, null, null, new AnonymousClass1(completer, null, capturePipelineImpl, i4, i5, i6), 3);
                    }
                });
                future.getClass();
                return future;
            }

            @Override // androidx.camera.core.imagecapture.CameraCapturePipeline
            public ListenableFuture<Void> invokePreCapture() {
                final y22 scope = CapturePipelineImpl.this.threads.getScope();
                final CapturePipelineImpl capturePipelineImpl = CapturePipelineImpl.this;
                final int i4 = i;
                final int i5 = i2;
                final int i6 = i3;
                ListenableFuture<Void> future = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.camera2.impl.CapturePipelineImpl$getCameraCapturePipeline$2$invokePreCapture$$inlined$future$1

                    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$getCameraCapturePipeline$2$invokePreCapture$$inlined$future$1$1, reason: invalid class name */
                    @bd2(c = "androidx.camera.camera2.impl.CapturePipelineImpl$getCameraCapturePipeline$2$invokePreCapture$$inlined$future$1$1", f = "CapturePipeline.kt", l = {104, 111}, m = "invokeSuspend", v = 1)
                    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
                        final /* synthetic */ int $captureMode$inlined;
                        final /* synthetic */ CallbackToFutureAdapter.Completer $completer;
                        final /* synthetic */ int $flashMode$inlined;
                        final /* synthetic */ int $flashType$inlined;
                        Object L$0;
                        int label;
                        final /* synthetic */ CapturePipelineImpl this$0;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        public AnonymousClass1(CallbackToFutureAdapter.Completer completer, e02 e02Var, CapturePipelineImpl capturePipelineImpl, int i, int i2, int i3) {
                            super(2, e02Var);
                            this.$completer = completer;
                            this.this$0 = capturePipelineImpl;
                            this.$captureMode$inlined = i;
                            this.$flashMode$inlined = i2;
                            this.$flashType$inlined = i3;
                        }

                        @Override // defpackage.cd0
                        public final e02<j59> create(Object obj, e02<?> e02Var) {
                            return new AnonymousClass1(this.$completer, e02Var, this.this$0, this.$captureMode$inlined, this.$flashMode$inlined, this.$flashType$inlined);
                        }

                        @Override // defpackage.bm3
                        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
                        }

                        /* JADX WARN: Code restructure failed: missing block: B:15:0x0052, code lost:
                        
                            if (defpackage.oz.b((java.util.Collection) r14, r11) == r0) goto L16;
                         */
                        @Override // defpackage.cd0
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final java.lang.Object invokeSuspend(java.lang.Object r14) throws java.lang.Exception {
                            /*
                                r13 = this;
                                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                                int r1 = r13.label
                                r2 = 0
                                r3 = 2
                                r4 = 1
                                if (r1 == 0) goto L25
                                if (r1 == r4) goto L1b
                                if (r1 != r3) goto L15
                                java.lang.Object r13 = r13.L$0
                                androidx.concurrent.futures.CallbackToFutureAdapter$Completer r13 = (androidx.concurrent.futures.CallbackToFutureAdapter.Completer) r13
                                defpackage.r57.b(r14)
                                goto L55
                            L15:
                                java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
                                defpackage.ah.f(r13)
                                return r2
                            L1b:
                                java.lang.Object r1 = r13.L$0
                                androidx.concurrent.futures.CallbackToFutureAdapter$Completer r1 = (androidx.concurrent.futures.CallbackToFutureAdapter.Completer) r1
                                defpackage.r57.b(r14)
                                r11 = r13
                                r13 = r1
                                goto L48
                            L25:
                                defpackage.r57.b(r14)
                                androidx.concurrent.futures.CallbackToFutureAdapter$Completer r14 = r13.$completer
                                androidx.camera.camera2.impl.CapturePipelineImpl r5 = r13.this$0
                                androidx.camera.camera2.impl.CapturePipelineImpl$PipelineTask r1 = androidx.camera.camera2.impl.CapturePipelineImpl.PipelineTask.PRE_CAPTURE
                                java.util.List r6 = defpackage.u96.h(r1)
                                int r7 = r13.$captureMode$inlined
                                int r8 = r13.$flashMode$inlined
                                int r9 = r13.$flashType$inlined
                                r13.L$0 = r14
                                r13.label = r4
                                r10 = 0
                                r11 = r13
                                java.lang.Object r13 = androidx.camera.camera2.impl.CapturePipelineImpl.access$invokeCaptureTasks(r5, r6, r7, r8, r9, r10, r11)
                                if (r13 != r0) goto L45
                                goto L54
                            L45:
                                r12 = r14
                                r14 = r13
                                r13 = r12
                            L48:
                                java.util.Collection r14 = (java.util.Collection) r14
                                r11.L$0 = r13
                                r11.label = r3
                                java.lang.Object r14 = defpackage.oz.b(r14, r11)
                                if (r14 != r0) goto L55
                            L54:
                                return r0
                            L55:
                                r13.set(r2)
                                j59 r13 = defpackage.j59.a
                                return r13
                            */
                            throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.impl.CapturePipelineImpl$getCameraCapturePipeline$2$invokePreCapture$$inlined$future$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
                        }
                    }

                    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
                    public final Object attachCompleter(CallbackToFutureAdapter.Completer<T> completer) {
                        completer.getClass();
                        return av0.c(scope, null, null, new AnonymousClass1(completer, null, capturePipelineImpl, i4, i5, i6), 3);
                    }
                });
                future.getClass();
                return future;
            }
        };
    }

    @Override // androidx.camera.camera2.impl.CapturePipeline
    public int getTemplate() {
        return this.template;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x008b A[Catch: all -> 0x0095, TryCatch #1 {all -> 0x0095, blocks: (B:33:0x0080, B:35:0x008b, B:41:0x009e), top: B:57:0x0080 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x009c  */
    /* JADX WARN: Code duplicated, block: B:40:0x009d  */
    /* JADX WARN: Code duplicated, block: B:44:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b2 A[Catch: all -> 0x0035, TryCatch #2 {all -> 0x0035, blocks: (B:14:0x0030, B:45:0x00aa, B:47:0x00b2, B:48:0x00bb), top: B:59:0x0030 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object invokeScreenFlashPostCaptureTasks(int i, e02<? super j59> e02Var) throws Exception {
        C03811 c03811;
        int i2;
        AutoCloseable autoCloseable;
        Throwable th;
        AutoCloseable autoCloseable2;
        CameraGraph.Session session;
        if (e02Var instanceof C03811) {
            c03811 = (C03811) e02Var;
            int i3 = c03811.label;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                c03811.label = i3 - Integer.MIN_VALUE;
            } else {
                c03811 = new C03811(e02Var);
            }
        } else {
            c03811 = new C03811(e02Var);
        }
        Object objAcquireSession = c03811.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i4 = c03811.label;
        boolean z = true;
        if (i4 == 0) {
            r57.b(objAcquireSession);
            FlashControl flashControl = this.flashControl;
            c03811.I$0 = i;
            c03811.label = 1;
            if (flashControl.stopScreenFlashCaptureTasks(c03811) != a32Var) {
            }
            return a32Var;
        }
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 != 3) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                autoCloseable2 = (AutoCloseable) c03811.L$0;
                try {
                    r57.b(objAcquireSession);
                    Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled(Log.TAG)) {
                        android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "screenFlashPostCapture: Unlocking 3A done");
                    }
                    j59 j59Var = j59.a;
                    aq5.c(autoCloseable2, null);
                    return j59.a;
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        throw th;
                    } catch (Throwable th3) {
                        aq5.c(autoCloseable2, th);
                        throw th3;
                    }
                }
            }
            i2 = c03811.I$0;
            r57.b(objAcquireSession);
            autoCloseable = (AutoCloseable) objAcquireSession;
            try {
                session = (CameraGraph.Session) autoCloseable;
                Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "screenFlashPostCapture: Unlocking 3A");
                }
                if (i2 == 0) {
                    z = false;
                }
                c03811.L$0 = autoCloseable;
                c03811.label = 3;
                if (session.unlock3APostCapture(z, c03811) != a32Var) {
                    autoCloseable2 = autoCloseable;
                    Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled(Log.TAG)) {
                        android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "screenFlashPostCapture: Unlocking 3A done");
                    }
                    j59 j59Var2 = j59.a;
                    aq5.c(autoCloseable2, null);
                    return j59.a;
                }
                return a32Var;
            } catch (Throwable th4) {
                th = th4;
                autoCloseable2 = autoCloseable;
                throw th;
            }
        }
        i = c03811.I$0;
        r57.b(objAcquireSession);
        Camera2Logger camera2Logger4 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "screenFlashPostCapture: Acquiring session for unlocking 3A");
        }
        CameraGraph graph = this.useCaseGraphContext.getGraph();
        c03811.I$0 = i;
        c03811.label = 2;
        objAcquireSession = graph.acquireSession(c03811);
        if (objAcquireSession != a32Var) {
            i2 = i;
            autoCloseable = (AutoCloseable) objAcquireSession;
            session = (CameraGraph.Session) autoCloseable;
            Camera2Logger camera2Logger5 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "screenFlashPostCapture: Unlocking 3A");
            }
            if (i2 == 0) {
                z = false;
            }
            c03811.L$0 = autoCloseable;
            c03811.label = 3;
            if (session.unlock3APostCapture(z, c03811) != a32Var) {
                autoCloseable2 = autoCloseable;
                Camera2Logger camera2Logger6 = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "screenFlashPostCapture: Unlocking 3A done");
                }
                j59 j59Var3 = j59.a;
                aq5.c(autoCloseable2, null);
                return j59.a;
            }
        }
        return a32Var;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0097 A[Catch: all -> 0x00a1, TryCatch #0 {all -> 0x00a1, blocks: (B:37:0x008c, B:39:0x0097, B:42:0x00a4, B:46:0x00ac), top: B:64:0x008c }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:49:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:53:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:56:0x00d6 A[Catch: all -> 0x0041, TryCatch #1 {all -> 0x0041, blocks: (B:16:0x003c, B:54:0x00cc, B:56:0x00d6, B:57:0x00e9), top: B:66:0x003c }] */
    /* JADX WARN: Code duplicated, block: B:8:0x001a  */
    /* JADX WARN: Instruction removed from duplicated block: B:56:0x00d6, please report this as an issue */
    public final Object invokeScreenFlashPreCaptureTasks(int i, e02<? super j59> e02Var) throws Exception {
        C03821 c03821;
        int i2;
        int i3;
        AutoCloseable autoCloseable;
        AutoCloseable autoCloseable2;
        Object objLock3AForCapture$default;
        AutoCloseable autoCloseable3;
        Throwable th;
        Result3A result3A;
        if (e02Var instanceof C03821) {
            c03821 = (C03821) e02Var;
            int i4 = c03821.label;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                c03821.label = i4 - Integer.MIN_VALUE;
            } else {
                c03821 = new C03821(e02Var);
            }
        } else {
            c03821 = new C03821(e02Var);
        }
        C03821 c03822 = c03821;
        Object objAcquireSession = c03822.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i5 = c03822.label;
        boolean z = true;
        if (i5 == 0) {
            r57.b(objAcquireSession);
            FlashControl flashControl = this.flashControl;
            i2 = i;
            c03822.I$0 = i2;
            c03822.label = 1;
            if (flashControl.startScreenFlashCaptureTasks(c03822) != a32Var) {
            }
            return a32Var;
        }
        if (i5 != 1) {
            if (i5 == 2) {
                i3 = c03822.I$0;
                r57.b(objAcquireSession);
                autoCloseable = (AutoCloseable) objAcquireSession;
                try {
                    CameraGraph.Session session = (CameraGraph.Session) autoCloseable;
                    Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled(Log.TAG)) {
                        android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "screenFlashPreCapture: Locking 3A for capture");
                    }
                    long j = CapturePipelineKt.CHECK_3A_WITH_SCREEN_FLASH_TIMEOUT_IN_NS;
                    if (i3 == 0) {
                        z = false;
                    }
                    c03822.L$0 = autoCloseable;
                    c03822.label = 3;
                    objLock3AForCapture$default = CameraGraph.Session.lock3AForCapture$default(session, z, true, 0, j, c03822, 4, null);
                    if (objLock3AForCapture$default != a32Var) {
                        autoCloseable3 = autoCloseable;
                        objAcquireSession = objLock3AForCapture$default;
                        c03822.L$0 = autoCloseable3;
                        c03822.label = 4;
                        objAcquireSession = ((mk2) objAcquireSession).Z(c03822);
                        if (objAcquireSession != a32Var) {
                            autoCloseable2 = autoCloseable3;
                            result3A = (Result3A) objAcquireSession;
                            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                            if (Logger.isDebugEnabled(Log.TAG)) {
                                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "screenFlashPreCapture: Locking 3A for capture done, result3A = " + result3A);
                            }
                            j59 j59Var = j59.a;
                            aq5.c(autoCloseable2, null);
                            return j59.a;
                        }
                    }
                    return a32Var;
                } catch (Throwable th2) {
                    th = th2;
                    autoCloseable2 = autoCloseable;
                    th = th;
                    throw th;
                }
            }
            if (i5 != 3) {
                if (i5 != 4) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                autoCloseable2 = (AutoCloseable) c03822.L$0;
                try {
                    r57.b(objAcquireSession);
                    result3A = (Result3A) objAcquireSession;
                    Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled(Log.TAG)) {
                        android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "screenFlashPreCapture: Locking 3A for capture done, result3A = " + result3A);
                    }
                    j59 j59Var2 = j59.a;
                    aq5.c(autoCloseable2, null);
                    return j59.a;
                } catch (Throwable th3) {
                    th = th3;
                    th = th;
                    try {
                        throw th;
                    } catch (Throwable th4) {
                        aq5.c(autoCloseable2, th);
                        throw th4;
                    }
                }
            }
            autoCloseable3 = (AutoCloseable) c03822.L$0;
            try {
                r57.b(objAcquireSession);
                c03822.L$0 = autoCloseable3;
                c03822.label = 4;
                objAcquireSession = ((mk2) objAcquireSession).Z(c03822);
                if (objAcquireSession != a32Var) {
                    autoCloseable2 = autoCloseable3;
                    result3A = (Result3A) objAcquireSession;
                    Camera2Logger camera2Logger4 = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled(Log.TAG)) {
                        android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "screenFlashPreCapture: Locking 3A for capture done, result3A = " + result3A);
                    }
                    j59 j59Var3 = j59.a;
                    aq5.c(autoCloseable2, null);
                    return j59.a;
                }
                return a32Var;
            } catch (Throwable th5) {
                th = th5;
                autoCloseable2 = autoCloseable3;
                throw th;
            }
        }
        i2 = c03822.I$0;
        r57.b(objAcquireSession);
        CameraGraph graph = this.useCaseGraphContext.getGraph();
        c03822.I$0 = i2;
        c03822.label = 2;
        objAcquireSession = graph.acquireSession(c03822);
        if (objAcquireSession != a32Var) {
            i3 = i2;
            autoCloseable = (AutoCloseable) objAcquireSession;
            CameraGraph.Session session2 = (CameraGraph.Session) autoCloseable;
            Camera2Logger camera2Logger5 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "screenFlashPreCapture: Locking 3A for capture");
            }
            long j2 = CapturePipelineKt.CHECK_3A_WITH_SCREEN_FLASH_TIMEOUT_IN_NS;
            if (i3 == 0) {
                z = false;
            }
            c03822.L$0 = autoCloseable;
            c03822.label = 3;
            objLock3AForCapture$default = CameraGraph.Session.lock3AForCapture$default(session2, z, true, 0, j2, c03822, 4, null);
            if (objLock3AForCapture$default != a32Var) {
                autoCloseable3 = autoCloseable;
                objAcquireSession = objLock3AForCapture$default;
                c03822.L$0 = autoCloseable3;
                c03822.label = 4;
                objAcquireSession = ((mk2) objAcquireSession).Z(c03822);
                if (objAcquireSession != a32Var) {
                    autoCloseable2 = autoCloseable3;
                    result3A = (Result3A) objAcquireSession;
                    Camera2Logger camera2Logger6 = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled(Log.TAG)) {
                        android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "screenFlashPreCapture: Locking 3A for capture done, result3A = " + result3A);
                    }
                    j59 j59Var4 = j59.a;
                    aq5.c(autoCloseable2, null);
                    return j59.a;
                }
            }
        }
        return a32Var;
    }

    @Override // androidx.camera.camera2.impl.CapturePipeline
    public void setTemplate(int i) {
        this.template = i;
    }

    @Override // androidx.camera.camera2.impl.CapturePipeline
    /* JADX INFO: renamed from: submitStillCaptures-BvXKQx0 */
    public Object mo32submitStillCapturesBvXKQx0(List<CaptureConfig> list, int i, Config config, int i2, int i3, int i4, e02<? super List<? extends mk2<Void>>> e02Var) {
        return invokeCaptureTasks(u96.i(PipelineTask.PRE_CAPTURE, PipelineTask.MAIN_CAPTURE, PipelineTask.POST_CAPTURE), i2, i4, i3, new MainCaptureParams(list, i, config, null), e02Var);
    }

    public static final class MainCaptureParams {
        private final List<CaptureConfig> configs;
        private final int requestTemplate;
        private final Config sessionConfigOptions;

        private MainCaptureParams(List<CaptureConfig> list, int i, Config config) {
            list.getClass();
            config.getClass();
            this.configs = list;
            this.requestTemplate = i;
            this.sessionConfigOptions = config;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: copy-9al78dA$default, reason: not valid java name */
        public static /* synthetic */ MainCaptureParams m58copy9al78dA$default(MainCaptureParams mainCaptureParams, List list, int i, Config config, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                list = mainCaptureParams.configs;
            }
            if ((i2 & 2) != 0) {
                i = mainCaptureParams.requestTemplate;
            }
            if ((i2 & 4) != 0) {
                config = mainCaptureParams.sessionConfigOptions;
            }
            return mainCaptureParams.m60copy9al78dA(list, i, config);
        }

        public final List<CaptureConfig> component1() {
            return this.configs;
        }

        /* JADX INFO: renamed from: component2-fGx8uWA, reason: not valid java name */
        public final int m59component2fGx8uWA() {
            return this.requestTemplate;
        }

        public final Config component3() {
            return this.sessionConfigOptions;
        }

        /* JADX INFO: renamed from: copy-9al78dA, reason: not valid java name */
        public final MainCaptureParams m60copy9al78dA(List<CaptureConfig> list, int i, Config config) {
            list.getClass();
            config.getClass();
            return new MainCaptureParams(list, i, config, null);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MainCaptureParams)) {
                return false;
            }
            MainCaptureParams mainCaptureParams = (MainCaptureParams) obj;
            return aa4.e(this.configs, mainCaptureParams.configs) && RequestTemplate.m649equalsimpl0(this.requestTemplate, mainCaptureParams.requestTemplate) && aa4.e(this.sessionConfigOptions, mainCaptureParams.sessionConfigOptions);
        }

        public final List<CaptureConfig> getConfigs() {
            return this.configs;
        }

        /* JADX INFO: renamed from: getRequestTemplate-fGx8uWA, reason: not valid java name */
        public final int m61getRequestTemplatefGx8uWA() {
            return this.requestTemplate;
        }

        public final Config getSessionConfigOptions() {
            return this.sessionConfigOptions;
        }

        public int hashCode() {
            return this.sessionConfigOptions.hashCode() + ((RequestTemplate.m651hashCodeimpl(this.requestTemplate) + (this.configs.hashCode() * 31)) * 31);
        }

        public String toString() {
            return "MainCaptureParams(configs=" + this.configs + ", requestTemplate=" + ((Object) RequestTemplate.m652toStringimpl(this.requestTemplate)) + ", sessionConfigOptions=" + this.sessionConfigOptions + ')';
        }

        public /* synthetic */ MainCaptureParams(List list, int i, Config config, jh2 jh2Var) {
            this(list, i, config);
        }
    }
}
