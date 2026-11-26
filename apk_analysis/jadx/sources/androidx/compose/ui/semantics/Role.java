package androidx.compose.ui.semantics;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class Role {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Button = m8255constructorimpl(0);
    private static final int Checkbox = m8255constructorimpl(1);
    private static final int Switch = m8255constructorimpl(2);
    private static final int RadioButton = m8255constructorimpl(3);
    private static final int Tab = m8255constructorimpl(4);
    private static final int Image = m8255constructorimpl(5);
    private static final int DropdownList = m8255constructorimpl(6);
    private static final int ValuePicker = m8255constructorimpl(7);
    private static final int Carousel = m8255constructorimpl(8);

    private /* synthetic */ Role(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Role m8254boximpl(int i) {
        return new Role(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static int m8255constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m8256equalsimpl(int i, Object obj) {
        return (obj instanceof Role) && i == ((Role) obj).m8260unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m8257equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m8258hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m8259toStringimpl(int i) {
        if (m8257equalsimpl0(i, Button)) {
            return "Button";
        }
        if (m8257equalsimpl0(i, Checkbox)) {
            return "Checkbox";
        }
        if (m8257equalsimpl0(i, Switch)) {
            return "Switch";
        }
        if (m8257equalsimpl0(i, RadioButton)) {
            return "RadioButton";
        }
        if (m8257equalsimpl0(i, Tab)) {
            return "Tab";
        }
        if (m8257equalsimpl0(i, Image)) {
            return "Image";
        }
        if (m8257equalsimpl0(i, DropdownList)) {
            return "DropdownList";
        }
        if (m8257equalsimpl0(i, ValuePicker)) {
            return "Picker";
        }
        return m8257equalsimpl0(i, Carousel) ? "Carousel" : "Unknown";
    }

    public boolean equals(Object obj) {
        return m8256equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m8258hashCodeimpl(this.value);
    }

    public String toString() {
        return m8259toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m8260unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getButton-o7Vup1c, reason: not valid java name */
        public final int m8261getButtono7Vup1c() {
            return Role.Button;
        }

        /* JADX INFO: renamed from: getCarousel-o7Vup1c, reason: not valid java name */
        public final int m8262getCarouselo7Vup1c() {
            return Role.Carousel;
        }

        /* JADX INFO: renamed from: getCheckbox-o7Vup1c, reason: not valid java name */
        public final int m8263getCheckboxo7Vup1c() {
            return Role.Checkbox;
        }

        /* JADX INFO: renamed from: getDropdownList-o7Vup1c, reason: not valid java name */
        public final int m8264getDropdownListo7Vup1c() {
            return Role.DropdownList;
        }

        /* JADX INFO: renamed from: getImage-o7Vup1c, reason: not valid java name */
        public final int m8265getImageo7Vup1c() {
            return Role.Image;
        }

        /* JADX INFO: renamed from: getRadioButton-o7Vup1c, reason: not valid java name */
        public final int m8266getRadioButtono7Vup1c() {
            return Role.RadioButton;
        }

        /* JADX INFO: renamed from: getSwitch-o7Vup1c, reason: not valid java name */
        public final int m8267getSwitcho7Vup1c() {
            return Role.Switch;
        }

        /* JADX INFO: renamed from: getTab-o7Vup1c, reason: not valid java name */
        public final int m8268getTabo7Vup1c() {
            return Role.Tab;
        }

        /* JADX INFO: renamed from: getValuePicker-o7Vup1c, reason: not valid java name */
        public final int m8269getValuePickero7Vup1c() {
            return Role.ValuePicker;
        }

        private Companion() {
        }
    }
}
