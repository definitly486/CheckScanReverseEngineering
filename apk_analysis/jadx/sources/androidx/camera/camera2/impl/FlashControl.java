package androidx.camera.camera2.impl;

import androidx.camera.camera2.adapter.CoroutineAdaptersKt;
import androidx.camera.camera2.compat.workaround.UseFlashModeTorchFor3aUpdate;
import androidx.camera.camera2.config.CameraScope;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.CameraControl;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Logger;
import androidx.media3.extractor.ts.TsExtractor;
import androidx.media3.muxer.WebmConstants;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.ga1;
import defpackage.hu3;
import defpackage.j59;
import defpackage.mc3;
import defpackage.mk2;
import defpackage.n7;
import defpackage.oi2;
import defpackage.pg8;
import defpackage.qo2;
import defpackage.qy2;
import defpackage.r57;
import defpackage.uy4;
import defpackage.vh;
import defpackage.w82;
import defpackage.xp1;
import defpackage.y22;
import defpackage.yp1;

/* JADX INFO: loaded from: classes.dex */
@CameraScope
public final class FlashControl implements UseCaseCameraControl {
    private volatile int _flashMode;
    private UseCaseCameraRequestControl _requestControl;
    private volatile ImageCapture.ScreenFlash _screenFlash;
    private xp1<j59> _updateSignal;
    private final CameraProperties cameraProperties;
    private int flashMode;
    private ImageCapture.ScreenFlash screenFlash;
    private final State3AControl state3AControl;
    private final UseCaseThreads threads;
    private final TorchControl torchControl;
    private mk2<j59> updateSignal;
    private final UseFlashModeTorchFor3aUpdate useFlashModeTorchFor3aUpdate;

    public static abstract class Bindings {
        public abstract UseCaseCameraControl provideControls(FlashControl flashControl);
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.FlashControl$applyScreenFlash$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.impl.FlashControl", f = "FlashControl.kt", l = {WebmConstants.MkvEbmlElement.PREV_SIZE}, m = "applyScreenFlash", v = 1)
    public static final class AnonymousClass1 extends f02 {
        long J$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlashControl.this.applyScreenFlash(0L, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.FlashControl$applyScreenFlash$2, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.impl.FlashControl$applyScreenFlash$2", f = "FlashControl.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ ImageCapture.ScreenFlashListener $screenFlashListener;
        final /* synthetic */ long $timeoutMillis;
        int label;
        final /* synthetic */ FlashControl this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(long j, FlashControl flashControl, ImageCapture.ScreenFlashListener screenFlashListener, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$timeoutMillis = j;
            this.this$0 = flashControl;
            this.$screenFlashListener = screenFlashListener;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass2(this.$timeoutMillis, this.this$0, this.$screenFlashListener, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            long jCurrentTimeMillis = System.currentTimeMillis() + this.$timeoutMillis;
            ImageCapture.ScreenFlash screenFlash = this.this$0.getScreenFlash();
            if (screenFlash != null) {
                screenFlash.apply(jCurrentTimeMillis, this.$screenFlashListener);
            }
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "applyScreenFlash: ScreenFlash.apply() invoked, expirationTimeMillis = " + jCurrentTimeMillis);
            }
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.FlashControl$applyScreenFlash$3, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.impl.FlashControl$applyScreenFlash$3", f = "FlashControl.kt", l = {TsExtractor.TS_PACKET_SIZE}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass3 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ xp1<j59> $onApplyCompletedSignal;
        final /* synthetic */ long $timeoutMillis;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(xp1<j59> xp1Var, long j, e02<? super AnonymousClass3> e02Var) {
            super(2, e02Var);
            this.$onApplyCompletedSignal = xp1Var;
            this.$timeoutMillis = j;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass3(this.$onApplyCompletedSignal, this.$timeoutMillis, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass3) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "applyScreenFlash: Waiting for ScreenFlashListener to be completed");
                }
                xp1<j59> xp1Var = this.$onApplyCompletedSignal;
                long j = this.$timeoutMillis;
                this.label = 1;
                obj = CoroutineAdaptersKt.awaitUntil(xp1Var, j, this);
                if (obj == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            if (((Boolean) obj).booleanValue()) {
                Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "applyScreenFlash: ScreenFlashListener completed");
                }
            } else {
                Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
                long j2 = this.$timeoutMillis;
                if (Logger.isWarnEnabled(Log.TAG)) {
                    android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "applyScreenFlash: ScreenFlashListener completion timed out after " + j2 + " ms");
                }
            }
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.FlashControl$awaitFlashModeUpdate$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.impl.FlashControl", f = "FlashControl.kt", l = {284}, m = "awaitFlashModeUpdate", v = 1)
    public static final class C03911 extends f02 {
        int I$0;
        int label;
        /* synthetic */ Object result;

