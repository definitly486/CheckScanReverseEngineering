package androidx.compose.ui.text;

import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.TextUnit;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class Placeholder {
    public static final int $stable = 0;
    private final long height;
    private final int placeholderVerticalAlign;
    private final long width;

    private Placeholder(long j, long j2, int i) {
        this.width = j;
        this.height = j2;
        this.placeholderVerticalAlign = i;
        if (TextUnit.m9234getRawTypeimpl(j) == 0) {
            InlineClassHelperKt.throwIllegalArgumentException("width cannot be TextUnit.Unspecified");
        }
        if (TextUnit.m9234getRawTypeimpl(j2) == 0) {
            InlineClassHelperKt.throwIllegalArgumentException("height cannot be TextUnit.Unspecified");
        }
    }

    /* JADX INFO: renamed from: copy-K8Q-__8$default, reason: not valid java name */
    public static /* synthetic */ Placeholder m8400copyK8Q__8$default(Placeholder placeholder, long j, long j2, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            j = placeholder.width;
        }
        long j3 = j;
        if ((i2 & 2) != 0) {
            j2 = placeholder.height;
        }
        long j4 = j2;
        if ((i2 & 4) != 0) {
            i = placeholder.placeholderVerticalAlign;
        }
        return placeholder.m8401copyK8Q__8(j3, j4, i);
    }

    /* JADX INFO: renamed from: copy-K8Q-__8, reason: not valid java name */
    public final Placeholder m8401copyK8Q__8(long j, long j2, int i) {
        return new Placeholder(j, j2, i, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Placeholder)) {
            return false;
        }
        Placeholder placeholder = (Placeholder) obj;
        return TextUnit.m9233equalsimpl0(this.width, placeholder.width) && TextUnit.m9233equalsimpl0(this.height, placeholder.height) && PlaceholderVerticalAlign.m8408equalsimpl0(this.placeholderVerticalAlign, placeholder.placeholderVerticalAlign);
    }

    /* JADX INFO: renamed from: getHeight-XSAIIZE, reason: not valid java name */
    public final long m8402getHeightXSAIIZE() {
        return this.height;
    }

    /* JADX INFO: renamed from: getPlaceholderVerticalAlign-J6kI3mc, reason: not valid java name */
    public final int m8403getPlaceholderVerticalAlignJ6kI3mc() {
        return this.placeholderVerticalAlign;
    }

    /* JADX INFO: renamed from: getWidth-XSAIIZE, reason: not valid java name */
    public final long m8404getWidthXSAIIZE() {
        return this.width;
    }

    public int hashCode() {
        return PlaceholderVerticalAlign.m8409hashCodeimpl(this.placeholderVerticalAlign) + ((TextUnit.m9237hashCodeimpl(this.height) + (TextUnit.m9237hashCodeimpl(this.width) * 31)) * 31);
    }

    public String toString() {
        return "Placeholder(width=" + ((Object) TextUnit.m9243toStringimpl(this.width)) + ", height=" + ((Object) TextUnit.m9243toStringimpl(this.height)) + ", placeholderVerticalAlign=" + ((Object) PlaceholderVerticalAlign.m8410toStringimpl(this.placeholderVerticalAlign)) + ')';
    }

    public /* synthetic */ Placeholder(long j, long j2, int i, jh2 jh2Var) {
        this(j, j2, i);
    }
}
