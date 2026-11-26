package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class wr6<Object, Field> implements d3<Object, Field> {
    public final xe4<Object, Field> a;

    public wr6(xe4<Object, Field> xe4Var) {
        xe4Var.getClass();
        this.a = xe4Var;
    }

    @Override // defpackage.d3
    public final Field a(Object object) {
        return this.a.get(object);
    }

    @Override // defpackage.d3
    public final Field b(Object object) {
        xe4<Object, Field> xe4Var = this.a;
        Field field = xe4Var.get(object);
        if (field != null) {
            return field;
        }
        ki0.c(xe4Var.getName(), "Field ", " is not set");
        return null;
    }

    @Override // defpackage.hs
    public final Field c(Object object, Field field) {
        xe4<Object, Field> xe4Var = this.a;
        Field field2 = xe4Var.get(object);
        if (field2 == null) {
            xe4Var.set(object, field);
            return null;
        }
        if (field2.equals(field)) {
            return null;
        }
        return field2;
    }
}
