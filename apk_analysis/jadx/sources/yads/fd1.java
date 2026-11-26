package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.nl3;
import defpackage.uu2;

/* JADX INFO: loaded from: classes6.dex */
public enum fd1 {
    STRING(TypedValues.Custom.S_STRING),
    INTEGER(TypedValues.Custom.S_INT),
    NUMBER("number"),
    BOOLEAN(TypedValues.Custom.S_BOOLEAN),
    DATETIME("datetime"),
    COLOR("color"),
    URL("url"),
    DICT("dict"),
    ARRAY("array");

    public static final ed1 c = new ed1();
    public static final nl3 d = new uu2(2);
    public final String b;

    fd1(String str) {
        this.b = str;
    }

    public static final fd1 a(String str) {
        c.getClass();
        fd1 fd1Var = STRING;
        if (defpackage.aa4.e(str, TypedValues.Custom.S_STRING)) {
            return fd1Var;
        }
        fd1 fd1Var2 = INTEGER;
        if (defpackage.aa4.e(str, TypedValues.Custom.S_INT)) {
            return fd1Var2;
        }
        fd1 fd1Var3 = NUMBER;
        if (defpackage.aa4.e(str, "number")) {
            return fd1Var3;
        }
        fd1 fd1Var4 = BOOLEAN;
        if (defpackage.aa4.e(str, TypedValues.Custom.S_BOOLEAN)) {
            return fd1Var4;
        }
        fd1 fd1Var5 = DATETIME;
        if (defpackage.aa4.e(str, "datetime")) {
            return fd1Var5;
        }
        fd1 fd1Var6 = COLOR;
        if (defpackage.aa4.e(str, "color")) {
            return fd1Var6;
        }
        fd1 fd1Var7 = URL;
        if (defpackage.aa4.e(str, "url")) {
            return fd1Var7;
        }
        fd1 fd1Var8 = DICT;
        if (defpackage.aa4.e(str, "dict")) {
            return fd1Var8;
        }
        fd1 fd1Var9 = ARRAY;
        if (defpackage.aa4.e(str, "array")) {
            return fd1Var9;
        }
        return null;
    }
}
