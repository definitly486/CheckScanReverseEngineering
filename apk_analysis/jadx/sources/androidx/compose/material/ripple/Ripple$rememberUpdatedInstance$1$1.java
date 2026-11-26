package androidx.compose.material.ripple;

import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.ComposerKt;
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

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.material.ripple.Ripple$rememberUpdatedInstance$1$1", f = "Ripple.kt", l = {ComposerKt.reuseKey}, m = "invokeSuspend", v = 1)
public final class Ripple$rememberUpdatedInstance$1$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ RippleIndicationInstance $instance;
    final /* synthetic */ InteractionSource $interactionSource;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Ripple$rememberUpdatedInstance$1$1(InteractionSource interactionSource, RippleIndicationInstance rippleIndicationInstance, e02<? super Ripple$rememberUpdatedInstance$1$1> e02Var) {
        super(2, e02Var);
        this.$interactionSource = interactionSource;
        this.$instance = rippleIndicationInstance;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        Ripple$rememberUpdatedInstance$1$1 ripple$rememberUpdatedInstance$1$1 = new Ripple$rememberUpdatedInstance$1$1(this.$interactionSource, this.$instance, e02Var);
        ripple$rememberUpdatedInstance$1$1.L$0 = obj;
        return ripple$rememberUpdatedInstance$1$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((Ripple$rememberUpdatedInstance$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            final y22 y22Var = (y22) this.L$0;
            hd3<Interaction> interactions = this.$interactionSource.getInteractions();
            final RippleIndicationInstance rippleIndicationInstance = this.$instance;
            id3<? super Interaction> id3Var = new id3() { // from class: androidx.compose.material.ripple.Ripple$rememberUpdatedInstance$1$1.1
                public final Object emit(Interaction interaction, e02<? super j59> e02Var) {
                    if (interaction instanceof PressInteraction.Press) {
                        rippleIndicationInstance.addRipple((PressInteraction.Press) interaction, y22Var);
                    } else if (interaction instanceof PressInteraction.Release) {
                        rippleIndicationInstance.removeRipple(((PressInteraction.Release) interaction).getPress());
                    } else {
                        boolean z = interaction instanceof PressInteraction.Cancel;
                        RippleIndicationInstance rippleIndicationInstance2 = rippleIndicationInstance;
                        if (z) {
                            rippleIndicationInstance2.removeRipple(((PressInteraction.Cancel) interaction).getPress());
                        } else {
                            rippleIndicationInstance2.updateStateLayer$material_ripple(interaction, y22Var);
                        }
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
