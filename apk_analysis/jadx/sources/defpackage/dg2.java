package defpackage;

import android.app.Activity;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplay;
import com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplayCallbacks;
import com.google.firebase.inappmessaging.model.InAppMessage;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class dg2 implements ListenerSet.Event, FirebaseInAppMessagingDisplay {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ dg2(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    @Override // com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplay
    public void displayMessage(InAppMessage inAppMessage, FirebaseInAppMessagingDisplayCallbacks firebaseInAppMessagingDisplayCallbacks) {
        ((com.google.firebase.inappmessaging.display.FirebaseInAppMessagingDisplay) this.b).lambda$bindFiamToActivity$0((Activity) this.c, inAppMessage, firebaseInAppMessagingDisplayCallbacks);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((AnalyticsListener) obj).onPlaylistMetadataChanged((AnalyticsListener.EventTime) this.b, (MediaMetadata) this.c);
    }
}
