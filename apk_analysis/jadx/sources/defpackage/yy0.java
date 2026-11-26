package defpackage;

import okhttp3.a;

/* JADX INFO: loaded from: classes3.dex */
public final class yy0 implements nl3<Throwable, j59> {
    public final /* synthetic */ a b;

    public yy0(a aVar) {
        this.b = aVar;
    }

    @Override // defpackage.nl3
    public final j59 invoke(Throwable th) {
        this.b.cancel();
        return j59.a;
    }
}
