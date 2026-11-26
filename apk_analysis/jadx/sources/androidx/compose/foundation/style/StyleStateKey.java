package androidx.compose.foundation.style;

import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.ui.state.ToggleableState;
import defpackage.a32;
import defpackage.e02;
import defpackage.j59;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public class StyleStateKey<T> {
    public static final int $stable = 0;
    public static final Companion Companion;
    private static final StyleStateKey<Boolean> Enabled = new BooleanPredefinedKey(16, true);
    private static final StyleStateKey<Boolean> Focused;
    private static final StyleStateKey<Boolean> Hovered;
    private static final StyleStateKey<Boolean> Pressed;
    private static final StyleStateKey<Boolean> Selected;
    private final T defaultValue;

    static {
        jh2 jh2Var = null;
        Companion = new Companion(jh2Var);
        boolean z = false;
        int i = 2;
        Pressed = new BooleanPredefinedKey(1, z, i, jh2Var);
        Hovered = new BooleanPredefinedKey(i, z, i, jh2Var);
        Focused = new BooleanPredefinedKey(4, z, i, jh2Var);
        Selected = new BooleanPredefinedKey(8, z, i, jh2Var);
    }

    public StyleStateKey(T t) {
        this.defaultValue = t;
    }

    public static /* synthetic */ <T> Object processInteraction$suspendImpl(StyleStateKey<T> styleStateKey, Interaction interaction, MutableStyleState mutableStyleState, e02<? super j59> e02Var) {
        return j59.a;
    }

    public final T getDefaultValue$foundation() {
        return this.defaultValue;
    }

    public T getValueFrom$foundation(MutableStyleState mutableStyleState) {
        return (T) mutableStyleState.getCustomValue$foundation(this);
    }

    public Object processInteraction(Interaction interaction, MutableStyleState mutableStyleState, e02<? super j59> e02Var) {
        return processInteraction$suspendImpl(this, interaction, mutableStyleState, e02Var);
    }

    public final Object processInteractionAccess$foundation(Interaction interaction, MutableStyleState mutableStyleState, e02<? super j59> e02Var) {
        Object objProcessInteraction = processInteraction(interaction, mutableStyleState, e02Var);
        return objProcessInteraction == a32.COROUTINE_SUSPENDED ? objProcessInteraction : j59.a;
    }

    public void setValueTo$foundation(T t, MutableStyleState mutableStyleState) {
        mutableStyleState.setCustomValue$foundation(this, t);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final StyleStateKey<Boolean> getEnabled() {
            return StyleStateKey.Enabled;
        }

        public final StyleStateKey<Boolean> getFocused() {
            return StyleStateKey.Focused;
        }

        public final StyleStateKey<Boolean> getHovered() {
            return StyleStateKey.Hovered;
        }

        public final StyleStateKey<Boolean> getPressed() {
            return StyleStateKey.Pressed;
        }

        public final StyleStateKey<Boolean> getSelected() {
            return StyleStateKey.Selected;
        }

        public final StyleStateKey<ToggleableState> getToggle() {
            return PredefinedToggleStateKey.INSTANCE;
        }

        private Companion() {
        }
    }
}
