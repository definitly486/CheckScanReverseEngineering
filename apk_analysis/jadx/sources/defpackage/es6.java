package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class es6 extends qy0 implements ze4 {
    private final boolean syntheticJavaProperty;

    public es6(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, (i & 1) == 1);
        this.syntheticJavaProperty = (i & 2) == 2;
    }

    @Override // defpackage.qy0
    public me4 compute() {
        return this.syntheticJavaProperty ? this : super.compute();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof es6) {
            es6 es6Var = (es6) obj;
            return getOwner().equals(es6Var.getOwner()) && getName().equals(es6Var.getName()) && getSignature().equals(es6Var.getSignature()) && aa4.e(getBoundReceiver(), es6Var.getBoundReceiver());
        }
        if (obj instanceof ze4) {
            return obj.equals(compute());
        }
        return false;
    }

    @Override // defpackage.qy0
    public ze4 getReflected() {
        if (!this.syntheticJavaProperty) {
            return (ze4) super.getReflected();
        }
        n1.e("Kotlin reflection is not yet supported for synthetic Java properties. Please follow/upvote https://youtrack.jetbrains.com/issue/KT-55980");
        return null;
    }

    public int hashCode() {
        return getSignature().hashCode() + ((getName().hashCode() + (getOwner().hashCode() * 31)) * 31);
    }

    @Override // defpackage.ze4
    public boolean isConst() {
        return getReflected().isConst();
    }

    @Override // defpackage.ze4
    public boolean isLateinit() {
        return getReflected().isLateinit();
    }

    public String toString() {
        me4 me4VarCompute = compute();
        if (me4VarCompute != this) {
            return me4VarCompute.toString();
        }
        return "property " + getName() + " (Kotlin reflection is not available)";
    }

    public es6(Object obj) {
        super(obj);
        this.syntheticJavaProperty = false;
    }

    public es6() {
        this.syntheticJavaProperty = false;
    }
}
