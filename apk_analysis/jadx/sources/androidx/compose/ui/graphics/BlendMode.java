package androidx.compose.ui.graphics;

import androidx.exifinterface.media.ExifInterface;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class BlendMode {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Clear = m6139constructorimpl(0);
    private static final int Src = m6139constructorimpl(1);
    private static final int Dst = m6139constructorimpl(2);
    private static final int SrcOver = m6139constructorimpl(3);
    private static final int DstOver = m6139constructorimpl(4);
    private static final int SrcIn = m6139constructorimpl(5);
    private static final int DstIn = m6139constructorimpl(6);
    private static final int SrcOut = m6139constructorimpl(7);
    private static final int DstOut = m6139constructorimpl(8);
    private static final int SrcAtop = m6139constructorimpl(9);
    private static final int DstAtop = m6139constructorimpl(10);
    private static final int Xor = m6139constructorimpl(11);
    private static final int Plus = m6139constructorimpl(12);
    private static final int Modulate = m6139constructorimpl(13);
    private static final int Screen = m6139constructorimpl(14);
    private static final int Overlay = m6139constructorimpl(15);
    private static final int Darken = m6139constructorimpl(16);
    private static final int Lighten = m6139constructorimpl(17);
    private static final int ColorDodge = m6139constructorimpl(18);
    private static final int ColorBurn = m6139constructorimpl(19);
    private static final int Hardlight = m6139constructorimpl(20);
    private static final int Softlight = m6139constructorimpl(21);
    private static final int Difference = m6139constructorimpl(22);
    private static final int Exclusion = m6139constructorimpl(23);
    private static final int Multiply = m6139constructorimpl(24);
    private static final int Hue = m6139constructorimpl(25);
    private static final int Saturation = m6139constructorimpl(26);
    private static final int Color = m6139constructorimpl(27);
    private static final int Luminosity = m6139constructorimpl(28);

    private /* synthetic */ BlendMode(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ BlendMode m6138boximpl(int i) {
        return new BlendMode(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m6139constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m6140equalsimpl(int i, Object obj) {
        return (obj instanceof BlendMode) && i == ((BlendMode) obj).m6144unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m6141equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m6142hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m6143toStringimpl(int i) {
        if (m6141equalsimpl0(i, Clear)) {
            return "Clear";
        }
        if (m6141equalsimpl0(i, Src)) {
            return "Src";
        }
        if (m6141equalsimpl0(i, Dst)) {
            return "Dst";
        }
        if (m6141equalsimpl0(i, SrcOver)) {
            return "SrcOver";
        }
        if (m6141equalsimpl0(i, DstOver)) {
            return "DstOver";
        }
        if (m6141equalsimpl0(i, SrcIn)) {
            return "SrcIn";
        }
        if (m6141equalsimpl0(i, DstIn)) {
            return "DstIn";
        }
        if (m6141equalsimpl0(i, SrcOut)) {
            return "SrcOut";
        }
        if (m6141equalsimpl0(i, DstOut)) {
            return "DstOut";
        }
        if (m6141equalsimpl0(i, SrcAtop)) {
            return "SrcAtop";
        }
        if (m6141equalsimpl0(i, DstAtop)) {
            return "DstAtop";
        }
        if (m6141equalsimpl0(i, Xor)) {
            return "Xor";
        }
        if (m6141equalsimpl0(i, Plus)) {
            return "Plus";
        }
        if (m6141equalsimpl0(i, Modulate)) {
            return "Modulate";
        }
        if (m6141equalsimpl0(i, Screen)) {
            return "Screen";
        }
        if (m6141equalsimpl0(i, Overlay)) {
            return "Overlay";
        }
        if (m6141equalsimpl0(i, Darken)) {
            return "Darken";
        }
        if (m6141equalsimpl0(i, Lighten)) {
            return "Lighten";
        }
        if (m6141equalsimpl0(i, ColorDodge)) {
            return "ColorDodge";
        }
        if (m6141equalsimpl0(i, ColorBurn)) {
            return "ColorBurn";
        }
        if (m6141equalsimpl0(i, Hardlight)) {
            return "HardLight";
        }
        if (m6141equalsimpl0(i, Softlight)) {
            return "Softlight";
        }
        if (m6141equalsimpl0(i, Difference)) {
            return "Difference";
        }
        if (m6141equalsimpl0(i, Exclusion)) {
            return "Exclusion";
        }
        if (m6141equalsimpl0(i, Multiply)) {
            return "Multiply";
        }
        if (m6141equalsimpl0(i, Hue)) {
            return "Hue";
        }
        if (m6141equalsimpl0(i, Saturation)) {
            return ExifInterface.TAG_SATURATION;
        }
        if (m6141equalsimpl0(i, Color)) {
            return "Color";
        }
        return m6141equalsimpl0(i, Luminosity) ? "Luminosity" : "Unknown";
    }

    public boolean equals(Object obj) {
        return m6140equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m6142hashCodeimpl(this.value);
    }

    public String toString() {
        return m6143toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m6144unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getClear-0nO6VwU, reason: not valid java name */
        public final int m6145getClear0nO6VwU() {
            return BlendMode.Clear;
        }

        /* JADX INFO: renamed from: getColor-0nO6VwU, reason: not valid java name */
        public final int m6146getColor0nO6VwU() {
            return BlendMode.Color;
        }

        /* JADX INFO: renamed from: getColorBurn-0nO6VwU, reason: not valid java name */
        public final int m6147getColorBurn0nO6VwU() {
            return BlendMode.ColorBurn;
        }

        /* JADX INFO: renamed from: getColorDodge-0nO6VwU, reason: not valid java name */
        public final int m6148getColorDodge0nO6VwU() {
            return BlendMode.ColorDodge;
        }

        /* JADX INFO: renamed from: getDarken-0nO6VwU, reason: not valid java name */
        public final int m6149getDarken0nO6VwU() {
            return BlendMode.Darken;
        }

        /* JADX INFO: renamed from: getDifference-0nO6VwU, reason: not valid java name */
        public final int m6150getDifference0nO6VwU() {
            return BlendMode.Difference;
        }

        /* JADX INFO: renamed from: getDst-0nO6VwU, reason: not valid java name */
        public final int m6151getDst0nO6VwU() {
            return BlendMode.Dst;
        }

        /* JADX INFO: renamed from: getDstAtop-0nO6VwU, reason: not valid java name */
        public final int m6152getDstAtop0nO6VwU() {
            return BlendMode.DstAtop;
        }

        /* JADX INFO: renamed from: getDstIn-0nO6VwU, reason: not valid java name */
        public final int m6153getDstIn0nO6VwU() {
            return BlendMode.DstIn;
        }

        /* JADX INFO: renamed from: getDstOut-0nO6VwU, reason: not valid java name */
        public final int m6154getDstOut0nO6VwU() {
            return BlendMode.DstOut;
        }

        /* JADX INFO: renamed from: getDstOver-0nO6VwU, reason: not valid java name */
        public final int m6155getDstOver0nO6VwU() {
            return BlendMode.DstOver;
        }

        /* JADX INFO: renamed from: getExclusion-0nO6VwU, reason: not valid java name */
        public final int m6156getExclusion0nO6VwU() {
            return BlendMode.Exclusion;
        }

        /* JADX INFO: renamed from: getHardlight-0nO6VwU, reason: not valid java name */
        public final int m6157getHardlight0nO6VwU() {
            return BlendMode.Hardlight;
        }

        /* JADX INFO: renamed from: getHue-0nO6VwU, reason: not valid java name */
        public final int m6158getHue0nO6VwU() {
            return BlendMode.Hue;
        }

        /* JADX INFO: renamed from: getLighten-0nO6VwU, reason: not valid java name */
        public final int m6159getLighten0nO6VwU() {
            return BlendMode.Lighten;
        }

        /* JADX INFO: renamed from: getLuminosity-0nO6VwU, reason: not valid java name */
        public final int m6160getLuminosity0nO6VwU() {
            return BlendMode.Luminosity;
        }

        /* JADX INFO: renamed from: getModulate-0nO6VwU, reason: not valid java name */
        public final int m6161getModulate0nO6VwU() {
            return BlendMode.Modulate;
        }

        /* JADX INFO: renamed from: getMultiply-0nO6VwU, reason: not valid java name */
        public final int m6162getMultiply0nO6VwU() {
            return BlendMode.Multiply;
        }

        /* JADX INFO: renamed from: getOverlay-0nO6VwU, reason: not valid java name */
        public final int m6163getOverlay0nO6VwU() {
            return BlendMode.Overlay;
        }

        /* JADX INFO: renamed from: getPlus-0nO6VwU, reason: not valid java name */
        public final int m6164getPlus0nO6VwU() {
            return BlendMode.Plus;
        }

        /* JADX INFO: renamed from: getSaturation-0nO6VwU, reason: not valid java name */
        public final int m6165getSaturation0nO6VwU() {
            return BlendMode.Saturation;
        }

        /* JADX INFO: renamed from: getScreen-0nO6VwU, reason: not valid java name */
        public final int m6166getScreen0nO6VwU() {
            return BlendMode.Screen;
        }

        /* JADX INFO: renamed from: getSoftlight-0nO6VwU, reason: not valid java name */
        public final int m6167getSoftlight0nO6VwU() {
            return BlendMode.Softlight;
        }

        /* JADX INFO: renamed from: getSrc-0nO6VwU, reason: not valid java name */
        public final int m6168getSrc0nO6VwU() {
            return BlendMode.Src;
        }

        /* JADX INFO: renamed from: getSrcAtop-0nO6VwU, reason: not valid java name */
        public final int m6169getSrcAtop0nO6VwU() {
            return BlendMode.SrcAtop;
        }

        /* JADX INFO: renamed from: getSrcIn-0nO6VwU, reason: not valid java name */
        public final int m6170getSrcIn0nO6VwU() {
            return BlendMode.SrcIn;
        }

        /* JADX INFO: renamed from: getSrcOut-0nO6VwU, reason: not valid java name */
        public final int m6171getSrcOut0nO6VwU() {
            return BlendMode.SrcOut;
        }

        /* JADX INFO: renamed from: getSrcOver-0nO6VwU, reason: not valid java name */
        public final int m6172getSrcOver0nO6VwU() {
            return BlendMode.SrcOver;
        }

        /* JADX INFO: renamed from: getXor-0nO6VwU, reason: not valid java name */
        public final int m6173getXor0nO6VwU() {
            return BlendMode.Xor;
        }

        private Companion() {
        }
    }
}
