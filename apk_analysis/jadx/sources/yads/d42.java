package yads;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class d42 implements defpackage.mm3 {
    public final /* synthetic */ e42 a;

    public d42(e42 e42Var) {
        this.a = e42Var;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof d42) {
            return defpackage.aa4.e(getFunctionDelegate(), ((defpackage.mm3) obj).getFunctionDelegate());
        }
        return false;
    }

    @Override // defpackage.mm3
    public final defpackage.cm3 getFunctionDelegate() {
        return new defpackage.qm3(3, this.a, e42.class, "onUpgrade", "onUpgrade(Lcom/yandex/div/storage/database/DatabaseOpenHelper$Database;II)V", 0);
    }

    public final int hashCode() {
        return getFunctionDelegate().hashCode();
    }
}
