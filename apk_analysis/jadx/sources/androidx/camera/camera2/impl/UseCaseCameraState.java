package androidx.camera.camera2.impl;

import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.compat.workaround.TemplateParamsOverride;
import androidx.camera.camera2.config.UseCaseCameraScope;
import androidx.camera.camera2.config.UseCaseGraphContext;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.AfMode;
import androidx.camera.camera2.pipe.AwbMode;
import androidx.camera.camera2.pipe.CameraControls3A;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.Metadata;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.RequestTemplate;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.Logger;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.aq5;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;
import defpackage.fr;
import defpackage.j59;
import defpackage.kt;
import defpackage.lt;
import defpackage.mk2;
import defpackage.n05;
import defpackage.nn1;
import defpackage.qn1;
import defpackage.r07;
import defpackage.r57;
import defpackage.vc3;
import defpackage.xp1;
import defpackage.yp1;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes.dex */
@UseCaseCameraScope
public final class UseCaseCameraState {
    private final Map<Metadata.Key<?>, Object> currentInternalParameters;
    private final Set<Request.Listener> currentListeners;
    private final Map<CaptureRequest.Key<?>, Object> currentParameters;
    private final Set<StreamId> currentStreams;
    private RequestTemplate currentTemplate;
    private AeMode lastAeMode;
    private AfMode lastAfMode;
    private AwbMode lastAwbMode;
    private final Object lock;
    private final lt pendingSignalCount;
    private final RequestListener requestListener;
    private final lt submittedRequestCounter;
    private final TemplateParamsOverride templateParamsOverride;
    private xp1<j59> updateSignal;
    private fr<RequestSignal> updateSignals;
    private boolean updating;
    private final UseCaseGraphContext useCaseGraphContext;

    public static final class RequestSignal {
        private final int requestNo;
        private final xp1<j59> signal;

        public RequestSignal(int i, xp1<j59> xp1Var) {
            xp1Var.getClass();
            this.requestNo = i;
            this.signal = xp1Var;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ RequestSignal copy$default(RequestSignal requestSignal, int i, xp1 xp1Var, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = requestSignal.requestNo;
            }
            if ((i2 & 2) != 0) {
                xp1Var = requestSignal.signal;
            }
            return requestSignal.copy(i, xp1Var);
        }

        public final int component1() {
            return this.requestNo;
        }

        public final xp1<j59> component2() {
            return this.signal;
        }

