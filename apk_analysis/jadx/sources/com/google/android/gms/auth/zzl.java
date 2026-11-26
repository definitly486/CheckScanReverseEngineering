package com.google.android.gms.auth;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.BlockingServiceConnection;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesIncorrectManifestValueException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.logging.Logger;
import com.google.android.gms.internal.auth.zzbw;
import com.google.android.gms.internal.auth.zzby;
import com.google.android.gms.internal.auth.zzdc;
import com.google.android.gms.internal.auth.zzh;
import com.google.android.gms.internal.auth.zzht;
import com.google.android.gms.internal.auth.zzhw;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import defpackage.fg;
import defpackage.fyb;
import defpackage.fz4;
import defpackage.gmb;
import defpackage.ki0;
import defpackage.me0;
import defpackage.n2;
import defpackage.tub;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes4.dex */
public class zzl {
    public static final int CHANGE_TYPE_ACCOUNT_ADDED = 1;
    public static final int CHANGE_TYPE_ACCOUNT_REMOVED = 2;
    public static final int CHANGE_TYPE_ACCOUNT_RENAMED_FROM = 3;
    public static final int CHANGE_TYPE_ACCOUNT_RENAMED_TO = 4;
    public static final String GOOGLE_ACCOUNT_TYPE = "com.google";
    public static final String KEY_SUPPRESS_PROGRESS_SCREEN = "suppressProgressScreen";
    public static final String WORK_ACCOUNT_TYPE = "com.google.work";
    public static final String[] zza = {"com.google", "com.google.work", "cn.google"};
    public static final String zzb = "androidPackageName";
    public static final ComponentName a = new ComponentName("com.google.android.gms", "com.google.android.gms.auth.GetToken");
    public static final Logger b = zzd.zza("GoogleAuthUtil");

    public static TokenData a(Context context, Bundle bundle) {
        TokenData tokenData;
        Parcelable.Creator<TokenData> creator = TokenData.CREATOR;
        ClassLoader classLoader = TokenData.class.getClassLoader();
        if (classLoader != null) {
            bundle.setClassLoader(classLoader);
        }
        Bundle bundle2 = bundle.getBundle("tokenDetails");
        if (bundle2 == null) {
            tokenData = null;
        } else {
            if (classLoader != null) {
                bundle2.setClassLoader(classLoader);
            }
            tokenData = (TokenData) bundle2.getParcelable("TokenData");
        }
        if (tokenData != null) {
            return tokenData;
        }
        h(context, "getTokenWithDetails", bundle.getString("Error"), (Intent) bundle.getParcelable("userRecoveryIntent"), (PendingIntent) bundle.getParcelable("userRecoveryPendingIntent"));
        throw null;
    }

    public static Object b(Context context, ComponentName componentName, fyb fybVar) throws IOException {
        BlockingServiceConnection blockingServiceConnection = new BlockingServiceConnection();
        GmsClientSupervisor gmsClientSupervisor = GmsClientSupervisor.getInstance(context);
        try {
            try {
                if (!gmsClientSupervisor.bindService(componentName, blockingServiceConnection, "GoogleAuthUtil", null)) {
                    ki0.d("Could not bind to service.");
                    return null;
                }
                try {
                    Object objZza = fybVar.zza(blockingServiceConnection.getService());
                    gmsClientSupervisor.unbindService(componentName, blockingServiceConnection, "GoogleAuthUtil");
                    return objZza;
                } catch (RemoteException | InterruptedException | TimeoutException e) {
                    Log.i("GoogleAuthUtil", "Error on service connection.", e);
                    throw new IOException("Error on service connection.", e);
                }
            } catch (Throwable th) {
                gmsClientSupervisor.unbindService(componentName, blockingServiceConnection, "GoogleAuthUtil");
                throw th;
            }
        } catch (SecurityException e2) {
            Log.w("GoogleAuthUtil", "SecurityException while bind to auth service: " + e2.getMessage());
            throw new IOException("SecurityException while binding to Auth service.", e2);
        }
    }

