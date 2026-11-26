package defpackage;

import androidx.media3.common.MediaItem;
import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.drm.DrmSessionManager;
import androidx.media3.exoplayer.drm.DrmSessionManagerProvider;
import androidx.media3.exoplayer.offline.DownloadHelper;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.ProductDetailsResponseListener;
import com.android.billingclient.api.QueryProductDetailsResult;
import com.my.tracker.obfuscated.q0;
import com.warefly.checkscan.presentation.chequePage.presentation.ChequePagePresenter;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ve1 implements xl3, DrmSessionManagerProvider, ListenerSet.Event, eh8.a, ProductDetailsResponseListener {
    public final /* synthetic */ Object b;

    public /* synthetic */ ve1(Object obj) {
        this.b = obj;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return ChequePagePresenter.refreshChequeOperations$lambda$18((nl3) this.b, obj);
    }

    @Override // eh8.a
    public Object execute() {
        ((r89) this.b).i.m();
        return null;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionManagerProvider
    public DrmSessionManager get(MediaItem mediaItem) {
        return DownloadHelper.lambda$createMediaSourceInternal$4((DrmSessionManager) this.b, mediaItem);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        SimpleBasePlayer.lambda$updateStateAndInformListeners$47((SimpleBasePlayer.State) this.b, (Player.Listener) obj);
    }

    @Override // com.android.billingclient.api.ProductDetailsResponseListener
    public void onProductDetailsResponse(BillingResult billingResult, QueryProductDetailsResult queryProductDetailsResult) {
        ((q0) this.b).b(billingResult, queryProductDetailsResult);
    }
}
