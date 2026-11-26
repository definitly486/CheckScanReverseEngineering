package com.warefly.checkscan.core.analytics.services.messaging;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import com.bumptech.glide.a;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import defpackage.ae;
import defpackage.b36;
import defpackage.e;
import defpackage.h37;
import defpackage.ib3;
import defpackage.k57;
import defpackage.kd;
import defpackage.m2;
import defpackage.up5;
import defpackage.vp5;
import defpackage.y17;
import io.appmetrica.analytics.push.provider.firebase.AppMetricaMessagingService;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class FirebaseMessagesService extends FirebaseMessagingService {
    public final ib3 b = new ib3((vp5) m2.c(vp5.class, e.e(this), null, null));

    /* JADX WARN: Code duplicated, block: B:52:0x009c  */
    /* JADX WARN: Code duplicated, block: B:57:0x00a9  */
    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public final void onMessageReceived(RemoteMessage remoteMessage) {
        Object aVar;
        Integer num;
        y17.a aVar2;
        Uri imageUrl;
        Integer num2;
        int iIntValue;
        Integer num3;
        remoteMessage.getClass();
        if (AppMetricaMessagingService.isNotificationRelatedToSDK(remoteMessage)) {
            new AppMetricaMessagingService().processPush(this, remoteMessage);
            return;
        }
        ib3 ib3Var = this.b;
        ib3Var.getClass();
        String messageId = remoteMessage.getMessageId();
        if (messageId != null) {
            try {
                aVar = Integer.valueOf(Integer.parseInt(messageId));
            } catch (Throwable th) {
                aVar = new k57.a(th);
            }
            if (aVar instanceof k57.a) {
                aVar = null;
            }
            num = (Integer) aVar;
        } else {
            num = null;
        }
        RemoteMessage.Notification notification = remoteMessage.getNotification();
        if ((notification != null ? notification.getTitle() : null) == null) {
            aVar2 = null;
        } else {
            RemoteMessage.Notification notification2 = remoteMessage.getNotification();
            String title = notification2 != null ? notification2.getTitle() : null;
            RemoteMessage.Notification notification3 = remoteMessage.getNotification();
            String body = notification3 != null ? notification3.getBody() : null;
            RemoteMessage.Notification notification4 = remoteMessage.getNotification();
            aVar2 = new y17.a(num, title, body, (notification4 == null || (imageUrl = notification4.getImageUrl()) == null) ? null : imageUrl.toString());
        }
        Map<String, String> data = remoteMessage.getData();
        data.getClass();
        String str = aVar2 != null ? aVar2.b : null;
        if (str == null || str.length() == 0) {
            String str2 = aVar2 != null ? aVar2.c : null;
            if (str2 == null || str2.length() == 0) {
                new ae((aVar2 == null || (num2 = aVar2.a) == null) ? 1 : num2.intValue(), new b36("Received", Long.valueOf(System.currentTimeMillis()))).a();
            } else {
                if (aVar2 != null || (num3 = aVar2.a) == null) {
                    iIntValue = 1;
                } else {
                    iIntValue = num3.intValue();
                }
                new kd.u.a.b(iIntValue, new b36("Received", Long.valueOf(System.currentTimeMillis()))).a();
            }
        } else {
            if (aVar2 != null) {
                iIntValue = 1;
            } else {
                iIntValue = 1;
            }
            new kd.u.a.b(iIntValue, new b36("Received", Long.valueOf(System.currentTimeMillis()))).a();
        }
        if (aVar2 != null) {
            String str3 = aVar2.c;
            String str4 = aVar2.b;
            String str5 = ((str4 == null || str4.length() == 0) && (str3 == null || str3.length() == 0)) ? "silentPush" : "default";
            vp5 vp5Var = ib3Var.a;
            Integer num4 = aVar2.a;
            int iIntValue2 = num4 != null ? num4.intValue() : 1;
            if (str4 == null) {
                str4 = "ЧекСкан";
            }
            String str6 = str4;
            if (str3 == null) {
                str3 = "❤️";
            }
            String str7 = str3;
            String str8 = aVar2.d;
            String str9 = data.get("deeplink");
            vp5Var.a(iIntValue2, str6, str7, null, str9, data, null);
            if (str8 != null) {
                Context context = vp5Var.a;
                h37<Bitmap> h37VarN = a.b(context).c(context).b().N(str8);
                h37VarN.K(new up5(vp5Var, iIntValue2, str6, str7, str9, data, str5), h37VarN);
            }
        }
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public final void onNewToken(String str) {
        str.getClass();
        this.b.getClass();
    }
}
