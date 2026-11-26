package defpackage;

import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.internal.measurement.zzahe;
import com.google.android.gms.measurement.internal.zzfy;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class uv4 implements rxa {
    public static final /* synthetic */ uv4 c = new uv4(1);
    public static final /* synthetic */ uv4 d = new uv4(2);
    public final /* synthetic */ int b;

    public /* synthetic */ uv4(int i) {
        this.b = i;
    }

    public static tv4 a() {
        return c17.e == null ? new c17() : new nt();
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        switch (this.b) {
            case 1:
                List list = zzfy.a;
                return zzahe.zzc();
            default:
                List list2 = zzfy.a;
                return Integer.valueOf((int) zzags.zzau());
        }
    }
}