        public C03911(e02<? super C03911> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlashControl.this.awaitFlashModeUpdate(this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.FlashControl$startScreenFlashCaptureTasks$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.impl.FlashControl", f = "FlashControl.kt", l = {149, WebmConstants.MkvEbmlElement.BLOCK_GROUP}, m = "startScreenFlashCaptureTasks", v = 1)
    public static final class C03921 extends f02 {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C03921(e02<? super C03921> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlashControl.this.startScreenFlashCaptureTasks(this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.FlashControl$stopScreenFlashCaptureTasks$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.impl.FlashControl", f = "FlashControl.kt", l = {260}, m = "stopScreenFlashCaptureTasks", v = 1)
    public static final class C03931 extends f02 {
        int label;
        /* synthetic */ Object result;

        public C03931(e02<? super C03931> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlashControl.this.stopScreenFlashCaptureTasks(this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.FlashControl$stopScreenFlashCaptureTasks$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.impl.FlashControl$stopScreenFlashCaptureTasks$2", f = "FlashControl.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class C03942 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        public C03942(e02<? super C03942> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return FlashControl.this.new C03942(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C03942) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            ImageCapture.ScreenFlash screenFlash = FlashControl.this.getScreenFlash();
            if (screenFlash != null) {
                screenFlash.clear();
            }
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "screenFlashPostCapture: ScreenFlash.clear() invoked");
            }
            return j59.a;
        }
    }

    public FlashControl(CameraProperties cameraProperties, State3AControl state3AControl, UseCaseThreads useCaseThreads, TorchControl torchControl, UseFlashModeTorchFor3aUpdate useFlashModeTorchFor3aUpdate) {
        cameraProperties.getClass();
        state3AControl.getClass();
        useCaseThreads.getClass();
        torchControl.getClass();
        useFlashModeTorchFor3aUpdate.getClass();
        this.cameraProperties = cameraProperties;
        this.state3AControl = state3AControl;
        this.threads = useCaseThreads;
        this.torchControl = torchControl;
        this.useFlashModeTorchFor3aUpdate = useFlashModeTorchFor3aUpdate;
        this._flashMode = 2;
        this.flashMode = this._flashMode;
        this.screenFlash = this._screenFlash;
        this.updateSignal = ga1.a(j59.a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object applyScreenFlash(long j, e02<? super mk2<j59>> e02Var) {
        AnonymousClass1 anonymousClass1;
        FlashControl flashControl;
        xp1 xp1Var;
        long j2;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(e02Var);
        }
        Object obj = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(obj);
            yp1 yp1Var = new yp1();
            mc3 mc3Var = new mc3(yp1Var);
            oi2 oi2Var = qo2.a;
            hu3 hu3Var = uy4.a;
            flashControl = this;
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(j, flashControl, mc3Var, null);
            anonymousClass1.L$0 = yp1Var;
            anonymousClass1.J$0 = j;
            anonymousClass1.label = 1;
            if (av0.d(hu3Var, anonymousClass2, anonymousClass1) == a32Var) {
                return a32Var;
            }
            xp1Var = yp1Var;
            j2 = j;
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            j2 = anonymousClass1.J$0;
            xp1Var = (xp1) anonymousClass1.L$0;
            r57.b(obj);
            flashControl = this;
        }
        return av0.a(flashControl.threads.getScope(), null, null, new AnonymousClass3(xp1Var, j2, null), 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void applyScreenFlash$lambda$0(xp1 xp1Var) {
        xp1Var.f(j59.a);
    }

    public static /* synthetic */ void getFlashMode$annotations() {
    }

    private static /* synthetic */ void get_flashMode$annotations() {
    }

    private final mk2<j59> setExternalFlashAeModeAsync() {
        boolean zIsExternalFlashAeModeSupported = CameraMetadataIntegrationKt.isExternalFlashAeModeSupported(this.cameraProperties.getMetadata());
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "setExternalFlashAeModeAsync: isExternalFlashAeModeSupported = " + zIsExternalFlashAeModeSupported);
        }
        if (!zIsExternalFlashAeModeSupported) {
            return null;
        }
        mk2<j59> tryExternalFlashAeModeAsync = this.state3AControl.setTryExternalFlashAeModeAsync(true);
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "setExternalFlashAeModeAsync: need to wait for state3AControl.updateSignal");
        }
        tryExternalFlashAeModeAsync.g(new w82(3));
        return tryExternalFlashAeModeAsync;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 setExternalFlashAeModeAsync$lambda$1$1(Throwable th) {
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "setExternalFlashAeModeAsync: state3AControl.updateSignal completed");
        }
        return j59.a;
    }

    public static /* synthetic */ mk2 setFlashAsync$default(FlashControl flashControl, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = true;
        }
        return flashControl.setFlashAsync(i, z);
    }

    private final mk2<j59> setTorchForScreenFlash() {
        boolean zShouldUseFlashModeTorch = this.useFlashModeTorchFor3aUpdate.shouldUseFlashModeTorch();
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "setTorchIfRequired: shouldUseFlashModeTorch = " + zShouldUseFlashModeTorch);
        }
        if (!zShouldUseFlashModeTorch) {
            return null;
        }
        mk2<j59> mk2VarM73setTorchAsyncOup_wC0$camera_camera2$default = TorchControl.m73setTorchAsyncOup_wC0$camera_camera2$default(this.torchControl, TorchControl.TorchMode.Companion.m87getUSED_AS_FLASHIRs_R8(), false, true, 2, null);
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "setTorchIfRequired: need to wait for torch control to be completed");
        }
        mk2VarM73setTorchAsyncOup_wC0$camera_camera2$default.g(new qy2(1));
        return mk2VarM73setTorchAsyncOup_wC0$camera_camera2$default;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 setTorchForScreenFlash$lambda$1$1(Throwable th) {
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "setTorchIfRequired: torch control completed");
        }
        return j59.a;
    }

    private final void stopRunningTask() {
        xp1<j59> xp1Var = this._updateSignal;
        if (xp1Var != null) {
            xp1Var.e(new CameraControl.OperationCanceledException("There is a new flash mode being set or camera was closed"));
        }
        this._updateSignal = null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object awaitFlashModeUpdate(e02<? super Integer> e02Var) {
        C03911 c03911;
        int i;
        if (e02Var instanceof C03911) {
            c03911 = (C03911) e02Var;
            int i2 = c03911.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c03911.label = i2 - Integer.MIN_VALUE;
            } else {
                c03911 = new C03911(e02Var);
            }
        } else {
            c03911 = new C03911(e02Var);
        }
        Object obj = c03911.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i3 = c03911.label;
        if (i3 == 0) {
            r57.b(obj);
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "FlashControl: Waiting for any ongoing update to be completed");
            }
            int flashMode = getFlashMode();
            mk2<j59> updateSignal = getUpdateSignal();
            c03911.I$0 = flashMode;
            c03911.label = 1;
            if (updateSignal.e0(c03911) == a32Var) {
                return a32Var;
            }
            i = flashMode;
        } else {
            if (i3 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            i = c03911.I$0;
            r57.b(obj);
        }
        Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            vh.d(i, "awaitFlashModeUpdate: initialFlashMode = ", Camera2Logger.TRUNCATED_TAG);
        }
        return new Integer(i);
    }

    public final int getFlashMode() {
        return this._flashMode;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public UseCaseCameraRequestControl getRequestControl() {
        return this._requestControl;
    }

    public final ImageCapture.ScreenFlash getScreenFlash() {
        return this._screenFlash;
    }

    public final mk2<j59> getUpdateSignal() {
        xp1<j59> xp1Var = this._updateSignal;
        return xp1Var != null ? xp1Var : ga1.a(j59.a);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void reset() {
        this._flashMode = 2;
        this._screenFlash = null;
        stopRunningTask();
        setFlashAsync$default(this, 2, false, 2, null);
    }

    public final mk2<j59> setFlashAsync(int i, boolean z) {
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            String str = Camera2Logger.TRUNCATED_TAG;
            StringBuilder sbC = n7.c(i, "setFlashAsync: flashMode = ", ", requestControl = ");
            sbC.append(getRequestControl());
            android.util.Log.d(str, sbC.toString());
        }
        yp1 yp1Var = new yp1();
        if (getRequestControl() == null) {
            yp1Var.e(new CameraControl.OperationCanceledException("Camera is not active."));
            return yp1Var;
        }
        this._flashMode = i;
        if (z) {
            stopRunningTask();
        } else {
            xp1<j59> xp1Var = this._updateSignal;
            if (xp1Var != null) {
                CoroutineAdaptersKt.propagateTo(yp1Var, xp1Var);
            }
        }
        this._updateSignal = yp1Var;
        CoroutineAdaptersKt.propagateTo(this.state3AControl.setFlashModeAsync(i), yp1Var);
        return yp1Var;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void setRequestControl(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        this._requestControl = useCaseCameraRequestControl;
        setFlashAsync(this._flashMode, false);
    }

    public final void setScreenFlash(ImageCapture.ScreenFlash screenFlash) {
        this._screenFlash = screenFlash;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0076, code lost:
    
        if (defpackage.oz.a(r5, r0) == r1) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object startScreenFlashCaptureTasks(defpackage.e02<? super defpackage.j59> r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof androidx.camera.camera2.impl.FlashControl.C03921
            if (r0 == 0) goto L13
            r0 = r8
            androidx.camera.camera2.impl.FlashControl$startScreenFlashCaptureTasks$1 r0 = (androidx.camera.camera2.impl.FlashControl.C03921) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.camera.camera2.impl.FlashControl$startScreenFlashCaptureTasks$1 r0 = new androidx.camera.camera2.impl.FlashControl$startScreenFlashCaptureTasks$1
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.result
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L3d
            if (r2 == r5) goto L31
            if (r2 != r4) goto L2b
            defpackage.r57.b(r8)
            goto L79
        L2b:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r7)
            return r3
        L31:
            java.lang.Object r2 = r0.L$1
            java.util.List r2 = (java.util.List) r2
            java.lang.Object r5 = r0.L$0
            java.util.List r5 = (java.util.List) r5
            defpackage.r57.b(r8)
            goto L55
        L3d:
            defpackage.r57.b(r8)
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r0.L$0 = r2
            r0.L$1 = r2
            r0.label = r5
            r5 = 3000(0xbb8, double:1.482E-320)
            java.lang.Object r8 = r7.applyScreenFlash(r5, r0)
            if (r8 != r1) goto L54
            goto L78
        L54:
            r5 = r2
        L55:
            r2.add(r8)
            mk2 r8 = r7.setExternalFlashAeModeAsync()
            if (r8 == 0) goto L61
            r5.add(r8)
        L61:
            mk2 r7 = r7.setTorchForScreenFlash()
            if (r7 == 0) goto L6a
            r5.add(r7)
        L6a:
            java.util.Collection r5 = (java.util.Collection) r5
            r0.L$0 = r3
            r0.L$1 = r3
            r0.label = r4
            java.lang.Object r7 = defpackage.oz.a(r5, r0)
            if (r7 != r1) goto L79
        L78:
            return r1
        L79:
            j59 r7 = defpackage.j59.a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.impl.FlashControl.startScreenFlashCaptureTasks(e02):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object stopScreenFlashCaptureTasks(e02<? super j59> e02Var) {
        C03931 c03931;
        if (e02Var instanceof C03931) {
            c03931 = (C03931) e02Var;
            int i = c03931.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c03931.label = i - Integer.MIN_VALUE;
            } else {
                c03931 = new C03931(e02Var);
            }
        } else {
            c03931 = new C03931(e02Var);
        }
        Object obj = c03931.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c03931.label;
        if (i2 == 0) {
            r57.b(obj);
            oi2 oi2Var = qo2.a;
            hu3 hu3Var = uy4.a;
            C03942 c03942 = new C03942(null);
            c03931.label = 1;
            if (av0.d(hu3Var, c03942, c03931) == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        if (CameraMetadataIntegrationKt.isExternalFlashAeModeSupported(this.cameraProperties.getMetadata())) {
            this.state3AControl.setTryExternalFlashAeModeAsync(false);
        }
        if (this.useFlashModeTorchFor3aUpdate.shouldUseFlashModeTorch()) {
            TorchControl.m73setTorchAsyncOup_wC0$camera_camera2$default(this.torchControl, TorchControl.TorchMode.Companion.m85getOFFIRs_R8(), false, true, 2, null);
        }
        return j59.a;
    }
}
