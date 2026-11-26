package com.google.firebase.dynamiclinks;

import android.content.Intent;
import android.net.Uri;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public abstract class FirebaseDynamicLinks {
    @Deprecated
    public static synchronized FirebaseDynamicLinks getInstance() {
        return getInstance(FirebaseApp.getInstance());
    }

    @Deprecated
    public abstract DynamicLink.Builder createDynamicLink();

    @Deprecated
    public abstract Task<PendingDynamicLinkData> getDynamicLink(Intent intent);

    @Deprecated
    public abstract Task<PendingDynamicLinkData> getDynamicLink(Uri uri);

    @Deprecated
    public static synchronized FirebaseDynamicLinks getInstance(FirebaseApp firebaseApp) {
        return (FirebaseDynamicLinks) firebaseApp.get(FirebaseDynamicLinks.class);
    }
}
