package androidx.camera.camera2.compat;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.util.Range;
import android.util.Rational;
import androidx.camera.camera2.adapter.CoroutineAdaptersKt;
import androidx.camera.camera2.compat.EvCompImpl;
import androidx.camera.camera2.config.CameraScope;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.camera2.impl.ComboRequestListener;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.impl.UseCaseThreads;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.core.CameraControl;
import defpackage.j59;
import defpackage.mk2;
import defpackage.nl3;
import defpackage.xp1;
import defpackage.yp1;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@CameraScope
public final class EvCompImpl implements EvCompCompat {
    private final CameraProperties cameraProperties;
    private final ComboRequestListener comboRequestListener;
    private final Range<Integer> range;
    private final Rational step;
    private final boolean supported;
    private final UseCaseThreads threads;
    private Request.Listener updateListener;
    private xp1<Integer> updateSignal;

    public EvCompImpl(CameraProperties cameraProperties, UseCaseThreads useCaseThreads, ComboRequestListener comboRequestListener) {
        Integer num;
        Rational rational;
        cameraProperties.getClass();
        useCaseThreads.getClass();
        comboRequestListener.getClass();
        this.cameraProperties = cameraProperties;
        this.threads = useCaseThreads;
        this.comboRequestListener = comboRequestListener;
        CameraMetadata metadata = cameraProperties.getMetadata();
        CameraCharacteristics.Key key = CameraCharacteristics.CONTROL_AE_COMPENSATION_RANGE;
        key.getClass();
        Object orDefault = metadata.getOrDefault((CameraCharacteristics.Key<Range<Integer>>) key, EvCompCompatKt.getEMPTY_RANGE());
        orDefault.getClass();
        this.range = (Range) orDefault;
        Integer num2 = (Integer) getRange().getUpper();
        this.supported = (num2 == null || num2.intValue() != 0) && ((num = (Integer) getRange().getLower()) == null || num.intValue() != 0);
        if (getSupported()) {
            CameraMetadata metadata2 = cameraProperties.getMetadata();
            CameraCharacteristics.Key key2 = CameraCharacteristics.CONTROL_AE_COMPENSATION_STEP;
            key2.getClass();
            Object obj = metadata2.get((CameraCharacteristics.Key<Object>) key2);
            obj.getClass();
            rational = (Rational) obj;
        } else {
            rational = Rational.ZERO;
            rational.getClass();
        }
        this.step = rational;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 applyAsync$lambda$2$0(EvCompImpl evCompImpl, AnonymousClass3 anonymousClass3, Throwable th) {
        evCompImpl.comboRequestListener.removeListener(anonymousClass3);
        return j59.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1, types: [androidx.camera.camera2.compat.EvCompImpl$applyAsync$3, androidx.camera.camera2.pipe.Request$Listener] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // androidx.camera.camera2.compat.EvCompCompat
    public mk2<Integer> applyAsync(final int i, UseCaseCameraRequestControl useCaseCameraRequestControl, boolean z) {
        useCaseCameraRequestControl.getClass();
        final yp1 yp1Var = new yp1();
        xp1<Integer> xp1Var = this.updateSignal;
        if (xp1Var != null) {
            if (z) {
                xp1Var.e(new CameraControl.OperationCanceledException("Cancelled by another setExposureCompensationIndex()"));
            } else {
                CoroutineAdaptersKt.propagateTo(yp1Var, xp1Var);
            }
        }
        this.updateSignal = yp1Var;
        Request.Listener listener = this.updateListener;
        if (listener != null) {
            this.comboRequestListener.removeListener(listener);
            this.updateListener = null;
        }
        Map mapSingletonMap = Collections.singletonMap(CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION, Integer.valueOf(i));
        mapSingletonMap.getClass();
        UseCaseCameraRequestControl.setParametersAsync$default(useCaseCameraRequestControl, mapSingletonMap, null, null, 6, null);
        final ?? r10 = new Request.Listener() { // from class: androidx.camera.camera2.compat.EvCompImpl.applyAsync.3
            @Override // androidx.camera.camera2.pipe.Request.Listener
            /* JADX INFO: renamed from: onComplete-CcXjc1I */
            public void mo9onCompleteCcXjc1I(RequestMetadata requestMetadata, long j, FrameInfo frameInfo) {
                requestMetadata.getClass();
                frameInfo.getClass();
                FrameMetadata metadata = frameInfo.getMetadata();
                CaptureResult.Key key = CaptureResult.CONTROL_AE_STATE;
                key.getClass();
                Integer num = (Integer) metadata.get(key);
                FrameMetadata metadata2 = frameInfo.getMetadata();
                CaptureResult.Key key2 = CaptureResult.CONTROL_AE_EXPOSURE_COMPENSATION;
                key2.getClass();
                Integer num2 = (Integer) metadata2.get(key2);
                if (num == null || num2 == null) {
                    if (num2 != null) {
                        if (num2.intValue() == i) {
                            yp1Var.f(Integer.valueOf(i));
                            return;
                        }
                        return;
                    }
                    return;
                }
                int iIntValue = num.intValue();
                if (iIntValue == 2 || iIntValue == 3 || iIntValue == 4) {
                    if (num2.intValue() == i) {
                        yp1Var.f(Integer.valueOf(i));
                    }
                }
            }
        };
        this.comboRequestListener.addListener(r10, this.threads.getSequentialExecutor());
        yp1Var.g(new nl3() { // from class: x03
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return EvCompImpl.applyAsync$lambda$2$0(this.b, r10, (Throwable) obj);
            }
        });
        this.updateListener = r10;
        return yp1Var;
    }

    @Override // androidx.camera.camera2.compat.EvCompCompat
    public Range<Integer> getRange() {
        return this.range;
    }

    @Override // androidx.camera.camera2.compat.EvCompCompat
    public Rational getStep() {
        return this.step;
    }

    @Override // androidx.camera.camera2.compat.EvCompCompat
    public boolean getSupported() {
        return this.supported;
    }

    @Override // androidx.camera.camera2.compat.EvCompCompat
    public void stopRunningTask(Throwable th) {
        th.getClass();
        xp1<Integer> xp1Var = this.updateSignal;
        if (xp1Var != null) {
            xp1Var.e(th);
        }
    }
}
