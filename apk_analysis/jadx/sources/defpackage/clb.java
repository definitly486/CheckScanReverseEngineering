package defpackage;

import com.google.android.gms.internal.play_billing.zzhr;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class clb implements Map.Entry {
    public final Map.Entry b;

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.b.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        slb slbVar = (slb) this.b.getValue();
        if (slbVar == null) {
            return null;
        }
        return slbVar.a();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (!(obj instanceof zzhr)) {
            fg.c("Lazy field only supports MessageLite values.");
            return null;
        }
        Map.Entry entry = this.b;
        zzhr zzhrVar = ((slb) entry.getValue()).d;
        entry.setValue(new slb((zzhr) obj));
        return zzhrVar;
    }
}
