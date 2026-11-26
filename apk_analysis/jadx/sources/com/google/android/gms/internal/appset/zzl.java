package com.google.android.gms.internal.appset;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.google.android.gms.appset.AppSetIdClient;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.tapjoy.TapjoyCacheKt;
import defpackage.oub;
import defpackage.zxb;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class zzl implements AppSetIdClient {
    public static zzl d;
    public final Context a;
    public final ScheduledExecutorService b;
    public final ExecutorService c;

    public zzl(Context context) {
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.b = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
        this.c = Executors.newSingleThreadExecutor();
        this.a = context;
        scheduledExecutorServiceNewSingleThreadScheduledExecutor.scheduleAtFixedRate(new oub(this), 0L, TapjoyCacheKt.DEFAULT_TIME_TO_LIVE, TimeUnit.SECONDS);
    }

    public static final SharedPreferences a(Context context) {
        return context.getSharedPreferences("app_set_id_storage", 0);
    }

    public static final void b(Context context) throws zxb {
        if (a(context).edit().putLong("app_set_id_last_used_time", DefaultClock.getInstance().currentTimeMillis()).commit()) {
            return;
        }
        String strValueOf = String.valueOf(context.getPackageName());
        Log.e("AppSet", strValueOf.length() != 0 ? "Failed to store app set ID last used time for App ".concat(strValueOf) : new String("Failed to store app set ID last used time for App "));
        throw new zxb("Failed to store the app set ID last used time.");
    }

    @Override // com.google.android.gms.appset.AppSetIdClient
    public final Task<AppSetIdInfo> getAppSetIdInfo() {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.c.execute(new Runnable() { // from class: com.google.android.gms.internal.appset.zzh
            @Override // java.lang.Runnable
            public final void run() {
                zzl zzlVar = this.zza;
                TaskCompletionSource taskCompletionSource2 = taskCompletionSource;
                Context context = zzlVar.a;
                String string = zzl.a(context).getString(CommonUrlParts.APP_SET_ID, null);
                long j = zzl.a(zzlVar.a).getLong("app_set_id_last_used_time", -1L);
                long j2 = j != -1 ? 33696000000L + j : -1L;
                if (string == null || DefaultClock.getInstance().currentTimeMillis() > j2) {
                    string = UUID.randomUUID().toString();
                    try {
                        if (!context.getSharedPreferences("app_set_id_storage", 0).edit().putString(CommonUrlParts.APP_SET_ID, string).commit()) {
                            String strValueOf = String.valueOf(context.getPackageName());
                            Log.e("AppSet", strValueOf.length() != 0 ? "Failed to store app set ID generated for App ".concat(strValueOf) : new String("Failed to store app set ID generated for App "));
                            throw new zxb("Failed to store the app set ID.");
                        }
                        zzl.b(context);
                        if (!context.getSharedPreferences("app_set_id_storage", 0).edit().putLong("app_set_id_creation_time", DefaultClock.getInstance().currentTimeMillis()).commit()) {
                            String strValueOf2 = String.valueOf(context.getPackageName());
                            Log.e("AppSet", strValueOf2.length() != 0 ? "Failed to store app set ID creation time for App ".concat(strValueOf2) : new String("Failed to store app set ID creation time for App "));
                            throw new zxb("Failed to store the app set ID creation time.");
                        }
                    } catch (zxb e) {
                        taskCompletionSource2.setException(e);
                        return;
                    }
                } else {
                    try {
                        zzl.b(context);
                    } catch (zxb e2) {
                        taskCompletionSource2.setException(e2);
                        return;
                    }
                }
                taskCompletionSource2.setResult(new AppSetIdInfo(string, 1));
            }
        });
        return taskCompletionSource.getTask();
    }
}
