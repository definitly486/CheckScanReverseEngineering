package androidx.compose.material3;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.dm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.material3.SliderKt$SliderImpl$drag$1$1", f = "Slider.kt", l = {}, m = "invokeSuspend")
public final class SliderKt$SliderImpl$drag$1$1 extends pg8 implements dm3<y22, Float, e02<? super j59>, Object> {
    final /* synthetic */ SliderState $state;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SliderKt$SliderImpl$drag$1$1(SliderState sliderState, e02<? super SliderKt$SliderImpl$drag$1$1> e02Var) {
        super(3, e02Var);
        this.$state = sliderState;
    }

    @Override // defpackage.dm3
    public /* bridge */ /* synthetic */ Object invoke(y22 y22Var, Float f, e02<? super j59> e02Var) {
        return invoke(y22Var, f.floatValue(), e02Var);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label != 0) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        this.$state.getGestureEndAction$material3().invoke();
        return j59.a;
    }

    public final Object invoke(y22 y22Var, float f, e02<? super j59> e02Var) {
        return new SliderKt$SliderImpl$drag$1$1(this.$state, e02Var).invokeSuspend(j59.a);
    }
}
