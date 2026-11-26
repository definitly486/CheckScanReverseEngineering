package defpackage;

import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.internal.measurement.zzaiu;
import com.google.android.gms.measurement.internal.zzfy;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class oq implements yo4, rxa {
    public static final /* synthetic */ oq c = new oq(1);
    public static final /* synthetic */ oq d = new oq(2);
    public final /* synthetic */ int b;

    public /* synthetic */ oq(int i) {
        this.b = i;
    }

    @Override // defpackage.yo4
    public void a(up4 up4Var) {
        up4Var.onStart();
    }

    @Override // defpackage.yo4
    public void b(up4 up4Var) {
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        switch (this.b) {
            case 1:
                List list = zzfy.a;
                return zzags.zzF();
            default:
                return new Boolean(zzaiu.zza());
        }
    }
}
