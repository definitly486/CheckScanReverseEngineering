package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class r8c extends n9c {
    public volatile double f;

    @Override // defpackage.v7c
    public final /* synthetic */ Object a() {
        return Double.valueOf(-3.0d);
    }

    @Override // defpackage.v7c
    public final /* synthetic */ Object b(String str) {
        return Double.valueOf(Double.parseDouble(str));
    }

    @Override // defpackage.v7c
    public final /* synthetic */ Object c(Object obj) {
        return (Double) obj;
    }

    @Override // defpackage.n9c
    public final /* synthetic */ Object d() {
        return Double.valueOf(this.f);
    }

    @Override // defpackage.n9c
    public final /* synthetic */ void e(Object obj) {
        this.f = ((Double) obj).doubleValue();
    }
}
