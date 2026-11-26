package androidx.compose.material3;

import androidx.compose.ui.graphics.Color;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.r01;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public final class SearchBarColors {
    public static final int $stable = 0;
    private final long containerColor;
    private final long dividerColor;
    private final TextFieldColors inputFieldColors;

    private SearchBarColors(long j, long j2) {
        this(j, j2, SearchBarKt.UnspecifiedTextFieldColors, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SearchBarColors)) {
            return false;
        }
        SearchBarColors searchBarColors = (SearchBarColors) obj;
        return Color.m6233equalsimpl0(this.containerColor, searchBarColors.containerColor) && Color.m6233equalsimpl0(this.dividerColor, searchBarColors.dividerColor) && aa4.e(this.inputFieldColors, searchBarColors.inputFieldColors);
    }

    /* JADX INFO: renamed from: getContainerColor-0d7_KjU, reason: not valid java name */
    public final long m3781getContainerColor0d7_KjU() {
        return this.containerColor;
    }

    /* JADX INFO: renamed from: getDividerColor-0d7_KjU, reason: not valid java name */
    public final long m3782getDividerColor0d7_KjU() {
        return this.dividerColor;
    }

    public final TextFieldColors getInputFieldColors() {
        return this.inputFieldColors;
    }

    public int hashCode() {
        return this.inputFieldColors.hashCode() + r01.b(Color.m6239hashCodeimpl(this.containerColor) * 31, 31, this.dividerColor);
    }

    public /* synthetic */ SearchBarColors(long j, long j2, TextFieldColors textFieldColors, jh2 jh2Var) {
        this(j, j2, textFieldColors);
    }

    private SearchBarColors(long j, long j2, TextFieldColors textFieldColors) {
        this.containerColor = j;
        this.dividerColor = j2;
        this.inputFieldColors = textFieldColors;
    }

    @ul2
    public /* synthetic */ SearchBarColors(long j, long j2, jh2 jh2Var) {
        this(j, j2);
    }
}
