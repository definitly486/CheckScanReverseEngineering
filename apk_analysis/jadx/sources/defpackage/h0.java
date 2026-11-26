package defpackage;

import kotlinx.serialization.SerializationException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class h0 implements ux2, gu1 {
    @Override // defpackage.ux2
    public /* bridge */ gu1 beginCollection(mp7 mp7Var, int i) {
        return super.beginCollection(mp7Var, i);
    }

    @Override // defpackage.ux2
    public gu1 beginStructure(mp7 mp7Var) {
        mp7Var.getClass();
        return this;
    }

    @Override // defpackage.ux2
    public void encodeBoolean(boolean z) {
        encodeValue(Boolean.valueOf(z));
    }

    @Override // defpackage.gu1
    public final void encodeBooleanElement(mp7 mp7Var, int i, boolean z) {
        mp7Var.getClass();
        if (encodeElement(mp7Var, i)) {
            encodeBoolean(z);
        }
    }

    @Override // defpackage.ux2
    public void encodeByte(byte b) {
        encodeValue(Byte.valueOf(b));
    }

    @Override // defpackage.gu1
    public final void encodeByteElement(mp7 mp7Var, int i, byte b) {
        mp7Var.getClass();
        if (encodeElement(mp7Var, i)) {
            encodeByte(b);
        }
    }

    @Override // defpackage.ux2
    public void encodeChar(char c) {
        encodeValue(Character.valueOf(c));
    }

    @Override // defpackage.gu1
    public final void encodeCharElement(mp7 mp7Var, int i, char c) {
        mp7Var.getClass();
        if (encodeElement(mp7Var, i)) {
            encodeChar(c);
        }
    }

    @Override // defpackage.ux2
    public void encodeDouble(double d) {
        encodeValue(Double.valueOf(d));
    }

    @Override // defpackage.gu1
    public final void encodeDoubleElement(mp7 mp7Var, int i, double d) {
        mp7Var.getClass();
        if (encodeElement(mp7Var, i)) {
            encodeDouble(d);
        }
    }

    public boolean encodeElement(mp7 mp7Var, int i) {
        mp7Var.getClass();
        return true;
    }

    @Override // defpackage.ux2
    public void encodeEnum(mp7 mp7Var, int i) {
        mp7Var.getClass();
        encodeValue(Integer.valueOf(i));
    }

    @Override // defpackage.ux2
    public void encodeFloat(float f) {
        encodeValue(Float.valueOf(f));
    }

    @Override // defpackage.gu1
    public final void encodeFloatElement(mp7 mp7Var, int i, float f) {
        mp7Var.getClass();
        if (encodeElement(mp7Var, i)) {
            encodeFloat(f);
        }
    }

    @Override // defpackage.ux2
    public ux2 encodeInline(mp7 mp7Var) {
        mp7Var.getClass();
        return this;
    }

    @Override // defpackage.gu1
    public final ux2 encodeInlineElement(mp7 mp7Var, int i) {
        mp7Var.getClass();
        return encodeElement(mp7Var, i) ? encodeInline(mp7Var.d(i)) : xn5.a;
    }

    @Override // defpackage.ux2
    public void encodeInt(int i) {
        encodeValue(Integer.valueOf(i));
    }

    @Override // defpackage.gu1
    public final void encodeIntElement(mp7 mp7Var, int i, int i2) {
        mp7Var.getClass();
        if (encodeElement(mp7Var, i)) {
            encodeInt(i2);
        }
    }

    @Override // defpackage.ux2
    public void encodeLong(long j) {
        encodeValue(Long.valueOf(j));
    }

    @Override // defpackage.gu1
    public final void encodeLongElement(mp7 mp7Var, int i, long j) {
        mp7Var.getClass();
        if (encodeElement(mp7Var, i)) {
            encodeLong(j);
        }
    }

    @Override // defpackage.ux2
    public /* bridge */ void encodeNotNullMark() {
    }

    @Override // defpackage.ux2
    public void encodeNull() {
        throw new SerializationException("'null' is not supported by default");
    }

    @Override // defpackage.gu1
    public <T> void encodeNullableSerializableElement(mp7 mp7Var, int i, xp7<? super T> xp7Var, T t) {
        mp7Var.getClass();
        xp7Var.getClass();
        if (encodeElement(mp7Var, i)) {
            encodeNullableSerializableValue(xp7Var, t);
        }
    }

    public <T> void encodeNullableSerializableValue(xp7<? super T> xp7Var, T t) {
        xp7Var.getClass();
        if (xp7Var.getDescriptor().b()) {
            encodeSerializableValue(xp7Var, t);
        } else if (t == null) {
            encodeNull();
        } else {
            encodeNotNullMark();
            encodeSerializableValue(xp7Var, t);
        }
    }

    @Override // defpackage.gu1
    public <T> void encodeSerializableElement(mp7 mp7Var, int i, xp7<? super T> xp7Var, T t) {
        mp7Var.getClass();
        xp7Var.getClass();
        if (encodeElement(mp7Var, i)) {
            encodeSerializableValue(xp7Var, t);
        }
    }

    @Override // defpackage.ux2
    public /* bridge */ <T> void encodeSerializableValue(xp7<? super T> xp7Var, T t) {
        super.encodeSerializableValue(xp7Var, t);
    }

    @Override // defpackage.ux2
    public void encodeShort(short s) {
        encodeValue(Short.valueOf(s));
    }

    @Override // defpackage.gu1
    public final void encodeShortElement(mp7 mp7Var, int i, short s) {
        mp7Var.getClass();
        if (encodeElement(mp7Var, i)) {
            encodeShort(s);
        }
    }

    @Override // defpackage.ux2
    public void encodeString(String str) {
        str.getClass();
        encodeValue(str);
    }

    @Override // defpackage.gu1
    public final void encodeStringElement(mp7 mp7Var, int i, String str) {
        mp7Var.getClass();
        str.getClass();
        if (encodeElement(mp7Var, i)) {
            encodeString(str);
        }
    }

    public void encodeValue(Object obj) {
        obj.getClass();
        throw new SerializationException("Non-serializable " + x07.a(obj.getClass()) + " is not supported by " + x07.a(getClass()) + " encoder");
    }

    @Override // defpackage.gu1
    public void endStructure(mp7 mp7Var) {
        mp7Var.getClass();
    }

    public boolean shouldEncodeElementDefault(mp7 mp7Var, int i) {
        mp7Var.getClass();
        return true;
    }
}
