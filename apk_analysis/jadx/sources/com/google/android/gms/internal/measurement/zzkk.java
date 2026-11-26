package com.google.android.gms.internal.measurement;

import android.util.Pair;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.android.gms.internal.measurement.zzkk;
import com.google.android.gms.internal.measurement.zzkt;
import com.google.android.gms.internal.measurement.zzku;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import defpackage.eg9;
import defpackage.ja5;
import defpackage.jn2;
import defpackage.yla;
import defpackage.zm5;

/* JADX INFO: loaded from: classes4.dex */
public final class zzkk extends GoogleApi {
    public static final /* synthetic */ int zza = 0;

    static {
        Pair.create(zzkm.zza(0L), Tasks.forResult(null));
    }

    public final Task zza(final String str, int i, final String[] strArr, byte[] bArr) {
        return doRead(TaskApiCall.builder().run(new RemoteCall() { // from class: lzb
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                int i2 = zzkk.zza;
                ((zzkt) ((zzku) obj).getService()).zze(new pzb((TaskCompletionSource) obj2), str, 0, strArr, null);
            }
        }).build());
    }

    public final Task zzb(String str, String str2, String str3) {
        return doRead(TaskApiCall.builder().run(new ja5(str)).build());
    }

    public final Task zzc(final String str) {
        return doRead(TaskApiCall.builder().run(new RemoteCall() { // from class: ryb
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                int i = zzkk.zza;
                ((zzkt) ((zzku) obj).getService()).zzg(new pzb((TaskCompletionSource) obj2), str);
            }
        }).build());
    }

    public final Task zzd(zzme zzmeVar) {
        zzmeVar.getClass();
        return doRead(TaskApiCall.builder().run(new zm5(zzmeVar)).setFeatures(zzjn.zza).setAutoResolveMissingFeatures(false).build()).continueWithTask(jn2.INSTANCE, new yla(this, zzmeVar));
    }

    public final Task zze() {
        return doRead(TaskApiCall.builder().run(new RemoteCall() { // from class: azb
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                ((zzkt) ((zzku) obj).getService()).zzi(new pxb(this.b, (TaskCompletionSource) obj2));
            }
        }).setFeatures(zzjn.zzi).setAutoResolveMissingFeatures(false).build());
    }

    public final Task zzf(zzpm zzpmVar) throws Throwable {
        final String string;
        final ListenerHolder listenerHolderRegisterListener = registerListener(zzpmVar, "zzku");
        String myProcessName = ProcessUtils.getMyProcessName();
        if (myProcessName == null) {
            string = "__PH_INTERNAL__NO_PROCESS__";
        } else {
            int length = myProcessName.length() + 1;
            int iIdentityHashCode = System.identityHashCode(zzku.class);
            StringBuilder sb = new StringBuilder(length + String.valueOf(iIdentityHashCode).length());
            sb.append(myProcessName);
            sb.append("|");
            sb.append(iIdentityHashCode);
            string = sb.toString();
        }
        RemoteCall remoteCall = new RemoteCall() { // from class: ezb
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                ((zzkt) ((zzku) obj).getService()).zzj(string, new jyb(this.b, listenerHolderRegisterListener));
            }
        };
        return doRegisterEventListener(RegistrationMethods.builder().withHolder(listenerHolderRegisterListener).register(remoteCall).unregister(eg9.h).setFeatures(zzjn.zzd).setAutoResolveMissingFeatures(false).build());
    }
}
