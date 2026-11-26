package io.appmetrica.analytics.push.provider.firebase;

import android.content.Context;
import android.os.Bundle;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import io.appmetrica.analytics.push.coreutils.internal.PushServiceFacade;
import io.appmetrica.analytics.push.coreutils.internal.utils.CoreUtils;
import io.appmetrica.analytics.push.coreutils.internal.utils.TrackersHub;
import io.appmetrica.analytics.push.logger.internal.PublicLogger;

/* JADX INFO: loaded from: classes5.dex */
public class AppMetricaMessagingService extends FirebaseMessagingService {
    public static boolean isNotificationRelatedToSDK(RemoteMessage remoteMessage) {
        return CoreUtils.isNotificationRelatedToSDK(CoreUtils.fromMapToBundle(remoteMessage.getData()));
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageReceived(RemoteMessage remoteMessage) {
        super.onMessageReceived(remoteMessage);
        processPush(this, remoteMessage);
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onNewToken(String str) {
        super.onNewToken(str);
        try {
            PublicLogger.INSTANCE.info("onNewToken: %s", str);
            TrackersHub.getInstance().reportEvent("FirebaseInstanceIdService onNewToken");
            PushServiceFacade.sendTokenOnRefresh(this, "firebase", str);
        } catch (Throwable th) {
            TrackersHub.getInstance().reportError("Token processing failed", th);
        }
    }

    public void processPush(Context context, Bundle bundle) {
        try {
            PublicLogger.INSTANCE.info("Receive\nfullData: %s", bundle);
            TrackersHub.getInstance().reportEvent("FirebaseMessagingService receive push");
            PushServiceFacade.processPush(context, bundle, "firebase");
        } catch (Throwable th) {
            TrackersHub.getInstance().reportError("Failed to process firebase push", th);
        }
    }

    public void processToken(Context context, String str) {
        try {
            TrackersHub.getInstance().reportEvent("FirebaseInstanceIdService processToken");
            PushServiceFacade.sendTokenManually(context, "firebase", str);
        } catch (Throwable th) {
            TrackersHub.getInstance().reportError("Token processing failed", th);
        }
    }

    public void processPush(Context context, RemoteMessage remoteMessage) {
        try {
            processPush(context, CoreUtils.fromMapToBundle(remoteMessage.getData()));
        } catch (Throwable th) {
            TrackersHub.getInstance().reportError("Failed to process firebase push", th);
        }
    }
}