    public static Object c(String str, Task task) throws IOException, ApiException {
        Logger logger = b;
        try {
            return Tasks.await(task);
        } catch (InterruptedException e) {
            String strC = me0.c("Interrupted while waiting for the task of ", str, " to finish.");
            logger.w(strC, new Object[0]);
            throw new IOException(strC, e);
        } catch (CancellationException e2) {
            String strC2 = me0.c("Canceled while waiting for the task of ", str, " to finish.");
            logger.w(strC2, new Object[0]);
            throw new IOException(strC2, e2);
        } catch (ExecutionException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof ApiException) {
                throw ((ApiException) cause);
            }
            String strC3 = me0.c("Unable to get a result for ", str, " due to ExecutionException.");
            logger.w(strC3, new Object[0]);
            throw new IOException(strC3, e3);
        }
    }

    public static void clearToken(Context context, String str) throws GoogleAuthException, IOException {
        zze(context, str, 0L);
    }

    public static void d(Parcelable parcelable) {
        if (parcelable != null) {
            return;
        }
        b.w("Service call returned null.", new Object[0]);
        ki0.d("Service unavailable.");
    }

    public static void e(int i, Context context) throws GoogleAuthException {
        try {
            GooglePlayServicesUtilLight.ensurePlayServicesAvailable(context.getApplicationContext(), i);
        } catch (GooglePlayServicesIncorrectManifestValueException | GooglePlayServicesNotAvailableException e) {
            throw new GoogleAuthException(e.getMessage(), e);
        } catch (GooglePlayServicesRepairableException e2) {
            throw new GooglePlayServicesAvailabilityException(e2.getConnectionStatusCode(), e2.getMessage(), e2.getIntent());
        }
    }

    public static void f(ApiException apiException, String str) {
        b.w("%s failed via GoogleAuthServiceClient, falling back to previous approach:\n%s", str, Log.getStackTraceString(apiException));
    }

    public static void g(Context context, Bundle bundle) {
        String str = context.getApplicationInfo().packageName;
        bundle.putString("clientPackageName", str);
        String str2 = zzb;
        if (TextUtils.isEmpty(bundle.getString(str2))) {
            bundle.putString(str2, str);
        }
        bundle.putLong("service_connection_start_time_millis", SystemClock.elapsedRealtime());
    }

    public static List<AccountChangeEvent> getAccountChangeEvents(Context context, int i, String str) throws GoogleAuthException {
        Preconditions.checkNotEmpty(str, "accountName must be provided");
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        e(8400000, context);
        AccountChangeEventsRequest accountChangeEventsRequest = new AccountChangeEventsRequest();
        accountChangeEventsRequest.setAccountName(str);
        accountChangeEventsRequest.setEventIndex(i);
        zzdc.zzd(context);
        if (zzhw.zzd() && j(context)) {
            try {
                AccountChangeEventsResponse accountChangeEventsResponse = (AccountChangeEventsResponse) c("account change events retrieval", zzh.zza(context).zzb(accountChangeEventsRequest));
                d(accountChangeEventsResponse);
                return accountChangeEventsResponse.getEvents();
            } catch (ApiException e) {
                f(e, "account change events retrieval");
            }
        }
        return (List) b(context, a, new fz4(accountChangeEventsRequest));
    }

    public static String getAccountId(Context context, String str) throws GoogleAuthException {
        Preconditions.checkNotEmpty(str, "accountName must be provided");
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        e(8400000, context);
        return getToken(context, str, "^^_account_id_^^", new Bundle());
    }

    public static String getToken(Context context, Account account, String str, Bundle bundle) {
        i(account);
        return zza(context, account, str, bundle, 0L, null).zza();
    }

    public static void h(Context context, String str, String str2, Intent intent, PendingIntent pendingIntent) {
        zzby zzbyVarZza = zzby.zza(str2);
        Logger logger = b;
        logger.w("[GoogleAuthUtil] error status:" + zzbyVarZza + " with method:" + str, new Object[0]);
        if (!zzby.BAD_AUTHENTICATION.equals(zzbyVarZza) && !zzby.CAPTCHA.equals(zzbyVarZza) && !zzby.NEED_PERMISSION.equals(zzbyVarZza) && !zzby.NEED_REMOTE_CONSENT.equals(zzbyVarZza) && !zzby.NEEDS_BROWSER.equals(zzbyVarZza) && !zzby.USER_CANCEL.equals(zzbyVarZza) && !zzby.DEVICE_MANAGEMENT_REQUIRED.equals(zzbyVarZza) && !zzby.DM_INTERNAL_ERROR.equals(zzbyVarZza) && !zzby.DM_SYNC_DISABLED.equals(zzbyVarZza) && !zzby.DM_ADMIN_BLOCKED.equals(zzbyVarZza) && !zzby.DM_ADMIN_PENDING_APPROVAL.equals(zzbyVarZza) && !zzby.DM_STALE_SYNC_REQUIRED.equals(zzbyVarZza) && !zzby.DM_DEACTIVATED.equals(zzbyVarZza) && !zzby.DM_REQUIRED.equals(zzbyVarZza) && !zzby.THIRD_PARTY_DEVICE_MANAGEMENT_REQUIRED.equals(zzbyVarZza) && !zzby.DM_SCREENLOCK_REQUIRED.equals(zzbyVarZza)) {
            if (!zzby.NETWORK_ERROR.equals(zzbyVarZza) && !zzby.SERVICE_UNAVAILABLE.equals(zzbyVarZza) && !zzby.INTNERNAL_ERROR.equals(zzbyVarZza) && !zzby.AUTH_SECURITY_ERROR.equals(zzbyVarZza) && !zzby.ACCOUNT_NOT_PRESENT.equals(zzbyVarZza)) {
                throw new GoogleAuthException(str2);
            }
            throw new IOException(str2);
        }
        zzdc.zzd(context);
        if (!zzht.zzc()) {
            throw new UserRecoverableAuthException(str2, intent);
        }
        if (pendingIntent != null && intent != null) {
            throw UserRecoverableAuthException.zza(str2, intent, pendingIntent);
        }
        if (GoogleApiAvailability.getInstance().getApkVersion(context) >= Integer.MAX_VALUE && pendingIntent == null) {
            logger.e(me0.c("Recovery PendingIntent is missing on current Gms version: 2147483647 for method: ", str, ". It should always be present on or above Gms version 2147483647. This indicates a bug in Gms implementation."), new Object[0]);
        }
        if (intent == null) {
            logger.e(n2.d("no recovery Intent found with status=", str2, " for method=", str, ". This shouldn't happen"), new Object[0]);
        }
        throw new UserRecoverableAuthException(str2, intent);
    }

    public static void i(Account account) {
        if (account == null) {
            fg.c("Account cannot be null");
            return;
        }
        if (TextUtils.isEmpty(account.name)) {
            fg.c("Account name cannot be empty!");
            return;
        }
        String[] strArr = zza;
        for (int i = 0; i < 3; i++) {
            if (strArr[i].equals(account.type)) {
                return;
            }
        }
        fg.c("Account type not supported");
    }

    @Deprecated
    public static void invalidateToken(Context context, String str) {
        AccountManager.get(context).invalidateAuthToken("com.google", str);
    }

    public static boolean j(Context context) {
        if (GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(context, 17895000) != 0) {
            return false;
        }
        List listZzq = zzhw.zzb().zzq();
        String str = context.getApplicationInfo().packageName;
        Iterator it = listZzq.iterator();
        while (it.hasNext()) {
            if (((String) it.next()).equals(str)) {
                return false;
            }
        }
        return true;
    }

    public static Bundle removeAccount(Context context, final Account account) throws GoogleAuthException {
        Preconditions.checkNotNull(context);
        i(account);
        e(8400000, context);
        zzdc.zzd(context);
        if (zzhw.zze() && j(context)) {
            try {
                Bundle bundle = (Bundle) c("account removal", zzh.zza(context).zzd(account));
                d(bundle);
                return bundle;
            } catch (ApiException e) {
                f(e, "account removal");
            }
        }
        return (Bundle) b(context, a, new fyb() { // from class: com.google.android.gms.auth.zzf
            @Override // defpackage.fyb
            public final Object zza(IBinder iBinder) throws IOException {
                Bundle bundleZzf = com.google.android.gms.internal.auth.zze.zzb(iBinder).zzf(account);
                if (bundleZzf != null) {
                    return bundleZzf;
                }
                ki0.d("Service call returned null.");
                return null;
            }
        });
    }

    public static Boolean requestGoogleAccountsAccess(Context context) throws GoogleAuthException {
        Preconditions.checkNotNull(context);
        e(11400000, context);
        String str = context.getApplicationInfo().packageName;
        zzdc.zzd(context);
        if (zzhw.zze() && j(context)) {
            try {
                Bundle bundle = (Bundle) c("google accounts access request", zzh.zza(context).zze(str));
                String string = bundle.getString("Error");
                Intent intent = (Intent) bundle.getParcelable("userRecoveryIntent");
                PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable("userRecoveryPendingIntent");
                if (zzby.SUCCESS.equals(zzby.zza(string))) {
                    return Boolean.TRUE;
                }
                h(context, "requestGoogleAccountsAccess", string, intent, pendingIntent);
                throw null;
            } catch (ApiException e) {
                f(e, "google accounts access request");
            }
        }
        return (Boolean) b(context, a, new tub(context, str));
    }

    public static TokenData zza(final Context context, final Account account, final String str, Bundle bundle, long j, Executor executor) throws GoogleAuthException {
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        Preconditions.checkNotEmpty(str, "Scope cannot be empty or null.");
        i(account);
        e(8400000, context);
        final Bundle bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
        g(context, bundle2);
        zzdc.zzd(context);
        if (zzhw.zze() && j(context)) {
            try {
                Bundle bundle3 = (Bundle) c("token retrieval", zzh.zza(context).zzc(account, str, bundle2));
                d(bundle3);
                return a(context, bundle3);
            } catch (ApiException e) {
                f(e, "token retrieval");
            }
        }
        return (TokenData) b(context, a, new fyb() { // from class: com.google.android.gms.auth.zzg
            @Override // defpackage.fyb
            public final Object zza(IBinder iBinder) throws IOException {
                Account account2 = account;
                String str2 = str;
                Bundle bundle4 = bundle2;
                Context context2 = context;
                String str3 = zzl.GOOGLE_ACCOUNT_TYPE;
                Bundle bundleZze = com.google.android.gms.internal.auth.zze.zzb(iBinder).zze(account2, str2, bundle4);
                if (bundleZze != null) {
                    return zzl.a(context2, bundleZze);
                }
                ki0.d("Service call returned null");
                return null;
            }
        });
    }

    public static void zze(Context context, String str, long j) throws GoogleAuthException, IOException {
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        e(8400000, context);
        Bundle bundle = new Bundle();
        g(context, bundle);
        zzdc.zzd(context);
        if (zzhw.zze() && j(context)) {
            com.google.android.gms.internal.auth.zzg zzgVarZza = zzh.zza(context);
            zzbw zzbwVar = new zzbw();
            zzbwVar.zza(str);
            try {
                c("clear token", zzgVarZza.zza(zzbwVar));
                return;
            } catch (ApiException e) {
                f(e, "clear token");
            }
        }
        b(context, a, new gmb(str, bundle));
    }

    public static String getToken(Context context, Account account, String str) {
        return getToken(context, account, str, new Bundle());
    }

    @Deprecated
    public static String getToken(Context context, String str, String str2) {
        return getToken(context, new Account(str, "com.google"), str2);
    }

    @Deprecated
    public static String getToken(Context context, String str, String str2, Bundle bundle) {
        return getToken(context, new Account(str, "com.google"), str2, bundle);
    }
}
