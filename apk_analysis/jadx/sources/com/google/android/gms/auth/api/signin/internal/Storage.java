package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.kh;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;

/* JADX INFO: loaded from: classes4.dex */
public class Storage {
    public static final ReentrantLock c = new ReentrantLock();
    public static Storage d;
    public final ReentrantLock a = new ReentrantLock();
    public final SharedPreferences b;

    public Storage(Context context) {
        this.b = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    public static final String d(String str, String str2) {
        return kh.c(new StringBuilder(String.valueOf(str2).length() + 20), str, StringUtils.PROCESS_POSTFIX_DELIMITER, str2);
    }

    public static Storage getInstance(Context context) {
        Preconditions.checkNotNull(context);
        ReentrantLock reentrantLock = c;
        reentrantLock.lock();
        try {
            Storage storage = d;
            if (storage == null) {
                storage = new Storage(context.getApplicationContext());
                d = storage;
            }
            return storage;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void a(String str, String str2) {
        ReentrantLock reentrantLock = this.a;
        reentrantLock.lock();
        try {
            this.b.edit().putString(str, str2).apply();
        } finally {
            reentrantLock.unlock();
        }
    }

    public final String b(String str) {
        ReentrantLock reentrantLock = this.a;
        reentrantLock.lock();
        try {
            return this.b.getString(str, null);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void c(String str) {
        ReentrantLock reentrantLock = this.a;
        reentrantLock.lock();
        try {
            this.b.edit().remove(str).apply();
        } finally {
            reentrantLock.unlock();
        }
    }

    public void clear() {
        ReentrantLock reentrantLock = this.a;
        reentrantLock.lock();
        try {
            this.b.edit().clear().apply();
        } finally {
            reentrantLock.unlock();
        }
    }

    public GoogleSignInAccount getSavedDefaultGoogleSignInAccount() {
        String strB;
        String strB2 = b("defaultGoogleSignInAccount");
        if (!TextUtils.isEmpty(strB2) && (strB = b(d("googleSignInAccount", strB2))) != null) {
            try {
                return GoogleSignInAccount.zaa(strB);
            } catch (JSONException unused) {
            }
        }
        return null;
    }

    public GoogleSignInOptions getSavedDefaultGoogleSignInOptions() {
        String strB;
        String strB2 = b("defaultGoogleSignInAccount");
        if (!TextUtils.isEmpty(strB2) && (strB = b(d("googleSignInOptions", strB2))) != null) {
            try {
                return GoogleSignInOptions.zaa(strB);
            } catch (JSONException unused) {
            }
        }
        return null;
    }

    public String getSavedRefreshToken() {
        return b("refreshToken");
    }

    public void saveDefaultGoogleSignInAccount(GoogleSignInAccount googleSignInAccount, GoogleSignInOptions googleSignInOptions) {
        Preconditions.checkNotNull(googleSignInAccount);
        Preconditions.checkNotNull(googleSignInOptions);
        a("defaultGoogleSignInAccount", googleSignInAccount.zac());
        Preconditions.checkNotNull(googleSignInAccount);
        Preconditions.checkNotNull(googleSignInOptions);
        String strZac = googleSignInAccount.zac();
        a(d("googleSignInAccount", strZac), googleSignInAccount.zad());
        a(d("googleSignInOptions", strZac), googleSignInOptions.zab());
    }

    public final void zac() {
        String strB = b("defaultGoogleSignInAccount");
        c("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(strB)) {
            return;
        }
        c(d("googleSignInAccount", strB));
        c(d("googleSignInOptions", strB));
    }
}
