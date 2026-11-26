package androidx.camera.camera2.pipe.graph;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.params.MeteringRectangle;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.AfMode;
import androidx.camera.camera2.pipe.AwbMode;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.FlashMode;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.FrameNumber;
import androidx.camera.camera2.pipe.Lock3ABehavior;
import androidx.camera.camera2.pipe.Result3A;
import androidx.camera.camera2.pipe.config.CameraGraphScope;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.graph.Controller3A;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.b36;
import defpackage.e02;
import defpackage.ga1;
import defpackage.j59;
import defpackage.jh2;
import defpackage.mk2;
import defpackage.mx2;
import defpackage.n05;
import defpackage.nl3;
import defpackage.pib;
import defpackage.qn1;
import defpackage.r07;
import defpackage.r57;
import defpackage.u96;
import defpackage.xp1;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@CameraGraphScope
public final class Controller3A {
    private static final Map<CaptureRequest.Key<?>, Object> aePrecaptureAndAfCancelParams;
    private static final Map<CaptureRequest.Key<?>, Object> aePrecaptureCancelParams;
    private static final List<Integer> aeUnlockedStateList;
    private static final List<Integer> afUnlockedStateList;
    private static final List<Integer> awbUnlockedStateList;
    private static final xp1<Result3A> deferredResult3ASubmitFailed;
    private static final Map<CaptureRequest.Key<?>, Object> parameterForAfTriggerCancel;
    private static final Map<CaptureRequest.Key<?>, Object> parameterForAfTriggerStart;
    private static final Map<CaptureRequest.Key<?>, Object> parametersForAePrecapture;
    private static final Map<CaptureRequest.Key<?>, Object> parametersForAePrecaptureAndAfTrigger;
    private static final nl3<FrameMetadata, Boolean> unlock3APostCaptureAfUnlockedCondition;
    private static final Map<? extends CaptureRequest.Key<? extends Object>, Object> unlock3APostCaptureLockAeAndCancelAfParams;
    private static final Map<CaptureRequest.Key<Boolean>, Boolean> unlock3APostCaptureLockAeParams;
    private static final Map<CaptureRequest.Key<?>, Object> unlock3APostCaptureUnlockAeParams;
    private final Listener3A graphListener3A;
    private final GraphProcessor graphProcessor;
    private final GraphState3A graphState3A;
    private mk2<Result3A> lastUpdate3AResult;
    private final CameraMetadata metadata;
    public static final Companion Companion = new Companion(null);
    private static final List<Integer> aeConvergedStateList = u96.i(2, 4, 3);
    private static final List<Integer> awbConvergedStateList = u96.i(2, 3);
    private static final List<Integer> afConvergedStateList = u96.i(2, 6, 4, 5);
    private static final List<Integer> aeLockedStateList = u96.h(3);
    private static final List<Integer> awbLockedStateList = u96.h(3);
    private static final List<Integer> afLockedStateList = u96.i(4, 5);
    private static final List<Integer> aePostPrecaptureStateList = u96.i(2, 4, 3);
    private static final List<Integer> awbPostPrecaptureStateList = u96.i(2, 3);

    static {
        CaptureRequest.Key key = CaptureRequest.CONTROL_AF_TRIGGER;
        Map<CaptureRequest.Key<?>, Object> mapSingletonMap = Collections.singletonMap(key, 1);
        mapSingletonMap.getClass();
        parameterForAfTriggerStart = mapSingletonMap;
        Map<CaptureRequest.Key<?>, Object> mapSingletonMap2 = Collections.singletonMap(key, 2);
        mapSingletonMap2.getClass();
        parameterForAfTriggerCancel = mapSingletonMap2;
        CaptureRequest.Key key2 = CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER;
        Map<CaptureRequest.Key<?>, Object> mapSingletonMap3 = Collections.singletonMap(key2, 1);
        mapSingletonMap3.getClass();
        parametersForAePrecapture = mapSingletonMap3;
        parametersForAePrecaptureAndAfTrigger = n05.e(new b36(key, 1), new b36(key2, 1));
        deferredResult3ASubmitFailed = ga1.a(new Result3A(Result3A.Status.Companion.m668getSUBMIT_FAILEDJvTi9ms(), null, 2, null));
        aeUnlockedStateList = u96.i(0, 1, 2, 4);
        List<Integer> listI = u96.i(0, 3, 1, 2, 6);
        afUnlockedStateList = listI;
        awbUnlockedStateList = u96.i(0, 1, 2);
        CaptureRequest.Key key3 = CaptureRequest.CONTROL_AE_LOCK;
        Boolean bool = Boolean.TRUE;
        Map<CaptureRequest.Key<Boolean>, Boolean> mapSingletonMap4 = Collections.singletonMap(key3, bool);
        mapSingletonMap4.getClass();
        unlock3APostCaptureLockAeParams = mapSingletonMap4;
        unlock3APostCaptureLockAeAndCancelAfParams = n05.e(new b36(key, 2), new b36(key3, bool));
        Map<CaptureRequest.Key<?>, Object> mapSingletonMap5 = Collections.singletonMap(key3, Boolean.FALSE);
        mapSingletonMap5.getClass();
        unlock3APostCaptureUnlockAeParams = mapSingletonMap5;
        Map<CaptureRequest.Key<?>, Object> mapSingletonMap6 = Collections.singletonMap(key2, 2);
        mapSingletonMap6.getClass();
        aePrecaptureCancelParams = mapSingletonMap6;
        aePrecaptureAndAfCancelParams = n05.e(new b36(key, 2), new b36(key2, 2));
        Map mapSingletonMap7 = Collections.singletonMap(CaptureResult.CONTROL_AF_STATE, listI);
        mapSingletonMap7.getClass();
        unlock3APostCaptureAfUnlockedCondition = Result3AStateListenerKt.toConditionChecker(mapSingletonMap7);
    }

