package androidx.core.content.res;

import android.content.res.TypedArray;
import android.graphics.Typeface;

/* JADX INFO: loaded from: classes2.dex */
final class TypedArrayApi26ImplKt {
    public static final TypedArrayApi26ImplKt INSTANCE = new TypedArrayApi26ImplKt();

    private TypedArrayApi26ImplKt() {
    }

    public static final Typeface getFont(TypedArray typedArray, int i) {
        Typeface font = typedArray.getFont(i);
        font.getClass();
        return font;
    }
}
