package defpackage;

import com.google.android.gms.auth.api.identity.BeginSignInRequest;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.internal.location.zzcg;
import com.google.android.gms.internal.location.zzec;
import com.google.android.gms.internal.p000authapi.zbat;
import com.google.android.gms.internal.p000authapi.zbau;
import com.google.android.gms.internal.p000authapi.zbba;
import com.google.android.gms.internal.p000authapi.zbv;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class cna implements RemoteCall {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ AbstractSafeParcelable d;

    public /* synthetic */ cna(Object obj, AbstractSafeParcelable abstractSafeParcelable, int i) {
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
                zbau zbauVar = (zbau) obj;
                ((zbv) zbauVar.getService()).zbc(new xma((zbat) obj3, (TaskCompletionSource) obj2), (BeginSignInRequest) Preconditions.checkNotNull((BeginSignInRequest) abstractSafeParcelable), zbba.zba(zbauVar.getContext()));
                break;
            default:
                Api.ClientKey clientKey = zzcg.a;
                ((zzec) obj).zzs((d0b) obj3, (LocationRequest) abstractSafeParcelable, (TaskCompletionSource) obj2);
                break;
        }
    }
}
