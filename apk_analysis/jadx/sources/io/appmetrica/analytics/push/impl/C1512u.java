package io.appmetrica.analytics.push.impl;

import android.content.Context;
import io.appmetrica.analytics.AppMetrica;
import io.appmetrica.analytics.AppMetricaLibraryAdapter;
import io.appmetrica.analytics.ModuleEvent;
import io.appmetrica.analytics.ModulesFacade;
import io.appmetrica.analytics.push.BuildConfig;
import io.appmetrica.analytics.push.coreutils.internal.utils.TrackersHub;
import java.util.HashMap;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.u, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1512u implements T0 {
    public final C1521x a;

    public C1512u(Context context, L1 l1) {
        AppMetricaLibraryAdapter.activate(context);
        this.a = new C1521x(l1, "app");
    }

    private void b(String str) {
        int iB = AbstractC1506s.b(1);
        String strA = AbstractC1506s.a(1);
        HashMap map = new HashMap();
        map.put("appmetrica_push_version", String.valueOf(BuildConfig.VERSION_CODE));
        map.put("appmetrica_push_version_name", BuildConfig.VERSION_NAME);
        map.put("appmetrica_push_transport", "system_info_provider");
        map.put("appmetrica_push_event_id", Long.valueOf(this.a.a()));
        ModulesFacade.reportEvent(ModuleEvent.newBuilder(iB).withName(strA).withValue(str).withEnvironment(map).build());
        AppMetrica.sendEventsBuffer();
    }

    public final void a(C1501q c1501q) {
        int i = c1501q.a;
        int iB = AbstractC1506s.b(i);
        String strA = AbstractC1506s.a(i);
        String strA2 = c1501q.a();
        HashMap map = new HashMap();
        map.put("appmetrica_push_version", String.valueOf(BuildConfig.VERSION_CODE));
        map.put("appmetrica_push_version_name", BuildConfig.VERSION_NAME);
        map.put("appmetrica_push_transport", c1501q.b);
        map.put("appmetrica_push_event_id", Long.valueOf(this.a.a()));
        ModulesFacade.reportEvent(ModuleEvent.newBuilder(iB).withName(strA).withValue(strA2).withEnvironment(map).build());
        AppMetrica.sendEventsBuffer();
    }

    @Override // io.appmetrica.analytics.push.impl.T0
    public final void onMessageReceived(String str, String str2, String str3) {
        try {
            a(new C1501q(str, str3, new C1475i(1)));
        } catch (Exception e) {
            TrackersHub.getInstance().reportError("Try to send MessageReceived message before appmetrica activation", e);
        }
    }

    @Override // io.appmetrica.analytics.push.impl.T0
    public final void onNotificationCleared(String str, String str2, String str3) {
        try {
            a(new C1501q(str, str3, new C1475i(2)));
        } catch (Exception e) {
            TrackersHub.getInstance().reportError("Try to send NotificationCleared message before appmetrica activation", e);
        }
    }

    @Override // io.appmetrica.analytics.push.impl.T0
    public final void onNotificationExpired(String str, String str2, String str3, String str4) {
        try {
            a(new C1501q(str, str4, new C1486l(str2)));
        } catch (Exception e) {
            TrackersHub.getInstance().reportError("Try to send NotificationTtl message before appmetrica activation", e);
        }
    }

    @Override // io.appmetrica.analytics.push.impl.T0
    public final void onNotificationIgnored(String str, String str2, String str3, String str4, String str5) {
        try {
            a(new C1501q(str, str5, new C1489m(str2, str3)));
        } catch (Exception e) {
            TrackersHub.getInstance().reportError("Try to send NotificationIgnored message before appmetrica activation", e);
        }
    }

    @Override // io.appmetrica.analytics.push.impl.T0
    public final void onNotificationReplace(String str, String str2, String str3) {
        try {
            a(new C1501q(str, str3, new C1498p(str2)));
        } catch (Exception e) {
            TrackersHub.getInstance().reportError("Try to send NotificationHide message before appmetrica activation", e);
        }
    }

    @Override // io.appmetrica.analytics.push.impl.T0
    public final void onNotificationShown(String str, String str2, String str3) {
        try {
            a(new C1501q(str, str3, new C1475i(6)));
        } catch (Exception e) {
            TrackersHub.getInstance().reportError("Try to send NotificationShown message before appmetrica activation", e);
        }
    }

    @Override // io.appmetrica.analytics.push.impl.T0
    public final void onPushTokenInited(String str, String str2) {
        try {
            a(str, str2);
        } catch (Exception e) {
            TrackersHub.getInstance().reportError("Try to send PushTokenInited message before appmetrica activation", e);
        }
    }

    @Override // io.appmetrica.analytics.push.impl.T0
    public final void onPushTokenUpdated(String str, String str2) {
        try {
            b(str, str2);
        } catch (Exception e) {
            TrackersHub.getInstance().reportError("Try to send PushTokenUpdated message before appmetrica activation", e);
        }
    }

    @Override // io.appmetrica.analytics.push.impl.T0
    public final void onRemovingSilentPushProcessed(String str, String str2, String str3, String str4, String str5) {
        try {
            a(new C1501q(str, str5, new C1495o(str2, str3)));
        } catch (Exception e) {
            TrackersHub.getInstance().reportError("Try to send RemovingSilentPushProcessed message before appmetrica activation", e);
        }
    }

    @Override // io.appmetrica.analytics.push.impl.T0
    public final void onSilentPushProcessed(String str, String str2, String str3) {
        try {
            a(new C1501q(str, str3, new C1475i(5)));
        } catch (Exception e) {
            TrackersHub.getInstance().reportError("Try to send SilentPushProcessed message before appmetrica activation", e);
        }
    }

    private void b(String str, String str2) {
        int iB = AbstractC1506s.b(1);
        String strA = AbstractC1506s.a(1);
        HashMap map = new HashMap();
        map.put("appmetrica_push_version", String.valueOf(BuildConfig.VERSION_CODE));
        map.put("appmetrica_push_version_name", BuildConfig.VERSION_NAME);
        map.put("appmetrica_push_transport", str2);
        map.put("appmetrica_push_event_id", Long.valueOf(this.a.a()));
        ModulesFacade.reportEvent(ModuleEvent.newBuilder(iB).withName(strA).withValue(str).withEnvironment(map).build());
        AppMetrica.sendEventsBuffer();
    }

    @Override // io.appmetrica.analytics.push.impl.T0
    public final void a(String str) {
        try {
            b(str);
        } catch (Exception e) {
            TrackersHub.getInstance().reportError("Try to send SystemInfoUpdated message before appmetrica activation", e);
        }
    }

    private void a(String str, String str2) {
        int iB = AbstractC1506s.b(1);
        String strA = AbstractC1506s.a(1);
        HashMap map = new HashMap();
        map.put("appmetrica_push_version", String.valueOf(BuildConfig.VERSION_CODE));
        map.put("appmetrica_push_version_name", BuildConfig.VERSION_NAME);
        map.put("appmetrica_push_transport", str2);
        map.put("appmetrica_push_event_id", Long.valueOf(this.a.a()));
        ModulesFacade.reportEvent(ModuleEvent.newBuilder(iB).withName(strA).withValue(str).withEnvironment(map).build());
        AppMetrica.sendEventsBuffer();
    }

    @Override // io.appmetrica.analytics.push.impl.T0
    public final void a(String str, String str2, String str3, String str4) {
        try {
            a(new C1501q(str, str3, new C1492n(str4)));
        } catch (Exception e) {
            TrackersHub.getInstance().reportError("Try to send PushOpened message before appmetrica activation", e);
        }
    }

    @Override // io.appmetrica.analytics.push.impl.T0
    public final void a(String str, String str2, String str3, String str4, String str5) {
        try {
            a(new C1501q(str, str4, new C1483k(str2, str5, null)));
        } catch (Exception e) {
            TrackersHub.getInstance().reportError("Try to send NotificationAdditionalAction message before appmetrica activation", e);
        }
    }

    @Override // io.appmetrica.analytics.push.impl.T0
    public final void a(String str, String str2, String str3, String str4, String str5, String str6) {
        try {
            a(new C1501q(str, str5, new C1483k(str2, str6, str4)));
        } catch (Exception e) {
            TrackersHub.getInstance().reportError("Try to send NotificationInlineAdditionalAction message before appmetrica activation", e);
        }
    }
}
