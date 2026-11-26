package androidx.compose.ui;

import androidx.webkit.Profile;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class FrameRateCategory {
    private final float value;
    public static final Companion Companion = new Companion(null);
    private static final float Default = m5657constructorimpl(Float.NaN);
    private static final float Normal = m5657constructorimpl(-3.0f);
    private static final float High = m5657constructorimpl(-4.0f);

    private /* synthetic */ FrameRateCategory(float f) {
        this.value = f;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ FrameRateCategory m5656boximpl(float f) {
        return new FrameRateCategory(f);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static float m5657constructorimpl(float f) {
        return f;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m5658equalsimpl(float f, Object obj) {
        return (obj instanceof FrameRateCategory) && Float.compare(f, ((FrameRateCategory) obj).m5662unboximpl()) == 0;
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m5659equalsimpl0(float f, float f2) {
        return Float.compare(f, f2) == 0;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m5660hashCodeimpl(float f) {
        return Float.hashCode(f);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m5661toStringimpl(float f) {
        if (f == -3.0f) {
            return "Normal";
        }
        return f == -4.0f ? "High" : Profile.DEFAULT_PROFILE_NAME;
    }

    public boolean equals(Object obj) {
        return m5658equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m5660hashCodeimpl(this.value);
    }

    public String toString() {
        return m5661toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ float m5662unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getDefault-NSsRyOo, reason: not valid java name */
        public final float m5663getDefaultNSsRyOo() {
            return FrameRateCategory.Default;
        }

        /* JADX INFO: renamed from: getHigh-NSsRyOo, reason: not valid java name */
        public final float m5664getHighNSsRyOo() {
            return FrameRateCategory.High;
        }

        /* JADX INFO: renamed from: getNormal-NSsRyOo, reason: not valid java name */
        public final float m5665getNormalNSsRyOo() {
            return FrameRateCategory.Normal;
        }

        private Companion() {
        }
    }
}
