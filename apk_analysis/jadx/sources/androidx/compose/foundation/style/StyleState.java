package androidx.compose.foundation.style;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.ui.state.ToggleableState;
import defpackage.e02;
import defpackage.j59;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public abstract class StyleState {
    public static final int $stable = 0;

    public /* synthetic */ StyleState(jh2 jh2Var) {
        this();
    }

    public abstract <T> T get(StyleStateKey<T> styleStateKey);

    public abstract InteractionSource getInteractionSource$foundation();

    public abstract ToggleableState getTriStateToggle();

    public abstract boolean isChecked();

    public abstract boolean isEnabled();

    public abstract boolean isFocused();

    public abstract boolean isHovered();

    public abstract boolean isPressed();

    public abstract boolean isSelected();

    public abstract Object processInteractions$foundation(InteractionSource interactionSource, e02<? super j59> e02Var);

    private StyleState() {
    }
}
