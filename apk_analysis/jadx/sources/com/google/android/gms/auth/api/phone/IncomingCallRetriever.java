package com.google.android.gms.auth.api.phone;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.internal.p001authapiphone.zzr;

/* JADX INFO: loaded from: classes4.dex */
public final class IncomingCallRetriever {
    public static final String ACTIVITY_RESULT_INTENT_EXTRA_MESSAGE = "MESSAGE";
    public static final String ACTIVITY_RESULT_INTENT_EXTRA_STATUS_CODE = "STATUS_CODE";
    public static final IncomingCallRetriever INSTANCE = new IncomingCallRetriever();
    public static final String PHONE_VERIFICATION_STATUS_INTENT_ACTION = "com.google.android.gms.auth.api.phone.PHONE_VERIFICATION_STATUS_INTENT_ACTION";
    public static final String PHONE_VERIFICATION_STATUS_INTENT_EXTRA = "PHONE_VERIFICATION_STATUS_INTENT_EXTRA";
    public static final String SEND_PERMISSION = "com.google.android.gms.auth.api.phone.permission.SEND";

    public static final IncomingCallRetrieverClient getClient(Activity activity) {
        activity.getClass();
        return new zzr(activity, null, 2, null);
    }

    public static final IncomingCallRetrieverClient getClient(Context context) {
        context.getClass();
        return new zzr(context, null, 2, null);
    }
}
