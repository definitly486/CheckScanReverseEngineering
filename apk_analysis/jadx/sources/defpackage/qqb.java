package defpackage;

import com.google.android.gms.internal.play_billing.zzgg;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class qqb extends nrb {
    public qqb() {
        Map map = Collections.EMPTY_MAP;
        this.d = map;
        this.g = map;
    }

    @Override // defpackage.nrb
    public final void a() {
        if (!this.e) {
            for (int i = 0; i < this.c; i++) {
                uqb uqbVarD = d(i);
                if (uqbVarD.b.zze()) {
                    uqbVarD.setValue(Collections.unmodifiableList((List) uqbVarD.c));
                }
            }
            for (Map.Entry entry : b()) {
                if (((zzgg) entry.getKey()).zze()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.a();
    }
}
