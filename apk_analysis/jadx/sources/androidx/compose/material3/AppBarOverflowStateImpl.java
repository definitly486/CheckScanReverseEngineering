package androidx.compose.material3;

import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import defpackage.jh2;
import defpackage.u96;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public final class AppBarOverflowStateImpl implements AppBarOverflowState {
    public static final Companion Companion = new Companion(null);
    private static final Saver<AppBarOverflowStateImpl, ?> Saver = SaverKt.Saver(new c(), new d());
    private final MutableIntState totalItemCount$delegate = SnapshotIntStateKt.mutableIntStateOf(0);
    private final MutableIntState visibleItemCount$delegate = SnapshotIntStateKt.mutableIntStateOf(0);

    /* JADX INFO: Access modifiers changed from: private */
    public static final List Saver$lambda$0(SaverScope saverScope, AppBarOverflowStateImpl appBarOverflowStateImpl) {
        return u96.i(Integer.valueOf(appBarOverflowStateImpl.getTotalItemCount()), Integer.valueOf(appBarOverflowStateImpl.getVisibleItemCount()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AppBarOverflowStateImpl Saver$lambda$2(List list) {
        AppBarOverflowStateImpl appBarOverflowStateImpl = new AppBarOverflowStateImpl();
        appBarOverflowStateImpl.setTotalItemCount(((Number) list.get(0)).intValue());
        appBarOverflowStateImpl.setVisibleItemCount(((Number) list.get(1)).intValue());
        return appBarOverflowStateImpl;
    }

    @Override // androidx.compose.material3.AppBarOverflowState
    public int getTotalItemCount() {
        return this.totalItemCount$delegate.getIntValue();
    }

    @Override // androidx.compose.material3.AppBarOverflowState
    public int getVisibleItemCount() {
        return this.visibleItemCount$delegate.getIntValue();
    }

    @Override // androidx.compose.material3.AppBarOverflowState
    public void setTotalItemCount(int i) {
        this.totalItemCount$delegate.setIntValue(i);
    }

    @Override // androidx.compose.material3.AppBarOverflowState
    public void setVisibleItemCount(int i) {
        this.visibleItemCount$delegate.setIntValue(i);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final Saver<AppBarOverflowStateImpl, ?> getSaver() {
            return AppBarOverflowStateImpl.Saver;
        }

        private Companion() {
        }
    }
}
