package androidx.compose.ui.text.style;

import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class TextIndent {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private static final TextIndent None = new TextIndent(0, 0, 3, null);
    private final long firstLine;
    private final long restLine;

    public /* synthetic */ TextIndent(long j, long j2, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? TextUnitKt.getSp(0) : j, (i & 2) != 0 ? TextUnitKt.getSp(0) : j2, null);
    }

    /* JADX INFO: renamed from: copy-NB67dxo$default, reason: not valid java name */
    public static /* synthetic */ TextIndent m8948copyNB67dxo$default(TextIndent textIndent, long j, long j2, int i, Object obj) {
        if ((i & 1) != 0) {
            j = textIndent.firstLine;
        }
        if ((i & 2) != 0) {
            j2 = textIndent.restLine;
        }
        return textIndent.m8949copyNB67dxo(j, j2);
    }

    /* JADX INFO: renamed from: copy-NB67dxo, reason: not valid java name */
    public final TextIndent m8949copyNB67dxo(long j, long j2) {
        return new TextIndent(j, j2, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextIndent)) {
            return false;
        }
        TextIndent textIndent = (TextIndent) obj;
        return TextUnit.m9233equalsimpl0(this.firstLine, textIndent.firstLine) && TextUnit.m9233equalsimpl0(this.restLine, textIndent.restLine);
    }

    /* JADX INFO: renamed from: getFirstLine-XSAIIZE, reason: not valid java name */
    public final long m8950getFirstLineXSAIIZE() {
        return this.firstLine;
    }

    /* JADX INFO: renamed from: getRestLine-XSAIIZE, reason: not valid java name */
    public final long m8951getRestLineXSAIIZE() {
        return this.restLine;
    }

    public int hashCode() {
        return TextUnit.m9237hashCodeimpl(this.restLine) + (TextUnit.m9237hashCodeimpl(this.firstLine) * 31);
    }

    public String toString() {
        return "TextIndent(firstLine=" + ((Object) TextUnit.m9243toStringimpl(this.firstLine)) + ", restLine=" + ((Object) TextUnit.m9243toStringimpl(this.restLine)) + ')';
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public static /* synthetic */ void getNone$annotations() {
        }

        public final TextIndent getNone() {
            return TextIndent.None;
        }

        private Companion() {
        }
    }

    private TextIndent(long j, long j2) {
        this.firstLine = j;
        this.restLine = j2;
    }

    public /* synthetic */ TextIndent(long j, long j2, jh2 jh2Var) {
        this(j, j2);
    }
}
