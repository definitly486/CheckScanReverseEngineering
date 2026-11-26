package defpackage;

import androidx.compose.runtime.composer.RememberManager;
import androidx.compose.runtime.composer.linkbuffer.SlotTableEditor;
import androidx.compose.runtime.composer.linkbuffer.changelist.Operation;
import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.util.ListenerSet;
import com.google.firebase.inappmessaging.internal.InAppMessageStreamManager;
import yads.bw4;
import yads.eq2;
import yads.iw4;
import yads.tt3;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class bh1 implements xl3, ze6, SlotTableEditor.VisitSlotsInRememberOrderCallback, ListenerSet.Event, tt3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ bh1(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return (b36) ((nl3) this.c).invoke(obj);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 3:
                SimpleBasePlayer.lambda$updateStateAndInformListeners$63((SimpleBasePlayer.State) obj2, (Player.Listener) obj);
                break;
            default:
                eq2.d((bw4) obj2, (iw4) obj);
                break;
        }
    }

    @Override // defpackage.ze6
    public boolean test(Object obj) {
        return ((InAppMessageStreamManager) this.c).lambda$getTriggeredInAppMessageMaybe$25((m21) obj);
    }

    @Override // androidx.compose.runtime.composer.linkbuffer.SlotTableEditor.VisitSlotsInRememberOrderCallback
    public boolean visit(int i, int i2, Object obj) {
        return Operation.RemoveTailGroupsAndValues.execute$lambda$0((RememberManager) this.c, i, i2, obj);
    }
}
