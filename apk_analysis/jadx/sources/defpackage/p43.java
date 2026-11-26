package defpackage;

import androidx.compose.material3.ExposedDropdownMenuPositionProvider;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.unit.IntRect;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class p43 implements bm3 {
    public final /* synthetic */ int b;

    public /* synthetic */ p43(int i) {
        this.b = i;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                return ExposedDropdownMenuPositionProvider._init_$lambda$1((IntRect) obj, (IntRect) obj2);
            default:
                return SaversKt.LineHeightStyleAlignmentSaver$lambda$0((SaverScope) obj, (LineHeightStyle.Alignment) obj2);
        }
    }
}
