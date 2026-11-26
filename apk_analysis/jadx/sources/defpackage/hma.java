package defpackage;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.moduleinstall.internal.ApiFeatureRequest;
import com.google.android.gms.common.moduleinstall.internal.zaf;
import com.google.android.gms.common.moduleinstall.internal.zay;
import com.google.android.gms.common.moduleinstall.internal.zaz;
import com.google.android.gms.internal.location.zzcg;
import com.google.android.gms.internal.location.zzec;
import com.google.android.gms.internal.p001authapiphone.zzab;
import com.google.android.gms.internal.p001authapiphone.zzah;
import com.google.android.gms.internal.p001authapiphone.zzk;
import com.google.android.gms.location.DeviceOrientationRequest;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class hma implements RemoteCall {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ hma(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final /* synthetic */ void accept(Object obj, Object obj2) {
        int i = this.b;
        Object obj3 = this.d;
        Object obj4 = this.c;
        switch (i) {
            case 0:
                ((zaf) ((zaz) obj).getService()).zah(new wla((zay) obj4, (TaskCompletionSource) obj2), (ApiFeatureRequest) obj3);
                break;
            case 1:
                Api.ClientKey clientKey = zzcg.a;
                ((zzec) obj).zzC((ListenerHolder) obj4, (DeviceOrientationRequest) obj3, (TaskCompletionSource) obj2);
                break;
            default:
                ((zzk) ((zzah) obj).getService()).zzg((String) obj3, new ahc((zzab) obj4, (TaskCompletionSource) obj2));
                break;
        }
    }
}
