package io.appmetrica.analytics.push.provider.firebase.impl;

import android.content.Context;
import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.push.coreutils.internal.utils.CoreUtils;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class j extends n {
    public static final String c;

    static {
        Locale locale = Locale.US;
        c = "Expected two identifiers: ymp_firebase_default_app_id and ymp_gcm_default_sender_id in application block of AndroidManifest.xml. See more at https://appmetrica.io/docs/mobile-sdk-dg/push/android-initialize.html";
    }

    public j(Context context) {
        super(context, c);
    }

    @Override // io.appmetrica.analytics.push.provider.firebase.impl.n
    public final String a() {
        return CoreUtils.getStringFromMetaData(this.a, "ymp_firebase_default_api_key");
    }

    @Override // io.appmetrica.analytics.push.provider.firebase.impl.n
    public final String b() {
        return CoreUtils.getStringFromMetaData(this.a, "ymp_firebase_default_app_id");
    }

    @Override // io.appmetrica.analytics.push.provider.firebase.impl.n
    public final String c() {
        return CoreUtils.getStringFromMetaData(this.a, "ymp_firebase_default_project_id");
    }

    @Override // io.appmetrica.analytics.push.provider.firebase.impl.n
    public final String d() {
        String stringFromMetaData = CoreUtils.getStringFromMetaData(this.a, "ymp_gcm_default_sender_id");
        if (TextUtils.isEmpty(stringFromMetaData)) {
            return null;
        }
        String[] strArrSplit = stringFromMetaData.split(StringUtils.PROCESS_POSTFIX_DELIMITER);
        if (strArrSplit.length == 2 && "number".equals(strArrSplit[0])) {
            return strArrSplit[1];
        }
        return null;
    }
}
