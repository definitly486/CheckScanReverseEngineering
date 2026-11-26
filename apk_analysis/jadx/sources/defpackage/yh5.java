package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public abstract class yh5 implements ud2, du1 {
    public final ArrayList<String> a = new ArrayList<>();
    public boolean b;

    public abstract boolean c(String str);

    public abstract byte d(String str);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.ud2
    public final boolean decodeBoolean() {
        return c(p());
    }

    @Override // defpackage.du1
    public final boolean decodeBooleanElement(mp7 mp7Var, int i) {
        mp7Var.getClass();
        return c(o(mp7Var, i));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.ud2
    public final byte decodeByte() {
        return d(p());
    }

    @Override // defpackage.du1
    public final byte decodeByteElement(mp7 mp7Var, int i) {
        return d(o(mp7Var, i));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.ud2
    public final char decodeChar() {
        return e(p());
    }

    @Override // defpackage.du1
    public final char decodeCharElement(mp7 mp7Var, int i) {
        return e(o(mp7Var, i));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.ud2
    public final double decodeDouble() {
        return f(p());
    }

    @Override // defpackage.du1
    public final double decodeDoubleElement(mp7 mp7Var, int i) {
        mp7Var.getClass();
        return f(o(mp7Var, i));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.ud2
    public final int decodeEnum(mp7 mp7Var) {
        mp7Var.getClass();
        return g(p(), mp7Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.ud2
    public final float decodeFloat() {
        return h(p());
    }

    @Override // defpackage.du1
    public final float decodeFloatElement(mp7 mp7Var, int i) {
        return h(o(mp7Var, i));
    }

    @Override // defpackage.du1
    public final ud2 decodeInlineElement(mp7 mp7Var, int i) {
        return i(o(mp7Var, i), ((kr4) mp7Var).d(i));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.ud2
    public final int decodeInt() {
        return j(p());
    }

    @Override // defpackage.du1
    public final int decodeIntElement(mp7 mp7Var, int i) {
        mp7Var.getClass();
        return j(o(mp7Var, i));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.ud2
    public final long decodeLong() {
        return k(p());
    }

    @Override // defpackage.du1
    public final long decodeLongElement(mp7 mp7Var, int i) {
        mp7Var.getClass();
        return k(o(mp7Var, i));
    }

    @Override // defpackage.ud2
    public final Void decodeNull() {
        return null;
    }

    @Override // defpackage.du1
    public final <T> T decodeNullableSerializableElement(mp7 mp7Var, int i, xl2<? extends T> xl2Var, T t) {
        mp7Var.getClass();
        xl2Var.getClass();
        this.a.add(o(mp7Var, i));
        T t2 = (xl2Var.getDescriptor().b() || decodeNotNullMark()) ? (T) decodeSerializableValue(xl2Var) : null;
        if (!this.b) {
            p();
        }
        this.b = false;
        return t2;
    }

    @Override // defpackage.du1
    public final <T> T decodeSerializableElement(mp7 mp7Var, int i, xl2<? extends T> xl2Var, T t) {
        mp7Var.getClass();
        xl2Var.getClass();
        this.a.add(o(mp7Var, i));
        xl2Var.getClass();
        T t2 = (T) decodeSerializableValue(xl2Var);
        if (!this.b) {
            p();
        }
        this.b = false;
        return t2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.ud2
    public final short decodeShort() {
        return l(p());
    }

    @Override // defpackage.du1
    public final short decodeShortElement(mp7 mp7Var, int i) {
        return l(o(mp7Var, i));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.ud2
    public final String decodeString() {
        return m(p());
    }

    @Override // defpackage.du1
    public final String decodeStringElement(mp7 mp7Var, int i) {
        mp7Var.getClass();
        return m(o(mp7Var, i));
    }

    public abstract char e(String str);

    public abstract double f(String str);

    public abstract int g(String str, mp7 mp7Var);

    public abstract float h(String str);

    public abstract ud2 i(String str, mp7 mp7Var);

    public abstract int j(String str);

    public abstract long k(String str);

    public abstract short l(String str);

    public abstract String m(String str);

    public String n(mp7 mp7Var, int i) {
        mp7Var.getClass();
        return mp7Var.f(i);
    }

    public final String o(mp7 mp7Var, int i) {
        mp7Var.getClass();
        String strN = n(mp7Var, i);
        strN.getClass();
        return strN;
    }

    public final String p() {
        ArrayList<String> arrayList = this.a;
        String strRemove = arrayList.remove(u96.g(arrayList));
        this.b = true;
        return strRemove;
    }

    public final String q() {
        ArrayList<String> arrayList = this.a;
        return arrayList.isEmpty() ? "$" : qn1.a0(arrayList, ".", "$.", null, 0, null, 60);
    }
}