    public Controller3A(GraphProcessor graphProcessor, CameraMetadata cameraMetadata, GraphState3A graphState3A, Listener3A listener3A) {
        graphProcessor.getClass();
        cameraMetadata.getClass();
        graphState3A.getClass();
        listener3A.getClass();
        this.graphProcessor = graphProcessor;
        this.metadata = cameraMetadata;
        this.graphState3A = graphState3A;
        this.graphListener3A = listener3A;
    }

    private final Map<CaptureResult.Key<?>, List<Object>> createConverged3AExitConditions(boolean z, boolean z2, boolean z3) {
        if (!z && !z2 && !z3) {
            return mx2.b;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (z) {
            linkedHashMap.put(CaptureResult.CONTROL_AE_STATE, aeConvergedStateList);
        }
        if (z3) {
            linkedHashMap.put(CaptureResult.CONTROL_AWB_STATE, awbConvergedStateList);
        }
        if (z2) {
            linkedHashMap.put(CaptureResult.CONTROL_AF_STATE, afConvergedStateList);
        }
        return linkedHashMap;
    }

    /* JADX INFO: renamed from: createListenerFor3AParams-0dPwJB0, reason: not valid java name */
    private final Result3AStateListenerImpl m873createListenerFor3AParams0dPwJB0(AeMode aeMode, AfMode afMode, AwbMode awbMode, FlashMode flashMode) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (aeMode != null) {
            int iM112unboximpl = aeMode.m112unboximpl();
            CaptureResult.Key key = CaptureResult.CONTROL_AE_MODE;
            key.getClass();
        }
        if (afMode != null) {
            int iM131unboximpl = afMode.m131unboximpl();
            CaptureResult.Key key2 = CaptureResult.CONTROL_AF_MODE;
            key2.getClass();
        }
        if (awbMode != null) {
            int iM157unboximpl = awbMode.m157unboximpl();
            CaptureResult.Key key3 = CaptureResult.CONTROL_AWB_MODE;
            key3.getClass();
        }
        if (flashMode != null) {
            int iM418unboximpl = flashMode.m418unboximpl();
            CaptureResult.Key key4 = CaptureResult.FLASH_MODE;
            key4.getClass();
        }
        return new Result3AStateListenerImpl(n05.l(linkedHashMap), (Integer) null, (Long) null, 6, (jh2) null);
    }

    /* JADX INFO: renamed from: createListenerFor3AParams-0dPwJB0$default, reason: not valid java name */
    public static /* synthetic */ Result3AStateListenerImpl m874createListenerFor3AParams0dPwJB0$default(Controller3A controller3A, AeMode aeMode, AfMode afMode, AwbMode awbMode, FlashMode flashMode, int i, Object obj) {
        if ((i & 1) != 0) {
            aeMode = null;
        }
        if ((i & 2) != 0) {
            afMode = null;
        }
        if ((i & 4) != 0) {
            awbMode = null;
        }
        if ((i & 8) != 0) {
            flashMode = null;
        }
        return controller3A.m873createListenerFor3AParams0dPwJB0(aeMode, afMode, awbMode, flashMode);
    }

    private final nl3<FrameMetadata, Boolean> createLock3AForCaptureExitConditions(final boolean z, final boolean z2) {
        return new nl3() { // from class: h02
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return Boolean.valueOf(Controller3A.createLock3AForCaptureExitConditions$lambda$0(z2, z, (FrameMetadata) obj));
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:20:0x007f  */
    /* JADX WARN: Code duplicated, block: B:6:0x0020  */
    public static final boolean createLock3AForCaptureExitConditions$lambda$0(boolean z, boolean z2, FrameMetadata frameMetadata) {
        boolean zM;
        boolean z3;
        boolean zIsNullOrIn;
        frameMetadata.getClass();
        CaptureResult.Key key = CaptureResult.CONTROL_AF_MODE;
        key.getClass();
        Integer num = (Integer) frameMetadata.get(key);
        if (num != null) {
            int iM123constructorimpl = AfMode.m123constructorimpl(num.intValue());
            if (!AfMode.m129isOnimpl(iM123constructorimpl)) {
                zM = true;
            } else if (z2) {
                CaptureResult.Key key2 = CaptureResult.CONTROL_AF_STATE;
                key2.getClass();
                zM = Controller3AKt.isNullOrIn(frameMetadata.get(key2), afLockedStateList);
            } else if (AfMode.m128isContinuousimpl(iM123constructorimpl)) {
                List<Integer> list = afConvergedStateList;
                CaptureResult.Key key3 = CaptureResult.CONTROL_AF_STATE;
                key3.getClass();
                zM = qn1.M(list, frameMetadata.get(key3));
            } else {
                zM = true;
            }
        } else {
            zM = false;
        }
        CaptureResult.Key key4 = CaptureResult.CONTROL_AE_MODE;
        key4.getClass();
        Integer num2 = (Integer) frameMetadata.get(key4);
        if (num2 == null) {
            z3 = false;
        } else {
            if (AeMode.m110isOnimpl(AeMode.m104constructorimpl(num2.intValue()))) {
                CaptureResult.Key key5 = CaptureResult.CONTROL_AE_STATE;
                key5.getClass();
                if (!Controller3AKt.isNullOrIn(frameMetadata.get(key5), aePostPrecaptureStateList)) {
                    z3 = false;
                }
            }
            z3 = true;
        }
        CaptureResult.Key key6 = CaptureResult.CONTROL_AWB_MODE;
        key6.getClass();
        Integer num3 = (Integer) frameMetadata.get(key6);
        int iM150constructorimpl = AwbMode.m150constructorimpl(num3 != null ? num3.intValue() : 0);
        if (z && num3 == null) {
            zIsNullOrIn = false;
        } else if (z && AwbMode.m155isOnimpl(iM150constructorimpl)) {
            CaptureResult.Key key7 = CaptureResult.CONTROL_AWB_STATE;
            key7.getClass();
            zIsNullOrIn = Controller3AKt.isNullOrIn(frameMetadata.get(key7), awbPostPrecaptureStateList);
        } else {
            zIsNullOrIn = true;
        }
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, "lock3AForCapture state " + ((Object) FrameNumber.m468toStringimpl(frameMetadata.mo462getFrameNumberUgla2oM())) + ": meetsAeCondition = " + z3 + ", meetsAfCondition = " + zM + ", meetsAwbCondition = " + zIsNullOrIn);
        }
        return z3 && zM && zIsNullOrIn;
    }

