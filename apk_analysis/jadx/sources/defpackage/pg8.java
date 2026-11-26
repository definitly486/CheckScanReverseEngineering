package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class pg8 extends f02 implements nm3<Object> {
    private final int arity;

    public pg8(int i, e02<Object> e02Var) {
        super(e02Var);
        this.arity = i;
    }

    @Override // defpackage.nm3
    public int getArity() {
        return this.arity;
    }

    @Override // defpackage.cd0
    public String toString() {
        if (getCompletion() != null) {
            return super.toString();
        }
        x07.a.getClass();
        return a17.a(this);
    }

    public pg8(int i) {
        this(i, null);
    }
}
