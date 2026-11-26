package defpackage;

import com.google.android.gms.internal.play_billing.zzgs;
import com.google.android.gms.internal.play_billing.zzjz;

/* JADX INFO: loaded from: classes4.dex */
public final class nxb implements zzgs {
    public static final nxb a = new nxb();

    @Override // com.google.android.gms.internal.play_billing.zzgs
    public final boolean zza(int i) {
        zzjz zzjzVar;
        if (i == 0) {
            zzjzVar = zzjz.BROADCAST_ACTION_UNSPECIFIED;
        } else if (i == 1) {
            zzjzVar = zzjz.PURCHASES_UPDATED_ACTION;
        } else if (i == 2) {
            zzjzVar = zzjz.LOCAL_PURCHASES_UPDATED_ACTION;
        } else if (i == 3) {
            zzjzVar = zzjz.ALTERNATIVE_BILLING_ACTION;
        } else if (i != 4) {
            zzjzVar = i != 5 ? null : zzjz.PLAY_BILLING_ACTIVITY_CREATED_ACTION;
        } else {
            zzjzVar = zzjz.IN_APP_BILLING_RESULT_UPDATE_ACTION;
        }
        return zzjzVar != null;
    }
}
