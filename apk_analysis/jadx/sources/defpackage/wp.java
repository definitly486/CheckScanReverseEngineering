package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class wp implements vp {
    public final hi0<Boolean> a = hi0.i(Boolean.TRUE);

    @Override // defpackage.vp
    public final hi0 a() {
        return this.a;
    }

    @Override // defpackage.vp
    public final void b(boolean z) {
        this.a.onNext(Boolean.valueOf(z));
    }
}
