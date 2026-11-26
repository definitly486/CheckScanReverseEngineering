package androidx.compose.ui.graphics.colorspace;

import androidx.exifinterface.media.ExifInterface;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class RenderIntent {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Perceptual = m6683constructorimpl(0);
    private static final int Relative = m6683constructorimpl(1);
    private static final int Saturation = m6683constructorimpl(2);
    private static final int Absolute = m6683constructorimpl(3);

    private /* synthetic */ RenderIntent(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ RenderIntent m6682boximpl(int i) {
        return new RenderIntent(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m6683constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m6684equalsimpl(int i, Object obj) {
        return (obj instanceof RenderIntent) && i == ((RenderIntent) obj).m6688unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m6685equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m6686hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m6687toStringimpl(int i) {
        if (m6685equalsimpl0(i, Perceptual)) {
            return "Perceptual";
        }
        if (m6685equalsimpl0(i, Relative)) {
            return "Relative";
        }
        if (m6685equalsimpl0(i, Saturation)) {
            return ExifInterface.TAG_SATURATION;
        }
        return m6685equalsimpl0(i, Absolute) ? "Absolute" : "Unknown";
    }

    public boolean equals(Object obj) {
        return m6684equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m6686hashCodeimpl(this.value);
    }

    public String toString() {
        return m6687toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m6688unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getAbsolute-uksYyKA, reason: not valid java name */
        public final int m6689getAbsoluteuksYyKA() {
            return RenderIntent.Absolute;
        }

        /* JADX INFO: renamed from: getPerceptual-uksYyKA, reason: not valid java name */
        public final int m6690getPerceptualuksYyKA() {
            return RenderIntent.Perceptual;
        }

        /* JADX INFO: renamed from: getRelative-uksYyKA, reason: not valid java name */
        public final int m6691getRelativeuksYyKA() {
            return RenderIntent.Relative;
        }

        /* JADX INFO: renamed from: getSaturation-uksYyKA, reason: not valid java name */
        public final int m6692getSaturationuksYyKA() {
            return RenderIntent.Saturation;
        }

        private Companion() {
        }
    }
}
