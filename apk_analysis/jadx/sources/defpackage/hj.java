package defpackage;

import android.graphics.RectF;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.material3.DatePickerKt;
import androidx.compose.ui.text.AndroidParagraph;
import androidx.compose.ui.text.TextInclusionStrategy;
import androidx.compose.ui.unit.IntSize;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class hj implements bm3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ hj(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.b;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(AndroidParagraph.getRangeForRect_8_6BmAI$lambda$0((TextInclusionStrategy) obj3, (RectF) obj, (RectF) obj2));
            default:
                return DatePickerKt.SwitchableDateEntryContent_KaiTk9E$lambda$21$lambda$20$lambda$19((FiniteAnimationSpec) obj3, (IntSize) obj, (IntSize) obj2);
        }
    }
}
