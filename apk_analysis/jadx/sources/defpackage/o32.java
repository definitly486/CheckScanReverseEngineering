package defpackage;

import androidx.core.widget.NestedScrollView;
import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.util.ListenerSet;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewFragment;
import com.warefly.checkscan.presentation.tasks.main.view.TasksFragment;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class o32 implements NestedScrollView.OnScrollChangeListener, ListenerSet.Event, SwipeRefreshLayout.OnRefreshListener {
    public final /* synthetic */ Object b;

    public /* synthetic */ o32(Object obj) {
        this.b = obj;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        SimpleBasePlayer.lambda$updateStateAndInformListeners$48((SimpleBasePlayer.State) this.b, (Player.Listener) obj);
    }

    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        TasksFragment tasksFragment = (TasksFragment) this.b;
        TasksFragment.a aVar = TasksFragment.q;
        tasksFragment.o().refreshContent(true);
    }

    @Override // androidx.core.widget.NestedScrollView.OnScrollChangeListener
    public void onScrollChange(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4) {
        CouponNewFragment couponNewFragment = (CouponNewFragment) this.b;
        ze4<Object>[] ze4VarArr = CouponNewFragment.m;
        couponNewFragment.o().setFloatingButtonVisibility(i4, i2);
    }
}
