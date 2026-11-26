package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class ufb implements sgb {
    public final sgb[] a;

    public ufb(sgb... sgbVarArr) {
        this.a = sgbVarArr;
    }

    @Override // defpackage.sgb
    public final ogb a(Class cls) {
        for (int i = 0; i < 2; i++) {
            sgb sgbVar = this.a[i];
            if (sgbVar.b(cls)) {
                return sgbVar.a(cls);
            }
        }
        n1.e("No factory is available for message type: ".concat(cls.getName()));
        return null;
    }

    @Override // defpackage.sgb
    public final boolean b(Class cls) {
        for (int i = 0; i < 2; i++) {
            if (this.a[i].b(cls)) {
                return true;
            }
        }
        return false;
    }
}
