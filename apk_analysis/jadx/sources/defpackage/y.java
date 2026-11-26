package defpackage;

import androidx.compose.foundation.text.TextFieldSizeKt;
import androidx.compose.ui.layout.Placeable;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class y implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Placeable c;

    public /* synthetic */ y(int i, Placeable placeable) {
        this.b = i;
        this.c = placeable;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                Placeable.PlacementScope.placeRelative$default((Placeable.PlacementScope) obj, this.c, 0, 0, 0.0f, 4, null);
                return j59.a;
            default:
                return TextFieldSizeKt.legacyTextFieldMinSize$lambda$0$4$0$0(this.c, (Placeable.PlacementScope) obj);
        }
    }
}
