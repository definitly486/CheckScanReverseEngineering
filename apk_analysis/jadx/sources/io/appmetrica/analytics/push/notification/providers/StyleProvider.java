package io.appmetrica.analytics.push.notification.providers;

import android.graphics.Bitmap;
import android.text.Html;
import androidx.core.app.NotificationCompat;
import io.appmetrica.analytics.push.model.PushMessage;
import io.appmetrica.analytics.push.model.PushNotification;
import io.appmetrica.analytics.push.notification.NotificationValueProvider;

/* JADX INFO: loaded from: classes5.dex */
public class StyleProvider implements NotificationValueProvider<NotificationCompat.Style> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.appmetrica.analytics.push.notification.NotificationValueProvider
    public NotificationCompat.Style get(PushMessage pushMessage) {
        PushNotification notification = pushMessage.getNotification();
        if (notification == null) {
            return null;
        }
        Bitmap largeBitmap = notification.getLargeBitmap();
        if (largeBitmap != null) {
            return new NotificationCompat.BigPictureStyle().bigPicture(largeBitmap);
        }
        String contentText = notification.getContentText();
        return new NotificationCompat.BigTextStyle().bigText(contentText != null ? Html.fromHtml(contentText) : null);
    }
}
