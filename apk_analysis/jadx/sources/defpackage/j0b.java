package defpackage;

import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.internal.measurement.zzaic;
import com.google.android.gms.measurement.internal.zzfy;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class j0b implements rxa {
    public static final /* synthetic */ j0b c = new j0b(0);
    public static final /* synthetic */ j0b d = new j0b(1);
    public final /* synthetic */ int b;

    public /* synthetic */ j0b(int i) {
        this.b = i;
    }

    public static boolean a(byte b) {
        return b > -65;
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        switch (this.b) {
            case 0:
                List list = zzfy.a;
                return Long.valueOf(zzags.zzW());
            default:
                List list2 = zzfy.a;
                return Integer.valueOf((int) zzaic.zzd());
        }
    }
}
