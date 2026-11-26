package androidx.camera.camera2.impl;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.MeteringRectangle;
import androidx.camera.camera2.config.UseCaseCameraScope;
import androidx.camera.camera2.config.UseCaseGraphContext;
import androidx.camera.camera2.interop.Camera2CaptureRequestConfigurator;
import androidx.camera.camera2.interop.Camera2CaptureRequestConfiguratorKt;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.Lock3ABehavior;
import androidx.camera.camera2.pipe.Metadata;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestTemplate;
import androidx.camera.camera2.pipe.Result3A;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.Logger;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.MutableTagBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.TagBundle;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.aq5;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.c32;
import defpackage.cl4;
import defpackage.e02;
import defpackage.f02;
import defpackage.fh8;
import defpackage.ga1;
import defpackage.j59;
import defpackage.jd6;
import defpackage.jh2;
import defpackage.k;
import defpackage.ll3;
import defpackage.mk2;
import defpackage.mr7;
import defpackage.n05;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.qn1;
import defpackage.r57;
import defpackage.ws6;
import defpackage.xp1;
import defpackage.y22;
import defpackage.yp1;
import defpackage.zi0;
import defpackage.zm7;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
@UseCaseCameraScope
public final class UseCaseCameraRequestControlImpl implements UseCaseCameraRequestControl {
    private static final xp1<j59> canceledResult;
    private final CameraXConfig cameraXConfig;
    private final cl4 capturePipeline$delegate;
    private final ws6<CapturePipeline> capturePipelineProvider;
    private volatile boolean closed;
    private final Map<UseCaseCameraRequestControl.Type, InfoBundle> infoBundleMap;
    private final UseCaseThreads threads;
    private final cl4 useCaseCameraState$delegate;
    private final ws6<UseCaseCameraState> useCaseCameraStateProvider;
    private final UseCaseGraphContext useCaseGraphContext;
    private final cl4 useCaseSurfaceManager$delegate;
    private final ws6<UseCaseSurfaceManager> useCaseSurfaceManagerProvider;
    public static final Companion Companion = new Companion(null);
    private static final xp1<Result3A> submitFailedResult = ga1.a(new Result3A(Result3A.Status.Companion.m668getSUBMIT_FAILEDJvTi9ms(), null, 2, null));

