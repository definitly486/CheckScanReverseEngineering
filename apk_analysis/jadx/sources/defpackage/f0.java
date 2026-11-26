package defpackage;

import kotlinx.serialization.SerializationException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class f0 implements ud2, du1 {
    public static /* synthetic */ Object decodeSerializableValue$default(f0 f0Var, xl2 xl2Var, Object obj, int i, Object obj2) {
        if (obj2 != null) {
            n1.e("Super calls with default arguments not supported in this target, function: decodeSerializableValue");
            return null;
        }
        if ((i & 2) != 0) {
            obj = null;
        }
        return f0Var.decodeSerializableValue(xl2Var, obj);
    }

    @Override // defpackage.ud2
    public du1 beginStructure(mp7 mp7Var) {
        mp7Var.getClass();
        return this;
    }

    @Override // defpackage.ud2
    public boolean decodeBoolean() {
        Object objDecodeValue = decodeValue();
        objDecodeValue.getClass();
        return ((Boolean) objDecodeValue).booleanValue();
    }

    @Override // defpackage.du1
    public final boolean decodeBooleanElement(mp7 mp7Var, int i) {
        mp7Var.getClass();
        return decodeBoolean();
    }

    @Override // defpackage.ud2
    public byte decodeByte() {
        Object objDecodeValue = decodeValue();
        objDecodeValue.getClass();
        return ((Byte) objDecodeValue).byteValue();
    }

    @Override // defpackage.du1
    public final byte decodeByteElement(mp7 mp7Var, int i) {
        mp7Var.getClass();
        return decodeByte();
    }

    @Override // defpackage.ud2
    public char decodeChar() {
        Object objDecodeValue = decodeValue();
        objDecodeValue.getClass();
        return ((Character) objDecodeValue).charValue();
    }

    @Override // defpackage.du1
    public final char decodeCharElement(mp7 mp7Var, int i) {
        mp7Var.getClass();
        return decodeChar();
    }

    @Override // defpackage.du1
    public int decodeCollectionSize(mp7 mp7Var) {
        mp7Var.getClass();
        return -1;
    }

    @Override // defpackage.ud2
    public double decodeDouble() {
        Object objDecodeValue = decodeValue();
        objDecodeValue.getClass();
        return ((Double) objDecodeValue).doubleValue();
    }

    @Override // defpackage.du1
    public final double decodeDoubleElement(mp7 mp7Var, int i) {
        mp7Var.getClass();
        return decodeDouble();
    }

    @Override // defpackage.ud2
    public int decodeEnum(mp7 mp7Var) {
        mp7Var.getClass();
        Object objDecodeValue = decodeValue();
        objDecodeValue.getClass();
        return ((Integer) objDecodeValue).intValue();
    }

    @Override // defpackage.ud2
    public float decodeFloat() {
        Object objDecodeValue = decodeValue();
        objDecodeValue.getClass();
        return ((Float) objDecodeValue).floatValue();
    }

    @Override // defpackage.du1
    public final float decodeFloatElement(mp7 mp7Var, int i) {
        mp7Var.getClass();
        return decodeFloat();
    }

    @Override // defpackage.ud2
    public ud2 decodeInline(mp7 mp7Var) {
        mp7Var.getClass();
        return this;
    }

    @Override // defpackage.du1
    public ud2 decodeInlineElement(mp7 mp7Var, int i) {
        mp7Var.getClass();
        return decodeInline(mp7Var.d(i));
    }

    @Override // defpackage.ud2
    public int decodeInt() {
        Object objDecodeValue = decodeValue();
        objDecodeValue.getClass();
        return ((Integer) objDecodeValue).intValue();
    }

    @Override // defpackage.du1
    public final int decodeIntElement(mp7 mp7Var, int i) {
        mp7Var.getClass();
        return decodeInt();
    }

    @Override // defpackage.ud2
    public long decodeLong() {
        Object objDecodeValue = decodeValue();
        objDecodeValue.getClass();
        return ((Long) objDecodeValue).longValue();
    }

    @Override // defpackage.du1
    public final long decodeLongElement(mp7 mp7Var, int i) {
        mp7Var.getClass();
        return decodeLong();
    }

    @Override // defpackage.ud2
    public boolean decodeNotNullMark() {
        return true;
    }

    @Override // defpackage.ud2
    public Void decodeNull() {
        return null;
    }

    @Override // defpackage.du1
    public final <T> T decodeNullableSerializableElement(mp7 mp7Var, int i, xl2<? extends T> xl2Var, T t) {
        mp7Var.getClass();
        xl2Var.getClass();
        return (xl2Var.getDescriptor().b() || decodeNotNullMark()) ? (T) decodeSerializableValue(xl2Var, t) : (T) decodeNull();
    }

    public <T> T decodeNullableSerializableValue(xl2<? extends T> xl2Var) {
        xl2Var.getClass();
        return (xl2Var.getDescriptor().b() || decodeNotNullMark()) ? (T) decodeSerializableValue(xl2Var) : (T) decodeNull();
    }

    @Override // defpackage.du1
    public /* bridge */ boolean decodeSequentially() {
        return false;
    }

    @Override // defpackage.du1
    public <T> T decodeSerializableElement(mp7 mp7Var, int i, xl2<? extends T> xl2Var, T t) {
        mp7Var.getClass();
        xl2Var.getClass();
        return (T) decodeSerializableValue(xl2Var, t);
    }

    public <T> T decodeSerializableValue(xl2<? extends T> xl2Var, T t) {
        xl2Var.getClass();
        return (T) decodeSerializableValue(xl2Var);
    }

    @Override // defpackage.ud2
    public short decodeShort() {
        Object objDecodeValue = decodeValue();
        objDecodeValue.getClass();
        return ((Short) objDecodeValue).shortValue();
    }

    @Override // defpackage.du1
    public final short decodeShortElement(mp7 mp7Var, int i) {
        mp7Var.getClass();
        return decodeShort();
    }

    @Override // defpackage.ud2
    public String decodeString() {
        Object objDecodeValue = decodeValue();
        objDecodeValue.getClass();
        return (String) objDecodeValue;
    }

    @Override // defpackage.du1
    public final String decodeStringElement(mp7 mp7Var, int i) {
        mp7Var.getClass();
        return decodeString();
    }

    public Object decodeValue() {
        throw new SerializationException(x07.a(getClass()) + " can't retrieve untyped values");
    }

    @Override // defpackage.du1
    public void endStructure(mp7 mp7Var) {
        mp7Var.getClass();
    }

    @Override // defpackage.ud2
    public /* bridge */ <T> T decodeSerializableValue(xl2<? extends T> xl2Var) {
        return (T) super.decodeSerializableValue(xl2Var);
    }
}