        public final RequestSignal copy(int i, xp1<j59> xp1Var) {
            xp1Var.getClass();
            return new RequestSignal(i, xp1Var);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RequestSignal)) {
                return false;
            }
            RequestSignal requestSignal = (RequestSignal) obj;
            return this.requestNo == requestSignal.requestNo && aa4.e(this.signal, requestSignal.signal);
        }

        public final int getRequestNo() {
            return this.requestNo;
        }

        public final xp1<j59> getSignal() {
            return this.signal;
        }

        public int hashCode() {
            return this.signal.hashCode() + (Integer.hashCode(this.requestNo) * 31);
        }

        public String toString() {
            return "RequestSignal(requestNo=" + this.requestNo + ", signal=" + this.signal + ')';
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.UseCaseCameraState$submitLatest$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.impl.UseCaseCameraState", f = "UseCaseCameraState.kt", l = {400}, m = "submitLatest", v = 1)
    public static final class AnonymousClass1 extends f02 {
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
            return UseCaseCameraState.this.submitLatest(this);
        }
    }

    public UseCaseCameraState(UseCaseGraphContext useCaseGraphContext, TemplateParamsOverride templateParamsOverride) {
        useCaseGraphContext.getClass();
        templateParamsOverride.getClass();
        this.useCaseGraphContext = useCaseGraphContext;
        this.templateParamsOverride = templateParamsOverride;
        this.lock = new Object();
        this.submittedRequestCounter = kt.b(0);
        this.updateSignals = new fr<>();
        this.currentParameters = new LinkedHashMap();
        this.currentInternalParameters = new LinkedHashMap();
        this.currentStreams = new LinkedHashSet();
        this.currentListeners = new LinkedHashSet();
        this.requestListener = new RequestListener();
        this.pendingSignalCount = kt.b(0);
    }

    private final Integer getIntOrNull(Map<CaptureRequest.Key<?>, ? extends Object> map, CaptureRequest.Key<?> key) {
        Object obj = map != null ? map.get(key) : null;
        if (obj instanceof Integer) {
            return (Integer) obj;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:66:0x014c  */
    /* JADX WARN: Code duplicated, block: B:71:0x0168 A[Catch: all -> 0x0172, TryCatch #1 {all -> 0x0172, blocks: (B:69:0x0164, B:71:0x0168, B:74:0x0174), top: B:85:0x0164 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Code duplicated, block: B:85:0x0164 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:66:0x014c, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [T, xp1<j59>] */
    /* JADX WARN: Type inference failed for: r10v9, types: [T, androidx.camera.camera2.pipe.Request] */
    /* JADX WARN: Type inference failed for: r8v5, types: [T, xp1, xp1<j59>] */
    public final Object submitLatest(e02<? super j59> e02Var) throws Exception {
        AnonymousClass1 anonymousClass1;
        r07 r07Var;
        ?? r8;
        int iB;
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
        Object objAcquireSession = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(objAcquireSession);
            r07 r07Var2 = new r07();
            try {
                CameraGraph graph = this.useCaseGraphContext.getGraph();
                anonymousClass1.L$0 = r07Var2;
                anonymousClass1.label = 1;
                objAcquireSession = graph.acquireSession(anonymousClass1);
                if (objAcquireSession == a32Var) {
                    return a32Var;
                }
                r07Var = r07Var2;
            } catch (CancellationException e) {
                e = e;
                r07Var = r07Var2;
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Cannot acquire session at " + this, e);
                }
                synchronized (this.lock) {
                    if (this.updating) {
                        this.updating = false;
                        r07Var.b = this.updateSignal;
                        this.updateSignal = null;
                    }
                    j59 j59Var = j59.a;
                }
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r07Var = (r07) anonymousClass1.L$0;
            try {
                r57.b(objAcquireSession);
            } catch (CancellationException e2) {
                e = e2;
                Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Cannot acquire session at " + this, e);
                }
                synchronized (this.lock) {
                    try {
                        if (this.updating) {
                            this.updating = false;
                            r07Var.b = this.updateSignal;
                            this.updateSignal = null;
                        }
                        j59 j59Var2 = j59.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
        AutoCloseable autoCloseable = (AutoCloseable) objAcquireSession;
        try {
            CameraGraph.Session session = (CameraGraph.Session) autoCloseable;
            r07 r07Var3 = new r07();
            r07 r07Var4 = new r07();
            synchronized (this.lock) {
                try {
                    if (this.currentStreams.isEmpty()) {
                        r07Var3.b = null;
                    } else {
                        RequestTemplate requestTemplate = this.currentTemplate;
                        List listT0 = qn1.t0(this.currentStreams);
                        LinkedHashMap linkedHashMapG = n05.g(this.templateParamsOverride.mo38getOverrideParamsxlOpshk(this.currentTemplate), n05.l(this.currentParameters));
                        LinkedHashMap linkedHashMapN = n05.n(this.currentInternalParameters);
                        linkedHashMapN.put(TagsKt.getUSE_CASE_CAMERA_STATE_CUSTOM_TAG(), new Integer(this.submittedRequestCounter.b()));
                        ArrayList arrayListV0 = qn1.v0(this.currentListeners);
                        arrayListV0.add(this.requestListener);
                        r07Var3.b = new Request(listT0, linkedHashMapG, linkedHashMapN, arrayListV0, requestTemplate, null, 32, null);
                    }
                    r8 = this.updateSignal;
                    r07Var4.b = r8;
                    this.updating = false;
                    this.updateSignal = null;
                    j59 j59Var3 = j59.a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (r07Var3.b == 0) {
                session.stopRepeating();
                r07Var.b = r07Var4.b;
            } else {
                if (r8 != 0) {
                    synchronized (this.lock) {
                        this.updateSignals.addLast(new RequestSignal(this.submittedRequestCounter.a, r8));
                        iB = this.pendingSignalCount.b();
                    }
                    vc3.a(iB);
                }
                Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Update RepeatingRequest: " + r07Var3.b);
                }
                session.startRepeating((Request) r07Var3.b);
                update3A(session, ((Request) r07Var3.b).getParameters());
            }
            aq5.c(autoCloseable, null);
            xp1 xp1Var = (xp1) r07Var.b;
            if (xp1Var != null) {
                xp1Var.f(j59.a);
            }
            return j59.a;
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                aq5.c(autoCloseable, th3);
                throw th4;
            }
        }
    }

    private final void update3A(CameraGraph.Session session, Map<CaptureRequest.Key<?>, ? extends Object> map) {
        AeMode aeModeM114fromIntOrNullkQd0u18;
        AfMode afModeM132fromIntOrNullMKXwA8g;
        CaptureRequest.Key<?> key = CaptureRequest.CONTROL_AE_MODE;
        key.getClass();
        Integer intOrNull = getIntOrNull(map, key);
        AwbMode awbModeM158fromIntOrNullSaEiwI = null;
        if (intOrNull != null) {
            aeModeM114fromIntOrNullkQd0u18 = AeMode.Companion.m114fromIntOrNullkQd0u18(intOrNull.intValue());
        } else {
            aeModeM114fromIntOrNullkQd0u18 = null;
        }
        CaptureRequest.Key<?> key2 = CaptureRequest.CONTROL_AF_MODE;
        key2.getClass();
        Integer intOrNull2 = getIntOrNull(map, key2);
        if (intOrNull2 != null) {
            afModeM132fromIntOrNullMKXwA8g = AfMode.Companion.m132fromIntOrNullMKXwA8g(intOrNull2.intValue());
        } else {
            afModeM132fromIntOrNullMKXwA8g = null;
        }
        CaptureRequest.Key<?> key3 = CaptureRequest.CONTROL_AWB_MODE;
        key3.getClass();
        Integer intOrNull3 = getIntOrNull(map, key3);
        if (intOrNull3 != null) {
            awbModeM158fromIntOrNullSaEiwI = AwbMode.Companion.m158fromIntOrNullSaEiwI(intOrNull3.intValue());
        }
        AwbMode awbMode = awbModeM158fromIntOrNullSaEiwI;
        boolean z = false;
        boolean z2 = (aeModeM114fromIntOrNullkQd0u18 == null || aeModeM114fromIntOrNullkQd0u18.equals(this.lastAeMode)) ? false : true;
        boolean z3 = (afModeM132fromIntOrNullMKXwA8g == null || afModeM132fromIntOrNullMKXwA8g.equals(this.lastAfMode)) ? false : true;
        if (awbMode != null && !awbMode.equals(this.lastAwbMode)) {
            z = true;
        }
        if (z2 || z3 || z) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "UseCaseCameraState: Updating 3A modes: AE(" + aeModeM114fromIntOrNullkQd0u18 + ", changed=" + z2 + "), AF(" + afModeM132fromIntOrNullMKXwA8g + ", changed=" + z3 + "), AWB(" + awbMode + ", changed=" + z + ')');
            }
            CameraControls3A.m232update3AydBZfZg$default(session, aeModeM114fromIntOrNullkQd0u18, afModeM132fromIntOrNullMKXwA8g, awbMode, null, null, null, 56, null);
            if (aeModeM114fromIntOrNullkQd0u18 != null) {
                this.lastAeMode = aeModeM114fromIntOrNullkQd0u18;
            }
            if (afModeM132fromIntOrNullMKXwA8g != null) {
                this.lastAfMode = afModeM132fromIntOrNullMKXwA8g;
            }
            if (awbMode != null) {
                this.lastAwbMode = awbMode;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: updateAsync-Tp9XwKQ$default, reason: not valid java name */
    public static /* synthetic */ Object m100updateAsyncTp9XwKQ$default(UseCaseCameraState useCaseCameraState, Map map, boolean z, Map map2, boolean z2, Set set, RequestTemplate requestTemplate, Set set2, e02 e02Var, int i, Object obj) {
        if ((i & 1) != 0) {
            map = null;
        }
        if ((i & 2) != 0) {
            z = true;
        }
        if ((i & 4) != 0) {
            map2 = null;
        }
        if ((i & 8) != 0) {
            z2 = true;
        }
        if ((i & 16) != 0) {
            set = null;
        }
        if ((i & 32) != 0) {
            requestTemplate = null;
        }
        if ((i & 64) != 0) {
            set2 = null;
        }
        return useCaseCameraState.m102updateAsyncTp9XwKQ(map, z, map2, z2, set, requestTemplate, set2, e02Var);
    }

    /* JADX INFO: renamed from: updateState-HOTx9TI, reason: not valid java name */
    private final void m101updateStateHOTx9TI(Map<CaptureRequest.Key<?>, ? extends Object> map, boolean z, Map<Metadata.Key<?>, ? extends Object> map2, boolean z2, Set<StreamId> set, RequestTemplate requestTemplate, Set<? extends Request.Listener> set2) {
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "UseCaseCameraState#updateState: parameters = " + map + ", internalParameters = " + map2 + ", streams = " + set + ", template = " + requestTemplate);
        }
        if (map != null) {
            if (!z) {
                this.currentParameters.clear();
            }
            this.currentParameters.putAll(map);
        }
        if (map2 != null) {
            if (!z2) {
                this.currentInternalParameters.clear();
            }
            this.currentInternalParameters.putAll(map2);
        }
        if (set != null) {
            this.currentStreams.clear();
            this.currentStreams.addAll(set);
        }
        if (requestTemplate != null) {
            this.currentTemplate = requestTemplate;
        }
        if (set2 != null) {
            this.currentListeners.clear();
            this.currentListeners.addAll(set2);
        }
    }

    public final void close() {
        synchronized (this.lock) {
            try {
                if (this.updating) {
                    this.updating = false;
                    xp1<j59> xp1Var = this.updateSignal;
                    if (xp1Var != null) {
                        xp1Var.e(new CancellationException("UseCaseCameraState closed"));
                    }
                    this.updateSignal = null;
                }
                while (!this.updateSignals.isEmpty()) {
                    this.updateSignals.removeFirst().getSignal().e(new CancellationException("UseCaseCameraState closed"));
                    this.pendingSignalCount.a();
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Object tryStartRepeating(e02<? super j59> e02Var) throws Exception {
        Object objSubmitLatest = submitLatest(e02Var);
        return objSubmitLatest == a32.COROUTINE_SUSPENDED ? objSubmitLatest : j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: updateAsync-Tp9XwKQ, reason: not valid java name */
    public final Object m102updateAsyncTp9XwKQ(Map<CaptureRequest.Key<?>, ? extends Object> map, boolean z, Map<Metadata.Key<?>, ? extends Object> map2, boolean z2, Set<StreamId> set, RequestTemplate requestTemplate, Set<? extends Request.Listener> set2, e02<? super mk2<j59>> e02Var) {
        UseCaseCameraState$updateAsync$1 useCaseCameraState$updateAsync$1;
        r07 r07Var;
        if (e02Var instanceof UseCaseCameraState$updateAsync$1) {
            useCaseCameraState$updateAsync$1 = (UseCaseCameraState$updateAsync$1) e02Var;
            int i = useCaseCameraState$updateAsync$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                useCaseCameraState$updateAsync$1.label = i - Integer.MIN_VALUE;
            } else {
                useCaseCameraState$updateAsync$1 = new UseCaseCameraState$updateAsync$1(this, e02Var);
            }
        } else {
            useCaseCameraState$updateAsync$1 = new UseCaseCameraState$updateAsync$1(this, e02Var);
        }
        Object obj = useCaseCameraState$updateAsync$1.result;
        Object obj2 = a32.COROUTINE_SUSPENDED;
        int i2 = useCaseCameraState$updateAsync$1.label;
        if (i2 == 0) {
            r57.b(obj);
            r07 r07Var2 = new r07();
            synchronized (this.lock) {
                try {
                    Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled(Log.TAG)) {
                        android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "UseCaseCameraState#updateState: parameters = " + map + ", internalParameters = " + map2 + ", streams = " + set + ", template = " + requestTemplate);
                    }
                    if (map != null) {
                        if (!z) {
                            this.currentParameters.clear();
                        }
                        this.currentParameters.putAll(map);
                    }
                    if (map2 != null) {
                        if (!z2) {
                            this.currentInternalParameters.clear();
                        }
                        this.currentInternalParameters.putAll(map2);
                    }
                    if (set != null) {
                        this.currentStreams.clear();
                        this.currentStreams.addAll(set);
                    }
                    if (requestTemplate != null) {
                        this.currentTemplate = requestTemplate;
                    }
                    if (set2 != null) {
                        this.currentListeners.clear();
                        this.currentListeners.addAll(set2);
                    }
                    xp1<j59> xp1Var = this.updateSignal;
                    T t = xp1Var;
                    if (xp1Var == null) {
                        yp1 yp1Var = new yp1();
                        this.updateSignal = yp1Var;
                        t = yp1Var;
                    }
                    if (this.updating) {
                        return t;
                    }
                    this.updating = true;
                    r07Var2.b = t;
                    j59 j59Var = j59.a;
                    useCaseCameraState$updateAsync$1.L$0 = r07Var2;
                    useCaseCameraState$updateAsync$1.label = 1;
                    if (submitLatest(useCaseCameraState$updateAsync$1) == obj2) {
                        return obj2;
                    }
                    r07Var = r07Var2;
                } catch (Throwable th) {
                    throw th;
                }
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r07Var = (r07) useCaseCameraState$updateAsync$1.L$0;
            r57.b(obj);
        }
        return r07Var.b;
    }

    public final class RequestListener implements Request.Listener {
        public RequestListener() {
        }

        private final void complete(fr<RequestSignal> frVar, int i) {
            while (!frVar.isEmpty() && frVar.first().getRequestNo() <= i) {
                frVar.first().getSignal().f(j59.a);
                nn1.D(frVar);
                UseCaseCameraState.this.pendingSignalCount.a();
            }
        }

        private final void completeExceptionally(RequestMetadata requestMetadata, RequestFailure requestFailure) {
            String str;
            Integer num = (Integer) requestMetadata.get(TagsKt.getUSE_CASE_CAMERA_STATE_CUSTOM_TAG());
            if (num != null) {
                UseCaseCameraState useCaseCameraState = UseCaseCameraState.this;
                int iIntValue = num.intValue();
                synchronized (useCaseCameraState.lock) {
                    try {
                        fr<RequestSignal> frVar = useCaseCameraState.updateSignals;
                        StringBuilder sb = new StringBuilder("Failed in framework level");
                        if (requestFailure != null) {
                            str = " with CaptureFailure.reason = " + requestFailure.getReason();
                        } else {
                            str = "";
                        }
                        sb.append(str);
                        completeExceptionally(frVar, iIntValue, new Throwable(sb.toString()));
                        j59 j59Var = j59.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }

        public static /* synthetic */ void completeExceptionally$default(RequestListener requestListener, RequestMetadata requestMetadata, RequestFailure requestFailure, int i, Object obj) {
            if ((i & 2) != 0) {
                requestFailure = null;
            }
            requestListener.completeExceptionally(requestMetadata, requestFailure);
        }

        @Override // androidx.camera.camera2.pipe.Request.Listener
        /* JADX INFO: renamed from: onFailed-CcXjc1I */
        public void mo10onFailedCcXjc1I(RequestMetadata requestMetadata, long j, RequestFailure requestFailure) {
            requestMetadata.getClass();
            requestFailure.getClass();
            if (UseCaseCameraState.this.pendingSignalCount.a == 0) {
                return;
            }
            completeExceptionally(requestMetadata, requestFailure);
        }

        @Override // androidx.camera.camera2.pipe.Request.Listener
        /* JADX INFO: renamed from: onTotalCaptureResult-CcXjc1I */
        public void mo11onTotalCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, FrameInfo frameInfo) {
            Integer num;
            requestMetadata.getClass();
            frameInfo.getClass();
            if (UseCaseCameraState.this.pendingSignalCount.a == 0 || (num = (Integer) requestMetadata.get(TagsKt.getUSE_CASE_CAMERA_STATE_CUSTOM_TAG())) == null) {
                return;
            }
            UseCaseCameraState useCaseCameraState = UseCaseCameraState.this;
            int iIntValue = num.intValue();
            synchronized (useCaseCameraState.lock) {
                complete(useCaseCameraState.updateSignals, iIntValue);
                j59 j59Var = j59.a;
            }
        }

        private final void completeExceptionally(fr<RequestSignal> frVar, int i, Throwable th) {
            while (!frVar.isEmpty() && frVar.first().getRequestNo() <= i) {
                frVar.first().getSignal().e(th);
                nn1.D(frVar);
                UseCaseCameraState.this.pendingSignalCount.a();
            }
        }
    }
}
