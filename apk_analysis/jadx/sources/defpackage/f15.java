package defpackage;

import android.app.PendingIntent;
import com.google.android.gms.auth.api.identity.GetPhoneNumberHintIntentRequest;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.internal.location.zzcg;
import com.google.android.gms.internal.location.zzec;
import com.google.android.gms.internal.p000authapi.zbat;
import com.google.android.gms.internal.p000authapi.zbau;
import com.google.android.gms.internal.p000authapi.zbba;
import com.google.android.gms.internal.p000authapi.zbv;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class f15 implements RemoteCall {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ f15(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public /* synthetic */ void accept(Object obj, Object obj2) {
        int i = this.b;
        Object obj3 = this.d;
        Object obj4 = this.c;
        TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj2;
        switch (i) {
            case 1:
                zbat zbatVar = (zbat) obj4;
                zbau zbauVar = (zbau) obj;
                ana anaVar = new ana(zbatVar, taskCompletionSource);
                ((zbv) zbauVar.getService()).zbf(anaVar, (GetPhoneNumberHintIntentRequest) obj3, zbatVar.a, zbba.zba(zbauVar.getContext()));
                break;
            default:
                Api.ClientKey clientKey = zzcg.a;
                ((zzec) obj).zzu((PendingIntent) obj4, (LocationRequest) obj3, taskCompletionSource);
                break;
        }
    }
}
