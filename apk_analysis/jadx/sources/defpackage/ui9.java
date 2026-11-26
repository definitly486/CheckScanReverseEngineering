package defpackage;

import com.google.android.gms.auth.api.phone.IncomingCallRetriever;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'INT64' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes4.dex */
public class ui9 {
    private static final /* synthetic */ ui9[] $VALUES;
    public static final ui9 BOOL;
    public static final ui9 BYTES;
    public static final ui9 DOUBLE;
    public static final ui9 ENUM;
    public static final ui9 FIXED32;
    public static final ui9 FIXED64;
    public static final ui9 FLOAT;
    public static final ui9 GROUP;
    public static final ui9 INT32;
    public static final ui9 INT64;
    public static final ui9 MESSAGE;
    public static final ui9 SFIXED32;
    public static final ui9 SFIXED64;
    public static final ui9 SINT32;
    public static final ui9 SINT64;
    public static final ui9 STRING;
    public static final ui9 UINT32;
    public static final ui9 UINT64;
    private final vi9 javaType;
    private final int wireType;

    public final enum a extends ui9 {
    }

    public final enum b extends ui9 {
    }

    public final enum c extends ui9 {
    }

    public final enum d extends ui9 {
    }

    static {
        ui9 ui9Var = new ui9("DOUBLE", 0, vi9.DOUBLE, 1);
        DOUBLE = ui9Var;
        ui9 ui9Var2 = new ui9("FLOAT", 1, vi9.FLOAT, 5);
        FLOAT = ui9Var2;
        vi9 vi9Var = vi9.LONG;
        ui9 ui9Var3 = new ui9("INT64", 2, vi9Var, 0);
        INT64 = ui9Var3;
        ui9 ui9Var4 = new ui9("UINT64", 3, vi9Var, 0);
        UINT64 = ui9Var4;
        vi9 vi9Var2 = vi9.INT;
        ui9 ui9Var5 = new ui9("INT32", 4, vi9Var2, 0);
        INT32 = ui9Var5;
        ui9 ui9Var6 = new ui9("FIXED64", 5, vi9Var, 1);
        FIXED64 = ui9Var6;
        ui9 ui9Var7 = new ui9("FIXED32", 6, vi9Var2, 5);
        FIXED32 = ui9Var7;
        ui9 ui9Var8 = new ui9("BOOL", 7, vi9.BOOLEAN, 0);
        BOOL = ui9Var8;
        a aVar = new a("STRING", 8, vi9.STRING, 2);
        STRING = aVar;
        vi9 vi9Var3 = vi9.MESSAGE;
        b bVar = new b("GROUP", 9, vi9Var3, 3);
        GROUP = bVar;
        c cVar = new c(IncomingCallRetriever.ACTIVITY_RESULT_INTENT_EXTRA_MESSAGE, 10, vi9Var3, 2);
        MESSAGE = cVar;
        d dVar = new d("BYTES", 11, vi9.BYTE_STRING, 2);
        BYTES = dVar;
        ui9 ui9Var9 = new ui9("UINT32", 12, vi9Var2, 0);
        UINT32 = ui9Var9;
        ui9 ui9Var10 = new ui9("ENUM", 13, vi9.ENUM, 0);
        ENUM = ui9Var10;
        ui9 ui9Var11 = new ui9("SFIXED32", 14, vi9Var2, 5);
        SFIXED32 = ui9Var11;
        ui9 ui9Var12 = new ui9("SFIXED64", 15, vi9Var, 1);
        SFIXED64 = ui9Var12;
        ui9 ui9Var13 = new ui9("SINT32", 16, vi9Var2, 0);
        SINT32 = ui9Var13;
        ui9 ui9Var14 = new ui9("SINT64", 17, vi9Var, 0);
        SINT64 = ui9Var14;
        $VALUES = new ui9[]{ui9Var, ui9Var2, ui9Var3, ui9Var4, ui9Var5, ui9Var6, ui9Var7, ui9Var8, aVar, bVar, cVar, dVar, ui9Var9, ui9Var10, ui9Var11, ui9Var12, ui9Var13, ui9Var14};
    }

    public ui9(String str, int i, vi9 vi9Var, int i2) {
        super(str, i);
        this.javaType = vi9Var;
        this.wireType = i2;
    }

    public static ui9 valueOf(String str) {
        return (ui9) Enum.valueOf(ui9.class, str);
    }

    public static ui9[] values() {
        return (ui9[]) $VALUES.clone();
    }

    public final vi9 a() {
        return this.javaType;
    }

    public final int d() {
        return this.wireType;
    }
}
