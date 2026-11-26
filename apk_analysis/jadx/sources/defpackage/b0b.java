package defpackage;

import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.internal.measurement.zzaic;
import com.google.android.gms.internal.measurement.zzaja;
import com.google.android.gms.measurement.internal.zzfy;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class b0b implements rxa {
    public static final /* synthetic */ b0b c = new b0b(0);
    public static final /* synthetic */ b0b d = new b0b(1);
    public static final /* synthetic */ b0b e = new b0b(2);
    public final /* synthetic */ int b;

    public /* synthetic */ b0b(int i) {
        this.b = i;
    }

    @Override // defpackage.rxa
    public final /* synthetic */ Object zza() {
        switch (this.b) {
            case 0:
                List list = zzfy.a;
                return Long.valueOf(zzags.zzV());
            case 1:
                List list2 = zzfy.a;
                return Long.valueOf(zzaic.zze());
            default:
                List list3 = zzfy.a;
                return Boolean.valueOf(zzaja.zzb());
        }
    }
}
