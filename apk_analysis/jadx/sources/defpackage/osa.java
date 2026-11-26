package defpackage;

import com.google.android.gms.internal.measurement.zzadj;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class osa extends ssa {
    public osa() {
        Map map = Collections.EMPTY_MAP;
        this.d = map;
        this.g = map;
    }

    @Override // defpackage.ssa
    public final void a() {
        if (!this.e) {
            for (int i = 0; i < this.c; i++) {
                psa psaVarB = b(i);
                if (((zzadj) psaVarB.b).zzd()) {
                    psaVarB.setValue(Collections.unmodifiableList((List) psaVarB.c));
                }
            }
            for (Map.Entry entry : c()) {
                if (((zzadj) entry.getKey()).zzd()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.a();
    }
}
