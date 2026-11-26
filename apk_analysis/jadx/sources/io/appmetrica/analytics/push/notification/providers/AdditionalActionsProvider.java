package io.appmetrica.analytics.push.notification.providers;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import androidx.core.app.RemoteInput;
import io.appmetrica.analytics.push.coreutils.internal.utils.CoreUtils;
import io.appmetrica.analytics.push.impl.AbstractC1471h;
import io.appmetrica.analytics.push.internal.IntentHelper;
import io.appmetrica.analytics.push.model.AdditionalAction;
import io.appmetrica.analytics.push.model.AdditionalActionType;
import io.appmetrica.analytics.push.model.PushMessage;
import io.appmetrica.analytics.push.model.PushNotification;
import io.appmetrica.analytics.push.notification.NotificationValueProvider;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class AdditionalActionsProvider implements NotificationValueProvider<List<NotificationCompat.Action>> {
    private final Context a;

    public AdditionalActionsProvider(Context context) {
        this.a = context;
    }

    @Override // io.appmetrica.analytics.push.notification.NotificationValueProvider
    public List<NotificationCompat.Action> get(PushMessage pushMessage) {
        AdditionalAction[] additionalActions;
        PushNotification notification = pushMessage.getNotification();
        if (notification == null || (additionalActions = notification.getAdditionalActions()) == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (AdditionalAction additionalAction : additionalActions) {
            if (CoreUtils.isNotEmpty(additionalAction.getTitle())) {
                NotificationCompat.Action.Builder builder = new NotificationCompat.Action.Builder(additionalAction.getIconResId() == null ? 0 : additionalAction.getIconResId().intValue(), additionalAction.getTitle(), IntentHelper.getPendingIntentForAdditionalAction(this.a, additionalAction, IntentHelper.createNotificationActionInfo(pushMessage, additionalAction)));
                if (additionalAction.getType() != AdditionalActionType.INLINE) {
                    arrayList.add(builder.build());
                } else if (AbstractC1471h.a(24) && CoreUtils.isNotEmpty(additionalAction.getLabel())) {
                    builder.addRemoteInput(new RemoteInput.Builder("key_text_reply").setLabel(additionalAction.getLabel()).build());
                    arrayList.add(builder.build());
                }
            }
        }
        return arrayList;
    }
}
