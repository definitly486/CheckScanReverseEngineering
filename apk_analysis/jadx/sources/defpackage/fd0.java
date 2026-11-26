package defpackage;

import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.internal.measurement.zzagy;
import com.google.android.gms.internal.measurement.zzaif;
import com.google.android.gms.measurement.internal.zzfy;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class fd0 implements rxa {
    public static final /* synthetic */ fd0 c = new fd0(1);
    public static final /* synthetic */ fd0 d = new fd0(2);
    public static final /* synthetic */ fd0 e = new fd0(3);
    public final /* synthetic */ int b;

    public /* synthetic */ fd0(int i) {
        this.b = i;
    }

    public static final String a(BaseFragment baseFragment) {
        return baseFragment.getClass().getSimpleName() + "_" + baseFragment.hashCode();
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        switch (this.b) {
            case 1:
                return new Boolean(zzagy.zza());
            case 2:
                List list = zzfy.a;
                return Long.valueOf(zzags.zzax());
            default:
                List list2 = zzfy.a;
                return Boolean.valueOf(zzaif.zzf());
        }
    }
}
