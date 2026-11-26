package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.ui.input.pointer.PointerInputChange;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.yk2;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.AbstractClickableNode$handlePressInteraction$2$1$delayJob$1", f = "Clickable.kt", l = {2239, 2242}, m = "invokeSuspend", v = 1)
public final class AbstractClickableNode$handlePressInteraction$2$1$delayJob$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ long $offset;
    Object L$0;
    int label;
    final /* synthetic */ AbstractClickableNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractClickableNode$handlePressInteraction$2$1$delayJob$1(AbstractClickableNode abstractClickableNode, long j, MutableInteractionSource mutableInteractionSource, e02<? super AbstractClickableNode$handlePressInteraction$2$1$delayJob$1> e02Var) {
        super(2, e02Var);
        this.this$0 = abstractClickableNode;
        this.$offset = j;
        this.$interactionSource = mutableInteractionSource;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new AbstractClickableNode$handlePressInteraction$2$1$delayJob$1(this.this$0, this.$offset, this.$interactionSource, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((AbstractClickableNode$handlePressInteraction$2$1$delayJob$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        PressInteraction.Press press;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            boolean z = ComposeFoundationFlags.isDelayPressesUsingGestureConsumptionEnabled;
            AbstractClickableNode abstractClickableNode = this.this$0;
            if (z ? abstractClickableNode.delayPressInteraction((PointerInputChange) null) : abstractClickableNode.delayPressInteraction()) {
                long tapIndicationDelay = Clickable_androidKt.getTapIndicationDelay();
                this.label = 1;
                if (yk2.b(tapIndicationDelay, this) != a32Var) {
                }
            }
            return a32Var;
        }
        if (i == 1) {
            r57.b(obj);
        } else {
            if (i != 2) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            press = (PressInteraction.Press) this.L$0;
            r57.b(obj);
        }
        this.this$0.pressInteraction = press;
        return j59.a;
        PressInteraction.Press press2 = new PressInteraction.Press(this.$offset, null);
        MutableInteractionSource mutableInteractionSource = this.$interactionSource;
        this.L$0 = press2;
        this.label = 2;
        if (mutableInteractionSource.emit(press2, this) != a32Var) {
            press = press2;
            this.this$0.pressInteraction = press;
            return j59.a;
        }
        return a32Var;
    }
}
