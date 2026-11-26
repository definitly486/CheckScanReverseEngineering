package defpackage;

import androidx.arch.core.util.Function;
import androidx.camera.view.CameraController;
import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.util.ListenerSet;
import androidx.room.RxRoom;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.firebase.inappmessaging.internal.InAppMessageStreamManager;
import com.my.target.dl;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class yp0 implements xl3, Function, OnFailureListener, ListenerSet.Event, dl.b {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ yp0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return (List) ((nl3) obj2).invoke(obj);
            case 1:
                return ((CameraController) obj2).setZoomRatio(((Float) obj).floatValue());
            case 2:
            default:
                return (sz8) ((xg1) obj2).invoke(obj);
            case 3:
                return RxRoom.Companion.createFlowable$lambda$2((m75) obj2, obj);
        }
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        SimpleBasePlayer.lambda$updateStateAndInformListeners$58((SimpleBasePlayer.State) this.c, (Player.Listener) obj);
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public void onFailure(Exception exc) {
        InAppMessageStreamManager.lambda$taskToMaybe$29((f75) this.c, exc);
    }
}
