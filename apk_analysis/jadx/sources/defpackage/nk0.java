package defpackage;

import androidx.core.widget.NestedScrollView;
import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.util.ListenerSet;
import com.google.firebase.inappmessaging.internal.InAppMessageStreamManager;
import com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewFragment;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class nk0 implements NestedScrollView.OnScrollChangeListener, xl3, ListenerSet.Event {
    public final /* synthetic */ Object b;

    public /* synthetic */ nk0(Object obj) {
        this.b = obj;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return InAppMessageStreamManager.lambda$getContentIfNotRateLimited$24((m21) this.b, (Boolean) obj);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        SimpleBasePlayer.lambda$updateStateAndInformListeners$61((SimpleBasePlayer.State) this.b, (Player.Listener) obj);
    }

    @Override // androidx.core.widget.NestedScrollView.OnScrollChangeListener
    public void onScrollChange(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4) {
        BonusAdmitadNewFragment bonusAdmitadNewFragment = (BonusAdmitadNewFragment) this.b;
        ze4<Object>[] ze4VarArr = BonusAdmitadNewFragment.u;
        bonusAdmitadNewFragment.o().setFloatingButtonVisibility(i4, i2);
    }
}
