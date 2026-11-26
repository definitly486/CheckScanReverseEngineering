package defpackage;

import android.util.Range;
import androidx.arch.core.util.Function;
import androidx.camera.core.ZoomState;
import androidx.camera.core.impl.AdapterCameraInfo;
import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.util.ListenerSet;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l8 implements Function, ListenerSet.Event {
    public final /* synthetic */ Object b;

    public /* synthetic */ l8(Object obj) {
        this.b = obj;
    }

    @Override // androidx.arch.core.util.Function
    public Object apply(Object obj) {
        return AdapterCameraInfo.lambda$getZoomState$0((Range) this.b, (ZoomState) obj);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        SimpleBasePlayer.lambda$updateStateAndInformListeners$40((SimpleBasePlayer.State) this.b, (Player.Listener) obj);
    }
}
