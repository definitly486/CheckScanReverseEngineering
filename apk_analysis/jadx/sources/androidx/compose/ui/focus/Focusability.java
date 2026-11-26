package androidx.compose.ui.focus;

import androidx.compose.ui.input.InputMode;
import androidx.compose.ui.input.InputModeManager;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import defpackage.ah;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class Focusability {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Always = m5915constructorimpl(1);
    private static final int SystemDefined = m5915constructorimpl(0);
    private static final int Never = m5915constructorimpl(2);

    private /* synthetic */ Focusability(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Focusability m5913boximpl(int i) {
        return new Focusability(i);
    }

    /* JADX INFO: renamed from: canFocus-impl$ui, reason: not valid java name */
    public static final boolean m5914canFocusimpl$ui(int i, CompositionLocalConsumerModifierNode compositionLocalConsumerModifierNode) {
        if (m5917equalsimpl0(i, Always)) {
            return true;
        }
        if (m5917equalsimpl0(i, SystemDefined)) {
            return !InputMode.m7038equalsimpl0(((InputModeManager) CompositionLocalConsumerModifierNodeKt.currentValueOf(compositionLocalConsumerModifierNode, CompositionLocalsKt.getLocalInputModeManager())).mo7045getInputModeaOaMEAU(), InputMode.Companion.m7043getTouchaOaMEAU());
        }
        if (m5917equalsimpl0(i, Never)) {
            return false;
        }
        ah.f("Unknown Focusability");
        return false;
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static int m5915constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m5916equalsimpl(int i, Object obj) {
        return (obj instanceof Focusability) && i == ((Focusability) obj).m5920unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m5917equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m5918hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m5919toStringimpl(int i) {
        if (m5917equalsimpl0(i, Always)) {
            return "Always";
        }
        if (m5917equalsimpl0(i, SystemDefined)) {
            return "SystemDefined";
        }
        if (m5917equalsimpl0(i, Never)) {
            return "Never";
        }
        ah.f("Unknown Focusability");
        return null;
    }

    public boolean equals(Object obj) {
        return m5916equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m5918hashCodeimpl(this.value);
    }

    public String toString() {
        return m5919toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m5920unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getAlways-LCbbffg, reason: not valid java name */
        public final int m5921getAlwaysLCbbffg() {
            return Focusability.Always;
        }

        /* JADX INFO: renamed from: getNever-LCbbffg, reason: not valid java name */
        public final int m5922getNeverLCbbffg() {
            return Focusability.Never;
        }

        /* JADX INFO: renamed from: getSystemDefined-LCbbffg, reason: not valid java name */
        public final int m5923getSystemDefinedLCbbffg() {
            return Focusability.SystemDefined;
        }

        private Companion() {
        }
    }
}
