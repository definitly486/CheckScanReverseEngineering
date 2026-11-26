package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;

/* JADX INFO: loaded from: classes6.dex */
public enum ir5 {
    STRING(TypedValues.Custom.S_STRING),
    INTEGER(TypedValues.Custom.S_INT),
    BOOLEAN(TypedValues.Custom.S_BOOLEAN),
    NUMBER("number"),
    COLOR("color"),
    URL("url"),
    ARRAY("array"),
    DICT("dict");

    public static final hr5 c = new hr5();
    public final String b;

    ir5(String str) {
        this.b = str;
    }
}
