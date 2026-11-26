package androidx.compose.foundation.text.selection;

import androidx.compose.ui.graphics.Color;
import defpackage.jh2;
import defpackage.ln;

/* JADX INFO: loaded from: classes.dex */
public final class TextSelectionColors {
    public static final int $stable = 0;
    private final long backgroundColor;
    private final long handleColor;

    private TextSelectionColors(long j, long j2) {
        this.handleColor = j;
        this.backgroundColor = j2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextSelectionColors)) {
            return false;
        }
        TextSelectionColors textSelectionColors = (TextSelectionColors) obj;
        return Color.m6233equalsimpl0(this.handleColor, textSelectionColors.handleColor) && Color.m6233equalsimpl0(this.backgroundColor, textSelectionColors.backgroundColor);
    }

    /* JADX INFO: renamed from: getBackgroundColor-0d7_KjU, reason: not valid java name */
    public final long m3048getBackgroundColor0d7_KjU() {
        return this.backgroundColor;
    }

    /* JADX INFO: renamed from: getHandleColor-0d7_KjU, reason: not valid java name */
    public final long m3049getHandleColor0d7_KjU() {
        return this.handleColor;
    }

    public int hashCode() {
        return Color.m6239hashCodeimpl(this.backgroundColor) + (Color.m6239hashCodeimpl(this.handleColor) * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SelectionColors(selectionHandleColor=");
        ln.g(this.handleColor, ", selectionBackgroundColor=", sb);
        sb.append((Object) Color.m6240toStringimpl(this.backgroundColor));
        sb.append(')');
        return sb.toString();
    }

    public /* synthetic */ TextSelectionColors(long j, long j2, jh2 jh2Var) {
        this(j, j2);
    }
}
