package androidx.compose.material3;

import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.MutableIntState;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.material3.SegmentedButtonKt$interactionCountAsState$1$1", f = "SegmentedButton.kt", l = {463}, m = "invokeSuspend")
public final class SegmentedButtonKt$interactionCountAsState$1$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ MutableIntState $interactionCount;
    final /* synthetic */ InteractionSource $this_interactionCountAsState;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SegmentedButtonKt$interactionCountAsState$1$1(InteractionSource interactionSource, MutableIntState mutableIntState, e02<? super SegmentedButtonKt$interactionCountAsState$1$1> e02Var) {
        super(2, e02Var);
        this.$this_interactionCountAsState = interactionSource;
        this.$interactionCount = mutableIntState;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new SegmentedButtonKt$interactionCountAsState$1$1(this.$this_interactionCountAsState, this.$interactionCount, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((SegmentedButtonKt$interactionCountAsState$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            hd3<Interaction> interactions = this.$this_interactionCountAsState.getInteractions();
            final MutableIntState mutableIntState = this.$interactionCount;
            id3<? super Interaction> id3Var = new id3() { // from class: androidx.compose.material3.SegmentedButtonKt$interactionCountAsState$1$1.1
                public final Object emit(Interaction interaction, e02<? super j59> e02Var) {
                    if ((interaction instanceof PressInteraction.Press) || (interaction instanceof FocusInteraction.Focus)) {
                        MutableIntState mutableIntState2 = mutableIntState;
                        mutableIntState2.setIntValue(mutableIntState2.getIntValue() + 1);
                    } else if ((interaction instanceof PressInteraction.Release) || (interaction instanceof FocusInteraction.Unfocus) || (interaction instanceof PressInteraction.Cancel)) {
                        MutableIntState mutableIntState3 = mutableIntState;
                        mutableIntState3.setIntValue(mutableIntState3.getIntValue() - 1);
                    }
                    return j59.a;
                }

                @Override // defpackage.id3
                public /* bridge */ /* synthetic */ Object emit(Object obj2, e02 e02Var) {
                    return emit((Interaction) obj2, (e02<? super j59>) e02Var);
                }
            };
            this.label = 1;
            if (interactions.collect(id3Var, this) == a32Var) {
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
