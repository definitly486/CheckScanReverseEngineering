package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class aeb implements efb {
    public final efb[] b;

    public aeb(efb... efbVarArr) {
        this.b = efbVarArr;
    }

    @Override // defpackage.efb
    public final zeb a(Class cls) {
        for (int i = 0; i < 2; i++) {
            efb efbVar = this.b[i];
            if (efbVar.b(cls)) {
                return efbVar.a(cls);
            }
        }
        n1.e("No factory is available for message type: ".concat(cls.getName()));
        return null;
    }

    @Override // defpackage.efb
    public final boolean b(Class cls) {
        for (int i = 0; i < 2; i++) {
            if (this.b[i].b(cls)) {
                return true;
            }
        }
        return false;
    }
}
