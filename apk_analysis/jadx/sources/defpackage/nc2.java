package defpackage;

import java.util.Date;

/* JADX INFO: loaded from: classes5.dex */
public final class nc2 implements pz3 {
    public final Date a;

    public nc2(Date date) {
        this.a = date;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return Long.valueOf(this.a.getTime());
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Long.valueOf(this.a.getTime());
    }
}
