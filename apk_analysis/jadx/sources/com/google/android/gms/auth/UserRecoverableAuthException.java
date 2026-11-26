package com.google.android.gms.auth;

import android.app.PendingIntent;
import android.content.Intent;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.u6c;

/* JADX INFO: loaded from: classes4.dex */
public class UserRecoverableAuthException extends GoogleAuthException {
    public final Intent b;
    public final u6c c;

    public UserRecoverableAuthException(String str, Intent intent, u6c u6cVar) {
        super(str);
        this.b = intent;
        this.c = (u6c) Preconditions.checkNotNull(u6cVar);
    }

    public static UserRecoverableAuthException zza(String str, Intent intent, PendingIntent pendingIntent) {
        Preconditions.checkNotNull(intent);
        Preconditions.checkNotNull(pendingIntent);
        return new UserRecoverableAuthException(str, intent, u6c.zzb);
    }

    public Intent getIntent() {
        Intent intent = this.b;
        if (intent != null) {
            return new Intent(intent);
        }
        int iOrdinal = this.c.ordinal();
        if (iOrdinal == 0) {
            Log.w("Auth", "Make sure that an intent was provided to class instantiation.");
            return null;
        }
        if (iOrdinal == 1) {
            Log.e("Auth", "This shouldn't happen. Gms API throwing this exception should support the recovery Intent.");
            return null;
        }
        if (iOrdinal != 2) {
            return null;
        }
        Log.e("Auth", "this instantiation of UserRecoverableAuthException doesn't support an Intent.");
        return null;
    }

    public UserRecoverableAuthException(String str, Intent intent) {
        this(str, intent, u6c.zza);
    }
}
