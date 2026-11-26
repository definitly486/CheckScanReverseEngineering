package androidx.compose.foundation.text.input.internal;

import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.MutableState;
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
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.text.input.internal.DragAndDropHoverInteractionKt$collectIsDragAndDropHoveredAsState$1$1", f = "DragAndDropHoverInteraction.kt", l = {57}, m = "invokeSuspend", v = 1)
public final class DragAndDropHoverInteractionKt$collectIsDragAndDropHoveredAsState$1$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ MutableState<Boolean> $isHovered;
    final /* synthetic */ InteractionSource $this_collectIsDragAndDropHoveredAsState;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DragAndDropHoverInteractionKt$collectIsDragAndDropHoveredAsState$1$1(InteractionSource interactionSource, MutableState<Boolean> mutableState, e02<? super DragAndDropHoverInteractionKt$collectIsDragAndDropHoveredAsState$1$1> e02Var) {
        super(2, e02Var);
        this.$this_collectIsDragAndDropHoveredAsState = interactionSource;
        this.$isHovered = mutableState;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new DragAndDropHoverInteractionKt$collectIsDragAndDropHoveredAsState$1$1(this.$this_collectIsDragAndDropHoveredAsState, this.$isHovered, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((DragAndDropHoverInteractionKt$collectIsDragAndDropHoveredAsState$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            final ArrayList arrayList = new ArrayList();
            hd3<Interaction> interactions = this.$this_collectIsDragAndDropHoveredAsState.getInteractions();
            final MutableState<Boolean> mutableState = this.$isHovered;
            id3<? super Interaction> id3Var = new id3() { // from class: androidx.compose.foundation.text.input.internal.DragAndDropHoverInteractionKt$collectIsDragAndDropHoveredAsState$1$1.1
                public final Object emit(Interaction interaction, e02<? super j59> e02Var) {
                    if (interaction instanceof DragAndDropHoverInteraction.Enter) {
                        arrayList.add(interaction);
                    } else if (interaction instanceof DragAndDropHoverInteraction.Exit) {
                        arrayList.remove(((DragAndDropHoverInteraction.Exit) interaction).getEnter());
                    }
                    mutableState.setValue(Boolean.valueOf(!arrayList.isEmpty()));
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
