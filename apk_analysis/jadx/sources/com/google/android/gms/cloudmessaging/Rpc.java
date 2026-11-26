package com.google.android.gms.cloudmessaging;

import android.app.BroadcastOptions;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.cloudmessaging.Rpc;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.internal.cloudmessaging.zzr;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.messaging.Constants;
import defpackage.eg9;
import defpackage.gsa;
import defpackage.hw9;
import defpackage.kh;
import defpackage.x65;
import defpackage.zhc;
import java.io.IOException;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public class Rpc {
    public static int h;
    public static PendingIntent i;
    public static final Pattern j = Pattern.compile("\\|ID\\|([^|]+)\\|:?+(.*)");
    public final Context b;
    public final zzw c;
    public final ScheduledThreadPoolExecutor d;
    public Messenger f;
    public zzd g;
    public final SimpleArrayMap a = new SimpleArrayMap();
    public final Messenger e = new Messenger(new zhc(this, Looper.getMainLooper()));

    public Rpc(Context context) {
        this.b = context;
        this.c = new zzw(context);
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("fcm-rpc-timeout-executor"));
        scheduledThreadPoolExecutor.setKeepAliveTime(60L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
        this.d = scheduledThreadPoolExecutor;
    }

    public final void a(Bundle bundle, String str) {
        SimpleArrayMap simpleArrayMap = this.a;
        synchronized (simpleArrayMap) {
            try {
                TaskCompletionSource taskCompletionSource = (TaskCompletionSource) simpleArrayMap.remove(str);
                if (taskCompletionSource != null) {
                    taskCompletionSource.setResult(bundle);
                    return;
                }
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21);
                sb.append("Missing callback for ");
                sb.append(str);
                Log.w("Rpc", sb.toString());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:43:0x00db  */
    /* JADX WARN: Code duplicated, block: B:44:0x00df  */
    /* JADX WARN: Code duplicated, block: B:45:0x00f1  */
    public final Task b(Bundle bundle) {
        final String string;
        int iZza;
        Context context;
        synchronized (Rpc.class) {
            int i2 = h;
            h = i2 + 1;
            string = Integer.toString(i2);
        }
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        SimpleArrayMap simpleArrayMap = this.a;
        synchronized (simpleArrayMap) {
            simpleArrayMap.put(string, taskCompletionSource);
        }
        Intent intent = new Intent();
        intent.setPackage("com.google.android.gms");
        if (this.c.zza() == 2) {
            intent.setAction("com.google.iid.TOKEN_REQUEST");
        } else {
            intent.setAction("com.google.android.c2dm.intent.REGISTER");
        }
        intent.putExtras(bundle);
        Context context2 = this.b;
        synchronized (Rpc.class) {
            try {
                PendingIntent pendingIntentZza = i;
                if (pendingIntentZza == null) {
                    Intent intent2 = new Intent();
                    intent2.setPackage("com.google.example.invalidpackage");
                    pendingIntentZza = zzr.zza(context2, 0, intent2, zzr.zza);
                    i = pendingIntentZza;
                }
                intent.putExtra("app", pendingIntentZza);
            } catch (Throwable th) {
                throw th;
            }
        }
        intent.putExtra("kid", kh.c(new StringBuilder(String.valueOf(string).length() + 5), "|ID|", string, "|"));
        if (Log.isLoggable("Rpc", 3)) {
            Log.d("Rpc", "Sending ".concat(String.valueOf(intent.getExtras())));
        }
        intent.putExtra("google.messenger", this.e);
        if (this.f == null && this.g == null) {
            iZza = this.c.zza();
            context = this.b;
            if (iZza == 2) {
                context.startService(intent);
            } else if (Build.VERSION.SDK_INT < 34) {
                context.sendBroadcast(intent);
            } else {
                context.sendBroadcast(intent, null, BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle());
            }
        } else {
            Message messageObtain = Message.obtain();
            messageObtain.obj = intent;
            try {
                Messenger messenger = this.f;
                if (messenger != null) {
                    messenger.send(messageObtain);
                } else {
                    this.g.b.send(messageObtain);
                }
            } catch (RemoteException unused) {
                if (Log.isLoggable("Rpc", 3)) {
                    Log.d("Rpc", "Messenger failed, fallback to startService");
                }
                iZza = this.c.zza();
                context = this.b;
                if (iZza == 2) {
                    context.startService(intent);
                } else if (Build.VERSION.SDK_INT < 34) {
                    context.sendBroadcast(intent);
                } else {
                    context.sendBroadcast(intent, null, BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle());
                }
            }
        }
        final ScheduledFuture<?> scheduledFutureSchedule = this.d.schedule(new Runnable() { // from class: woa
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                if (taskCompletionSource.trySetException(new IOException("TIMEOUT"))) {
                    Log.w("Rpc", "No response");
                }
            }
        }, 30L, TimeUnit.SECONDS);
        taskCompletionSource.getTask().addOnCompleteListener(gsa.b, new OnCompleteListener() { // from class: npa
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final /* synthetic */ void onComplete(Task task) {
                Rpc rpc = this.b;
                String str = string;
                ScheduledFuture scheduledFuture = scheduledFutureSchedule;
                SimpleArrayMap simpleArrayMap2 = rpc.a;
                synchronized (simpleArrayMap2) {
                    simpleArrayMap2.remove(str);
                }
                scheduledFuture.cancel(false);
            }
        });
        return taskCompletionSource.getTask();
    }

    public Task<CloudMessage> getProxiedNotificationData() {
        return this.c.zzb() >= 241100000 ? zzv.zza(this.b).zzc(5, Bundle.EMPTY).continueWith(gsa.b, eg9.e) : Tasks.forException(new IOException("SERVICE_NOT_AVAILABLE"));
    }

    public Task<Void> messageHandled(CloudMessage cloudMessage) {
        if (this.c.zzb() < 233700000) {
            return Tasks.forException(new IOException("SERVICE_NOT_AVAILABLE"));
        }
        Bundle bundle = new Bundle();
        bundle.putString(Constants.MessagePayloadKeys.MSGID, cloudMessage.getMessageId());
        Intent intent = cloudMessage.b;
        Integer numValueOf = intent.hasExtra(Constants.MessagePayloadKeys.PRODUCT_ID) ? Integer.valueOf(intent.getIntExtra(Constants.MessagePayloadKeys.PRODUCT_ID, 0)) : null;
        if (numValueOf != null) {
            bundle.putInt(Constants.MessagePayloadKeys.PRODUCT_ID, numValueOf.intValue());
        }
        return zzv.zza(this.b).zzb(3, bundle);
    }

    public Task<Bundle> send(Bundle bundle) {
        zzw zzwVar = this.c;
        int iZzb = zzwVar.zzb();
        gsa gsaVar = gsa.b;
        if (iZzb < 12000000) {
            return zzwVar.zza() != 0 ? b(bundle).continueWithTask(gsaVar, new hw9(this, bundle)) : Tasks.forException(new IOException("MISSING_INSTANCEID_SERVICE"));
        }
        return zzv.zza(this.b).zzc(1, bundle).continueWith(gsaVar, x65.g);
    }

    public Task<Void> setRetainProxiedNotifications(boolean z) {
        if (this.c.zzb() < 241100000) {
            return Tasks.forException(new IOException("SERVICE_NOT_AVAILABLE"));
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("proxy_retention", z);
        return zzv.zza(this.b).zzb(4, bundle);
    }
}
