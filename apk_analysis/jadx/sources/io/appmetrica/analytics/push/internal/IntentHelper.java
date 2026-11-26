package io.appmetrica.analytics.push.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import defpackage.cl4;
import defpackage.nm4;
import io.appmetrica.analytics.push.AppMetricaPush;
import io.appmetrica.analytics.push.coreutils.internal.utils.CoreUtils;
import io.appmetrica.analytics.push.impl.AbstractC1470g2;
import io.appmetrica.analytics.push.impl.AbstractC1471h;
import io.appmetrica.analytics.push.impl.AbstractC1503q1;
import io.appmetrica.analytics.push.impl.C1447b;
import io.appmetrica.analytics.push.impl.E1;
import io.appmetrica.analytics.push.impl.R0;
import io.appmetrica.analytics.push.impl.r;
import io.appmetrica.analytics.push.intent.NotificationActionInfo;
import io.appmetrica.analytics.push.intent.NotificationActionType;
import io.appmetrica.analytics.push.internal.activity.AppMetricaPushDummyActivity;
import io.appmetrica.analytics.push.internal.receiver.AppMetricaPushBroadcastReceiver;
import io.appmetrica.analytics.push.model.AdditionalAction;
import io.appmetrica.analytics.push.model.AdditionalActionType;
import io.appmetrica.analytics.push.model.OpenType;
import io.appmetrica.analytics.push.model.PushMessage;
import io.appmetrica.analytics.push.model.PushNotification;
import io.appmetrica.analytics.push.notification.ExtraBundleProvider;

