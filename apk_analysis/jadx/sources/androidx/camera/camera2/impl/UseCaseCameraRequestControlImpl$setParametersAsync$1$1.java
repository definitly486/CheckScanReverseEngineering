package androidx.camera.camera2.impl;

import android.hardware.camera2.CaptureRequest;
import androidx.camera.core.impl.Config;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.e02;
import defpackage.j59;
import defpackage.mk2;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$setParametersAsync$1$1", f = "UseCaseCameraRequestControl.kt", l = {351}, m = "invokeSuspend", v = 1)
public final class UseCaseCameraRequestControlImpl$setParametersAsync$1$1 extends pg8 implements nl3<e02<? super mk2<? extends j59>>, Object> {
    final /* synthetic */ Config.OptionPriority $optionPriority;
    final /* synthetic */ UseCaseCameraRequestControl.Type $type;
    final /* synthetic */ Map<CaptureRequest.Key<?>, Object> $values;
    int label;
    final /* synthetic */ UseCaseCameraRequestControlImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UseCaseCameraRequestControlImpl$setParametersAsync$1$1(UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl, UseCaseCameraRequestControl.Type type, Map<CaptureRequest.Key<?>, ? extends Object> map, Config.OptionPriority optionPriority, e02<? super UseCaseCameraRequestControlImpl$setParametersAsync$1$1> e02Var) {
        super(1, e02Var);
        this.this$0 = useCaseCameraRequestControlImpl;
        this.$type = type;
        this.$values = map;
        this.$optionPriority = optionPriority;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(e02<?> e02Var) {
        return new UseCaseCameraRequestControlImpl$setParametersAsync$1$1(this.this$0, this.$type, this.$values, this.$optionPriority, e02Var);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(e02<? super mk2<j59>> e02Var) {
        return ((UseCaseCameraRequestControlImpl$setParametersAsync$1$1) create(e02Var)).invokeSuspend(j59.a);
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
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.this$0;
        UseCaseCameraRequestControl.Type type = this.$type;
        Map<CaptureRequest.Key<?>, Object> map = this.$values;
        Config.OptionPriority optionPriority = this.$optionPriority;
        this.label = 1;
        Object parametersInternal = useCaseCameraRequestControlImpl.setParametersInternal(type, map, optionPriority, this);
        return parametersInternal == a32Var ? a32Var : parametersInternal;
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ Object invoke(e02<? super mk2<? extends j59>> e02Var) {
        return invoke2((e02<? super mk2<j59>>) e02Var);
    }
}
