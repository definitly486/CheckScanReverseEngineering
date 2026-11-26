package androidx.compose.ui.text.font;

import defpackage.aa4;

/* JADX INFO: loaded from: classes2.dex */
public final class LoadedFontFamily extends FontFamily {
    public static final int $stable = 0;
    private final Typeface typeface;

    public LoadedFontFamily(Typeface typeface) {
        super(true, null);
        this.typeface = typeface;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof LoadedFontFamily) && aa4.e(this.typeface, ((LoadedFontFamily) obj).typeface);
    }

    public final Typeface getTypeface() {
        return this.typeface;
    }

    public int hashCode() {
        return this.typeface.hashCode();
    }

    public String toString() {
        return "LoadedFontFamily(typeface=" + this.typeface + ')';
    }
}
