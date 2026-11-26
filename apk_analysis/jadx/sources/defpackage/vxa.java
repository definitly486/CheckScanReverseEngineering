package defpackage;

import android.content.pm.PackageManager;
import com.google.android.gms.cloudmessaging.RegisterRequest;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.cloudmessaging.zzd;
import com.google.android.gms.internal.cloudmessaging.zze;
import com.google.android.gms.internal.cloudmessaging.zzm;
import com.google.android.gms.internal.cloudmessaging.zzq;
import com.google.android.gms.internal.location.zzcg;
import com.google.android.gms.internal.location.zzec;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class vxa implements RemoteCall {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ AbstractSafeParcelable d;

    public /* synthetic */ vxa(Object obj, AbstractSafeParcelable abstractSafeParcelable, int i) {
        this.b = i;
        this.c = obj;
        this.d = abstractSafeParcelable;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final /* synthetic */ void accept(Object obj, Object obj2) {
        int i = this.b;
        AbstractSafeParcelable abstractSafeParcelable = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                Api.ClientKey clientKey = zzcg.a;
                ((zzec) obj).zzt((d0b) obj3, (LocationRequest) abstractSafeParcelable, (TaskCompletionSource) obj2);
                break;
            default:
                zzm zzmVar = (zzm) obj3;
                zzd zzdVar = (zzd) obj;
                bqb bqbVar = new bqb(zzmVar, (TaskCompletionSource) obj2);
                int i2 = 0;
                try {
                    i2 = Wrappers.packageManager(zzmVar.getApplicationContext()).getPackageInfo(zzmVar.getApplicationContext().getPackageName(), 0).versionCode;
                    break;
                } catch (PackageManager.NameNotFoundException unused) {
                }
                RegisterRequest registerRequest = (RegisterRequest) abstractSafeParcelable;
                registerRequest.zza(i2);
                ((zze) zzdVar.getService()).zzc(bqbVar, registerRequest, zzq.zza(zzdVar.getContext()).toBuilder().setCallbackSupportEnabled(true).build());
                break;
        }
    }
}
