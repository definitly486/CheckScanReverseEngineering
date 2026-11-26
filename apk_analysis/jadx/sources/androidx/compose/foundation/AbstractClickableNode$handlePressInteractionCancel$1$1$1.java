package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.hp2;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.AbstractClickableNode$handlePressInteractionCancel$1$1$1", f = "Clickable.kt", l = {2214}, m = "invokeSuspend", v = 1)
public final class AbstractClickableNode$handlePressInteractionCancel$1$1$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ PressInteraction.Cancel $endInteraction;
    final /* synthetic */ hp2 $handler;
    final /* synthetic */ MutableInteractionSource $interactionSource;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractClickableNode$handlePressInteractionCancel$1$1$1(MutableInteractionSource mutableInteractionSource, PressInteraction.Cancel cancel, hp2 hp2Var, e02<? super AbstractClickableNode$handlePressInteractionCancel$1$1$1> e02Var) {
        super(2, e02Var);
        this.$interactionSource = mutableInteractionSource;
        this.$endInteraction = cancel;
        this.$handler = hp2Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new AbstractClickableNode$handlePressInteractionCancel$1$1$1(this.$interactionSource, this.$endInteraction, this.$handler, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((AbstractClickableNode$handlePressInteractionCancel$1$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            MutableInteractionSource mutableInteractionSource = this.$interactionSource;
            PressInteraction.Cancel cancel = this.$endInteraction;
            this.label = 1;
            if (mutableInteractionSource.emit(cancel, this) == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        hp2 hp2Var = this.$handler;
        if (hp2Var != null) {
            hp2Var.dispose();
        }
        return j59.a;
    }
}
