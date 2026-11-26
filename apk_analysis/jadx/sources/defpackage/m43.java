package defpackage;

import androidx.compose.material3.ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.SnapshotMutableLongStateImpl;
import androidx.compose.ui.layout.Placeable;
import androidx.navigationevent.NavigationEventDispatcher;
import androidx.navigationevent.compose.RememberNavigationEventDispatcherOwnerKt;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class m43 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ m43(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1.exposedDropdownSize$lambda$3$lambda$2((Placeable) obj2, (Placeable.PlacementScope) obj);
            case 1:
                return RememberNavigationEventDispatcherOwnerKt.rememberNavigationEventDispatcherOwner$lambda$5$lambda$4((NavigationEventDispatcher) obj2, (DisposableEffectScope) obj);
            default:
                return SnapshotMutableLongStateImpl.component2$lambda$0((SnapshotMutableLongStateImpl) obj2, ((Long) obj).longValue());
        }
    }
}
