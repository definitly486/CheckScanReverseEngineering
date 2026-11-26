package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public enum ic5 {
    TERMINATOR(new int[]{0, 0, 0}, 0),
    NUMERIC(new int[]{10, 12, 14}, 1),
    ALPHANUMERIC(new int[]{9, 11, 13}, 2),
    STRUCTURED_APPEND(new int[]{0, 0, 0}, 3),
    BYTE(new int[]{8, 16, 16}, 4),
    ECI(new int[]{0, 0, 0}, 7),
    KANJI(new int[]{8, 10, 12}, 8),
    FNC1_FIRST_POSITION(new int[]{0, 0, 0}, 5),
    FNC1_SECOND_POSITION(new int[]{0, 0, 0}, 9),
    HANZI(new int[]{8, 10, 12}, 13);

    private final int bits;
    private final int[] characterCountBitsForVersions;

    ic5(int[] iArr, int i) {
        this.characterCountBitsForVersions = iArr;
        this.bits = i;
    }

    public final int a() {
        return this.bits;
    }

    public final int d(uc9 uc9Var) {
        char c;
        int i = uc9Var.a;
        if (i <= 9) {
            c = 0;
        } else {
            c = i <= 26 ? (char) 1 : (char) 2;
        }
        return this.characterCountBitsForVersions[c];
    }
}