    private final Map<CaptureResult.Key<?>, List<Object>> createLocked3AExitConditions(boolean z, boolean z2, boolean z3) {
        if (!z && !z2 && !z3) {
            return mx2.b;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (z) {
            linkedHashMap.put(CaptureResult.CONTROL_AE_STATE, aeLockedStateList);
        }
        if (z2) {
            linkedHashMap.put(CaptureResult.CONTROL_AF_STATE, afLockedStateList);
        }
        if (z3) {
            linkedHashMap.put(CaptureResult.CONTROL_AWB_STATE, awbLockedStateList);
        }
        return linkedHashMap;
    }

    private final Map<CaptureResult.Key<?>, List<Object>> createUnLocked3AExitConditions(boolean z, boolean z2, boolean z3) {
        if (!z && !z2 && !z3) {
            return mx2.b;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (z) {
            linkedHashMap.put(CaptureResult.CONTROL_AE_STATE, aeUnlockedStateList);
        }
        if (z2) {
            linkedHashMap.put(CaptureResult.CONTROL_AF_STATE, afUnlockedStateList);
        }
        if (z3) {
            linkedHashMap.put(CaptureResult.CONTROL_AWB_STATE, awbUnlockedStateList);
        }
        return linkedHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: lock3A-Qz1gx5w$default, reason: not valid java name */
    public static /* synthetic */ Object m875lock3AQz1gx5w$default(Controller3A controller3A, List list, List list2, List list3, Lock3ABehavior lock3ABehavior, Lock3ABehavior lock3ABehavior2, Lock3ABehavior lock3ABehavior3, AeMode aeMode, nl3 nl3Var, nl3 nl3Var2, int i, Long l, Long l2, e02 e02Var, int i2, Object obj) {
        Long lValueOf = Long.valueOf(CameraGraph.Constants3A.DEFAULT_TIME_LIMIT_NS);
        return controller3A.m881lock3AQz1gx5w((i2 & 1) != 0 ? null : list, (i2 & 2) != 0 ? null : list2, (i2 & 4) != 0 ? null : list3, (i2 & 8) != 0 ? null : lock3ABehavior, (i2 & 16) != 0 ? null : lock3ABehavior2, (i2 & 32) != 0 ? null : lock3ABehavior3, (i2 & 64) != 0 ? null : aeMode, (i2 & 128) != 0 ? null : nl3Var, (i2 & 256) != 0 ? null : nl3Var2, (i2 & 512) != 0 ? 60 : i, (i2 & 1024) != 0 ? lValueOf : l, (i2 & 2048) != 0 ? lValueOf : l2, e02Var);
    }

    private final mk2<Result3A> lock3AForCapture(Map<CaptureRequest.Key<?>, ? extends Object> map, nl3<? super FrameMetadata, Boolean> nl3Var, int i, long j) {
        if (this.graphProcessor.getRepeatingRequest() == null) {
            return deferredResult3ASubmitFailed;
        }
        if (map == null) {
            map = parametersForAePrecaptureAndAfTrigger;
        }
        Iterator<Map.Entry<CaptureRequest.Key<?>, ? extends Object>> it = map.entrySet().iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (aa4.e(it.next().getValue(), 1)) {
                z = true;
            }
        }
        if (nl3Var == null) {
            nl3Var = createLock3AForCaptureExitConditions(z, false);
        }
        Result3AStateListenerImpl result3AStateListenerImpl = new Result3AStateListenerImpl(nl3Var, Integer.valueOf(i), Long.valueOf(j));
        this.graphListener3A.addListener(result3AStateListenerImpl);
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, "lock3AForCapture - sending a request to trigger ae precapture metering and af.");
        }
        if (this.graphProcessor.trigger(map)) {
            this.graphProcessor.update3AParameters(this.graphState3A.toCaptureRequestParametersMap());
            return result3AStateListenerImpl.getResult();
        }
        this.graphListener3A.removeListener(result3AStateListenerImpl);
        return deferredResult3ASubmitFailed;
    }

