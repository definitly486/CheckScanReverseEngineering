package defpackage;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class k8 implements nm3, Serializable {
    private final int arity;
    private final int flags;
    private final boolean isTopLevel;
    private final String name;
    private final Class owner;
    protected final Object receiver;
    private final String signature;

    public k8(int i, Object obj, Class cls, String str, String str2, int i2) {
        this.receiver = obj;
        this.owner = cls;
        this.name = str;
        this.signature = str2;
        this.isTopLevel = (i2 & 1) == 1;
        this.arity = i;
        this.flags = i2 >> 1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k8)) {
            return false;
        }
        k8 k8Var = (k8) obj;
        return this.isTopLevel == k8Var.isTopLevel && this.arity == k8Var.arity && this.flags == k8Var.flags && aa4.e(this.receiver, k8Var.receiver) && aa4.e(this.owner, k8Var.owner) && this.name.equals(k8Var.name) && this.signature.equals(k8Var.signature);
    }

    @Override // defpackage.nm3
    public int getArity() {
        return this.arity;
    }

    public pe4 getOwner() {
        Class cls = this.owner;
        if (cls == null) {
            return null;
        }
        if (!this.isTopLevel) {
            return x07.a(cls);
        }
        x07.a.getClass();
        return new g16(cls);
    }

    public int hashCode() {
        Object obj = this.receiver;
        int iHashCode = (obj != null ? obj.hashCode() : 0) * 31;
        Class cls = this.owner;
        return ((((zg.b(zg.b((iHashCode + (cls != null ? cls.hashCode() : 0)) * 31, 31, this.name), 31, this.signature) + (this.isTopLevel ? 1231 : 1237)) * 31) + this.arity) * 31) + this.flags;
    }

    public String toString() {
        x07.a.getClass();
        return a17.a(this);
    }

    public k8(int i, Class cls, String str, String str2, int i2) {
        this(i, qy0.NO_RECEIVER, cls, str, str2, i2);
    }
}
