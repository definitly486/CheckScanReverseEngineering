package defpackage;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.foundation.gestures.AnchoredDraggableState;
import androidx.compose.foundation.layout.FlowLayoutKt;
import androidx.compose.material3.WideNavigationRailStateImpl;
import androidx.compose.material3.WideNavigationRailValue;
import androidx.compose.ui.layout.Placeable;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class rf implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ rf(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return AnchoredDraggableState.Companion.Saver$lambda$4((nl3) obj2, obj);
            case 1:
                return FlowLayoutKt.breakDownItems_di9J0FM$lambda$0$0((r07) obj2, (Placeable) obj);
            default:
                return WideNavigationRailStateImpl.Companion.Saver$lambda$1((AnimationSpec) obj2, (WideNavigationRailValue) obj);
        }
    }
}
