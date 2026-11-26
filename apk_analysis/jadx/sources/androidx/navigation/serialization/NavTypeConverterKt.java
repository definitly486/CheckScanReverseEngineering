package androidx.navigation.serialization;

import androidx.navigation.NavType;
import defpackage.aa4;
import defpackage.df4;
import defpackage.ef4;
import defpackage.iq7;
import defpackage.mp7;
import defpackage.nq7;
import defpackage.ra8;
import defpackage.sp7;
import defpackage.tp7;
import defpackage.wg;

/* JADX INFO: loaded from: classes3.dex */
public final class NavTypeConverterKt {

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[InternalType.values().length];
            try {
                iArr[InternalType.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[InternalType.STRING_NULLABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[InternalType.INT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[InternalType.BOOL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[InternalType.DOUBLE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[InternalType.FLOAT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[InternalType.LONG.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[InternalType.ENUM.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[InternalType.INT_NULLABLE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[InternalType.BOOL_NULLABLE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[InternalType.DOUBLE_NULLABLE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[InternalType.FLOAT_NULLABLE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[InternalType.LONG_NULLABLE.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[InternalType.INT_ARRAY.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[InternalType.BOOL_ARRAY.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[InternalType.DOUBLE_ARRAY.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[InternalType.FLOAT_ARRAY.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[InternalType.LONG_ARRAY.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[InternalType.ARRAY.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[InternalType.LIST.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[InternalType.ENUM_NULLABLE.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final NavType<?> getNavType(mp7 mp7Var) {
        mp7Var.getClass();
        InternalType internalType = toInternalType(mp7Var);
        int[] iArr = WhenMappings.$EnumSwitchMapping$0;
        switch (iArr[internalType.ordinal()]) {
            case 1:
                return InternalNavType.INSTANCE.getStringNonNullableType();
            case 2:
                return NavType.StringType;
            case 3:
                return NavType.IntType;
            case 4:
                return NavType.BoolType;
            case 5:
                return InternalNavType.INSTANCE.getDoubleType();
            case 6:
                return NavType.FloatType;
            case 7:
                return NavType.LongType;
            case 8:
                return NavTypeConverter_androidKt.parseEnum(mp7Var);
            case 9:
                return InternalNavType.INSTANCE.getIntNullableType();
            case 10:
                return InternalNavType.INSTANCE.getBoolNullableType();
            case 11:
                return InternalNavType.INSTANCE.getDoubleNullableType();
            case 12:
                return InternalNavType.INSTANCE.getFloatNullableType();
            case 13:
                return InternalNavType.INSTANCE.getLongNullableType();
            case 14:
                return NavType.IntArrayType;
            case 15:
                return NavType.BoolArrayType;
            case 16:
                return InternalNavType.INSTANCE.getDoubleArrayType();
            case 17:
                return NavType.FloatArrayType;
            case 18:
                return NavType.LongArrayType;
            case 19:
                int i = iArr[toInternalType(mp7Var.d(0)).ordinal()];
                if (i != 1) {
                    return i != 2 ? UNKNOWN.INSTANCE : InternalNavType.INSTANCE.getStringNullableArrayType();
                }
                return NavType.StringArrayType;
            case 20:
                switch (iArr[toInternalType(mp7Var.d(0)).ordinal()]) {
                    case 1:
                        return NavType.StringListType;
                    case 2:
                        return InternalNavType.INSTANCE.getStringNullableListType();
                    case 3:
                        return NavType.IntListType;
                    case 4:
                        return NavType.BoolListType;
                    case 5:
                        return InternalNavType.INSTANCE.getDoubleListType();
                    case 6:
                        return NavType.FloatListType;
                    case 7:
                        return NavType.LongListType;
                    case 8:
                        return NavTypeConverter_androidKt.parseEnumList(mp7Var);
                    default:
                        return UNKNOWN.INSTANCE;
                }
            case 21:
                return NavTypeConverter_androidKt.parseNullableEnum(mp7Var);
            default:
                return UNKNOWN.INSTANCE;
        }
    }

    public static final boolean matchKType(mp7 mp7Var, ef4 ef4Var) {
        mp7Var.getClass();
        ef4Var.getClass();
        if (mp7Var.b() != ef4Var.b()) {
            return false;
        }
        tp7 tp7Var = nq7.a;
        tp7Var.getClass();
        df4<Object> df4VarC = iq7.c(tp7Var, ef4Var, false);
        if (df4VarC != null) {
            return mp7Var.equals(df4VarC.getDescriptor());
        }
        wg.c(mp7Var.h(), "Cannot find KSerializer for [", "]. If applicable, custom KSerializers for custom and third-party KType is currently not supported when declared directly on a class field via @Serializable(with = ...). Please use @Serializable or @Serializable(with = ...) on the class or object declaration.");
        return false;
    }

    private static final InternalType toInternalType(mp7 mp7Var) {
        String strY = ra8.y(mp7Var.h(), "?", "");
        if (aa4.e(mp7Var.getKind(), sp7.b.a)) {
            return mp7Var.b() ? InternalType.ENUM_NULLABLE : InternalType.ENUM;
        }
        if (strY.equals("kotlin.Int")) {
            return mp7Var.b() ? InternalType.INT_NULLABLE : InternalType.INT;
        }
        if (strY.equals("kotlin.Boolean")) {
            return mp7Var.b() ? InternalType.BOOL_NULLABLE : InternalType.BOOL;
        }
        if (strY.equals("kotlin.Double")) {
            return mp7Var.b() ? InternalType.DOUBLE_NULLABLE : InternalType.DOUBLE;
        }
        if (strY.equals("kotlin.Float")) {
            return mp7Var.b() ? InternalType.FLOAT_NULLABLE : InternalType.FLOAT;
        }
        if (strY.equals("kotlin.Long")) {
            return mp7Var.b() ? InternalType.LONG_NULLABLE : InternalType.LONG;
        }
        if (strY.equals("kotlin.String")) {
            return mp7Var.b() ? InternalType.STRING_NULLABLE : InternalType.STRING;
        }
        if (strY.equals("kotlin.IntArray")) {
            return InternalType.INT_ARRAY;
        }
        if (strY.equals("kotlin.DoubleArray")) {
            return InternalType.DOUBLE_ARRAY;
        }
        if (strY.equals("kotlin.BooleanArray")) {
            return InternalType.BOOL_ARRAY;
        }
        if (strY.equals("kotlin.FloatArray")) {
            return InternalType.FLOAT_ARRAY;
        }
        if (strY.equals("kotlin.LongArray")) {
            return InternalType.LONG_ARRAY;
        }
        if (strY.equals("kotlin.Array")) {
            return InternalType.ARRAY;
        }
        return ra8.C(strY, "kotlin.collections.ArrayList", false) ? InternalType.LIST : InternalType.UNKNOWN;
    }
}
