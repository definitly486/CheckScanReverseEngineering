package defpackage;

import android.app.PendingIntent;
import android.os.Parcelable;
import com.google.android.gms.auth.api.identity.SavePasswordRequest;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.location.zzec;
import com.google.android.gms.internal.p000authapi.zbaj;
import com.google.android.gms.internal.p000authapi.zbba;
import com.google.android.gms.internal.p000authapi.zbg;
import com.google.android.gms.internal.p000authapi.zbm;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class uma implements RemoteCall {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Parcelable d;

    public /* synthetic */ uma(Object obj, Parcelable parcelable, int i) {
        this.b = i;
        this.c = obj;
        this.d = parcelable;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final /* synthetic */ void accept(Object obj, Object obj2) {
        int i = this.b;
        Parcelable parcelable = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                zbg zbgVar = (zbg) obj;
                ((zbm) zbgVar.getService()).zbd(new tma((zbaj) obj3, (TaskCompletionSource) obj2), (SavePasswordRequest) Preconditions.checkNotNull((SavePasswordRequest) parcelable), zbba.zba(zbgVar.getContext()));
                break;
            default:
                ((zzec) obj).zzE((GeofencingRequest) obj3, (PendingIntent) parcelable, (TaskCompletionSource) obj2);
                break;
        }
    }
}
