package defpackage;

import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.foundation.style.StyleState;
import androidx.compose.foundation.style.StyleStateKey;
import androidx.compose.foundation.style.StyleStateKt;
import androidx.compose.runtime.saveable.SaverScope;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class dm4 implements bm3 {
    public final /* synthetic */ int b;

    public /* synthetic */ dm4(int i) {
        this.b = i;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                return LazyGridState.Saver$lambda$0((SaverScope) obj, (LazyGridState) obj2);
            default:
                return Boolean.valueOf(StyleStateKt.focused$lambda$0((StyleStateKey) obj, (StyleState) obj2));
        }
    }
}
