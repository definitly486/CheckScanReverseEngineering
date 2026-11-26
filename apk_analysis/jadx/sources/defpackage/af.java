package defpackage;

import androidx.compose.material3.internal.AnchoredDraggableState;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.savedstate.serialization.SavedStateConfigurationKt;
import java.util.List;
import yads.l62;
import yads.r96;
import yads.sa1;
import yads.zl4;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class af implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ af(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return Boolean.valueOf(AnchoredDraggableState._init_$lambda$0(obj));
            case 1:
                return SavedStateConfigurationKt.DEFAULT_SERIALIZERS_MODULE$lambda$1$lambda$0((List) obj);
            case 2:
                return TextFieldValue.Saver$lambda$1(obj);
            case 3:
                return Boolean.valueOf(l62.b(obj));
            case 4:
                return Boolean.valueOf(sa1.a(obj));
            default:
                return zl4.b((r96) obj);
        }
    }
}
