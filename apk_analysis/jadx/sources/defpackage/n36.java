package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class n36 implements cy6 {
    public final /* synthetic */ int b = 0;
    public final Object c;
    public Object d;

    public n36(ea1 ea1Var, String str, Object[] objArr) {
        ea1Var.getClass();
        this.c = ea1Var.A0();
        this.d = String.format(str, objArr);
    }

    public void a(Object obj, ze4 ze4Var, Object obj2) {
        ze4Var.getClass();
        if (aa4.e(this.d, obj2)) {
            return;
        }
        this.d = obj2;
        ((ke9) this.c).invoke();
    }

    @Override // defpackage.by6
    public Object getValue(Object obj, ze4 ze4Var) {
        ze4Var.getClass();
        return this.d;
    }

    public String toString() {
        switch (this.b) {
            case 0:
                return "<" + ((String) this.c) + ">: " + ((String) this.d);
            default:
                return super.toString();
        }
    }

    public n36(ea1 ea1Var, String str) {
        ea1Var.getClass();
        this.c = ea1Var.A0();
        this.d = str;
    }

    public n36(Object obj, ke9 ke9Var) {
        this.c = ke9Var;
        this.d = obj;
    }
}
