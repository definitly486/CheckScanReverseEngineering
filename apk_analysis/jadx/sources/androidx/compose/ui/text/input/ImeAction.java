package androidx.compose.ui.text.input;

import androidx.webkit.Profile;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class ImeAction {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Unspecified = m8657constructorimpl(-1);
    private static final int Default = m8657constructorimpl(1);
    private static final int None = m8657constructorimpl(0);
    private static final int Go = m8657constructorimpl(2);
    private static final int Search = m8657constructorimpl(3);
    private static final int Send = m8657constructorimpl(4);
    private static final int Previous = m8657constructorimpl(5);
    private static final int Next = m8657constructorimpl(6);
    private static final int Done = m8657constructorimpl(7);

    private /* synthetic */ ImeAction(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ ImeAction m8656boximpl(int i) {
        return new ImeAction(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static int m8657constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m8658equalsimpl(int i, Object obj) {
        return (obj instanceof ImeAction) && i == ((ImeAction) obj).m8662unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m8659equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m8660hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m8661toStringimpl(int i) {
        if (m8659equalsimpl0(i, Unspecified)) {
            return "Unspecified";
        }
        if (m8659equalsimpl0(i, None)) {
            return "None";
        }
        if (m8659equalsimpl0(i, Default)) {
            return Profile.DEFAULT_PROFILE_NAME;
        }
        if (m8659equalsimpl0(i, Go)) {
            return "Go";
        }
        if (m8659equalsimpl0(i, Search)) {
            return "Search";
        }
        if (m8659equalsimpl0(i, Send)) {
            return "Send";
        }
        if (m8659equalsimpl0(i, Previous)) {
            return "Previous";
        }
        if (m8659equalsimpl0(i, Next)) {
            return "Next";
        }
        return m8659equalsimpl0(i, Done) ? "Done" : "Invalid";
    }

    public boolean equals(Object obj) {
        return m8658equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m8660hashCodeimpl(this.value);
    }

    public String toString() {
        return m8661toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m8662unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getDefault-eUduSuo$annotations, reason: not valid java name */
        public static /* synthetic */ void m8663getDefaulteUduSuo$annotations() {
        }

        /* JADX INFO: renamed from: getDone-eUduSuo$annotations, reason: not valid java name */
        public static /* synthetic */ void m8664getDoneeUduSuo$annotations() {
        }

        /* JADX INFO: renamed from: getGo-eUduSuo$annotations, reason: not valid java name */
        public static /* synthetic */ void m8665getGoeUduSuo$annotations() {
        }

        /* JADX INFO: renamed from: getNext-eUduSuo$annotations, reason: not valid java name */
        public static /* synthetic */ void m8666getNexteUduSuo$annotations() {
        }

        /* JADX INFO: renamed from: getNone-eUduSuo$annotations, reason: not valid java name */
        public static /* synthetic */ void m8667getNoneeUduSuo$annotations() {
        }

        /* JADX INFO: renamed from: getPrevious-eUduSuo$annotations, reason: not valid java name */
        public static /* synthetic */ void m8668getPreviouseUduSuo$annotations() {
        }

        /* JADX INFO: renamed from: getSearch-eUduSuo$annotations, reason: not valid java name */
        public static /* synthetic */ void m8669getSearcheUduSuo$annotations() {
        }

        /* JADX INFO: renamed from: getSend-eUduSuo$annotations, reason: not valid java name */
        public static /* synthetic */ void m8670getSendeUduSuo$annotations() {
        }

        /* JADX INFO: renamed from: getUnspecified-eUduSuo$annotations, reason: not valid java name */
        public static /* synthetic */ void m8671getUnspecifiedeUduSuo$annotations() {
        }

        /* JADX INFO: renamed from: getDefault-eUduSuo, reason: not valid java name */
        public final int m8672getDefaulteUduSuo() {
            return ImeAction.Default;
        }

        /* JADX INFO: renamed from: getDone-eUduSuo, reason: not valid java name */
        public final int m8673getDoneeUduSuo() {
            return ImeAction.Done;
        }

        /* JADX INFO: renamed from: getGo-eUduSuo, reason: not valid java name */
        public final int m8674getGoeUduSuo() {
            return ImeAction.Go;
        }

        /* JADX INFO: renamed from: getNext-eUduSuo, reason: not valid java name */
        public final int m8675getNexteUduSuo() {
            return ImeAction.Next;
        }

        /* JADX INFO: renamed from: getNone-eUduSuo, reason: not valid java name */
        public final int m8676getNoneeUduSuo() {
            return ImeAction.None;
        }

        /* JADX INFO: renamed from: getPrevious-eUduSuo, reason: not valid java name */
        public final int m8677getPreviouseUduSuo() {
            return ImeAction.Previous;
        }

        /* JADX INFO: renamed from: getSearch-eUduSuo, reason: not valid java name */
        public final int m8678getSearcheUduSuo() {
            return ImeAction.Search;
        }

        /* JADX INFO: renamed from: getSend-eUduSuo, reason: not valid java name */
        public final int m8679getSendeUduSuo() {
            return ImeAction.Send;
        }

        /* JADX INFO: renamed from: getUnspecified-eUduSuo, reason: not valid java name */
        public final int m8680getUnspecifiedeUduSuo() {
            return ImeAction.Unspecified;
        }

        private Companion() {
        }
    }
}
