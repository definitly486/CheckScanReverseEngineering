package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class u57 {
    private static final /* synthetic */ u57[] $VALUES;
    public static final u57 BYTE_SEGMENTS;
    public static final u57 ERROR_CORRECTION_LEVEL;
    public static final u57 ISSUE_NUMBER;
    public static final u57 ORIENTATION;
    public static final u57 OTHER;
    public static final u57 PDF417_EXTRA_METADATA;
    public static final u57 POSSIBLE_COUNTRY;
    public static final u57 STRUCTURED_APPEND_PARITY;
    public static final u57 STRUCTURED_APPEND_SEQUENCE;
    public static final u57 SUGGESTED_PRICE;
    public static final u57 UPC_EAN_EXTENSION;

    static {
        u57 u57Var = new u57("OTHER", 0);
        OTHER = u57Var;
        u57 u57Var2 = new u57("ORIENTATION", 1);
        ORIENTATION = u57Var2;
        u57 u57Var3 = new u57("BYTE_SEGMENTS", 2);
        BYTE_SEGMENTS = u57Var3;
        u57 u57Var4 = new u57("ERROR_CORRECTION_LEVEL", 3);
        ERROR_CORRECTION_LEVEL = u57Var4;
        u57 u57Var5 = new u57("ISSUE_NUMBER", 4);
        ISSUE_NUMBER = u57Var5;
        u57 u57Var6 = new u57("SUGGESTED_PRICE", 5);
        SUGGESTED_PRICE = u57Var6;
        u57 u57Var7 = new u57("POSSIBLE_COUNTRY", 6);
        POSSIBLE_COUNTRY = u57Var7;
        u57 u57Var8 = new u57("UPC_EAN_EXTENSION", 7);
        UPC_EAN_EXTENSION = u57Var8;
        u57 u57Var9 = new u57("PDF417_EXTRA_METADATA", 8);
        PDF417_EXTRA_METADATA = u57Var9;
        u57 u57Var10 = new u57("STRUCTURED_APPEND_SEQUENCE", 9);
        STRUCTURED_APPEND_SEQUENCE = u57Var10;
        u57 u57Var11 = new u57("STRUCTURED_APPEND_PARITY", 10);
        STRUCTURED_APPEND_PARITY = u57Var11;
        $VALUES = new u57[]{u57Var, u57Var2, u57Var3, u57Var4, u57Var5, u57Var6, u57Var7, u57Var8, u57Var9, u57Var10, u57Var11};
    }

    public u57() {
        throw null;
    }

    public static u57 valueOf(String str) {
        return (u57) Enum.valueOf(u57.class, str);
    }

    public static u57[] values() {
        return (u57[]) $VALUES.clone();
    }
}
