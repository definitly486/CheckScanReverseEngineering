package defpackage;

import androidx.compose.material3.internal.DropdownMenuPositionProvider;
import androidx.compose.material3.pulltorefresh.PullToRefreshStateImpl;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.unit.IntRect;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class kt2 implements bm3 {
    public final /* synthetic */ int b;

    public /* synthetic */ kt2(int i) {
        this.b = i;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                return DropdownMenuPositionProvider._init_$lambda$1((IntRect) obj, (IntRect) obj2);
            default:
                return PullToRefreshStateImpl.Saver$lambda$0((SaverScope) obj, (PullToRefreshStateImpl) obj2);
        }
    }
}
