package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class tg6<E> extends a91<E> implements ug6<E> {
    @Override // defpackage.ug6
    public final no7 getChannel() {
        return this;
    }

    @Override // defpackage.a0
    public final void k0(Throwable th, boolean z) {
        if (this.f.d(th, false) || z) {
            return;
        }
        v22.a(this.e, th);
    }

    @Override // defpackage.a0
    public final void l0(j59 j59Var) {
        this.f.close(null);
    }
}
