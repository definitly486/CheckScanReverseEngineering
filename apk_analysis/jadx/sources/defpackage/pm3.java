package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public class pm3 extends qy0 implements nm3, qe4 {
    private final int arity;

    public pm3(int i, Object obj, Class cls, String str, String str2, int i2) {
        super(obj, cls, str, str2, (i2 & 1) == 1);
        this.arity = i;
    }

    @Override // defpackage.qy0
    public me4 computeReflected() {
        x07.a.getClass();
        return this;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof pm3) {
            pm3 pm3Var = (pm3) obj;
            return getName().equals(pm3Var.getName()) && getSignature().equals(pm3Var.getSignature()) && aa4.e(getBoundReceiver(), pm3Var.getBoundReceiver()) && aa4.e(getOwner(), pm3Var.getOwner());
        }
        if (obj instanceof qe4) {
            return obj.equals(compute());
        }
        return false;
    }

    @Override // defpackage.nm3
    public int getArity() {
        return this.arity;
    }

    @Override // defpackage.qy0
    public qe4 getReflected() {
        return (qe4) super.getReflected();
    }

    public int hashCode() {
        return getSignature().hashCode() + ((getName().hashCode() + (getOwner() == null ? 0 : getOwner().hashCode() * 31)) * 31);
    }

    @Override // defpackage.qe4
    public boolean isExternal() {
        return getReflected().isExternal();
    }

    @Override // defpackage.qe4
    public boolean isInfix() {
        return getReflected().isInfix();
    }

    @Override // defpackage.qe4
    public boolean isInline() {
        return getReflected().isInline();
    }

    @Override // defpackage.qe4
    public boolean isOperator() {
        return getReflected().isOperator();
    }

    @Override // defpackage.qy0, defpackage.me4, defpackage.qe4
    public boolean isSuspend() {
        return getReflected().isSuspend();
    }

    public String toString() {
        me4 me4VarCompute = compute();
        if (me4VarCompute != this) {
            return me4VarCompute.toString();
        }
        if ("<init>".equals(getName())) {
            return "constructor (Kotlin reflection is not available)";
        }
        return "function " + getName() + " (Kotlin reflection is not available)";
    }

    public pm3(int i, Object obj) {
        this(i, obj, null, null, null, 0);
    }

    public pm3(int i) {
        this(i, qy0.NO_RECEIVER, null, null, null, 0);
    }
}
