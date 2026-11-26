package androidx.compose.foundation;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.c31;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.zya;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.BasicTooltipStateImpl$show$cancellableShow$1", f = "BasicTooltip.kt", l = {TypedValues.CycleType.TYPE_WAVE_OFFSET}, m = "invokeSuspend", v = 1)
public final class BasicTooltipStateImpl$show$cancellableShow$1 extends pg8 implements nl3<e02<? super j59>, Object> {
    Object L$0;
    int label;
    final /* synthetic */ BasicTooltipStateImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BasicTooltipStateImpl$show$cancellableShow$1(BasicTooltipStateImpl basicTooltipStateImpl, e02<? super BasicTooltipStateImpl$show$cancellableShow$1> e02Var) {
        super(1, e02Var);
        this.this$0 = basicTooltipStateImpl;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(e02<?> e02Var) {
        return new BasicTooltipStateImpl$show$cancellableShow$1(this.this$0, e02Var);
    }

    @Override // defpackage.nl3
    public final Object invoke(e02<? super j59> e02Var) {
        return ((BasicTooltipStateImpl$show$cancellableShow$1) create(e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            BasicTooltipStateImpl basicTooltipStateImpl = this.this$0;
            this.L$0 = basicTooltipStateImpl;
            this.label = 1;
            c31 c31Var = new c31(1, zya.b(this));
            c31Var.u();
            basicTooltipStateImpl.setVisible(true);
            basicTooltipStateImpl.job = c31Var;
            if (c31Var.s() == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return j59.a;
    }
}
