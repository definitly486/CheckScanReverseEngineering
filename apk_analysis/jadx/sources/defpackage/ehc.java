package defpackage;

import com.google.android.gms.common.zzy;

/* JADX INFO: loaded from: classes4.dex */
public final class ehc extends zzy {
    public final g1c f;

    public /* synthetic */ ehc(g1c g1cVar) {
        super(null, null, false, 1);
        this.f = g1cVar;
    }

    @Override // com.google.android.gms.common.zzy
    public final String a() {
        try {
            return (String) this.f.call();
        } catch (Exception e) {
            ti0.f(e);
            return null;
        }
    }
}
