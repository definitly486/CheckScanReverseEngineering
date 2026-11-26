package io.appmetrica.analytics.push.impl;

import android.content.Context;
import androidx.media3.exoplayer.offline.DownloadService;
import io.appmetrica.analytics.push.coreutils.internal.utils.CoreUtils;
import io.appmetrica.analytics.push.coreutils.internal.utils.TrackersHub;
import io.appmetrica.analytics.push.logger.internal.PublicLogger;
import io.appmetrica.analytics.push.model.Filters;
import io.appmetrica.analytics.push.model.PushMessage;
import io.appmetrica.analytics.push.settings.PushFilter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.v0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1516v0 {
    public static void a(Context context, PushMessage pushMessage) {
        InterfaceC1458d2 m0;
        PublicLogger publicLogger = PublicLogger.INSTANCE;
        publicLogger.info("Process push with notificationId = %s", pushMessage.getNotificationId());
        String notificationId = pushMessage.getNotificationId();
        HashMap map = new HashMap();
        map.put("notification_Id", notificationId);
        TrackersHub.getInstance().reportEvent("Process push", map);
        C1515v c1515v = r.a(context).f;
        String notificationId2 = pushMessage.getNotificationId();
        if (CoreUtils.isNotEmpty(notificationId2) && c1515v.a().trackingReceiveAction) {
            X1.b.onMessageReceived(notificationId2, pushMessage.getPayload(), pushMessage.getTransport());
        }
        y2 y2Var = new y2();
        new z2(context, y2Var);
        C2 c2A = y2Var.a(pushMessage);
        boolean zIsShow = c2A.a.isShow();
        PushMessage pushMessage2 = c2A.b;
        if (zIsShow) {
            C1515v c1515v2 = r.a(context).f;
            if (c1515v2.b == null) {
                synchronized (c1515v2.a) {
                    try {
                        if (c1515v2.b == null) {
                            c1515v2.b = new C1513u0();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            c1515v2.b.getClass();
            if (pushMessage2.isSilent()) {
                m0 = CoreUtils.isEmpty(pushMessage2.getPushIdToRemove()) ? new C1482j2() : new C1466f2();
            } else {
                m0 = pushMessage2.getNotification() != null ? new M0(new C1505r1()) : null;
            }
            if (m0 != null) {
                m0.a(context, pushMessage2);
            } else {
                String notificationId3 = pushMessage2.getNotificationId();
                publicLogger.warning("%s with pushId = %s", "Receive push with wrong format", notificationId3);
                HashMap map2 = new HashMap();
                map2.put("notification_Id", notificationId3);
                TrackersHub.getInstance().reportEvent("Receive push with wrong format", map2);
                a(pushMessage2, "Push data format is invalid", "Receive push with wrong format");
            }
        } else {
            PushFilter.FilterResult filterResult = c2A.a;
            a(pushMessage2, filterResult.category, filterResult.details);
        }
        W1 w1F = r.a(context).f();
        PushMessage pushMessage3 = c2A.b;
        w1F.getClass();
        if (!CoreUtils.isEmpty(pushMessage3.getNotificationId())) {
            String notificationId4 = pushMessage3.getNotificationId();
            LinkedList linkedListB = w1F.b();
            linkedListB.remove(notificationId4);
            linkedListB.add(notificationId4);
            if (linkedListB.size() > 50) {
                linkedListB.remove(0);
            }
            JSONArray jSONArray = new JSONArray();
            try {
                Iterator it = linkedListB.iterator();
                while (it.hasNext()) {
                    jSONArray.put(new JSONObject().put("push_id", (String) it.next()));
                }
            } catch (JSONException unused) {
            }
            w1F.a.a("refated_push_notification_ids", jSONArray.toString());
        }
        Filters filters = pushMessage3.getFilters();
        if (filters == null || CoreUtils.isEmpty(filters.getContentId())) {
            return;
        }
        String contentId = filters.getContentId();
        LinkedList linkedListA = w1F.a();
        linkedListA.remove(contentId);
        linkedListA.add(contentId);
        if (linkedListA.size() > 50) {
            linkedListA.remove(0);
        }
        JSONArray jSONArray2 = new JSONArray();
        try {
            Iterator it2 = linkedListA.iterator();
            while (it2.hasNext()) {
                jSONArray2.put(new JSONObject().put(DownloadService.KEY_CONTENT_ID, (String) it2.next()));
            }
        } catch (JSONException unused2) {
        }
        w1F.a.a("refated_content_notification_ids", jSONArray2.toString());
    }

    public static void a(PushMessage pushMessage, String str, String str2) {
        PublicLogger.INSTANCE.info("Push filtered out. Category: %s. Details: %s", str, str2);
        String notificationId = pushMessage.getNotificationId();
        if (CoreUtils.isNotEmpty(notificationId)) {
            X1.b.onNotificationIgnored(notificationId, str, str2, pushMessage.getPayload(), pushMessage.getTransport());
        }
    }
}
