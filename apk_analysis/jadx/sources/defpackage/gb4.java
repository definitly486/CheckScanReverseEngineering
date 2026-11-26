package defpackage;

import com.google.android.gms.auth.api.phone.IncomingCallRetriever;
import java.io.Serializable;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'INT' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes4.dex */
public final class gb4 {
    private static final /* synthetic */ gb4[] $VALUES;
    public static final gb4 BOOLEAN;
    public static final gb4 BYTE_STRING;
    public static final gb4 DOUBLE;
    public static final gb4 ENUM;
    public static final gb4 FLOAT;
    public static final gb4 INT;
    public static final gb4 LONG;
    public static final gb4 MESSAGE;
    public static final gb4 STRING;
    public static final gb4 VOID;
    private final Class<?> boxedType;
    private final Object defaultDefault;
    private final Class<?> type;

    static {
        gb4 gb4Var = new gb4("VOID", 0, Void.class, Void.class, null);
        VOID = gb4Var;
        Class cls = Integer.TYPE;
        gb4 gb4Var2 = new gb4("INT", 1, cls, Integer.class, 0);
        INT = gb4Var2;
        gb4 gb4Var3 = new gb4("LONG", 2, Long.TYPE, Long.class, 0L);
        LONG = gb4Var3;
        gb4 gb4Var4 = new gb4("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        FLOAT = gb4Var4;
        gb4 gb4Var5 = new gb4("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        DOUBLE = gb4Var5;
        gb4 gb4Var6 = new gb4("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        BOOLEAN = gb4Var6;
        gb4 gb4Var7 = new gb4("STRING", 6, String.class, String.class, "");
        STRING = gb4Var7;
        gb4 gb4Var8 = new gb4("BYTE_STRING", 7, fx0.class, fx0.class, fx0.c);
        BYTE_STRING = gb4Var8;
        gb4 gb4Var9 = new gb4("ENUM", 8, cls, Integer.class, null);
        ENUM = gb4Var9;
        gb4 gb4Var10 = new gb4(IncomingCallRetriever.ACTIVITY_RESULT_INTENT_EXTRA_MESSAGE, 9, Object.class, Object.class, null);
        MESSAGE = gb4Var10;
        $VALUES = new gb4[]{gb4Var, gb4Var2, gb4Var3, gb4Var4, gb4Var5, gb4Var6, gb4Var7, gb4Var8, gb4Var9, gb4Var10};
    }

    public gb4(String str, int i, Class cls, Class cls2, Serializable serializable) {
        super(str, i);
        this.type = cls;
        this.boxedType = cls2;
        this.defaultDefault = serializable;
    }

    public static gb4 valueOf(String str) {
        return (gb4) Enum.valueOf(gb4.class, str);
    }

    public static gb4[] values() {
        return (gb4[]) $VALUES.clone();
    }

    public final Class<?> a() {
        return this.boxedType;
    }
}
