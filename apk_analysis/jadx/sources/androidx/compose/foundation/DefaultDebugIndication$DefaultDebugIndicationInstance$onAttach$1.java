package androidx.compose.foundation;

import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.HoverInteraction;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.ui.node.DrawModifierNodeKt;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.p07;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1", f = "Indication.kt", l = {228}, m = "invokeSuspend", v = 1)
public final class DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    int label;
    final /* synthetic */ DefaultDebugIndication.DefaultDebugIndicationInstance this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1(DefaultDebugIndication.DefaultDebugIndicationInstance defaultDebugIndicationInstance, e02<? super DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1> e02Var) {
        super(2, e02Var);
        this.this$0 = defaultDebugIndicationInstance;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1(this.this$0, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            final p07 p07Var = new p07();
            final p07 p07Var2 = new p07();
            final p07 p07Var3 = new p07();
            hd3<Interaction> interactions = this.this$0.interactionSource.getInteractions();
            final DefaultDebugIndication.DefaultDebugIndicationInstance defaultDebugIndicationInstance = this.this$0;
            id3<? super Interaction> id3Var = new id3() { // from class: androidx.compose.foundation.DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1.1
                public final Object emit(Interaction interaction, e02<? super j59> e02Var) {
                    boolean z = true;
                    if (interaction instanceof PressInteraction.Press) {
                        p07Var.b++;
                    } else if (interaction instanceof PressInteraction.Release) {
                        p07Var.b--;
                    } else if (interaction instanceof PressInteraction.Cancel) {
                        p07Var.b--;
                    } else if (interaction instanceof HoverInteraction.Enter) {
                        p07Var2.b++;
                    } else if (interaction instanceof HoverInteraction.Exit) {
                        p07Var2.b--;
                    } else if (interaction instanceof FocusInteraction.Focus) {
                        p07Var3.b++;
                    } else if (interaction instanceof FocusInteraction.Unfocus) {
                        p07Var3.b--;
                    }
                    boolean z2 = false;
                    boolean z3 = p07Var.b > 0;
                    boolean z4 = p07Var2.b > 0;
                    boolean z5 = p07Var3.b > 0;
                    if (defaultDebugIndicationInstance.isPressed != z3) {
                        defaultDebugIndicationInstance.isPressed = z3;
                        z2 = true;
                    }
                    if (defaultDebugIndicationInstance.isHovered != z4) {
                        defaultDebugIndicationInstance.isHovered = z4;
                        z2 = true;
                    }
                    if (defaultDebugIndicationInstance.isFocused != z5) {
                        defaultDebugIndicationInstance.isFocused = z5;
                    } else {
                        z = z2;
                    }
                    if (z) {
                        DrawModifierNodeKt.invalidateDraw(defaultDebugIndicationInstance);
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
