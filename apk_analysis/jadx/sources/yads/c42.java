package yads;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class c42 implements defpackage.mm3 {
    public final /* synthetic */ e42 a;

    public c42(e42 e42Var) {
        this.a = e42Var;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof c42) {
            return defpackage.aa4.e(getFunctionDelegate(), ((defpackage.mm3) obj).getFunctionDelegate());
        }
        return false;
    }

    @Override // defpackage.mm3
    public final defpackage.cm3 getFunctionDelegate() {
        return new defpackage.qm3(1, this.a, e42.class, "onCreate", "onCreate(Lcom/yandex/div/storage/database/DatabaseOpenHelper$Database;)V", 0);
    }

    public final int hashCode() {
        return getFunctionDelegate().hashCode();
    }
}
