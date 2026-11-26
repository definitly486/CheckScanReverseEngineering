package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public interface ux2 {
    default gu1 beginCollection(mp7 mp7Var, int i) {
        mp7Var.getClass();
        return beginStructure(mp7Var);
    }

    gu1 beginStructure(mp7 mp7Var);

    void encodeBoolean(boolean z);

    void encodeByte(byte b);

    void encodeChar(char c);

    void encodeDouble(double d);

    void encodeEnum(mp7 mp7Var, int i);

    void encodeFloat(float f);

    ux2 encodeInline(mp7 mp7Var);

    void encodeInt(int i);

    void encodeLong(long j);

    default void encodeNotNullMark() {
    }

    void encodeNull();

    /* JADX WARN: Multi-variable type inference failed */
    default <T> void encodeSerializableValue(xp7<? super T> xp7Var, T t) {
        xp7Var.getClass();
        xp7Var.serialize(this, t);
    }

    void encodeShort(short s);

    void encodeString(String str);

    jq7 getSerializersModule();
}