/* JADX INFO: loaded from: classes5.dex */
public final class IntentHelper {
    public static final IntentHelper INSTANCE = new IntentHelper();
    private static final cl4 a = nm4.b(R0.a);

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[OpenType.values().length];
            try {
                iArr[OpenType.APPLICATION_ACTIVITY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[OpenType.TRANSPARENT_ACTIVITY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private IntentHelper() {
    }

    private static NotificationActionInfo a(NotificationActionType notificationActionType, PushMessage pushMessage, String str, AdditionalAction additionalAction) {
        Integer notificationId;
        String str2;
        PushNotification notification = pushMessage.getNotification();
        Boolean explicitIntent = notification != null ? notification.getExplicitIntent() : null;
        NotificationActionInfo.Builder builderWithTargetActionUri = NotificationActionInfo.newBuilder(pushMessage.getTransport()).withPayload(pushMessage.getPayload()).withPushId(pushMessage.getNotificationId()).withActionType(notificationActionType).withTargetActionUri(str);
        PushNotification notification2 = pushMessage.getNotification();
        NotificationActionInfo.Builder builderWithNotificationTag = builderWithTargetActionUri.withNotificationTag(notification2 != null ? notification2.getNotificationTag() : null);
        PushNotification notification3 = pushMessage.getNotification();
        boolean z = false;
        if (notification3 == null || (notificationId = notification3.getNotificationId()) == null) {
            notificationId = 0;
        }
        NotificationActionInfo.Builder builderWithNotificationId = builderWithNotificationTag.withNotificationId(notificationId.intValue());
        PushNotification notification4 = pushMessage.getNotification();
        if (CoreUtils.isEmpty(notification4 != null ? notification4.getChannelId() : null)) {
            str2 = "appmetrica_push";
        } else {
            PushNotification notification5 = pushMessage.getNotification();
            String channelId = notification5 != null ? notification5.getChannelId() : null;
            channelId.getClass();
            str2 = channelId;
        }
        NotificationActionInfo.Builder builderWithChannelId = builderWithNotificationId.withChannelId(str2);
        PushNotification notification6 = pushMessage.getNotification();
        notification6.getClass();
        NotificationActionInfo.Builder builderWithUseFlagActivityNewTask = builderWithChannelId.withUseFlagActivityNewTask(notification6.getUseFlagActivityNewTask());
        ExtraBundleProvider extraBundleProvider = AbstractC1503q1.a.getExtraBundleProvider();
        if (extraBundleProvider != null) {
            builderWithUseFlagActivityNewTask.withExtraBundle(extraBundleProvider.getExtraBundle(pushMessage));
        }
        if (additionalAction != null) {
            builderWithUseFlagActivityNewTask.withActionId(additionalAction.getId());
            builderWithUseFlagActivityNewTask.withUseFlagActivityNewTask(additionalAction.getUseFlagActivityNewTask());
            if (additionalAction.getHideAfterSecond() != null) {
                Long hideAfterSecond = additionalAction.getHideAfterSecond();
                hideAfterSecond.getClass();
                builderWithUseFlagActivityNewTask.withHideAfterSeconds(hideAfterSecond.longValue());
            }
            if (additionalAction.getHideQuickControlPanel() != null) {
                Boolean hideQuickControlPanel = additionalAction.getHideQuickControlPanel();
                hideQuickControlPanel.getClass();
                builderWithUseFlagActivityNewTask.withHideQuickControlPanel(hideQuickControlPanel.booleanValue());
            }
            if (additionalAction.getAutoCancel() != null) {
                Boolean autoCancel = additionalAction.getAutoCancel();
                autoCancel.getClass();
                builderWithUseFlagActivityNewTask.withDismissOnAdditionalAction(autoCancel.booleanValue());
            }
            if (additionalAction.getType() != null) {
                if (additionalAction.getType() == AdditionalActionType.OPEN_APP_URI) {
                    explicitIntent = Boolean.TRUE;
                }
                if (additionalAction.getType() == AdditionalActionType.DO_NOTHING) {
                    builderWithUseFlagActivityNewTask.withDoNothing(true);
                }
            } else {
                explicitIntent = additionalAction.getExplicitIntent();
            }
        }
        if (explicitIntent != null && explicitIntent.booleanValue()) {
            z = true;
        }
        builderWithUseFlagActivityNewTask.withExplicitIntent(z);
        return builderWithUseFlagActivityNewTask.build();
    }

    public static final NotificationActionInfo createNotificationActionInfo(PushMessage pushMessage, AdditionalAction additionalAction) {
        NotificationActionType notificationActionType = additionalAction.getType() == AdditionalActionType.INLINE ? NotificationActionType.INLINE_ACTION : NotificationActionType.ADDITIONAL_ACTION;
        IntentHelper intentHelper = INSTANCE;
        String actionUrl = additionalAction.getActionUrl();
        intentHelper.getClass();
        return a(notificationActionType, pushMessage, actionUrl, additionalAction);
    }

    public static final PendingIntent createWrappedAction(Context context, NotificationActionInfo notificationActionInfo, boolean z) {
        Intent intent;
        if (z) {
            intent = null;
        } else {
            INSTANCE.getClass();
            C1447b c1447b = (C1447b) a.getValue();
            String str = notificationActionInfo.targetActionUri;
            c1447b.getClass();
            intent = C1447b.a(context, str);
        }
        if (intent == null) {
            intent = new Intent(AppMetricaPushBroadcastReceiver.ACTION_BROADCAST_ACTION);
            intent.putExtra(AppMetricaPush.EXTRA_ACTION_INFO, notificationActionInfo);
            intent.setPackage(context.getPackageName());
            if (notificationActionInfo.useFlagActivityNewTask) {
                intent.addFlags(268435456);
            }
        } else {
            intent.putExtra(AppMetricaPush.EXTRA_ACTION_INFO, notificationActionInfo);
            Bundle bundle = notificationActionInfo.extraBundle;
            if (bundle != null) {
                intent.putExtras(bundle);
            }
            if (notificationActionInfo.explicitIntent) {
                intent.setPackage(context.getPackageName());
            }
            intent.putExtra(AppMetricaPush.EXTRA_PAYLOAD, notificationActionInfo.payload);
        }
        int iA = AbstractC1470g2.a(context);
        int iA2 = E1.a(notificationActionInfo.actionType == NotificationActionType.INLINE_ACTION);
        return z ? PendingIntent.getBroadcast(context, iA, intent, iA2) : PendingIntent.getActivity(context, iA, intent, iA2);
    }

    public static final PendingIntent getPendingIntentForAdditionalAction(Context context, AdditionalAction additionalAction, NotificationActionInfo notificationActionInfo) {
        IntentHelper intentHelper = INSTANCE;
        OpenType openType = additionalAction.getOpenType();
        intentHelper.getClass();
        if (openType == OpenType.UNKNOWN) {
            openType = (!AbstractC1471h.a(31) || notificationActionInfo.doNothing) ? OpenType.BROADCAST : OpenType.TRANSPARENT_ACTIVITY;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[openType.ordinal()];
        if (i == 1) {
            return createWrappedAction(context, notificationActionInfo, false);
        }
        if (i != 2) {
            return createWrappedAction(context, notificationActionInfo, r.a(context).f.a().isTrackingAdditionalAction(additionalAction.getId()));
        }
        Intent intent = new Intent(context, (Class<?>) AppMetricaPushDummyActivity.class);
        intent.putExtra(AppMetricaPush.EXTRA_ACTION_INFO, notificationActionInfo);
        intent.setPackage(context.getPackageName());
        intent.addFlags(1073741824);
        intent.addFlags(268435456);
        intent.addFlags(67108864);
        return PendingIntent.getActivity(context, AbstractC1470g2.a(context), intent, E1.a(notificationActionInfo.actionType == NotificationActionType.INLINE_ACTION));
    }

    public static final PendingIntent getPendingIntentForOpenAction(Context context, PushNotification pushNotification, NotificationActionInfo notificationActionInfo) {
        OpenType openType;
        IntentHelper intentHelper = INSTANCE;
        if (pushNotification == null || (openType = pushNotification.getOpenType()) == null) {
            openType = OpenType.UNKNOWN;
        }
        intentHelper.getClass();
        if (openType == OpenType.UNKNOWN) {
            openType = (!AbstractC1471h.a(31) || notificationActionInfo.doNothing) ? OpenType.BROADCAST : OpenType.TRANSPARENT_ACTIVITY;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[openType.ordinal()];
        if (i == 1) {
            return createWrappedAction(context, notificationActionInfo, false);
        }
        if (i != 2) {
            return createWrappedAction(context, notificationActionInfo, r.a(context).f.a().trackingOpenAction);
        }
        Intent intent = new Intent(context, (Class<?>) AppMetricaPushDummyActivity.class);
        intent.putExtra(AppMetricaPush.EXTRA_ACTION_INFO, notificationActionInfo);
        intent.setPackage(context.getPackageName());
        intent.addFlags(1073741824);
        intent.addFlags(268435456);
        intent.addFlags(67108864);
        return PendingIntent.getActivity(context, AbstractC1470g2.a(context), intent, E1.a(notificationActionInfo.actionType == NotificationActionType.INLINE_ACTION));
    }

    public static final NotificationActionInfo createNotificationActionInfo(NotificationActionType notificationActionType, PushMessage pushMessage, String str) {
        INSTANCE.getClass();
        return a(notificationActionType, pushMessage, str, null);
    }
}
