package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public interface ud2 {
    du1 beginStructure(mp7 mp7Var);

    boolean decodeBoolean();

    byte decodeByte();

    char decodeChar();

    double decodeDouble();

    int decodeEnum(mp7 mp7Var);

    float decodeFloat();

    ud2 decodeInline(mp7 mp7Var);

    int decodeInt();

    long decodeLong();

    boolean decodeNotNullMark();

    Void decodeNull();

    default <T> T decodeSerializableValue(xl2<? extends T> xl2Var) {
        xl2Var.getClass();
        return xl2Var.deserialize(this);
    }

    short decodeShort();

    String decodeString();
}
