package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class pza extends zza {
    public final /* synthetic */ p0b f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pza(p0b p0bVar) {
        super(p0bVar);
        this.f = p0bVar;
    }

    @Override // defpackage.zza
    public final Object a(int i) {
        Object obj = p0b.k;
        return this.f.d()[i];
    }
}
