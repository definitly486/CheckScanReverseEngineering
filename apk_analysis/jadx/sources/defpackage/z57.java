package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class z57<T> extends rb4 {
    public final sb4.a f;

    public z57(sb4.a aVar) {
        this.f = aVar;
    }

    @Override // defpackage.rb4
    public final boolean k() {
        return false;
    }

    @Override // defpackage.rb4
    public final void l(Throwable th) {
        Object objL = j().L();
        boolean z = objL instanceof yq1;
        sb4.a aVar = this.f;
        if (z) {
            aVar.resumeWith(r57.a(((yq1) objL).a));
        } else {
            aVar.resumeWith(vp2.f(objL));
        }
    }
}
