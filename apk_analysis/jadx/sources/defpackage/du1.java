package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public interface du1 {
    boolean decodeBooleanElement(mp7 mp7Var, int i);

    byte decodeByteElement(mp7 mp7Var, int i);

    char decodeCharElement(mp7 mp7Var, int i);

    default int decodeCollectionSize(mp7 mp7Var) {
        mp7Var.getClass();
        return -1;
    }

    double decodeDoubleElement(mp7 mp7Var, int i);

    int decodeElementIndex(mp7 mp7Var);

    float decodeFloatElement(mp7 mp7Var, int i);

    ud2 decodeInlineElement(mp7 mp7Var, int i);

    int decodeIntElement(mp7 mp7Var, int i);

    long decodeLongElement(mp7 mp7Var, int i);

    <T> T decodeNullableSerializableElement(mp7 mp7Var, int i, xl2<? extends T> xl2Var, T t);

    default boolean decodeSequentially() {
        return false;
    }

    <T> T decodeSerializableElement(mp7 mp7Var, int i, xl2<? extends T> xl2Var, T t);

    short decodeShortElement(mp7 mp7Var, int i);

    String decodeStringElement(mp7 mp7Var, int i);

    void endStructure(mp7 mp7Var);

    jq7 getSerializersModule();
}