    public static abstract class Bindings {
        @UseCaseCameraScope
        public abstract UseCaseCameraRequestControl bindRequestControl(DeferredUseCaseCameraRequestControl deferredUseCaseCameraRequestControl);
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$submitParameters$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$submitParameters$1", f = "UseCaseCameraRequestControl.kt", l = {365, 365}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ Config.OptionPriority $optionPriority;
        final /* synthetic */ UseCaseCameraRequestControl.Type $type;
        final /* synthetic */ Map<CaptureRequest.Key<?>, Object> $values;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(UseCaseCameraRequestControl.Type type, Map<CaptureRequest.Key<?>, ? extends Object> map, Config.OptionPriority optionPriority, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$type = type;
            this.$values = map;
            this.$optionPriority = optionPriority;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return UseCaseCameraRequestControlImpl.this.new AnonymousClass1(this.$type, this.$values, this.$optionPriority, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0037, code lost:
        
            if (((defpackage.mk2) r7).Z(r6) == r0) goto L15;
         */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r6.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L1b
                if (r1 == r3) goto L17
                if (r1 != r2) goto L10
                defpackage.r57.b(r7)
                goto L3a
            L10:
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r6)
                r6 = 0
                return r6
            L17:
                defpackage.r57.b(r7)
                goto L2f
            L1b:
                defpackage.r57.b(r7)
                androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl r7 = androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl.this
                androidx.camera.camera2.impl.UseCaseCameraRequestControl$Type r1 = r6.$type
                java.util.Map<android.hardware.camera2.CaptureRequest$Key<?>, java.lang.Object> r4 = r6.$values
                androidx.camera.core.impl.Config$OptionPriority r5 = r6.$optionPriority
                r6.label = r3
                java.lang.Object r7 = androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl.access$setParametersInternal(r7, r1, r4, r5, r6)
                if (r7 != r0) goto L2f
                goto L39
            L2f:
                mk2 r7 = (defpackage.mk2) r7
                r6.label = r2
                java.lang.Object r6 = r7.Z(r6)
                if (r6 != r0) goto L3a
            L39:
                return r0
            L3a:
                j59 r6 = defpackage.j59.a
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$updateCameraStateAsync$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl", f = "UseCaseCameraRequestControl.kt", l = {638}, m = "updateCameraStateAsync", v = 1)
    public static final class C04001 extends f02 {
        int label;
        /* synthetic */ Object result;

        public C04001(e02<? super C04001> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return UseCaseCameraRequestControlImpl.this.updateCameraStateAsync(null, null, this);
        }
    }

    static {
        yp1 yp1Var = new yp1();
        yp1Var.cancel(null);
        canceledResult = yp1Var;
    }

    public UseCaseCameraRequestControlImpl(ws6<CapturePipeline> ws6Var, ws6<UseCaseCameraState> ws6Var2, UseCaseGraphContext useCaseGraphContext, ws6<UseCaseSurfaceManager> ws6Var3, UseCaseThreads useCaseThreads, CameraXConfig cameraXConfig) {
        ws6Var.getClass();
        ws6Var2.getClass();
        useCaseGraphContext.getClass();
        ws6Var3.getClass();
        useCaseThreads.getClass();
        this.capturePipelineProvider = ws6Var;
        this.useCaseCameraStateProvider = ws6Var2;
        this.useCaseGraphContext = useCaseGraphContext;
        this.useCaseSurfaceManagerProvider = ws6Var3;
        this.threads = useCaseThreads;
        this.cameraXConfig = cameraXConfig;
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Configured " + this);
        }
        int i = 2;
        this.capturePipeline$delegate = new fh8(new jd6(this, i));
        this.useCaseSurfaceManager$delegate = new fh8(new zi0(this, 5));
        this.useCaseCameraState$delegate = new fh8(new zm7(this, i));
        this.infoBundleMap = new LinkedHashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CapturePipeline capturePipeline_delegate$lambda$0(UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl) {
        return useCaseCameraRequestControlImpl.capturePipelineProvider.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<mk2<Void>> failedResults(int i, String str) {
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            yp1 yp1Var = new yp1();
            yp1Var.e(new ImageCaptureException(2, str, null));
            arrayList.add(yp1Var);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CapturePipeline getCapturePipeline() {
        return (CapturePipeline) this.capturePipeline$delegate.getValue();
    }

    private final UseCaseCameraState getUseCaseCameraState() {
        return (UseCaseCameraState) this.useCaseCameraState$delegate.getValue();
    }

    private final UseCaseSurfaceManager getUseCaseSurfaceManager() {
        return (UseCaseSurfaceManager) this.useCaseSurfaceManager$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean hasInvalidSurface(List<CaptureConfig> list) {
        for (CaptureConfig captureConfig : list) {
            if (captureConfig.getSurfaces().isEmpty()) {
                return true;
            }
            List<DeferrableSurface> surfaces = captureConfig.getSurfaces();
            surfaces.getClass();
            Iterator<T> it = surfaces.iterator();
            while (it.hasNext()) {
                if (this.useCaseGraphContext.getSurfaceToStreamMap().get((DeferrableSurface) it.next()) == null) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final InfoBundle merge(Map<UseCaseCameraRequestControl.Type, InfoBundle> map) {
        InfoBundle infoBundle = new InfoBundle(null, null, null, RequestTemplate.m646boximpl(RequestTemplate.m647constructorimpl(1)), 7, null);
        Iterator<UseCaseCameraRequestControl.Type> it = UseCaseCameraRequestControl.Type.getEntries().iterator();
        while (it.hasNext()) {
            InfoBundle infoBundle2 = map.get(it.next());
            if (infoBundle2 != null) {
                infoBundle.getOptions().insertAllOptions(infoBundle2.getOptions().getMutableConfig());
                infoBundle.getTags().putAll(infoBundle2.getTags());
                infoBundle.getListeners().addAll(infoBundle2.getListeners());
                RequestTemplate requestTemplateM98getTemplateejQnlcg = infoBundle2.m98getTemplateejQnlcg();
                if (requestTemplateM98getTemplateejQnlcg != null) {
                    infoBundle.m99setTemplatexlOpshk(RequestTemplate.m646boximpl(requestTemplateM98getTemplateejQnlcg.m653unboximpl()));
                }
            }
        }
        return infoBundle;
    }

    private final <R> R runIfNotClosed(ll3<? extends R> ll3Var) {
        if (this.closed) {
            return null;
        }
        return ll3Var.invoke();
    }

    private final <T> mk2<T> runOnSequential(nl3<? super e02<? super mk2<? extends T>>, ? extends Object> nl3Var) {
        c32 c32VarDetermineStartStrategy$camera_camera2 = determineStartStrategy$camera_camera2(this.threads);
        UseCaseThreads useCaseThreads = this.threads;
        yp1 yp1Var = new yp1();
        av0.c(useCaseThreads.getSequentialScope(), null, c32VarDetermineStartStrategy$camera_camera2, new UseCaseCameraRequestControlImpl$runOnSequential$$inlined$confineDeferredSuspend$1(nl3Var, yp1Var, null), 1);
        return yp1Var;
    }

    private final <T> List<mk2<T>> runOnSequentialList(int i, nl3<? super e02<? super List<? extends mk2<? extends T>>>, ? extends Object> nl3Var) {
        c32 c32VarDetermineStartStrategy$camera_camera2 = determineStartStrategy$camera_camera2(this.threads);
        UseCaseThreads useCaseThreads = this.threads;
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(new yp1());
        }
        av0.c(useCaseThreads.getSequentialScope(), null, c32VarDetermineStartStrategy$camera_camera2, new UseCaseCameraRequestControlImpl$runOnSequentialList$$inlined$confineDeferredListSuspend$1(nl3Var, arrayList, null), 1);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object setParametersInternal(UseCaseCameraRequestControl.Type type, Map<CaptureRequest.Key<?>, ? extends Object> map, Config.OptionPriority optionPriority, e02<? super mk2<j59>> e02Var) {
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "UseCaseCameraRequestControlImpl#setParametersAsync: [" + type + "] values = " + map + ", optionPriority = " + optionPriority);
        }
        Map<UseCaseCameraRequestControl.Type, InfoBundle> map2 = this.infoBundleMap;
        InfoBundle infoBundle = map2.get(type);
        if (infoBundle == null) {
            InfoBundle infoBundle2 = new InfoBundle(null, null, null, null, 15, null);
            map2.put(type, infoBundle2);
            infoBundle = infoBundle2;
        }
        this.infoBundleMap.put(type, withParameters(infoBundle, map, optionPriority));
        return updateCameraStateAsync$default(this, merge(this.infoBundleMap), null, e02Var, 1, null);
    }

    private final TagBundle toTagBundle(InfoBundle infoBundle) {
        MutableTagBundle mutableTagBundleCreate = MutableTagBundle.create();
        for (Map.Entry<String, Object> entry : infoBundle.getTags().entrySet()) {
            mutableTagBundleCreate.putTag(entry.getKey(), entry.getValue());
        }
        mutableTagBundleCreate.getClass();
        return mutableTagBundleCreate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:31:0x00af  */
    /* JADX WARN: Code duplicated, block: B:33:0x00b2 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object updateCameraStateAsync(InfoBundle infoBundle, Set<StreamId> set, e02<? super mk2<j59>> e02Var) {
        C04001 c04001;
        int iM653unboximpl;
        Camera2CaptureRequestConfigurator camera2CaptureRequestConfigurator;
        if (e02Var instanceof C04001) {
            c04001 = (C04001) e02Var;
            int i = c04001.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c04001.label = i - Integer.MIN_VALUE;
            } else {
                c04001 = new C04001(e02Var);
            }
        } else {
            c04001 = new C04001(e02Var);
        }
        C04001 c04002 = c04001;
        Object objM102updateAsyncTp9XwKQ = c04002.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c04002.label;
        mk2 mk2Var = null;
        if (i2 == 0) {
            r57.b(objM102updateAsyncTp9XwKQ);
            if (!this.closed) {
                CameraXConfig cameraXConfig = this.cameraXConfig;
                if (cameraXConfig != null && (camera2CaptureRequestConfigurator = Camera2CaptureRequestConfiguratorKt.getCamera2CaptureRequestConfigurator(cameraXConfig)) != null) {
                    Camera2CaptureRequestConfiguratorKt.configureWithUnchecked(camera2CaptureRequestConfigurator, n05.l(Camera2ImplConfigKt.toParameters(infoBundle.getOptions().build())));
                }
                CapturePipeline capturePipeline = getCapturePipeline();
                RequestTemplate requestTemplateM98getTemplateejQnlcg = infoBundle.m98getTemplateejQnlcg();
                requestTemplateM98getTemplateejQnlcg.getClass();
                if (requestTemplateM98getTemplateejQnlcg.m653unboximpl() != -1) {
                    RequestTemplate requestTemplateM98getTemplateejQnlcg2 = infoBundle.m98getTemplateejQnlcg();
                    requestTemplateM98getTemplateejQnlcg2.getClass();
                    iM653unboximpl = requestTemplateM98getTemplateejQnlcg2.m653unboximpl();
                } else {
                    iM653unboximpl = 1;
                }
                capturePipeline.setTemplate(iM653unboximpl);
                UseCaseCameraState useCaseCameraState = getUseCaseCameraState();
                Map<CaptureRequest.Key<?>, ? extends Object> parameters = Camera2ImplConfigKt.toParameters(infoBundle.getOptions().build());
                Map<Metadata.Key<?>, ? extends Object> mapSingletonMap = Collections.singletonMap(TagsKt.getCAMERAX_TAG_BUNDLE(), toTagBundle(infoBundle));
                mapSingletonMap.getClass();
                RequestTemplate requestTemplateM98getTemplateejQnlcg3 = infoBundle.m98getTemplateejQnlcg();
                Set<Request.Listener> listeners = infoBundle.getListeners();
                c04002.label = 1;
                objM102updateAsyncTp9XwKQ = useCaseCameraState.m102updateAsyncTp9XwKQ(parameters, false, mapSingletonMap, false, set, requestTemplateM98getTemplateejQnlcg3, listeners, c04002);
                if (objM102updateAsyncTp9XwKQ == a32Var) {
                    return a32Var;
                }
            }
            if (mk2Var == null) {
                return canceledResult;
            }
            return mk2Var;
        }
        if (i2 != 1) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(objM102updateAsyncTp9XwKQ);
        mk2Var = (mk2) objM102updateAsyncTp9XwKQ;
        if (mk2Var == null) {
            return canceledResult;
        }
        return mk2Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object updateCameraStateAsync$default(UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl, InfoBundle infoBundle, Set set, e02 e02Var, int i, Object obj) {
        if ((i & 1) != 0) {
            set = null;
        }
        return useCaseCameraRequestControlImpl.updateCameraStateAsync(infoBundle, set, e02Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UseCaseCameraState useCaseCameraState_delegate$lambda$0(UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl) {
        return useCaseCameraRequestControlImpl.useCaseCameraStateProvider.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UseCaseSurfaceManager useCaseSurfaceManager_delegate$lambda$0(UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl) {
        return useCaseCameraRequestControlImpl.useCaseSurfaceManagerProvider.get();
    }

    private final Object useGraphSessionOrFailed(bm3<? super CameraGraph.Session, ? super e02<? super mk2<Result3A>>, ? extends Object> bm3Var, e02<? super mk2<Result3A>> e02Var) throws Exception {
        try {
            AutoCloseable autoCloseable = (AutoCloseable) this.useCaseGraphContext.getGraph().acquireSession(e02Var);
            try {
                mk2 mk2Var = (mk2) bm3Var.invoke((CameraGraph.Session) autoCloseable, null);
                aq5.c(autoCloseable, null);
                return mk2Var;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    aq5.c(autoCloseable, th);
                    throw th2;
                }
            }
        } catch (CancellationException e) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Cannot acquire the CameraGraph.Session", e);
            }
            return submitFailedResult;
        }
    }

    private final InfoBundle withParameters(InfoBundle infoBundle, Map<CaptureRequest.Key<?>, ? extends Object> map, Config.OptionPriority optionPriority) {
        Camera2ImplConfig.Builder builder = new Camera2ImplConfig.Builder();
        builder.insertAllOptions(infoBundle.getOptions().getMutableConfig());
        builder.addAllCaptureRequestOptionsWithPriority(map, optionPriority);
        return InfoBundle.m95copy0am55g4$default(infoBundle, builder, n05.n(infoBundle.getTags()), qn1.x0(infoBundle.getListeners()), null, 8, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final InfoBundle withoutParameters(InfoBundle infoBundle, List<? extends CaptureRequest.Key<?>> list) {
        Camera2ImplConfig.Builder builder = new Camera2ImplConfig.Builder();
        builder.insertAllOptions(infoBundle.getOptions().getMutableConfig());
        builder.removeCaptureRequestOptions(list);
        return InfoBundle.m95copy0am55g4$default(infoBundle, builder, n05.n(infoBundle.getTags()), qn1.x0(infoBundle.getListeners()), null, 8, null);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public Object awaitSurfaceSetup(e02<? super Boolean> e02Var) {
        return getUseCaseSurfaceManager().awaitSetupCompletion(e02Var);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public mk2<Result3A> cancelFocusAndMeteringAsync() {
        mk2<Result3A> mk2VarRunOnSequential = this.closed ? null : runOnSequential(new UseCaseCameraRequestControlImpl$cancelFocusAndMeteringAsync$1$1(this, null));
        return mk2VarRunOnSequential == null ? submitFailedResult : mk2VarRunOnSequential;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public void close() {
        this.closed = true;
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "UseCaseCameraRequestControl: closed");
        }
        getUseCaseCameraState().close();
    }

    public final c32 determineStartStrategy$camera_camera2(UseCaseThreads useCaseThreads) {
        useCaseThreads.getClass();
        return useCaseThreads.isOnSequentialThread() ? c32.UNDISPATCHED : c32.DEFAULT;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public List<mk2<Void>> issueSingleCaptureAsync(List<CaptureConfig> list, int i, int i2, int i3) {
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl;
        List<CaptureConfig> list2;
        List<mk2<Void>> listRunOnSequentialList;
        list.getClass();
        if (this.closed) {
            useCaseCameraRequestControlImpl = this;
            list2 = list;
            listRunOnSequentialList = null;
        } else {
            useCaseCameraRequestControlImpl = this;
            list2 = list;
            listRunOnSequentialList = useCaseCameraRequestControlImpl.runOnSequentialList(list.size(), new UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1(useCaseCameraRequestControlImpl, list2, i, i2, i3, null));
        }
        return listRunOnSequentialList == null ? useCaseCameraRequestControlImpl.failedResults(list2.size(), "Capture request is cancelled on closed CameraGraph") : listRunOnSequentialList;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public mk2<j59> removeParametersAsync(List<? extends CaptureRequest.Key<?>> list, UseCaseCameraRequestControl.Type type) {
        list.getClass();
        type.getClass();
        mk2<j59> mk2VarRunOnSequential = this.closed ? null : runOnSequential(new UseCaseCameraRequestControlImpl$removeParametersAsync$1$1(this, type, list, null));
        return mk2VarRunOnSequential == null ? canceledResult : mk2VarRunOnSequential;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public mk2<j59> setParametersAsync(Map<CaptureRequest.Key<?>, ? extends Object> map, UseCaseCameraRequestControl.Type type, Config.OptionPriority optionPriority) {
        map.getClass();
        type.getClass();
        optionPriority.getClass();
        mk2<j59> mk2VarRunOnSequential = !this.closed ? runOnSequential(new UseCaseCameraRequestControlImpl$setParametersAsync$1$1(this, type, map, optionPriority, null)) : null;
        return mk2VarRunOnSequential == null ? canceledResult : mk2VarRunOnSequential;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    /* JADX INFO: renamed from: setTorchOffAsync-MtizInI */
    public mk2<Result3A> mo67setTorchOffAsyncMtizInI(int i) {
        mk2<Result3A> mk2VarRunOnSequential = this.closed ? null : runOnSequential(new UseCaseCameraRequestControlImpl$setTorchOffAsync$1$1(this, i, null));
        return mk2VarRunOnSequential == null ? submitFailedResult : mk2VarRunOnSequential;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public mk2<Result3A> setTorchOnAsync() {
        mk2<Result3A> mk2VarRunOnSequential = this.closed ? null : runOnSequential(new UseCaseCameraRequestControlImpl$setTorchOnAsync$1$1(this, null));
        return mk2VarRunOnSequential == null ? submitFailedResult : mk2VarRunOnSequential;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    /* JADX INFO: renamed from: startFocusAndMeteringAsync-NxRnBj4 */
    public mk2<Result3A> mo68startFocusAndMeteringAsyncNxRnBj4(List<MeteringRectangle> list, List<MeteringRectangle> list2, List<MeteringRectangle> list3, Lock3ABehavior lock3ABehavior, Lock3ABehavior lock3ABehavior2, Lock3ABehavior lock3ABehavior3, AeMode aeMode, long j) {
        mk2<Result3A> mk2VarRunOnSequential = !this.closed ? runOnSequential(new UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1(this, list, list2, list3, lock3ABehavior, lock3ABehavior2, lock3ABehavior3, aeMode, j, null)) : null;
        return mk2VarRunOnSequential == null ? submitFailedResult : mk2VarRunOnSequential;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public mk2<j59> submitParameters(Map<CaptureRequest.Key<?>, ? extends Object> map, UseCaseCameraRequestControl.Type type, Config.OptionPriority optionPriority) {
        map.getClass();
        type.getClass();
        optionPriority.getClass();
        if (this.closed) {
            return canceledResult;
        }
        this.threads.checkOnSequentialThread();
        return av0.a(this.threads.getSequentialScope(), null, c32.UNDISPATCHED, new AnonymousClass1(type, map, optionPriority, null), 1);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public mk2<Result3A> update3aRegions(List<MeteringRectangle> list, List<MeteringRectangle> list2, List<MeteringRectangle> list3) {
        mk2<Result3A> mk2VarRunOnSequential = !this.closed ? runOnSequential(new UseCaseCameraRequestControlImpl$update3aRegions$1$1(this, list, list2, list3, null)) : null;
        return mk2VarRunOnSequential == null ? submitFailedResult : mk2VarRunOnSequential;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public mk2<j59> updateCamera2ConfigAsync(Config config, Map<String, ? extends Object> map) {
        config.getClass();
        map.getClass();
        mk2<j59> mk2VarRunOnSequential = this.closed ? null : runOnSequential(new UseCaseCameraRequestControlImpl$updateCamera2ConfigAsync$1$1(this, config, map, null));
        return mk2VarRunOnSequential == null ? canceledResult : mk2VarRunOnSequential;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public mk2<j59> updateRepeatingRequestAsync(boolean z, Collection<? extends UseCase> collection) {
        collection.getClass();
        mk2<j59> mk2VarRunOnSequential = this.closed ? null : runOnSequential(new UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1(collection, z, this, null));
        return mk2VarRunOnSequential == null ? canceledResult : mk2VarRunOnSequential;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final InfoBundle toInfoBundle(SessionConfig sessionConfig, Executor executor) {
            return new InfoBundle(extractCamera2ImplConfigBuilder(sessionConfig), extractTags(sessionConfig), extractListeners(sessionConfig, executor), RequestTemplate.m646boximpl(m94extractTemplateAREDGk(sessionConfig)), null);
        }

        public final Camera2ImplConfig.Builder extractCamera2ImplConfigBuilder(SessionConfig sessionConfig) {
            sessionConfig.getClass();
            Camera2ImplConfig.Builder builder = new Camera2ImplConfig.Builder();
            if (!aa4.e(sessionConfig.getExpectedFrameRateRange(), StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED)) {
                CaptureRequest.Key key = CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE;
                key.getClass();
                builder.setCaptureRequestOption(key, sessionConfig.getExpectedFrameRateRange());
            }
            Config implementationOptions = sessionConfig.getImplementationOptions();
            implementationOptions.getClass();
            builder.insertAllOptions(implementationOptions);
            return builder;
        }

        public final Set<Request.Listener> extractListeners(SessionConfig sessionConfig, Executor executor) {
            sessionConfig.getClass();
            executor.getClass();
            CameraCallbackMap.Companion companion = CameraCallbackMap.Companion;
            List<CameraCaptureCallback> repeatingCameraCaptureCallbacks = sessionConfig.getRepeatingCameraCaptureCallbacks();
            repeatingCameraCaptureCallbacks.getClass();
            return mr7.k(companion.createFor(repeatingCameraCaptureCallbacks, executor));
        }

        public final Map<String, Object> extractTags(SessionConfig sessionConfig) {
            sessionConfig.getClass();
            TagBundle tagBundle = sessionConfig.getRepeatingCaptureConfig().getTagBundle();
            tagBundle.getClass();
            return n05.n(UseCaseCameraRequestControlKt.toMap(tagBundle));
        }

        /* JADX INFO: renamed from: extractTemplate-ARED-Gk, reason: not valid java name */
        public final int m94extractTemplateAREDGk(SessionConfig sessionConfig) {
            sessionConfig.getClass();
            return RequestTemplate.m647constructorimpl(sessionConfig.getTemplateType());
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Camera2ImplConfig.Builder extractCamera2ImplConfigBuilder(Config config) {
            Camera2ImplConfig.Builder builder = new Camera2ImplConfig.Builder();
            builder.insertAllOptions(config);
            return builder;
        }
    }

    public static final class InfoBundle {
        private final Set<Request.Listener> listeners;
        private final Camera2ImplConfig.Builder options;
        private final Map<String, Object> tags;
        private RequestTemplate template;

        public /* synthetic */ InfoBundle(Camera2ImplConfig.Builder builder, Map map, Set set, RequestTemplate requestTemplate, int i, jh2 jh2Var) {
            this((i & 1) != 0 ? new Camera2ImplConfig.Builder() : builder, (i & 2) != 0 ? new LinkedHashMap() : map, (i & 4) != 0 ? new LinkedHashSet() : set, (i & 8) != 0 ? null : requestTemplate, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: copy-0am55g4$default, reason: not valid java name */
        public static /* synthetic */ InfoBundle m95copy0am55g4$default(InfoBundle infoBundle, Camera2ImplConfig.Builder builder, Map map, Set set, RequestTemplate requestTemplate, int i, Object obj) {
            if ((i & 1) != 0) {
                builder = infoBundle.options;
            }
            if ((i & 2) != 0) {
                map = infoBundle.tags;
            }
            if ((i & 4) != 0) {
                set = infoBundle.listeners;
            }
            if ((i & 8) != 0) {
                requestTemplate = infoBundle.template;
            }
            return infoBundle.m97copy0am55g4(builder, map, set, requestTemplate);
        }

        public final Camera2ImplConfig.Builder component1() {
            return this.options;
        }

        public final Map<String, Object> component2() {
            return this.tags;
        }

        public final Set<Request.Listener> component3() {
            return this.listeners;
        }

        /* JADX INFO: renamed from: component4-ejQnlcg, reason: not valid java name */
        public final RequestTemplate m96component4ejQnlcg() {
            return this.template;
        }

        /* JADX INFO: renamed from: copy-0am55g4, reason: not valid java name */
        public final InfoBundle m97copy0am55g4(Camera2ImplConfig.Builder builder, Map<String, Object> map, Set<Request.Listener> set, RequestTemplate requestTemplate) {
            builder.getClass();
            map.getClass();
            set.getClass();
            return new InfoBundle(builder, map, set, requestTemplate, null);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof InfoBundle)) {
                return false;
            }
            InfoBundle infoBundle = (InfoBundle) obj;
            return aa4.e(this.options, infoBundle.options) && aa4.e(this.tags, infoBundle.tags) && aa4.e(this.listeners, infoBundle.listeners) && aa4.e(this.template, infoBundle.template);
        }

        public final Set<Request.Listener> getListeners() {
            return this.listeners;
        }

        public final Camera2ImplConfig.Builder getOptions() {
            return this.options;
        }

        public final Map<String, Object> getTags() {
            return this.tags;
        }

        /* JADX INFO: renamed from: getTemplate-ejQnlcg, reason: not valid java name */
        public final RequestTemplate m98getTemplateejQnlcg() {
            return this.template;
        }

        public int hashCode() {
            int iHashCode = (this.listeners.hashCode() + k.c(this.tags, this.options.hashCode() * 31, 31)) * 31;
            RequestTemplate requestTemplate = this.template;
            return iHashCode + (requestTemplate == null ? 0 : RequestTemplate.m651hashCodeimpl(requestTemplate.m653unboximpl()));
        }

        /* JADX INFO: renamed from: setTemplate-xlOpshk, reason: not valid java name */
        public final void m99setTemplatexlOpshk(RequestTemplate requestTemplate) {
            this.template = requestTemplate;
        }

        public String toString() {
            return "InfoBundle(options=" + this.options + ", tags=" + this.tags + ", listeners=" + this.listeners + ", template=" + this.template + ')';
        }

        private InfoBundle(Camera2ImplConfig.Builder builder, Map<String, Object> map, Set<Request.Listener> set, RequestTemplate requestTemplate) {
            builder.getClass();
            map.getClass();
            set.getClass();
            this.options = builder;
            this.tags = map;
            this.listeners = set;
            this.template = requestTemplate;
        }

        public /* synthetic */ InfoBundle(Camera2ImplConfig.Builder builder, Map map, Set set, RequestTemplate requestTemplate, jh2 jh2Var) {
            this(builder, map, set, requestTemplate);
        }
    }

    public /* synthetic */ UseCaseCameraRequestControlImpl(ws6 ws6Var, ws6 ws6Var2, UseCaseGraphContext useCaseGraphContext, ws6 ws6Var3, UseCaseThreads useCaseThreads, CameraXConfig cameraXConfig, int i, jh2 jh2Var) {
        this(ws6Var, ws6Var2, useCaseGraphContext, ws6Var3, useCaseThreads, (i & 32) != 0 ? null : cameraXConfig);
    }
}
