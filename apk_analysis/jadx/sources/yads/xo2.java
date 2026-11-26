package yads;

import androidx.exifinterface.media.ExifInterface;

/* JADX INFO: loaded from: classes6.dex */
public enum xo2 {
    INTEGER("Integer"),
    NUMBER("Number"),
    BOOLEAN("Boolean"),
    STRING("String"),
    DATETIME(ExifInterface.TAG_DATETIME),
    COLOR("Color"),
    URL("Url"),
    DICT("Dict"),
    ARRAY("Array");

    public final String b;

    xo2(String str) {
        this.b = str;
    }

    public final String a() {
        return this.b;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.b;
    }
}
