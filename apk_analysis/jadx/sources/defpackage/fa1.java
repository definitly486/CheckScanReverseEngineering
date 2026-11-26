package defpackage;

import com.google.zxing.FormatException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public enum fa1 {
    Cp437(new int[]{0, 2}, new String[0]),
    ISO8859_1(new int[]{1, 3}, "ISO-8859-1"),
    ISO8859_2(new String[]{"ISO-8859-2"}, 4),
    ISO8859_3(new String[]{"ISO-8859-3"}, 5),
    ISO8859_4(new String[]{"ISO-8859-4"}, 6),
    ISO8859_5(new String[]{"ISO-8859-5"}, 7),
    ISO8859_6(new String[]{"ISO-8859-6"}, 8),
    ISO8859_7(new String[]{"ISO-8859-7"}, 9),
    ISO8859_8(new String[]{"ISO-8859-8"}, 10),
    ISO8859_9(new String[]{"ISO-8859-9"}, 11),
    ISO8859_10(new String[]{"ISO-8859-10"}, 12),
    ISO8859_11(new String[]{"ISO-8859-11"}, 13),
    ISO8859_13(new String[]{"ISO-8859-13"}, 15),
    ISO8859_14(new String[]{"ISO-8859-14"}, 16),
    ISO8859_15(new String[]{"ISO-8859-15"}, 17),
    ISO8859_16(new String[]{"ISO-8859-16"}, 18),
    SJIS(new String[]{"Shift_JIS"}, 20),
    Cp1250(new String[]{"windows-1250"}, 21),
    Cp1251(new String[]{"windows-1251"}, 22),
    Cp1252(new String[]{"windows-1252"}, 23),
    Cp1256(new String[]{"windows-1256"}, 24),
    UnicodeBigUnmarked(new String[]{"UTF-16BE", "UnicodeBig"}, 25),
    UTF8(new String[]{"UTF-8"}, 26),
    ASCII(new int[]{27, 170}, "US-ASCII"),
    Big5(new int[]{28}, new String[0]),
    GB18030(new String[]{"GB2312", "EUC_CN", "GBK"}, 29),
    EUC_KR(new String[]{"EUC-KR"}, 30);

    private final String[] otherEncodingNames;
    private final int[] values;
    private static final Map<Integer, fa1> VALUE_TO_ECI = new HashMap();
    private static final Map<String, fa1> NAME_TO_ECI = new HashMap();

    static {
        for (fa1 fa1Var : values()) {
            for (int i : fa1Var.values) {
                VALUE_TO_ECI.put(Integer.valueOf(i), fa1Var);
            }
            NAME_TO_ECI.put(fa1Var.name(), fa1Var);
            for (String str : fa1Var.otherEncodingNames) {
                NAME_TO_ECI.put(str, fa1Var);
            }
        }
    }

    fa1() {
        throw null;
    }

    fa1(String[] strArr, int i) {
        this.values = new int[]{i};
        this.otherEncodingNames = strArr;
    }

    public static fa1 a(int i) throws FormatException {
        if (i < 0 || i >= 900) {
            throw FormatException.a();
        }
        return VALUE_TO_ECI.get(Integer.valueOf(i));
    }

    fa1(int[] iArr, String... strArr) {
        this.values = iArr;
        this.otherEncodingNames = strArr;
    }
}
