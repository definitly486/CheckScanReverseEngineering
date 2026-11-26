package com.google.firebase.messaging;

import com.google.firebase.Firebase;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes4.dex */
public final class MessagingKt {
    public static final FirebaseMessaging getMessaging(Firebase firebase) {
        firebase.getClass();
        FirebaseMessaging firebaseMessaging = FirebaseMessaging.getInstance();
        firebaseMessaging.getClass();
        return firebaseMessaging;
    }

    public static final RemoteMessage remoteMessage(String str, nl3<? super RemoteMessage.Builder, j59> nl3Var) {
        str.getClass();
        nl3Var.getClass();
        RemoteMessage.Builder builder = new RemoteMessage.Builder(str);
        nl3Var.invoke(builder);
        RemoteMessage remoteMessageBuild = builder.build();
        remoteMessageBuild.getClass();
        return remoteMessageBuild;
    }
}
