package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class ura implements hsa {
    public final hsa[] b;

    public ura(hsa... hsaVarArr) {
        this.b = hsaVarArr;
    }

    @Override // defpackage.hsa
    public final boolean a(Class cls) {
        for (int i = 0; i < 2; i++) {
            if (this.b[i].a(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.hsa
    public final zra b(Class cls) {
        for (int i = 0; i < 2; i++) {
            hsa hsaVar = this.b[i];
            if (hsaVar.a(cls)) {
                return hsaVar.b(cls);
            }
        }
        n1.e("No factory is available for message type: ".concat(cls.getName()));
        return null;
    }
}
