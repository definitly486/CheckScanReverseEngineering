package androidx.compose.foundation.text;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.Paragraph;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.muxer.MuxerUtil;
import defpackage.kx2;
import defpackage.ll3;
import defpackage.ra8;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldDelegateKt {
    public static final int DefaultWidthCharCount = 10;
    private static final String EmptyTextReplacement = ra8.x(10, "H");

    public static final long computeSizeForDefaultText(TextStyle textStyle, Density density, FontFamily.Resolver resolver, String str, int i) {
        Paragraph paragraphM8371ParagraphUl8oQg4$default = ParagraphKt.m8371ParagraphUl8oQg4$default(str, textStyle, ConstraintsKt.Constraints$default(0, 0, 0, 0, 15, null), density, resolver, kx2.b, null, i, TextOverflow.Companion.m8977getClipgIe3tQ8(), 64, null);
        return IntSize.m9208constructorimpl((((long) TextDelegateKt.ceilToIntPx(paragraphM8371ParagraphUl8oQg4$default.getMinIntrinsicWidth())) << 32) | (((long) TextDelegateKt.ceilToIntPx(paragraphM8371ParagraphUl8oQg4$default.getHeight())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    public static /* synthetic */ long computeSizeForDefaultText$default(TextStyle textStyle, Density density, FontFamily.Resolver resolver, String str, int i, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            str = EmptyTextReplacement;
        }
        if ((i2 & 16) != 0) {
            i = 1;
        }
        return computeSizeForDefaultText(textStyle, density, resolver, str, i);
    }

    public static final Rect focusedRectInRoot(TextLayoutResult textLayoutResult, LayoutCoordinates layoutCoordinates, int i, ll3<IntSize> ll3Var) {
        Rect boundingBox;
        if (i < textLayoutResult.getLayoutInput().getText().length()) {
            boundingBox = textLayoutResult.getBoundingBox(i);
        } else {
            boundingBox = i != 0 ? textLayoutResult.getBoundingBox(i - 1) : new Rect(0.0f, 0.0f, 1.0f, (int) (ll3Var.invoke().m9217unboximpl() & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        long jMo7713localToRootMKHz9U = layoutCoordinates.mo7713localToRootMKHz9U(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(boundingBox.getTop())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(boundingBox.getLeft())) << 32)));
        return RectKt.m6027Recttz77jQw(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (jMo7713localToRootMKHz9U >> 32)))) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (jMo7713localToRootMKHz9U & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), Size.m6047constructorimpl((((long) Float.floatToRawIntBits(boundingBox.getBottom() - boundingBox.getTop())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(boundingBox.getRight() - boundingBox.getLeft())) << 32)));
    }

    public static final String getEmptyTextReplacement() {
        return EmptyTextReplacement;
    }
}
