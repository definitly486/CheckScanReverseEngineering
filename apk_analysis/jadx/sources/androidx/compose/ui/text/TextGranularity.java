package androidx.compose.ui.text;

import defpackage.jh2;
import defpackage.qz0;

/* JADX INFO: loaded from: classes2.dex */
public final class TextGranularity {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Character = m8447constructorimpl(0);
    private static final int Word = m8447constructorimpl(1);

    private /* synthetic */ TextGranularity(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ TextGranularity m8446boximpl(int i) {
        return new TextGranularity(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static int m8447constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m8448equalsimpl(int i, Object obj) {
        return (obj instanceof TextGranularity) && i == ((TextGranularity) obj).m8452unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m8449equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m8450hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m8451toStringimpl(int i) {
        return qz0.d("TextGranularity(value=", i, ')');
    }

    public boolean equals(Object obj) {
        return m8448equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m8450hashCodeimpl(this.value);
    }

    public String toString() {
        return m8451toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m8452unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getCharacter-DRrd7Zo, reason: not valid java name */
        public final int m8453getCharacterDRrd7Zo() {
            return TextGranularity.Character;
        }

        /* JADX INFO: renamed from: getWord-DRrd7Zo, reason: not valid java name */
        public final int m8454getWordDRrd7Zo() {
            return TextGranularity.Word;
        }

        private Companion() {
        }
    }
}
