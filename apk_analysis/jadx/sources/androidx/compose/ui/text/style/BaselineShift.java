package androidx.compose.ui.text.style;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class BaselineShift {
    private final float multiplier;
    public static final Companion Companion = new Companion(null);
    private static final float Superscript = m8783constructorimpl(0.5f);
    private static final float Subscript = m8783constructorimpl(-0.5f);
    private static final float None = m8783constructorimpl(0.0f);
    private static final float Unspecified = m8783constructorimpl(Float.NaN);

    private /* synthetic */ BaselineShift(float f) {
        this.multiplier = f;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ BaselineShift m8782boximpl(float f) {
        return new BaselineShift(f);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static float m8783constructorimpl(float f) {
        return f;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m8784equalsimpl(float f, Object obj) {
        return (obj instanceof BaselineShift) && Float.compare(f, ((BaselineShift) obj).m8788unboximpl()) == 0;
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m8785equalsimpl0(float f, float f2) {
        return Float.compare(f, f2) == 0;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m8786hashCodeimpl(float f) {
        return Float.hashCode(f);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m8787toStringimpl(float f) {
        return "BaselineShift(multiplier=" + f + ')';
    }

    public boolean equals(Object obj) {
        return m8784equalsimpl(this.multiplier, obj);
    }

    public final float getMultiplier() {
        return this.multiplier;
    }

    public int hashCode() {
        return m8786hashCodeimpl(this.multiplier);
    }

    public String toString() {
        return m8787toStringimpl(this.multiplier);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ float m8788unboximpl() {
        return this.multiplier;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getNone-y9eOQZs$annotations, reason: not valid java name */
        public static /* synthetic */ void m8789getNoney9eOQZs$annotations() {
        }

        /* JADX INFO: renamed from: getSubscript-y9eOQZs$annotations, reason: not valid java name */
        public static /* synthetic */ void m8790getSubscripty9eOQZs$annotations() {
        }

        /* JADX INFO: renamed from: getSuperscript-y9eOQZs$annotations, reason: not valid java name */
        public static /* synthetic */ void m8791getSuperscripty9eOQZs$annotations() {
        }

        /* JADX INFO: renamed from: getUnspecified-y9eOQZs$annotations, reason: not valid java name */
        public static /* synthetic */ void m8792getUnspecifiedy9eOQZs$annotations() {
        }

        /* JADX INFO: renamed from: getNone-y9eOQZs, reason: not valid java name */
        public final float m8793getNoney9eOQZs() {
            return BaselineShift.None;
        }

        /* JADX INFO: renamed from: getSubscript-y9eOQZs, reason: not valid java name */
        public final float m8794getSubscripty9eOQZs() {
            return BaselineShift.Subscript;
        }

        /* JADX INFO: renamed from: getSuperscript-y9eOQZs, reason: not valid java name */
        public final float m8795getSuperscripty9eOQZs() {
            return BaselineShift.Superscript;
        }

        /* JADX INFO: renamed from: getUnspecified-y9eOQZs, reason: not valid java name */
        public final float m8796getUnspecifiedy9eOQZs() {
            return BaselineShift.Unspecified;
        }

        private Companion() {
        }
    }
}
