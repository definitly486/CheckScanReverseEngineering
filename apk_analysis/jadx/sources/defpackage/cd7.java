package defpackage;

import androidx.compose.foundation.style.StyleState;
import androidx.compose.foundation.style.StyleStateKey;
import androidx.compose.foundation.style.StyleStateKt;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.text.Savers_androidKt;
import androidx.compose.ui.text.style.LineBreak;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class cd7 implements bm3 {
    public final /* synthetic */ int b;

    public /* synthetic */ cd7(int i) {
        this.b = i;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                return Savers_androidKt.LineBreakSaver$lambda$0((SaverScope) obj, (LineBreak) obj2);
            default:
                return Boolean.valueOf(StyleStateKt.disabled$lambda$0((StyleStateKey) obj, (StyleState) obj2));
        }
    }
}
