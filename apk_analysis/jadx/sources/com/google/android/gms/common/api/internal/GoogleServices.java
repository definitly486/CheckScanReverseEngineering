package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.gms.common.R;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.StringResourceValueReader;
import com.google.android.gms.common.internal.zzae;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public final class GoogleServices {
    public static final Object e = new Object();
    public static GoogleServices f;
    public final String a;
    public final Status b;
    public final boolean c;
    public final boolean d;

    public GoogleServices(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("google_app_measurement_enable", TypedValues.Custom.S_INT, resources.getResourcePackageName(R.string.common_google_play_services_unknown_issue));
        boolean z = true;
        if (identifier != 0) {
            int integer = resources.getInteger(identifier);
            boolean z2 = integer == 0;
            z = integer != 0;
            this.d = z2;
        } else {
            this.d = false;
        }
        this.c = z;
        String strZza = zzae.zza(context);
        strZza = strZza == null ? new StringResourceValueReader(context).getString("google_app_id") : strZza;
        if (TextUtils.isEmpty(strZza)) {
            this.b = new Status(10, "Missing google app id value from from string resources with name google_app_id.");
            this.a = null;
        } else {
            this.a = strZza;
            this.b = Status.RESULT_SUCCESS;
        }
    }

    public static GoogleServices a(String str) {
        GoogleServices googleServices;
        synchronized (e) {
            try {
                googleServices = f;
                if (googleServices == null) {
                    StringBuilder sb = new StringBuilder(str.length() + 34);
                    sb.append("Initialize must be called before ");
                    sb.append(str);
                    sb.append(".");
                    throw new IllegalStateException(sb.toString());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return googleServices;
    }

    public static String getGoogleAppId() {
        return a("getGoogleAppId").a;
    }

    public static Status initialize(Context context, String str, boolean z) {
        Status status;
        Preconditions.checkNotNull(context, "Context must not be null.");
        Preconditions.checkNotEmpty(str, "App ID must be nonempty.");
        synchronized (e) {
            try {
                GoogleServices googleServices = f;
                if (googleServices == null) {
                    GoogleServices googleServices2 = new GoogleServices(str, z);
                    f = googleServices2;
                    return googleServices2.b;
                }
                String str2 = googleServices.a;
                if (str2 == null || str2.equals(str)) {
                    status = Status.RESULT_SUCCESS;
                } else {
                    StringBuilder sb = new StringBuilder(str2.length() + 97);
                    sb.append("Initialize was called with two different Google App IDs.  Only the first app ID will be used: '");
                    sb.append(str2);
                    sb.append("'.");
                    status = new Status(10, sb.toString());
                }
                return status;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean isMeasurementEnabled() {
        GoogleServices googleServicesA = a("isMeasurementEnabled");
        return googleServicesA.b.isSuccess() && googleServicesA.c;
    }

    public static boolean isMeasurementExplicitlyDisabled() {
        return a("isMeasurementExplicitlyDisabled").d;
    }

    public static Status initialize(Context context) {
        Status status;
        Preconditions.checkNotNull(context, "Context must not be null.");
        synchronized (e) {
            try {
                GoogleServices googleServices = f;
                if (googleServices == null) {
                    googleServices = new GoogleServices(context);
                    f = googleServices;
                }
                status = googleServices.b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return status;
    }

    public GoogleServices(String str, boolean z) {
        this.a = str;
        this.b = Status.RESULT_SUCCESS;
        this.c = z;
        this.d = !z;
    }
}
