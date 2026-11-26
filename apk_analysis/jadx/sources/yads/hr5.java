package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;

/* JADX INFO: loaded from: classes6.dex */
public final class hr5 {
    public static ir5 a(String str) {
        ir5 ir5Var = ir5.STRING;
        if (defpackage.aa4.e(str, TypedValues.Custom.S_STRING)) {
            return ir5Var;
        }
        ir5 ir5Var2 = ir5.INTEGER;
        if (defpackage.aa4.e(str, TypedValues.Custom.S_INT)) {
            return ir5Var2;
        }
        ir5 ir5Var3 = ir5.BOOLEAN;
        if (defpackage.aa4.e(str, TypedValues.Custom.S_BOOLEAN)) {
            return ir5Var3;
        }
        ir5 ir5Var4 = ir5.NUMBER;
        if (defpackage.aa4.e(str, "number")) {
            return ir5Var4;
        }
        ir5 ir5Var5 = ir5.COLOR;
        if (defpackage.aa4.e(str, "color")) {
            return ir5Var5;
        }
        ir5 ir5Var6 = ir5.URL;
        if (defpackage.aa4.e(str, "url")) {
            return ir5Var6;
        }
        ir5 ir5Var7 = ir5.ARRAY;
        if (defpackage.aa4.e(str, "array")) {
            return ir5Var7;
        }
        ir5 ir5Var8 = ir5.DICT;
        if (defpackage.aa4.e(str, "dict")) {
            return ir5Var8;
        }
        return null;
    }
}
