package defpackage;

import androidx.compose.foundation.gestures.AnchoredDraggableState;
import androidx.compose.material3.SearchBarState;
import androidx.compose.material3.WideNavigationRailState;
import androidx.compose.material3.WideNavigationRailStateImpl;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.style.TextGeometricTransform;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class qf implements bm3 {
    public final /* synthetic */ int b;

    public /* synthetic */ qf(int i) {
        this.b = i;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        SaverScope saverScope = (SaverScope) obj;
        switch (this.b) {
            case 0:
                return AnchoredDraggableState.Companion.Saver$lambda$3(saverScope, (AnchoredDraggableState) obj2);
            case 1:
                return SaversKt.TextGeometricTransformSaver$lambda$0(saverScope, (TextGeometricTransform) obj2);
            case 2:
                return SearchBarState.Companion.Saver$lambda$0(saverScope, (SearchBarState) obj2);
            default:
                return WideNavigationRailStateImpl.Companion.Saver$lambda$0(saverScope, (WideNavigationRailState) obj2);
        }
    }
}
