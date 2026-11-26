package androidx.compose.foundation.text;

import androidx.collection.MutableObjectList;
import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.HoverInteraction;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.SnapshotIntStateKt;
import defpackage.a32;
import defpackage.e02;
import defpackage.id3;
import defpackage.j59;

/* JADX INFO: loaded from: classes.dex */
public final class LinkStateInteractionSourceObserver {
    public static final int $stable = 0;
    private final InteractionSource interactionSource;
    private final int Focused = 1;
    private final int Hovered = 2;
    private final int Pressed = 4;
    private final MutableIntState interactionState = SnapshotIntStateKt.mutableIntStateOf(0);

    public LinkStateInteractionSourceObserver(InteractionSource interactionSource) {
        this.interactionSource = interactionSource;
    }

    public final Object collectInteractionsForLinks(e02<? super j59> e02Var) {
        final MutableObjectList mutableObjectList = new MutableObjectList(0, 1, null);
        Object objCollect = this.interactionSource.getInteractions().collect(new id3() { // from class: androidx.compose.foundation.text.LinkStateInteractionSourceObserver.collectInteractionsForLinks.2
            public final Object emit(Interaction interaction, e02<? super j59> e02Var2) {
                int i;
                if ((interaction instanceof HoverInteraction.Enter) || (interaction instanceof FocusInteraction.Focus) || (interaction instanceof PressInteraction.Press)) {
                    mutableObjectList.add(interaction);
                } else if (interaction instanceof HoverInteraction.Exit) {
                    mutableObjectList.remove(((HoverInteraction.Exit) interaction).getEnter());
                } else if (interaction instanceof FocusInteraction.Unfocus) {
                    mutableObjectList.remove(((FocusInteraction.Unfocus) interaction).getFocus());
                } else if (interaction instanceof PressInteraction.Release) {
                    mutableObjectList.remove(((PressInteraction.Release) interaction).getPress());
                } else if (interaction instanceof PressInteraction.Cancel) {
                    mutableObjectList.remove(((PressInteraction.Cancel) interaction).getPress());
                }
                MutableObjectList<Interaction> mutableObjectList2 = mutableObjectList;
                LinkStateInteractionSourceObserver linkStateInteractionSourceObserver = this;
                Object[] objArr = mutableObjectList2.content;
                int i2 = mutableObjectList2._size;
                int i3 = 0;
                for (int i4 = 0; i4 < i2; i4++) {
                    Interaction interaction2 = (Interaction) objArr[i4];
                    if (interaction2 instanceof HoverInteraction.Enter) {
                        i = linkStateInteractionSourceObserver.Hovered;
                    } else if (interaction2 instanceof FocusInteraction.Focus) {
                        i = linkStateInteractionSourceObserver.Focused;
                    } else {
                        if (interaction2 instanceof PressInteraction.Press) {
                            i = linkStateInteractionSourceObserver.Pressed;
                        }
                    }
                    i3 |= i;
                }
                this.interactionState.setIntValue(i3);
                return j59.a;
            }

            @Override // defpackage.id3
            public /* bridge */ /* synthetic */ Object emit(Object obj, e02 e02Var2) {
                return emit((Interaction) obj, (e02<? super j59>) e02Var2);
            }
        }, e02Var);
        return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
    }

    public final boolean isFocused() {
        return (this.Focused & this.interactionState.getIntValue()) != 0;
    }

    public final boolean isHovered() {
        return (this.Hovered & this.interactionState.getIntValue()) != 0;
    }

    public final boolean isPressed() {
        return (this.Pressed & this.interactionState.getIntValue()) != 0;
    }
}
