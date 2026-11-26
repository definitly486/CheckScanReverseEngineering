package androidx.compose.foundation.text.input;

import defpackage.jh2;
import defpackage.qz0;

/* JADX INFO: loaded from: classes.dex */
public final class TextHighlightType {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int HandwritingSelectPreview = m2672constructorimpl(0);
    private static final int HandwritingDeletePreview = m2672constructorimpl(1);

    private /* synthetic */ TextHighlightType(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ TextHighlightType m2671boximpl(int i) {
        return new TextHighlightType(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static int m2672constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m2673equalsimpl(int i, Object obj) {
        return (obj instanceof TextHighlightType) && i == ((TextHighlightType) obj).m2677unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2674equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m2675hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m2676toStringimpl(int i) {
        return qz0.d("TextHighlightType(value=", i, ')');
    }

    public boolean equals(Object obj) {
        return m2673equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m2675hashCodeimpl(this.value);
    }

    public String toString() {
        return m2676toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m2677unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getHandwritingDeletePreview-s-xJuwY, reason: not valid java name */
        public final int m2678getHandwritingDeletePreviewsxJuwY() {
            return TextHighlightType.HandwritingDeletePreview;
        }

        /* JADX INFO: renamed from: getHandwritingSelectPreview-s-xJuwY, reason: not valid java name */
        public final int m2679getHandwritingSelectPreviewsxJuwY() {
            return TextHighlightType.HandwritingSelectPreview;
        }

        private Companion() {
        }
    }
}
