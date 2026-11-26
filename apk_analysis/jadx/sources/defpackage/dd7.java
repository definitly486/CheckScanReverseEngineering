package defpackage;

import androidx.compose.foundation.style.StyleState;
import androidx.compose.foundation.style.StyleStateKey;
import androidx.compose.foundation.style.StyleStateKt;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.text.Savers_androidKt;
import androidx.compose.ui.text.style.TextMotion;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class dd7 implements bm3 {
    public final /* synthetic */ int b;

    public /* synthetic */ dd7(int i) {
        this.b = i;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                return Savers_androidKt.TextMotionSaver$lambda$0((SaverScope) obj, (TextMotion) obj2);
            default:
                return Boolean.valueOf(StyleStateKt.hovered$lambda$0((StyleStateKey) obj, (StyleState) obj2));
        }
    }
}
