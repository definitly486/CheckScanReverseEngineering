package defpackage;

import com.google.android.gms.internal.auth.zzep;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ojb extends xkb {
    @Override // defpackage.xkb
    public final void a() {
        if (!this.e) {
            for (int i = 0; i < this.c.size(); i++) {
                Map.Entry entry = (Map.Entry) this.c.get(i);
                if (((zzep) entry.getKey()).zzc()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
            for (Map.Entry entry2 : this.d.isEmpty() ? aq5.f : this.d.entrySet()) {
                if (((zzep) entry2.getKey()).zzc()) {
                    entry2.setValue(Collections.unmodifiableList((List) entry2.getValue()));
                }
            }
        }
        super.a();
    }
}
