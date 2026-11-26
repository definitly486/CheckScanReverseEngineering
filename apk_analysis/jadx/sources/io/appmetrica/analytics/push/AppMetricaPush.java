package io.appmetrica.analytics.push;

import android.app.NotificationChannel;
import android.content.Context;
import io.appmetrica.analytics.push.event.AdditionalActionPushEvent;
import io.appmetrica.analytics.push.event.DismissPushEvent;
import io.appmetrica.analytics.push.event.ExpiredPushEvent;
import io.appmetrica.analytics.push.event.IgnoredPushEvent;
import io.appmetrica.analytics.push.event.InlineAdditionalActionPushEvent;
import io.appmetrica.analytics.push.event.OpenPushEvent;
import io.appmetrica.analytics.push.event.ProcessSilentPushEvent;
import io.appmetrica.analytics.push.event.PushEvent;
import io.appmetrica.analytics.push.event.PushEventListener;
import io.appmetrica.analytics.push.event.ReceivePushEvent;
import io.appmetrica.analytics.push.event.RemovedPushEvent;
import io.appmetrica.analytics.push.event.ReplacePushEvent;
import io.appmetrica.analytics.push.event.ShownPushEvent;
import io.appmetrica.analytics.push.impl.AbstractC1445a1;
import io.appmetrica.analytics.push.impl.AbstractC1453c1;
import io.appmetrica.analytics.push.impl.AbstractC1503q1;
import io.appmetrica.analytics.push.impl.C1515v;
import io.appmetrica.analytics.push.impl.O1;
import io.appmetrica.analytics.push.impl.U0;
import io.appmetrica.analytics.push.impl.X1;
import io.appmetrica.analytics.push.impl.Y1;
import io.appmetrica.analytics.push.impl.Z1;
import io.appmetrica.analytics.push.impl.r;
import io.appmetrica.analytics.push.impl.x2;
import io.appmetrica.analytics.push.lazypush.LazyPushTransformRuleProvider;
import io.appmetrica.analytics.push.location.LocationProvider;
import io.appmetrica.analytics.push.logger.internal.PublicLogger;
import io.appmetrica.analytics.push.notification.NotificationCustomizersHolder;
import io.appmetrica.analytics.push.provider.api.PushServiceControllerProvider;
import io.appmetrica.analytics.push.provider.firebase.FirebasePushServiceControllerProvider;
import io.appmetrica.analytics.push.settings.AutoTrackingConfiguration;
import io.appmetrica.analytics.push.settings.PassportUidProvider;
import io.appmetrica.analytics.push.settings.PushFilter;
import io.appmetrica.analytics.push.settings.PushFilteredCallback;
import io.appmetrica.analytics.push.settings.PushMessageTracker;
import io.appmetrica.analytics.push.settings.PushNotificationFactory;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class AppMetricaPush {
    public static final String EXTRA_ACTION_INFO = "io.appmetrica.analytics.push.extra.ACTION_INFO";
    public static final String EXTRA_PAYLOAD = ".extra.payload";
    public static final String OPEN_DEFAULT_ACTIVITY_ACTION = "io.appmetrica.analytics.push.action.OPEN";
    private static volatile r a;
    private static final Object b = new Object();

    public static synchronized void activate(Context context) {
        if (a == null) {
            synchronized (b) {
                try {
                    if (a == null) {
                        r rVarA = r.a(context);
                        rVarA.getClass();
                        rVarA.a(new FirebasePushServiceControllerProvider(rVarA.a));
                        a = rVarA;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static void addPushEventListener(PushEventListener pushEventListener) {
        X1 x1 = X1.b;
        x1.a.add(new O1(pushEventListener));
    }

    public static void addPushFilter(Context context, PushFilter pushFilter) {
        r rVarA = r.a(context);
        rVarA.e().a.a.add(pushFilter);
        rVarA.c().a.a.add(pushFilter);
    }

    public static void addPushFilteredCallback(Context context, PushFilteredCallback pushFilteredCallback) {
        r rVarA = r.a(context);
        rVarA.e().a.b.add(pushFilteredCallback);
        rVarA.c().a.b.add(pushFilteredCallback);
    }

    @Deprecated
    public static void addPushMessageTracker(PushMessageTracker pushMessageTracker) {
        X1 x1 = X1.b;
        x1.a.add(new Y1(pushMessageTracker));
    }

    public static void enableLogger() {
        PublicLogger.INSTANCE.setEnabled(true);
    }

    public static synchronized NotificationChannel getDefaultNotificationChannel() {
        synchronized (b) {
            if (a == null) {
                throw new IllegalStateException("AppMetricaPush should be activated by calling AppMetricaPush.activate(Context).");
            }
        }
        return a.b().b;
    }

    public static PushNotificationFactory getDefaultPushNotificationFactory() {
        return Z1.a;
    }

    public static NotificationCustomizersHolder getNotificationCustomizersHolder() {
        return AbstractC1503q1.a;
    }

    public static synchronized Map<String, String> getTokens() {
        synchronized (b) {
            if (a == null) {
                throw new IllegalStateException("AppMetricaPush should be activated by calling AppMetricaPush.activate(Context).");
            }
        }
        x2 x2Var = a.e;
        if (x2Var == null) {
            return null;
        }
        return x2Var.a();
    }

    public static void reportPushEvent(Context context, PushEvent pushEvent) {
        if (pushEvent != null) {
            U0 u0 = r.a(context).g;
            u0.getClass();
            if (pushEvent instanceof AdditionalActionPushEvent) {
                AdditionalActionPushEvent additionalActionPushEvent = (AdditionalActionPushEvent) pushEvent;
                u0.a.a(additionalActionPushEvent.getPushId(), additionalActionPushEvent.getActionId(), additionalActionPushEvent.getPayload(), additionalActionPushEvent.getTransport(), additionalActionPushEvent.getTargetActionUri());
                return;
            }
            if (pushEvent instanceof DismissPushEvent) {
                DismissPushEvent dismissPushEvent = (DismissPushEvent) pushEvent;
                u0.a.onNotificationCleared(dismissPushEvent.getPushId(), dismissPushEvent.getPayload(), dismissPushEvent.getTransport());
                return;
            }
            if (pushEvent instanceof ExpiredPushEvent) {
                ExpiredPushEvent expiredPushEvent = (ExpiredPushEvent) pushEvent;
                u0.a.onNotificationExpired(expiredPushEvent.getPushId(), expiredPushEvent.getCategory(), expiredPushEvent.getPayload(), expiredPushEvent.getTransport());
                return;
            }
            if (pushEvent instanceof IgnoredPushEvent) {
                IgnoredPushEvent ignoredPushEvent = (IgnoredPushEvent) pushEvent;
                u0.a.onNotificationIgnored(ignoredPushEvent.getPushId(), ignoredPushEvent.getCategory(), ignoredPushEvent.getDetails(), ignoredPushEvent.getPayload(), ignoredPushEvent.getTransport());
                return;
            }
            if (pushEvent instanceof InlineAdditionalActionPushEvent) {
                InlineAdditionalActionPushEvent inlineAdditionalActionPushEvent = (InlineAdditionalActionPushEvent) pushEvent;
                u0.a.a(inlineAdditionalActionPushEvent.getPushId(), inlineAdditionalActionPushEvent.getActionId(), inlineAdditionalActionPushEvent.getPayload(), inlineAdditionalActionPushEvent.getText(), inlineAdditionalActionPushEvent.getTransport(), inlineAdditionalActionPushEvent.getTargetActionUri());
                return;
            }
            if (pushEvent instanceof OpenPushEvent) {
                OpenPushEvent openPushEvent = (OpenPushEvent) pushEvent;
                u0.a.a(openPushEvent.getPushId(), openPushEvent.getPayload(), openPushEvent.getTransport(), openPushEvent.getTargetActionUri());
                return;
            }
            if (pushEvent instanceof RemovedPushEvent) {
                RemovedPushEvent removedPushEvent = (RemovedPushEvent) pushEvent;
                u0.a.onRemovingSilentPushProcessed(removedPushEvent.getPushId(), removedPushEvent.getCategory(), removedPushEvent.getDetails(), removedPushEvent.getPayload(), removedPushEvent.getTransport());
                return;
            }
            if (pushEvent instanceof ProcessSilentPushEvent) {
                ProcessSilentPushEvent processSilentPushEvent = (ProcessSilentPushEvent) pushEvent;
                u0.a.onSilentPushProcessed(processSilentPushEvent.getPushId(), processSilentPushEvent.getPayload(), processSilentPushEvent.getTransport());
                return;
            }
            if (pushEvent instanceof ReceivePushEvent) {
                ReceivePushEvent receivePushEvent = (ReceivePushEvent) pushEvent;
                u0.a.onMessageReceived(receivePushEvent.getPushId(), receivePushEvent.getPayload(), receivePushEvent.getTransport());
            } else if (pushEvent instanceof ReplacePushEvent) {
                ReplacePushEvent replacePushEvent = (ReplacePushEvent) pushEvent;
                u0.a.onNotificationReplace(replacePushEvent.getPushId(), replacePushEvent.getNewPushId(), replacePushEvent.getTransport());
            } else if (pushEvent instanceof ShownPushEvent) {
                ShownPushEvent shownPushEvent = (ShownPushEvent) pushEvent;
                u0.a.onNotificationShown(shownPushEvent.getPushId(), shownPushEvent.getPayload(), shownPushEvent.getTransport());
            }
        }
    }

    public static void setAutoTrackingConfiguration(Context context, AutoTrackingConfiguration autoTrackingConfiguration) {
        C1515v c1515v = r.a(context).f;
        synchronized (c1515v.a) {
            c1515v.g = autoTrackingConfiguration;
        }
    }

    public static void setLazyPushTransformRuleProvider(LazyPushTransformRuleProvider lazyPushTransformRuleProvider) {
        AbstractC1445a1.a = lazyPushTransformRuleProvider;
    }

    public static void setLocationProvider(LocationProvider locationProvider) {
        AbstractC1453c1.a = locationProvider;
    }

    public static void setPassportUidProvider(Context context, PassportUidProvider passportUidProvider) {
        r.a(context).f.o = passportUidProvider;
    }

    public static void setPushNotificationFactory(Context context, PushNotificationFactory pushNotificationFactory) {
        Z1.b = pushNotificationFactory;
    }

    public static synchronized void setTokenUpdateListener(TokenUpdateListener tokenUpdateListener) {
        synchronized (b) {
            if (a == null) {
                throw new IllegalStateException("AppMetricaPush should be activated by calling AppMetricaPush.activate(Context).");
            }
        }
        r rVar = a;
        rVar.getClass();
        PublicLogger.INSTANCE.info("Setting token update listener", new Object[0]);
        rVar.h = tokenUpdateListener;
    }

    public static synchronized void activate(Context context, PushServiceControllerProvider... pushServiceControllerProviderArr) {
        if (a == null) {
            synchronized (b) {
                try {
                    if (a == null) {
                        r rVarA = r.a(context);
                        rVarA.a(pushServiceControllerProviderArr);
                        a = rVarA;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
