package defpackage;

import androidx.compose.foundation.style.StyleState;
import androidx.compose.foundation.style.StyleStateKey;
import androidx.compose.foundation.style.StyleStateKt;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.text.EmojiSupportMatch;
import androidx.compose.ui.text.Savers_androidKt;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class bd7 implements bm3 {
    public final /* synthetic */ int b;

    public /* synthetic */ bd7(int i) {
        this.b = i;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                return Savers_androidKt.emojiSupportMatchSaver$lambda$0((SaverScope) obj, (EmojiSupportMatch) obj2);
            default:
                return Boolean.valueOf(StyleStateKt.pressed$lambda$0((StyleStateKey) obj, (StyleState) obj2));
        }
    }
}
