package androidx.compose.ui.text.android;

import android.graphics.RectF;
import android.text.GraphemeClusterSegmentFinder;
import android.text.Layout;
import androidx.compose.ui.text.android.AndroidLayoutApi34;
import androidx.compose.ui.text.android.selection.Api34SegmentFinder;
import androidx.compose.ui.text.android.selection.WordSegmentFinder;
import defpackage.bm3;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidLayoutApi34 {
    public static final int $stable = 0;
    public static final AndroidLayoutApi34 INSTANCE = new AndroidLayoutApi34();

    private AndroidLayoutApi34() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean getRangeForRect$lambda$0(bm3 bm3Var, RectF rectF, RectF rectF2) {
        return ((Boolean) bm3Var.invoke(rectF, rectF2)).booleanValue();
    }

    public final int[] getRangeForRect$ui_text(TextLayout textLayout, RectF rectF, int i, final bm3<? super RectF, ? super RectF, Boolean> bm3Var) {
        return textLayout.getLayout().getRangeForRect(rectF, i == 1 ? Api34SegmentFinder.INSTANCE.toAndroidSegmentFinder$ui_text(new WordSegmentFinder(textLayout.getText(), textLayout.getWordIterator())) : new GraphemeClusterSegmentFinder(textLayout.getText(), textLayout.getTextPaint()), new Layout.TextInclusionStrategy() { // from class: ri
            @Override // android.text.Layout.TextInclusionStrategy
            public final boolean isSegmentInside(RectF rectF2, RectF rectF3) {
                return AndroidLayoutApi34.getRangeForRect$lambda$0(bm3Var, rectF2, rectF3);
            }
        });
    }
}
