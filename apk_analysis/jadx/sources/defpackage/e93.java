package defpackage;

import com.google.android.gms.auth.api.phone.IncomingCallRetriever;
import java.lang.reflect.Type;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'DOUBLE' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes4.dex */
public final class e93 {
    private static final /* synthetic */ e93[] $VALUES;
    public static final e93 BOOL;
    public static final e93 BOOL_LIST;
    public static final e93 BOOL_LIST_PACKED;
    public static final e93 BYTES;
    public static final e93 BYTES_LIST;
    public static final e93 DOUBLE;
    public static final e93 DOUBLE_LIST;
    public static final e93 DOUBLE_LIST_PACKED;
    private static final Type[] EMPTY_TYPES;
    public static final e93 ENUM;
    public static final e93 ENUM_LIST;
    public static final e93 ENUM_LIST_PACKED;
    public static final e93 FIXED32;
    public static final e93 FIXED32_LIST;
    public static final e93 FIXED32_LIST_PACKED;
    public static final e93 FIXED64;
    public static final e93 FIXED64_LIST;
    public static final e93 FIXED64_LIST_PACKED;
    public static final e93 FLOAT;
    public static final e93 FLOAT_LIST;
    public static final e93 FLOAT_LIST_PACKED;
    public static final e93 GROUP;
    public static final e93 GROUP_LIST;
    public static final e93 INT32;
    public static final e93 INT32_LIST;
    public static final e93 INT32_LIST_PACKED;
    public static final e93 INT64;
    public static final e93 INT64_LIST;
    public static final e93 INT64_LIST_PACKED;
    public static final e93 MAP;
    public static final e93 MESSAGE;
    public static final e93 MESSAGE_LIST;
    public static final e93 SFIXED32;
    public static final e93 SFIXED32_LIST;
    public static final e93 SFIXED32_LIST_PACKED;
    public static final e93 SFIXED64;
    public static final e93 SFIXED64_LIST;
    public static final e93 SFIXED64_LIST_PACKED;
    public static final e93 SINT32;
    public static final e93 SINT32_LIST;
    public static final e93 SINT32_LIST_PACKED;
    public static final e93 SINT64;
    public static final e93 SINT64_LIST;
    public static final e93 SINT64_LIST_PACKED;
    public static final e93 STRING;
    public static final e93 STRING_LIST;
    public static final e93 UINT32;
    public static final e93 UINT32_LIST;
    public static final e93 UINT32_LIST_PACKED;
    public static final e93 UINT64;
    public static final e93 UINT64_LIST;
    public static final e93 UINT64_LIST_PACKED;
    private static final e93[] VALUES;
    private final b collection;
    private final Class<?> elementType;
    private final int id;
    private final gb4 javaType;
    private final boolean primitiveScalar;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[gb4.values().length];
            b = iArr;
            try {
                iArr[gb4.BYTE_STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[gb4.MESSAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[gb4.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[b.values().length];
            a = iArr2;
            try {
                iArr2[b.MAP.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[b.VECTOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[b.SCALAR.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public enum b {
        SCALAR(false),
        VECTOR(true),
        PACKED_VECTOR(true),
        MAP(false);

        private final boolean isList;

        b(boolean z) {
            this.isList = z;
        }
    }

    static {
        b bVar = b.SCALAR;
        gb4 gb4Var = gb4.DOUBLE;
        e93 e93Var = new e93("DOUBLE", 0, 0, bVar, gb4Var);
        DOUBLE = e93Var;
        gb4 gb4Var2 = gb4.FLOAT;
        e93 e93Var2 = new e93("FLOAT", 1, 1, bVar, gb4Var2);
        FLOAT = e93Var2;
        gb4 gb4Var3 = gb4.LONG;
        e93 e93Var3 = new e93("INT64", 2, 2, bVar, gb4Var3);
        INT64 = e93Var3;
        e93 e93Var4 = new e93("UINT64", 3, 3, bVar, gb4Var3);
        UINT64 = e93Var4;
        gb4 gb4Var4 = gb4.INT;
        e93 e93Var5 = new e93("INT32", 4, 4, bVar, gb4Var4);
        INT32 = e93Var5;
        e93 e93Var6 = new e93("FIXED64", 5, 5, bVar, gb4Var3);
        FIXED64 = e93Var6;
        e93 e93Var7 = new e93("FIXED32", 6, 6, bVar, gb4Var4);
        FIXED32 = e93Var7;
        gb4 gb4Var5 = gb4.BOOLEAN;
        e93 e93Var8 = new e93("BOOL", 7, 7, bVar, gb4Var5);
        BOOL = e93Var8;
        gb4 gb4Var6 = gb4.STRING;
        e93 e93Var9 = new e93("STRING", 8, 8, bVar, gb4Var6);
        STRING = e93Var9;
        gb4 gb4Var7 = gb4.MESSAGE;
        e93 e93Var10 = new e93(IncomingCallRetriever.ACTIVITY_RESULT_INTENT_EXTRA_MESSAGE, 9, 9, bVar, gb4Var7);
        MESSAGE = e93Var10;
        gb4 gb4Var8 = gb4.BYTE_STRING;
        e93 e93Var11 = new e93("BYTES", 10, 10, bVar, gb4Var8);
        BYTES = e93Var11;
        e93 e93Var12 = new e93("UINT32", 11, 11, bVar, gb4Var4);
        UINT32 = e93Var12;
        gb4 gb4Var9 = gb4.ENUM;
        e93 e93Var13 = new e93("ENUM", 12, 12, bVar, gb4Var9);
        ENUM = e93Var13;
        e93 e93Var14 = new e93("SFIXED32", 13, 13, bVar, gb4Var4);
        SFIXED32 = e93Var14;
        e93 e93Var15 = new e93("SFIXED64", 14, 14, bVar, gb4Var3);
        SFIXED64 = e93Var15;
        e93 e93Var16 = new e93("SINT32", 15, 15, bVar, gb4Var4);
        SINT32 = e93Var16;
        e93 e93Var17 = new e93("SINT64", 16, 16, bVar, gb4Var3);
        SINT64 = e93Var17;
        e93 e93Var18 = new e93("GROUP", 17, 17, bVar, gb4Var7);
        GROUP = e93Var18;
        b bVar2 = b.VECTOR;
        e93 e93Var19 = new e93("DOUBLE_LIST", 18, 18, bVar2, gb4Var);
        DOUBLE_LIST = e93Var19;
        e93 e93Var20 = new e93("FLOAT_LIST", 19, 19, bVar2, gb4Var2);
        FLOAT_LIST = e93Var20;
        e93 e93Var21 = new e93("INT64_LIST", 20, 20, bVar2, gb4Var3);
        INT64_LIST = e93Var21;
        e93 e93Var22 = new e93("UINT64_LIST", 21, 21, bVar2, gb4Var3);
        UINT64_LIST = e93Var22;
        e93 e93Var23 = new e93("INT32_LIST", 22, 22, bVar2, gb4Var4);
        INT32_LIST = e93Var23;
        e93 e93Var24 = new e93("FIXED64_LIST", 23, 23, bVar2, gb4Var3);
        FIXED64_LIST = e93Var24;
        e93 e93Var25 = new e93("FIXED32_LIST", 24, 24, bVar2, gb4Var4);
        FIXED32_LIST = e93Var25;
        e93 e93Var26 = new e93("BOOL_LIST", 25, 25, bVar2, gb4Var5);
        BOOL_LIST = e93Var26;
        e93 e93Var27 = new e93("STRING_LIST", 26, 26, bVar2, gb4Var6);
        STRING_LIST = e93Var27;
        e93 e93Var28 = new e93("MESSAGE_LIST", 27, 27, bVar2, gb4Var7);
        MESSAGE_LIST = e93Var28;
        e93 e93Var29 = new e93("BYTES_LIST", 28, 28, bVar2, gb4Var8);
        BYTES_LIST = e93Var29;
        e93 e93Var30 = new e93("UINT32_LIST", 29, 29, bVar2, gb4Var4);
        UINT32_LIST = e93Var30;
        e93 e93Var31 = new e93("ENUM_LIST", 30, 30, bVar2, gb4Var9);
        ENUM_LIST = e93Var31;
        e93 e93Var32 = new e93("SFIXED32_LIST", 31, 31, bVar2, gb4Var4);
        SFIXED32_LIST = e93Var32;
        e93 e93Var33 = new e93("SFIXED64_LIST", 32, 32, bVar2, gb4Var3);
        SFIXED64_LIST = e93Var33;
        e93 e93Var34 = new e93("SINT32_LIST", 33, 33, bVar2, gb4Var4);
        SINT32_LIST = e93Var34;
        e93 e93Var35 = new e93("SINT64_LIST", 34, 34, bVar2, gb4Var3);
        SINT64_LIST = e93Var35;
        b bVar3 = b.PACKED_VECTOR;
        e93 e93Var36 = new e93("DOUBLE_LIST_PACKED", 35, 35, bVar3, gb4Var);
        DOUBLE_LIST_PACKED = e93Var36;
        e93 e93Var37 = new e93("FLOAT_LIST_PACKED", 36, 36, bVar3, gb4Var2);
        FLOAT_LIST_PACKED = e93Var37;
        e93 e93Var38 = new e93("INT64_LIST_PACKED", 37, 37, bVar3, gb4Var3);
        INT64_LIST_PACKED = e93Var38;
        e93 e93Var39 = new e93("UINT64_LIST_PACKED", 38, 38, bVar3, gb4Var3);
        UINT64_LIST_PACKED = e93Var39;
        e93 e93Var40 = new e93("INT32_LIST_PACKED", 39, 39, bVar3, gb4Var4);
        INT32_LIST_PACKED = e93Var40;
        e93 e93Var41 = new e93("FIXED64_LIST_PACKED", 40, 40, bVar3, gb4Var3);
        FIXED64_LIST_PACKED = e93Var41;
        e93 e93Var42 = new e93("FIXED32_LIST_PACKED", 41, 41, bVar3, gb4Var4);
        FIXED32_LIST_PACKED = e93Var42;
        e93 e93Var43 = new e93("BOOL_LIST_PACKED", 42, 42, bVar3, gb4Var5);
        BOOL_LIST_PACKED = e93Var43;
        e93 e93Var44 = new e93("UINT32_LIST_PACKED", 43, 43, bVar3, gb4Var4);
        UINT32_LIST_PACKED = e93Var44;
        e93 e93Var45 = new e93("ENUM_LIST_PACKED", 44, 44, bVar3, gb4Var9);
        ENUM_LIST_PACKED = e93Var45;
        e93 e93Var46 = new e93("SFIXED32_LIST_PACKED", 45, 45, bVar3, gb4Var4);
        SFIXED32_LIST_PACKED = e93Var46;
        e93 e93Var47 = new e93("SFIXED64_LIST_PACKED", 46, 46, bVar3, gb4Var3);
        SFIXED64_LIST_PACKED = e93Var47;
        e93 e93Var48 = new e93("SINT32_LIST_PACKED", 47, 47, bVar3, gb4Var4);
        SINT32_LIST_PACKED = e93Var48;
        e93 e93Var49 = new e93("SINT64_LIST_PACKED", 48, 48, bVar3, gb4Var3);
        SINT64_LIST_PACKED = e93Var49;
        e93 e93Var50 = new e93("GROUP_LIST", 49, 49, bVar2, gb4Var7);
        GROUP_LIST = e93Var50;
        e93 e93Var51 = new e93("MAP", 50, 50, b.MAP, gb4.VOID);
        MAP = e93Var51;
        $VALUES = new e93[]{e93Var, e93Var2, e93Var3, e93Var4, e93Var5, e93Var6, e93Var7, e93Var8, e93Var9, e93Var10, e93Var11, e93Var12, e93Var13, e93Var14, e93Var15, e93Var16, e93Var17, e93Var18, e93Var19, e93Var20, e93Var21, e93Var22, e93Var23, e93Var24, e93Var25, e93Var26, e93Var27, e93Var28, e93Var29, e93Var30, e93Var31, e93Var32, e93Var33, e93Var34, e93Var35, e93Var36, e93Var37, e93Var38, e93Var39, e93Var40, e93Var41, e93Var42, e93Var43, e93Var44, e93Var45, e93Var46, e93Var47, e93Var48, e93Var49, e93Var50, e93Var51};
        EMPTY_TYPES = new Type[0];
        e93[] e93VarArrValues = values();
        VALUES = new e93[e93VarArrValues.length];
        for (e93 e93Var52 : e93VarArrValues) {
            VALUES[e93Var52.id] = e93Var52;
        }
    }

    public e93(String str, int i, int i2, b bVar, gb4 gb4Var) {
        int i3;
        super(str, i);
        this.id = i2;
        this.collection = bVar;
        this.javaType = gb4Var;
        int i4 = a.a[bVar.ordinal()];
        if (i4 == 1 || i4 == 2) {
            this.elementType = gb4Var.a();
        } else {
            this.elementType = null;
        }
        this.primitiveScalar = (bVar != b.SCALAR || (i3 = a.b[gb4Var.ordinal()]) == 1 || i3 == 2 || i3 == 3) ? false : true;
    }

    public static e93 valueOf(String str) {
        return (e93) Enum.valueOf(e93.class, str);
    }

    public static e93[] values() {
        return (e93[]) $VALUES.clone();
    }

    public final int a() {
        return this.id;
    }
}