    public static /* synthetic */ mk2 lock3AForCapture$default(Controller3A controller3A, boolean z, boolean z2, int i, long j, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = true;
        }
        if ((i2 & 2) != 0) {
            z2 = false;
        }
        if ((i2 & 4) != 0) {
            i = 60;
        }
        if ((i2 & 8) != 0) {
            j = CameraGraph.Constants3A.DEFAULT_TIME_LIMIT_NS;
        }
        int i3 = i;
        return controller3A.lock3AForCapture(z, z2, i3, j);
    }

    /* JADX INFO: renamed from: lock3ANow-R6AlCjU, reason: not valid java name */
    private final mk2<Result3A> m876lock3ANowR6AlCjU(Lock3ABehavior lock3ABehavior, Lock3ABehavior lock3ABehavior2, Lock3ABehavior lock3ABehavior3, AeMode aeMode, nl3<? super FrameMetadata, Boolean> nl3Var, Integer num, Long l) {
        String str;
        mk2<Result3A> result;
        AeMode aeMode2 = null;
        Boolean bool = lock3ABehavior == null ? null : Boolean.TRUE;
        Boolean bool2 = lock3ABehavior3 == null ? null : Boolean.TRUE;
        Map<CaptureResult.Key<?>, List<Object>> mapCreateLocked3AExitConditions = createLocked3AExitConditions(bool != null, lock3ABehavior2 != null, bool2 != null);
        if (nl3Var == null && mapCreateLocked3AExitConditions.isEmpty()) {
            str = Log.TAG;
            result = null;
        } else {
            Result3AStateListenerImpl result3AStateListenerImpl = new Result3AStateListenerImpl(nl3Var == null ? Result3AStateListenerKt.toConditionChecker(mapCreateLocked3AExitConditions) : nl3Var, num, l);
            this.graphListener3A.addListener(result3AStateListenerImpl);
            str = Log.TAG;
            GraphState3A.m891update7jOEVJU$default(this.graphState3A, null, null, null, null, null, null, null, bool, null, bool2, 383, null);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                android.util.Log.d(str, "lock3A - submitting request with aeLock=" + bool + " , awbLock=" + bool2);
            }
            this.graphProcessor.update3AParameters(this.graphState3A.toCaptureRequestParametersMap());
            result = result3AStateListenerImpl.getResult();
        }
        if (lock3ABehavior2 == null) {
            result.getClass();
            return result;
        }
        if (aeMode != null) {
            int iM112unboximpl = aeMode.m112unboximpl();
            AeMode aeModeM909getAeModeO_cDUUs = this.graphState3A.getCurrent().m909getAeModeO_cDUUs();
            GraphState3A.m891update7jOEVJU$default(this.graphState3A, AeMode.m103boximpl(iM112unboximpl), null, null, null, null, null, null, null, null, null, AnalyticsListener.EVENT_DRM_SESSION_ACQUIRED, null);
            this.graphProcessor.update3AParameters(this.graphState3A.toCaptureRequestParametersMap());
            aeMode2 = aeModeM909getAeModeO_cDUUs;
        }
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d(str, "lock3A - submitting a request to lock af.");
        }
        if (!this.graphProcessor.trigger(parameterForAfTriggerStart)) {
            return deferredResult3ASubmitFailed;
        }
        GraphState3A.m891update7jOEVJU$default(this.graphState3A, null, null, null, null, null, null, null, null, Boolean.TRUE, null, 767, null);
        if (aeMode2 != null) {
            GraphState3A.m891update7jOEVJU$default(this.graphState3A, AeMode.m103boximpl(aeMode2.m112unboximpl()), null, null, null, null, null, null, null, null, null, AnalyticsListener.EVENT_DRM_SESSION_ACQUIRED, null);
            this.graphProcessor.update3AParameters(this.graphState3A.toCaptureRequestParametersMap());
        }
        result.getClass();
        return result;
    }

    /* JADX INFO: renamed from: lock3ANow-R6AlCjU$default, reason: not valid java name */
    public static /* synthetic */ mk2 m877lock3ANowR6AlCjU$default(Controller3A controller3A, Lock3ABehavior lock3ABehavior, Lock3ABehavior lock3ABehavior2, Lock3ABehavior lock3ABehavior3, AeMode aeMode, nl3 nl3Var, Integer num, Long l, int i, Object obj) {
        if ((i & 8) != 0) {
            aeMode = null;
        }
        return controller3A.m876lock3ANowR6AlCjU(lock3ABehavior, lock3ABehavior2, lock3ABehavior3, aeMode, nl3Var, num, l);
    }

    /* JADX INFO: renamed from: setTorchOff-NqN7i0k$default, reason: not valid java name */
    public static /* synthetic */ mk2 m878setTorchOffNqN7i0k$default(Controller3A controller3A, AeMode aeMode, int i, Object obj) {
        if ((i & 1) != 0) {
            aeMode = null;
        }
        return controller3A.m882setTorchOffNqN7i0k(aeMode);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: submit3A-ydBZfZg$default, reason: not valid java name */
    public static /* synthetic */ mk2 m879submit3AydBZfZg$default(Controller3A controller3A, AeMode aeMode, AfMode afMode, AwbMode awbMode, List list, List list2, List list3, int i, Object obj) {
        if ((i & 1) != 0) {
            aeMode = null;
        }
        if ((i & 2) != 0) {
            afMode = null;
        }
        if ((i & 4) != 0) {
            awbMode = null;
        }
        if ((i & 8) != 0) {
            list = null;
        }
        if ((i & 16) != 0) {
            list2 = null;
        }
        if ((i & 32) != 0) {
            list3 = null;
        }
        return controller3A.m883submit3AydBZfZg(aeMode, afMode, awbMode, list, list2, list3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ mk2 unlock3A$default(Controller3A controller3A, Boolean bool, Boolean bool2, Boolean bool3, nl3 nl3Var, int i, Long l, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            bool = null;
        }
        if ((i2 & 2) != 0) {
            bool2 = null;
        }
        if ((i2 & 4) != 0) {
            bool3 = null;
        }
        if ((i2 & 8) != 0) {
            nl3Var = null;
        }
        if ((i2 & 16) != 0) {
            i = 60;
        }
        if ((i2 & 32) != 0) {
            l = Long.valueOf(CameraGraph.Constants3A.DEFAULT_TIME_LIMIT_NS);
        }
        return controller3A.unlock3A(bool, bool2, bool3, nl3Var, i, l);
    }

    public static /* synthetic */ mk2 unlock3APostCapture$default(Controller3A controller3A, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return controller3A.unlock3APostCapture(z);
    }

    private final mk2<Result3A> unlock3APostCaptureAndroidMAndAbove(boolean z) {
        Result3AStateListenerImpl result3AStateListenerImpl;
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, "unlock3APostCapture - sending a request to reset af and ae precapture metering.");
        }
        if (!this.graphProcessor.trigger(z ? aePrecaptureAndAfCancelParams : aePrecaptureCancelParams)) {
            return deferredResult3ASubmitFailed;
        }
        if (z) {
            result3AStateListenerImpl = new Result3AStateListenerImpl(unlock3APostCaptureAfUnlockedCondition, (Integer) null, (Long) null, 6, (jh2) null);
        } else {
            result3AStateListenerImpl = new Result3AStateListenerImpl(mx2.b, (Integer) null, (Long) null, 6, (jh2) null);
        }
        this.graphListener3A.addListener(result3AStateListenerImpl);
        this.graphProcessor.update3AParameters(this.graphState3A.toCaptureRequestParametersMap());
        return result3AStateListenerImpl.getResult();
    }

    public static /* synthetic */ mk2 unlock3APostCaptureAndroidMAndAbove$default(Controller3A controller3A, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return controller3A.unlock3APostCaptureAndroidMAndAbove(z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: update3A-169HPGg$default, reason: not valid java name */
    public static /* synthetic */ mk2 m880update3A169HPGg$default(Controller3A controller3A, AeMode aeMode, AfMode afMode, AwbMode awbMode, FlashMode flashMode, List list, List list2, List list3, int i, Object obj) {
        if ((i & 1) != 0) {
            aeMode = null;
        }
        if ((i & 2) != 0) {
            afMode = null;
        }
        if ((i & 4) != 0) {
            awbMode = null;
        }
        if ((i & 8) != 0) {
            flashMode = null;
        }
        if ((i & 16) != 0) {
            list = null;
        }
        if ((i & 32) != 0) {
            list2 = null;
        }
        if ((i & 64) != 0) {
            list3 = null;
        }
        return controller3A.m884update3A169HPGg(aeMode, afMode, awbMode, flashMode, list, list2, list3);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001d  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: lock3A-Qz1gx5w, reason: not valid java name */
    public final Object m881lock3AQz1gx5w(List<MeteringRectangle> list, List<MeteringRectangle> list2, List<MeteringRectangle> list3, Lock3ABehavior lock3ABehavior, Lock3ABehavior lock3ABehavior2, Lock3ABehavior lock3ABehavior3, AeMode aeMode, nl3<? super FrameMetadata, Boolean> nl3Var, nl3<? super FrameMetadata, Boolean> nl3Var2, int i, Long l, Long l2, e02<? super mk2<Result3A>> e02Var) {
        Controller3A$lock3A$1 controller3A$lock3A$1;
        r07 r07Var;
        Result3AStateListenerImpl result3AStateListenerImpl;
        Lock3ABehavior lock3ABehavior4;
        Object obj;
        AeMode aeMode2;
        nl3<? super FrameMetadata, Boolean> nl3Var3;
        Long l3;
        Lock3ABehavior lock3ABehavior5 = lock3ABehavior3;
        int i2 = i;
        if (e02Var instanceof Controller3A$lock3A$1) {
            controller3A$lock3A$1 = (Controller3A$lock3A$1) e02Var;
            int i3 = controller3A$lock3A$1.label;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                controller3A$lock3A$1.label = i3 - Integer.MIN_VALUE;
            } else {
                controller3A$lock3A$1 = new Controller3A$lock3A$1(this, e02Var);
            }
        } else {
            controller3A$lock3A$1 = new Controller3A$lock3A$1(this, e02Var);
        }
        Object obj2 = controller3A$lock3A$1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i4 = controller3A$lock3A$1.label;
        if (i4 == 0) {
            r57.b(obj2);
            r07Var = new r07();
            r07Var.b = lock3ABehavior2;
            if (!CameraMetadata.Companion.getSupportsAutoFocusTrigger(this.metadata)) {
                r07Var.b = null;
            }
            if (lock3ABehavior == null && r07Var.b == 0 && lock3ABehavior5 == null) {
                return ga1.a(new Result3A(Result3A.Status.Companion.m666getOKJvTi9ms(), null, null));
            }
            GraphState3A.m891update7jOEVJU$default(this.graphState3A, null, null, null, null, list, list2, list3, null, null, null, 911, null);
            this.graphProcessor.update3AParameters(this.graphState3A.toCaptureRequestParametersMap());
            if (this.graphProcessor.getRepeatingRequest() == null) {
                return deferredResult3ASubmitFailed;
            }
            if (Controller3AKt.m886shouldUnlockAft6FjEyI((Lock3ABehavior) r07Var.b)) {
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d(Log.TAG, "lock3A - sending a request to unlock af first.");
                }
                if (!this.graphProcessor.trigger(parameterForAfTriggerCancel)) {
                    return deferredResult3ASubmitFailed;
                }
            }
            if (Controller3AKt.m888shouldWaitForAeToConverget6FjEyI(lock3ABehavior) || Controller3AKt.m889shouldWaitForAfToConverget6FjEyI((Lock3ABehavior) r07Var.b) || Controller3AKt.m890shouldWaitForAwbToConverget6FjEyI(lock3ABehavior5)) {
                result3AStateListenerImpl = new Result3AStateListenerImpl(nl3Var == null ? Result3AStateListenerKt.toConditionChecker(createConverged3AExitConditions(Controller3AKt.m888shouldWaitForAeToConverget6FjEyI(lock3ABehavior), Controller3AKt.m889shouldWaitForAfToConverget6FjEyI((Lock3ABehavior) r07Var.b), Controller3AKt.m890shouldWaitForAwbToConverget6FjEyI(lock3ABehavior5))) : nl3Var, new Integer(i2), l);
                this.graphListener3A.addListener(result3AStateListenerImpl);
                Boolean bool = Controller3AKt.m885shouldUnlockAet6FjEyI(lock3ABehavior) ? Boolean.FALSE : null;
                Boolean bool2 = Controller3AKt.m887shouldUnlockAwbt6FjEyI(lock3ABehavior5) ? Boolean.FALSE : null;
                if (bool != null || bool2 != null) {
                    if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                        android.util.Log.d(Log.TAG, "lock3A - setting aeLock=" + bool + ", awbLock=" + bool2);
                    }
                    GraphState3A.m891update7jOEVJU$default(this.graphState3A, null, null, null, null, null, null, null, bool, null, bool2, 383, null);
                }
                this.graphProcessor.update3AParameters(this.graphState3A.toCaptureRequestParametersMap());
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sb = new StringBuilder("lock3A - waiting for");
                    sb.append(Controller3AKt.m888shouldWaitForAeToConverget6FjEyI(lock3ABehavior) ? " ae" : "");
                    sb.append(Controller3AKt.m889shouldWaitForAfToConverget6FjEyI((Lock3ABehavior) r07Var.b) ? " af" : "");
                    sb.append(Controller3AKt.m890shouldWaitForAwbToConverget6FjEyI(lock3ABehavior5) ? " awb" : "");
                    sb.append(" to converge before locking them.");
                    android.util.Log.d(Log.TAG, sb.toString());
                }
                mk2<Result3A> result = result3AStateListenerImpl.getResult();
                controller3A$lock3A$1.L$0 = lock3ABehavior;
                controller3A$lock3A$1.L$1 = lock3ABehavior5;
                controller3A$lock3A$1.L$2 = aeMode;
                controller3A$lock3A$1.L$3 = nl3Var2;
                controller3A$lock3A$1.L$4 = l2;
                controller3A$lock3A$1.L$5 = r07Var;
                controller3A$lock3A$1.L$6 = result3AStateListenerImpl;
                controller3A$lock3A$1.I$0 = i2;
                controller3A$lock3A$1.label = 1;
                Object objZ = result.Z(controller3A$lock3A$1);
                if (objZ == a32Var) {
                    return a32Var;
                }
                lock3ABehavior4 = lock3ABehavior;
                obj = objZ;
                aeMode2 = aeMode;
                nl3Var3 = nl3Var2;
                l3 = l2;
            } else {
                aeMode2 = aeMode;
                nl3Var3 = nl3Var2;
                l3 = l2;
                lock3ABehavior4 = lock3ABehavior;
            }
            return m876lock3ANowR6AlCjU(lock3ABehavior4, (Lock3ABehavior) r07Var.b, lock3ABehavior5, aeMode2, nl3Var3, new Integer(i2), l3);
        }
        if (i4 != 1) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        int i5 = controller3A$lock3A$1.I$0;
        Result3AStateListenerImpl result3AStateListenerImpl2 = (Result3AStateListenerImpl) controller3A$lock3A$1.L$6;
        r07 r07Var2 = (r07) controller3A$lock3A$1.L$5;
        l3 = (Long) controller3A$lock3A$1.L$4;
        nl3Var3 = (nl3) controller3A$lock3A$1.L$3;
        aeMode2 = (AeMode) controller3A$lock3A$1.L$2;
        Lock3ABehavior lock3ABehavior6 = (Lock3ABehavior) controller3A$lock3A$1.L$1;
        lock3ABehavior4 = (Lock3ABehavior) controller3A$lock3A$1.L$0;
        r57.b(obj2);
        i2 = i5;
        obj = obj2;
        r07Var = r07Var2;
        result3AStateListenerImpl = result3AStateListenerImpl2;
        lock3ABehavior5 = lock3ABehavior6;
        Result3A result3A = (Result3A) obj;
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            StringBuilder sb2 = new StringBuilder("lock3A - converged at frame number=");
            FrameMetadata frameMetadata = result3A.getFrameMetadata();
            sb2.append(frameMetadata != null ? new Long(frameMetadata.mo462getFrameNumberUgla2oM()) : null);
            sb2.append(", status=");
            sb2.append((Object) Result3A.Status.m663toStringimpl(result3A.m657getStatusJvTi9ms()));
            android.util.Log.d(Log.TAG, sb2.toString());
        }
        if (!Result3A.Status.m661equalsimpl0(result3A.m657getStatusJvTi9ms(), Result3A.Status.Companion.m666getOKJvTi9ms())) {
            return result3AStateListenerImpl.getResult();
        }
        return m876lock3ANowR6AlCjU(lock3ABehavior4, (Lock3ABehavior) r07Var.b, lock3ABehavior5, aeMode2, nl3Var3, new Integer(i2), l3);
    }

    public final void reset3A(State3A state3A) {
        Controller3A controller3A;
        state3A.getClass();
        State3A state3AState3ASnapshot = state3ASnapshot();
        if (aa4.e(state3AState3ASnapshot, state3A)) {
            return;
        }
        this.graphState3A.setCurrent(state3A);
        this.graphProcessor.update3AParameters(this.graphState3A.toCaptureRequestParametersMap());
        if (GraphState3AKt.wasAfLocked(state3A, state3AState3ASnapshot)) {
            controller3A = this;
            unlock3A$default(controller3A, null, Boolean.TRUE, null, null, 0, null, 61, null);
        } else {
            controller3A = this;
        }
        if (GraphState3AKt.wasAfUnlocked(state3A, state3AState3ASnapshot)) {
            controller3A.graphProcessor.trigger(parameterForAfTriggerStart);
        }
    }

    /* JADX INFO: renamed from: setTorchOff-NqN7i0k, reason: not valid java name */
    public final mk2<Result3A> m882setTorchOffNqN7i0k(AeMode aeMode) {
        return m880update3A169HPGg$default(this, aeMode, null, null, FlashMode.m411boximpl(FlashMode.Companion.m420getOFFLe5xUZU()), null, null, null, 118, null);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x003b  */
    public final mk2<Result3A> setTorchOn() {
        AeMode aeModeM103boximpl;
        AeMode aeModeM909getAeModeO_cDUUs = this.graphState3A.getCurrent().m909getAeModeO_cDUUs();
        AeMode.Companion companion = AeMode.Companion;
        if (aeModeM909getAeModeO_cDUUs == null ? false : AeMode.m106equalsimpl0(aeModeM909getAeModeO_cDUUs.m112unboximpl(), companion.m116getONbOjpiJc())) {
            aeModeM103boximpl = null;
        } else {
            if (aeModeM909getAeModeO_cDUUs != null ? AeMode.m106equalsimpl0(aeModeM909getAeModeO_cDUUs.m112unboximpl(), companion.m115getOFFbOjpiJc()) : false) {
                aeModeM103boximpl = null;
            } else {
                aeModeM103boximpl = AeMode.m103boximpl(companion.m116getONbOjpiJc());
            }
        }
        return m880update3A169HPGg$default(this, aeModeM103boximpl, null, null, FlashMode.m411boximpl(FlashMode.Companion.m422getTORCHLe5xUZU()), null, null, null, 118, null);
    }

    public final State3A state3ASnapshot() {
        return this.graphState3A.getCurrent();
    }

    /* JADX INFO: renamed from: submit3A-ydBZfZg, reason: not valid java name */
    public final mk2<Result3A> m883submit3AydBZfZg(AeMode aeMode, AfMode afMode, AwbMode awbMode, List<MeteringRectangle> list, List<MeteringRectangle> list2, List<MeteringRectangle> list3) {
        if (this.graphProcessor.getRepeatingRequest() == null) {
            return deferredResult3ASubmitFailed;
        }
        Result3AStateListenerImpl result3AStateListenerImplM874createListenerFor3AParams0dPwJB0$default = m874createListenerFor3AParams0dPwJB0$default(this, aeMode, afMode, awbMode, null, 8, null);
        this.graphListener3A.addListener(result3AStateListenerImplM874createListenerFor3AParams0dPwJB0$default);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (aeMode != null) {
            int iM112unboximpl = aeMode.m112unboximpl();
            CaptureRequest.Key key = CaptureRequest.CONTROL_AE_MODE;
            key.getClass();
            linkedHashMap.put(key, Integer.valueOf(iM112unboximpl));
        }
        if (afMode != null) {
            int iM131unboximpl = afMode.m131unboximpl();
            CaptureRequest.Key key2 = CaptureRequest.CONTROL_AF_MODE;
            key2.getClass();
            linkedHashMap.put(key2, Integer.valueOf(iM131unboximpl));
        }
        if (awbMode != null) {
            int iM157unboximpl = awbMode.m157unboximpl();
            CaptureRequest.Key key3 = CaptureRequest.CONTROL_AWB_MODE;
            key3.getClass();
            linkedHashMap.put(key3, Integer.valueOf(iM157unboximpl));
        }
        if (list != null) {
            CaptureRequest.Key key4 = CaptureRequest.CONTROL_AE_REGIONS;
            key4.getClass();
            linkedHashMap.put(key4, list.toArray(new MeteringRectangle[0]));
        }
        if (list2 != null) {
            CaptureRequest.Key key5 = CaptureRequest.CONTROL_AF_REGIONS;
            key5.getClass();
            linkedHashMap.put(key5, list2.toArray(new MeteringRectangle[0]));
        }
        if (list3 != null) {
            CaptureRequest.Key key6 = CaptureRequest.CONTROL_AWB_REGIONS;
            key6.getClass();
            linkedHashMap.put(key6, list3.toArray(new MeteringRectangle[0]));
        }
        if (this.graphProcessor.trigger(linkedHashMap)) {
            return result3AStateListenerImplM874createListenerFor3AParams0dPwJB0$default.getResult();
        }
        this.graphListener3A.removeListener(result3AStateListenerImplM874createListenerFor3AParams0dPwJB0$default);
        return deferredResult3ASubmitFailed;
    }

    public final mk2<Result3A> unlock3A(Boolean bool, Boolean bool2, Boolean bool3, nl3<? super FrameMetadata, Boolean> nl3Var, int i, Long l) {
        Boolean bool4 = !CameraMetadata.Companion.getSupportsAutoFocusTrigger(this.metadata) ? null : bool2;
        Boolean bool5 = Boolean.TRUE;
        if (!aa4.e(bool, bool5) && !aa4.e(bool4, bool5) && !aa4.e(bool3, bool5)) {
            return ga1.a(new Result3A(Result3A.Status.Companion.m666getOKJvTi9ms(), null, null));
        }
        if (this.graphProcessor.getRepeatingRequest() == null) {
            return deferredResult3ASubmitFailed;
        }
        if (aa4.e(bool4, bool5)) {
            Log log = Log.INSTANCE;
            if (log.getDEBUG_LOGGABLE()) {
                android.util.Log.d(Log.TAG, "unlock3A - sending a request to unlock af first.");
            }
            if (!this.graphProcessor.trigger(parameterForAfTriggerCancel)) {
                if (log.getDEBUG_LOGGABLE()) {
                    android.util.Log.d(Log.TAG, "unlock3A - failed to send a request to unlock af first.");
                }
                return deferredResult3ASubmitFailed;
            }
            GraphState3A.m891update7jOEVJU$default(this.graphState3A, null, null, null, null, null, null, null, null, Boolean.FALSE, null, 767, null);
        }
        Result3AStateListenerImpl result3AStateListenerImpl = new Result3AStateListenerImpl(nl3Var == null ? Result3AStateListenerKt.toConditionChecker(createUnLocked3AExitConditions(aa4.e(bool, bool5), aa4.e(bool4, bool5), aa4.e(bool3, bool5))) : nl3Var, Integer.valueOf(i), l);
        this.graphListener3A.addListener(result3AStateListenerImpl);
        Boolean bool6 = aa4.e(bool, bool5) ? Boolean.FALSE : null;
        Boolean bool7 = aa4.e(bool3, bool5) ? Boolean.FALSE : null;
        if (bool6 != null || bool7 != null) {
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                android.util.Log.d(Log.TAG, "unlock3A - updating graph state, aeLock=" + bool6 + ", awbLock=" + bool7);
            }
            GraphState3A.m891update7jOEVJU$default(this.graphState3A, null, null, null, null, null, null, null, bool6, null, bool7, 383, null);
        }
        this.graphProcessor.update3AParameters(this.graphState3A.toCaptureRequestParametersMap());
        return result3AStateListenerImpl.getResult();
    }

    public final mk2<Result3A> unlock3APostCapture(boolean z) {
        return this.graphProcessor.getRepeatingRequest() == null ? deferredResult3ASubmitFailed : unlock3APostCaptureAndroidMAndAbove(z);
    }

    /* JADX INFO: renamed from: update3A-169HPGg, reason: not valid java name */
    public final mk2<Result3A> m884update3A169HPGg(AeMode aeMode, AfMode afMode, AwbMode awbMode, FlashMode flashMode, List<MeteringRectangle> list, List<MeteringRectangle> list2, List<MeteringRectangle> list3) {
        if (this.graphProcessor.getRepeatingRequest() == null) {
            GraphState3A.m891update7jOEVJU$default(this.graphState3A, aeMode, afMode, awbMode, flashMode, list, list2, list3, null, null, null, 896, null);
            this.graphProcessor.update3AParameters(this.graphState3A.toCaptureRequestParametersMap());
            return deferredResult3ASubmitFailed;
        }
        Result3AStateListenerImpl result3AStateListenerImplM873createListenerFor3AParams0dPwJB0 = m873createListenerFor3AParams0dPwJB0(aeMode, afMode, awbMode, flashMode);
        this.graphListener3A.addListener(result3AStateListenerImplM873createListenerFor3AParams0dPwJB0);
        GraphState3A.m891update7jOEVJU$default(this.graphState3A, aeMode, afMode, awbMode, flashMode, list, list2, list3, null, null, null, 896, null);
        this.graphProcessor.update3AParameters(this.graphState3A.toCaptureRequestParametersMap());
        mk2<Result3A> result = result3AStateListenerImplM873createListenerFor3AParams0dPwJB0.getResult();
        synchronized (this) {
            try {
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d(Log.TAG, "Controller3A#update3A: cancelling previous request " + this.lastUpdate3AResult);
                }
                mk2<Result3A> mk2Var = this.lastUpdate3AResult;
                if (mk2Var != null) {
                    mk2Var.cancel(pib.a("A newer call for 3A state update initiated.", null));
                }
                this.lastUpdate3AResult = result;
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return result;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final Map<CaptureRequest.Key<?>, Object> getParameterForAfTriggerCancel() {
            return Controller3A.parameterForAfTriggerCancel;
        }

        public final Map<CaptureRequest.Key<?>, Object> getParameterForAfTriggerStart() {
            return Controller3A.parameterForAfTriggerStart;
        }

        private Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ mk2 lock3AForCapture$default(Controller3A controller3A, nl3 nl3Var, int i, long j, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            nl3Var = null;
        }
        if ((i2 & 2) != 0) {
            i = 60;
        }
        if ((i2 & 4) != 0) {
            j = CameraGraph.Constants3A.DEFAULT_TIME_LIMIT_NS;
        }
        return controller3A.lock3AForCapture(nl3Var, i, j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ mk2 lock3AForCapture$default(Controller3A controller3A, Map map, nl3 nl3Var, int i, long j, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            map = null;
        }
        if ((i2 & 2) != 0) {
            nl3Var = null;
        }
        if ((i2 & 4) != 0) {
            i = 60;
        }
        if ((i2 & 8) != 0) {
            j = CameraGraph.Constants3A.DEFAULT_TIME_LIMIT_NS;
        }
        return controller3A.lock3AForCapture((Map<CaptureRequest.Key<?>, ? extends Object>) map, (nl3<? super FrameMetadata, Boolean>) nl3Var, i, j);
    }

    public final mk2<Result3A> lock3AForCapture(boolean z, boolean z2, int i, long j) {
        Map<CaptureRequest.Key<?>, ? extends Object> map;
        if (z) {
            map = parametersForAePrecaptureAndAfTrigger;
        } else {
            map = parametersForAePrecapture;
        }
        return lock3AForCapture(map, createLock3AForCaptureExitConditions(z, z2), i, j);
    }

    public final mk2<Result3A> lock3AForCapture(nl3<? super FrameMetadata, Boolean> nl3Var, int i, long j) {
        return lock3AForCapture((Map<CaptureRequest.Key<?>, ? extends Object>) null, nl3Var, i, j);
    }
}
