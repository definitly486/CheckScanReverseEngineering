package androidx.compose.foundation.style;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.state.ToggleableState;
import defpackage.bd7;
import defpackage.cd7;
import defpackage.dd7;
import defpackage.dm3;
import defpackage.dm4;
import defpackage.ed7;
import defpackage.fm4;
import defpackage.gm4;
import defpackage.ix6;
import defpackage.j59;
import defpackage.kb8;

/* JADX INFO: loaded from: classes.dex */
public final class StyleStateKt {
    private static final int EnabledStateMask = 16;
    private static final int FocusedStateMask = 4;
    private static final int HoveredStateMask = 2;
    private static final int PressedStateMask = 1;
    private static final int SelectedStateMask = 8;
    private static final int ToggleStateIndeterminate = 64;
    private static final int ToggleStateMask = 96;
    private static final int ToggleStateOff = 0;
    private static final int ToggleStateOn = 32;
    private static final int ToggleStateShift = 5;

    public static final void checked(StyleScope styleScope, Style style) {
        styleScope.state(StyleStateKey.Companion.getToggle(), style, new ed7(1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean checked$lambda$0(StyleStateKey styleStateKey, StyleState styleState) {
        return styleState.isChecked();
    }

    public static final void disabled(StyleScope styleScope, Style style) {
        styleScope.state(StyleStateKey.Companion.getEnabled(), style, new cd7(1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean disabled$lambda$0(StyleStateKey styleStateKey, StyleState styleState) {
        return !styleState.isEnabled();
    }

    public static final void focused(StyleScope styleScope, Style style) {
        styleScope.state(StyleStateKey.Companion.getFocused(), style, new dm4(1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean focused$lambda$0(StyleStateKey styleStateKey, StyleState styleState) {
        return styleState.isFocused();
    }

    public static final void hovered(StyleScope styleScope, Style style) {
        styleScope.state(StyleStateKey.Companion.getHovered(), style, new dd7(1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean hovered$lambda$0(StyleStateKey styleStateKey, StyleState styleState) {
        return styleState.isHovered();
    }

    public static final void pressed(StyleScope styleScope, Style style) {
        styleScope.state(StyleStateKey.Companion.getPressed(), style, new bd7(1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean pressed$lambda$0(StyleStateKey styleStateKey, StyleState styleState) {
        return styleState.isPressed();
    }

    public static final StyleState rememberUpdatedStyleState(InteractionSource interactionSource, dm3<? super MutableStyleState, ? super Composer, ? super Integer, j59> dm3Var, Composer composer, int i, int i2) {
        if ((i2 & 2) != 0) {
            dm3Var = new dm3<MutableStyleState, Composer, Integer, j59>() { // from class: androidx.compose.foundation.style.StyleStateKt.rememberUpdatedStyleState.1
                @Override // defpackage.dm3
                public /* bridge */ /* synthetic */ j59 invoke(MutableStyleState mutableStyleState, Composer composer2, Integer num) {
                    invoke(mutableStyleState, composer2, num.intValue());
                    return j59.a;
                }

                public final void invoke(MutableStyleState mutableStyleState, Composer composer2, int i3) {
                }
            };
        }
        boolean z = (((i & 14) ^ 6) > 4 && composer.changed(interactionSource)) || (i & 6) == 4;
        Object objRememberedValue = composer.rememberedValue();
        if (z || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new MutableStyleState(interactionSource);
            composer.updateRememberedValue(objRememberedValue);
        }
        MutableStyleState mutableStyleState = (MutableStyleState) objRememberedValue;
        dm3Var.invoke(mutableStyleState, composer, Integer.valueOf(i & 112));
        return mutableStyleState;
    }

    public static final void selected(StyleScope styleScope, Style style) {
        styleScope.state(StyleStateKey.Companion.getSelected(), style, new gm4(1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean selected$lambda$0(StyleStateKey styleStateKey, StyleState styleState) {
        return styleState.isSelected();
    }

    public static final void triStateToggleIndeterminate(StyleScope styleScope, Style style) {
        styleScope.state(StyleStateKey.Companion.getToggle(), style, new kb8());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean triStateToggleIndeterminate$lambda$0(StyleStateKey styleStateKey, StyleState styleState) {
        return styleState.getTriStateToggle() == ToggleableState.Indeterminate;
    }

    public static final void triStateToggleOff(StyleScope styleScope, Style style) {
        styleScope.state(StyleStateKey.Companion.getToggle(), style, new fm4(1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean triStateToggleOff$lambda$0(StyleStateKey styleStateKey, StyleState styleState) {
        return styleState.getTriStateToggle() == ToggleableState.Off;
    }

    public static final void triStateToggleOn(StyleScope styleScope, Style style) {
        styleScope.state(StyleStateKey.Companion.getToggle(), style, new ix6(2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean triStateToggleOn$lambda$0(StyleStateKey styleStateKey, StyleState styleState) {
        return styleState.getTriStateToggle() == ToggleableState.On;
    }

    private static final int updateFromMask(int i, int i2, boolean z) {
        int i3 = i & (~i2);
        if (!z) {
            i2 = 0;
        }
        return i3 | i2;
    }
}
