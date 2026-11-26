package defpackage;

import android.net.Uri;
import androidx.activity.result.ActivityResultCallback;
import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.util.ListenerSet;
import com.google.firebase.crashlytics.AnalyticsDeferredProxy;
import com.google.firebase.inject.Deferred;
import com.google.firebase.inject.Provider;
import com.warefly.checkscan.profile.presentation.main.view.ProfileFragment;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class jd implements Deferred.DeferredHandler, xl3, ActivityResultCallback, ListenerSet.Event {
    public final /* synthetic */ Object b;

    public /* synthetic */ jd(Object obj) {
        this.b = obj;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return (qq1) ((m70) this.b).invoke(obj);
    }

    @Override // com.google.firebase.inject.Deferred.DeferredHandler
    public void handle(Provider provider) {
        ((AnalyticsDeferredProxy) this.b).lambda$init$2(provider);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        SimpleBasePlayer.lambda$updateStateAndInformListeners$52((SimpleBasePlayer.State) this.b, (Player.Listener) obj);
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        ProfileFragment profileFragment = (ProfileFragment) this.b;
        ProfileFragment.a aVar = ProfileFragment.n;
        profileFragment.o().updateAvatar((Uri) obj);
    }
}
