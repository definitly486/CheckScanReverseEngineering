package defpackage;

import androidx.compose.foundation.style.StyleState;
import androidx.compose.foundation.style.StyleStateKey;
import androidx.compose.foundation.style.StyleStateKt;
import androidx.compose.material3.RangeSliderState;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.text.PlatformParagraphStyle;
import androidx.compose.ui.text.Savers_androidKt;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ix6 implements bm3 {
    public final /* synthetic */ int b;

    public /* synthetic */ ix6(int i) {
        this.b = i;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                return RangeSliderState.Companion.Saver$lambda$0((SaverScope) obj, (RangeSliderState) obj2);
            case 1:
                return Savers_androidKt.PlatformParagraphStyleSaver$lambda$0((SaverScope) obj, (PlatformParagraphStyle) obj2);
            default:
                return Boolean.valueOf(StyleStateKt.triStateToggleOn$lambda$0((StyleStateKey) obj, (StyleState) obj2));
        }
    }
}
