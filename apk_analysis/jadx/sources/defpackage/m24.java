package defpackage;

import com.google.android.gms.internal.measurement.zzahb;
import com.google.android.gms.internal.measurement.zzaif;
import com.google.android.gms.measurement.internal.zzfy;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class m24 implements rxa {
    public static final /* synthetic */ m24 c = new m24(1);
    public static final /* synthetic */ m24 d = new m24(2);
    public final /* synthetic */ int b;

    public /* synthetic */ m24(int i) {
        this.b = i;
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        switch (this.b) {
            case 1:
                return new Boolean(zzahb.zza());
            default:
                List list = zzfy.a;
                return Boolean.valueOf(zzaif.zzd());
        }
    }
}
