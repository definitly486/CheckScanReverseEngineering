package defpackage;

import androidx.compose.material3.SliderState;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.SaversKt;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class kc7 implements bm3 {
    public final /* synthetic */ int b;

    public /* synthetic */ kc7(int i) {
        this.b = i;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        SaverScope saverScope = (SaverScope) obj;
        switch (this.b) {
            case 0:
                return SaversKt.LinkSaver$lambda$0(saverScope, (LinkAnnotation.Url) obj2);
            default:
                return SliderState.Companion.Saver$lambda$0(saverScope, (SliderState) obj2);
        }
    }
}
