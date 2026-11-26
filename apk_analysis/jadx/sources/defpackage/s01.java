package defpackage;

import androidx.camera.view.CameraController;
import androidx.camera.view.RotationProvider;
import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.util.ListenerSet;
import com.google.firebase.inappmessaging.internal.ProxyAnalyticsConnector;
import com.google.firebase.inject.Deferred;
import com.google.firebase.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class s01 implements RotationProvider.Listener, Deferred.DeferredHandler, ListenerSet.Event {
    public final /* synthetic */ Object b;

    public /* synthetic */ s01(Object obj) {
        this.b = obj;
    }

    @Override // com.google.firebase.inject.Deferred.DeferredHandler
    public void handle(Provider provider) {
        ((ProxyAnalyticsConnector) this.b).lambda$new$0(provider);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        SimpleBasePlayer.lambda$updateStateAndInformListeners$60((SimpleBasePlayer.State) this.b, (Player.Listener) obj);
    }

    @Override // androidx.camera.view.RotationProvider.Listener
    public void onRotationChanged(int i) {
        ((CameraController) this.b).lambda$new$1(i);
    }
}
