package androidx.compose.foundation.style;

import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.HoverInteraction;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.snapshots.SnapshotStateMap;
import defpackage.a32;
import defpackage.ah;
import defpackage.e02;
import defpackage.id3;
import defpackage.j59;
import defpackage.r57;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class MutableStyleState$processInteractions$2<T> implements id3 {
    final /* synthetic */ InteractionSet<FocusInteraction.Focus> $focusedInteractions;
    final /* synthetic */ InteractionSet<HoverInteraction.Enter> $hoveredInteractions;
    final /* synthetic */ InteractionSet<PressInteraction.Press> $pressedInteractions;
    final /* synthetic */ MutableStyleState this$0;

    public MutableStyleState$processInteractions$2(InteractionSet<PressInteraction.Press> interactionSet, MutableStyleState mutableStyleState, InteractionSet<HoverInteraction.Enter> interactionSet2, InteractionSet<FocusInteraction.Focus> interactionSet3) {
        this.$pressedInteractions = interactionSet;
        this.this$0 = mutableStyleState;
        this.$hoveredInteractions = interactionSet2;
        this.$focusedInteractions = interactionSet3;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object emit(Interaction interaction, e02<? super j59> e02Var) {
        MutableStyleState$processInteractions$2$emit$1 mutableStyleState$processInteractions$2$emit$1;
        MutableStyleState mutableStyleState;
        Iterator<Map.Entry<StyleStateKey<?>, Object>> it;
        if (e02Var instanceof MutableStyleState$processInteractions$2$emit$1) {
            mutableStyleState$processInteractions$2$emit$1 = (MutableStyleState$processInteractions$2$emit$1) e02Var;
            int i = mutableStyleState$processInteractions$2$emit$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                mutableStyleState$processInteractions$2$emit$1.label = i - Integer.MIN_VALUE;
            } else {
                mutableStyleState$processInteractions$2$emit$1 = new MutableStyleState$processInteractions$2$emit$1(this, e02Var);
            }
        } else {
            mutableStyleState$processInteractions$2$emit$1 = new MutableStyleState$processInteractions$2$emit$1(this, e02Var);
        }
        Object obj = mutableStyleState$processInteractions$2$emit$1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = mutableStyleState$processInteractions$2$emit$1.label;
        if (i2 == 0) {
            r57.b(obj);
            if (interaction instanceof PressInteraction.Press) {
                this.$pressedInteractions.add(interaction);
                this.this$0.setPressed(true);
            } else if (interaction instanceof PressInteraction.Release) {
                this.$pressedInteractions.remove(((PressInteraction.Release) interaction).getPress());
                this.this$0.setPressed(this.$pressedInteractions.isNotEmpty());
            } else if (interaction instanceof PressInteraction.Cancel) {
                this.$pressedInteractions.remove(((PressInteraction.Cancel) interaction).getPress());
                this.this$0.setPressed(this.$pressedInteractions.isNotEmpty());
            } else if (interaction instanceof HoverInteraction.Enter) {
                this.$hoveredInteractions.add(interaction);
                this.this$0.setHovered(true);
            } else if (interaction instanceof HoverInteraction.Exit) {
                this.$hoveredInteractions.remove(((HoverInteraction.Exit) interaction).getEnter());
                this.this$0.setHovered(this.$hoveredInteractions.isNotEmpty());
            } else if (interaction instanceof FocusInteraction.Focus) {
                this.$focusedInteractions.add(interaction);
                this.this$0.setFocused(true);
            } else if (interaction instanceof FocusInteraction.Unfocus) {
                this.$focusedInteractions.remove(((FocusInteraction.Unfocus) interaction).getFocus());
                this.this$0.setFocused(this.$focusedInteractions.isNotEmpty());
            } else {
                SnapshotStateMap<StyleStateKey<?>, Object> customStates$foundation = this.this$0.getCustomStates$foundation();
                MutableStyleState mutableStyleState2 = this.this$0;
                Iterator<Map.Entry<StyleStateKey<?>, Object>> it2 = customStates$foundation.entrySet().iterator();
                mutableStyleState = mutableStyleState2;
                it = it2;
            }
            return j59.a;
        }
        if (i2 != 1) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        it = (Iterator) mutableStyleState$processInteractions$2$emit$1.L$2;
        MutableStyleState mutableStyleState3 = (MutableStyleState) mutableStyleState$processInteractions$2$emit$1.L$1;
        Interaction interaction2 = (Interaction) mutableStyleState$processInteractions$2$emit$1.L$0;
        r57.b(obj);
        mutableStyleState = mutableStyleState3;
        interaction = interaction2;
        while (it.hasNext()) {
            StyleStateKey<?> key = it.next().getKey();
            mutableStyleState$processInteractions$2$emit$1.L$0 = interaction;
            mutableStyleState$processInteractions$2$emit$1.L$1 = mutableStyleState;
            mutableStyleState$processInteractions$2$emit$1.L$2 = it;
            mutableStyleState$processInteractions$2$emit$1.label = 1;
            if (key.processInteractionAccess$foundation(interaction, mutableStyleState, mutableStyleState$processInteractions$2$emit$1) == a32Var) {
                return a32Var;
            }
        }
        return j59.a;
    }

    @Override // defpackage.id3
    public /* bridge */ /* synthetic */ Object emit(Object obj, e02 e02Var) {
        return emit((Interaction) obj, (e02<? super j59>) e02Var);
    }
}
