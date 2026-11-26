package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class ar3 implements br3<Object> {
    public volatile Object b;
    public final /* synthetic */ br3 c;

    public ar3(br3 br3Var) {
        this.c = br3Var;
    }

    @Override // defpackage.br3
    public final Object get() {
        if (this.b == null) {
            synchronized (this) {
                try {
                    if (this.b == null) {
                        Object obj = this.c.get();
                        r96.c(obj, "Argument must not be null");
                        this.b = obj;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.b;
    }
}
