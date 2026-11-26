package defpackage;

import com.google.android.gms.internal.play_billing.zzcc;
import com.google.android.gms.internal.play_billing.zzcd;

/* JADX INFO: loaded from: classes4.dex */
public enum fwa {
    RESPONSE_CODE_UNSPECIFIED(-999),
    SERVICE_TIMEOUT(-3),
    FEATURE_NOT_SUPPORTED(-2),
    SERVICE_DISCONNECTED(-1),
    OK(0),
    USER_CANCELED(1),
    SERVICE_UNAVAILABLE(2),
    BILLING_UNAVAILABLE(3),
    ITEM_UNAVAILABLE(4),
    DEVELOPER_ERROR(5),
    ERROR(6),
    ITEM_ALREADY_OWNED(7),
    ITEM_NOT_OWNED(8),
    EXPIRED_OFFER_TOKEN(11),
    NETWORK_ERROR(12);

    private static final zzcd zzp;
    private final int zzr;

    static {
        zzcc zzccVar = new zzcc();
        for (fwa fwaVar : values()) {
            zzccVar.zza(Integer.valueOf(fwaVar.zzr), fwaVar);
        }
        zzp = zzccVar.zzb();
    }

    fwa(int i) {
        this.zzr = i;
    }

    public static fwa a(int i) {
        zzcd zzcdVar = zzp;
        Integer numValueOf = Integer.valueOf(i);
        return !zzcdVar.containsKey(numValueOf) ? RESPONSE_CODE_UNSPECIFIED : (fwa) zzcdVar.get(numValueOf);
    }
}
