package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public interface gu1 {
    void encodeBooleanElement(mp7 mp7Var, int i, boolean z);

    void encodeByteElement(mp7 mp7Var, int i, byte b);

    void encodeCharElement(mp7 mp7Var, int i, char c);

    void encodeDoubleElement(mp7 mp7Var, int i, double d);

    void encodeFloatElement(mp7 mp7Var, int i, float f);

    ux2 encodeInlineElement(mp7 mp7Var, int i);

    void encodeIntElement(mp7 mp7Var, int i, int i2);

    void encodeLongElement(mp7 mp7Var, int i, long j);

    <T> void encodeNullableSerializableElement(mp7 mp7Var, int i, xp7<? super T> xp7Var, T t);

    <T> void encodeSerializableElement(mp7 mp7Var, int i, xp7<? super T> xp7Var, T t);

    void encodeShortElement(mp7 mp7Var, int i, short s);

    void encodeStringElement(mp7 mp7Var, int i, String str);

    void endStructure(mp7 mp7Var);

    default boolean shouldEncodeElementDefault(mp7 mp7Var, int i) {
        mp7Var.getClass();
        return true;
    }
}
