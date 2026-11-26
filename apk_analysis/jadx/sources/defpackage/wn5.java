package defpackage;

import android.graphics.Canvas;
import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.internal.measurement.zzaif;
import com.google.android.gms.measurement.internal.zzfy;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class wn5 implements hk0, rxa {
    public static final /* synthetic */ wn5 c = new wn5(1);
    public static final /* synthetic */ wn5 d = new wn5(2);
    public final /* synthetic */ int b;

    public /* synthetic */ wn5(int i) {
        this.b = i;
    }

    @Override // defpackage.hk0
    public hk0 a() {
        return this;
    }

    @Override // defpackage.hk0
    public void b() {
    }

    @Override // defpackage.hk0
    public hk0 c(boolean z) {
        return this;
    }

    @Override // defpackage.hk0
    public void destroy() {
    }

    @Override // defpackage.hk0
    public boolean draw(Canvas canvas) {
        return true;
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        switch (this.b) {
            case 1:
                List list = zzfy.a;
                return Long.valueOf(zzags.zzG());
            default:
                List list2 = zzfy.a;
                return Boolean.valueOf(zzaif.zzc());
        }
    }
}
