package androidx.compose.ui.text.font;

import defpackage.aq5;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class FontFamilyKt {
    public static final FontFamily FontFamily(Font... fontArr) {
        return new FontListFontFamily(aq5.b(fontArr));
    }

    public static final FontFamily FontFamily(List<? extends Font> list) {
        return new FontListFontFamily(list);
    }

    public static final FontFamily FontFamily(Typeface typeface) {
        return new LoadedFontFamily(typeface);
    }
}
