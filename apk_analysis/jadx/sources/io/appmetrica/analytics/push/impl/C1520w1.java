package io.appmetrica.analytics.push.impl;

import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.NotificationManager;
import defpackage.ox2;
import io.appmetrica.analytics.push.logger.internal.PublicLogger;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.w1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public class C1520w1 extends C1526y1 {
    public final /* synthetic */ C1529z1 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1520w1(C1529z1 c1529z1) {
        super(c1529z1);
        this.b = c1529z1;
    }

    @Override // io.appmetrica.analytics.push.impl.C1526y1
    public final C1508s1 a() {
        List<NotificationChannel> notificationChannels;
        List<NotificationChannelGroup> notificationChannelGroups;
        NotificationManager notificationManager = this.b.a;
        boolean z = false;
        if (notificationManager != null) {
            try {
                notificationChannels = notificationManager.getNotificationChannels();
            } catch (Exception e) {
                PublicLogger.INSTANCE.error(e, e.getMessage(), new Object[0]);
                notificationChannels = Collections.EMPTY_LIST;
            }
        } else {
            notificationChannels = Collections.EMPTY_LIST;
        }
        NotificationManager notificationManager2 = this.b.a;
        if (notificationManager2 != null) {
            try {
                notificationChannelGroups = notificationManager2.getNotificationChannelGroups();
            } catch (Exception e2) {
                PublicLogger.INSTANCE.error(e2, e2.getMessage(), new Object[0]);
                notificationChannelGroups = Collections.EMPTY_LIST;
            }
        } else {
            notificationChannelGroups = Collections.EMPTY_LIST;
        }
        HashMap map = new HashMap();
        Iterator<NotificationChannel> it = notificationChannels.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            NotificationChannel next = it.next();
            if (next.getGroup() != null) {
                boolean z2 = next.getImportance() != 0;
                boolean zA = a(next.getId(), z2);
                Set hashSet = (Set) map.get(next.getGroup());
                if (hashSet == null) {
                    hashSet = new HashSet();
                    map.put(next.getGroup(), hashSet);
                }
                hashSet.add(new C1511t1(next.getId(), z2, zA));
            }
        }
        HashSet hashSet2 = new HashSet();
        for (NotificationChannel notificationChannel : notificationChannels) {
            if (notificationChannel.getGroup() == null) {
                boolean z3 = notificationChannel.getImportance() != 0;
                hashSet2.add(new C1511t1(notificationChannel.getId(), z3, a(notificationChannel.getId(), z3)));
            }
        }
        HashSet hashSet3 = new HashSet();
        for (NotificationChannelGroup notificationChannelGroup : notificationChannelGroups) {
            boolean zA2 = a(notificationChannelGroup);
            String id = notificationChannelGroup.getId();
            L1 l1 = this.b.d;
            l1.getClass();
            Boolean boolA = l1.a("notification_group_" + id);
            L1 l2 = this.b.d;
            l2.getClass();
            l2.a("notification_group_" + id, zA2);
            boolean z4 = (boolA == null || boolA.booleanValue() == zA2) ? false : true;
            Set set = (Set) map.get(notificationChannelGroup.getId());
            if (set == null) {
                hashSet3.add(new C1517v1(notificationChannelGroup.getId(), zA2, z4, ox2.b));
            } else {
                hashSet3.add(new C1517v1(notificationChannelGroup.getId(), zA2, z4, set));
            }
        }
        boolean zAreNotificationsEnabled = this.a.b.areNotificationsEnabled();
        Boolean boolA2 = this.a.d.a("app_notification_status");
        this.a.d.a("app_notification_status", zAreNotificationsEnabled);
        if (boolA2 != null && boolA2.booleanValue() != zAreNotificationsEnabled) {
            z = true;
        }
        return new C1508s1(zAreNotificationsEnabled, z, hashSet3, hashSet2);
    }

    public boolean a(NotificationChannelGroup notificationChannelGroup) {
        return true;
    }

    public final boolean a(String str, boolean z) {
        L1 l1 = this.b.d;
        l1.getClass();
        Boolean boolA = l1.a("notification_channel_" + str);
        L1 l2 = this.b.d;
        l2.getClass();
        l2.a("notification_channel_" + str, z);
        return (boolA == null || boolA.booleanValue() == z) ? false : true;
    }
}
