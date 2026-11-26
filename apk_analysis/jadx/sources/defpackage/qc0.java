package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class qc0 {
    private static final /* synthetic */ qc0[] $VALUES;
    public static final qc0 AZTEC;
    public static final qc0 CODABAR;
    public static final qc0 CODE_128;
    public static final qc0 CODE_39;
    public static final qc0 CODE_93;
    public static final qc0 DATA_MATRIX;
    public static final qc0 EAN_13;
    public static final qc0 EAN_8;
    public static final qc0 ITF;
    public static final qc0 MAXICODE;
    public static final qc0 PDF_417;
    public static final qc0 QR_CODE;
    public static final qc0 RSS_14;
    public static final qc0 RSS_EXPANDED;
    public static final qc0 UPC_A;
    public static final qc0 UPC_E;
    public static final qc0 UPC_EAN_EXTENSION;

    static {
        qc0 qc0Var = new qc0("AZTEC", 0);
        AZTEC = qc0Var;
        qc0 qc0Var2 = new qc0("CODABAR", 1);
        CODABAR = qc0Var2;
        qc0 qc0Var3 = new qc0("CODE_39", 2);
        CODE_39 = qc0Var3;
        qc0 qc0Var4 = new qc0("CODE_93", 3);
        CODE_93 = qc0Var4;
        qc0 qc0Var5 = new qc0("CODE_128", 4);
        CODE_128 = qc0Var5;
        qc0 qc0Var6 = new qc0("DATA_MATRIX", 5);
        DATA_MATRIX = qc0Var6;
        qc0 qc0Var7 = new qc0("EAN_8", 6);
        EAN_8 = qc0Var7;
        qc0 qc0Var8 = new qc0("EAN_13", 7);
        EAN_13 = qc0Var8;
        qc0 qc0Var9 = new qc0("ITF", 8);
        ITF = qc0Var9;
        qc0 qc0Var10 = new qc0("MAXICODE", 9);
        MAXICODE = qc0Var10;
        qc0 qc0Var11 = new qc0("PDF_417", 10);
        PDF_417 = qc0Var11;
        qc0 qc0Var12 = new qc0("QR_CODE", 11);
        QR_CODE = qc0Var12;
        qc0 qc0Var13 = new qc0("RSS_14", 12);
        RSS_14 = qc0Var13;
        qc0 qc0Var14 = new qc0("RSS_EXPANDED", 13);
        RSS_EXPANDED = qc0Var14;
        qc0 qc0Var15 = new qc0("UPC_A", 14);
        UPC_A = qc0Var15;
        qc0 qc0Var16 = new qc0("UPC_E", 15);
        UPC_E = qc0Var16;
        qc0 qc0Var17 = new qc0("UPC_EAN_EXTENSION", 16);
        UPC_EAN_EXTENSION = qc0Var17;
        $VALUES = new qc0[]{qc0Var, qc0Var2, qc0Var3, qc0Var4, qc0Var5, qc0Var6, qc0Var7, qc0Var8, qc0Var9, qc0Var10, qc0Var11, qc0Var12, qc0Var13, qc0Var14, qc0Var15, qc0Var16, qc0Var17};
    }

    public qc0() {
        throw null;
    }

    public static qc0 valueOf(String str) {
        return (qc0) Enum.valueOf(qc0.class, str);
    }

    public static qc0[] values() {
        return (qc0[]) $VALUES.clone();
    }
}
