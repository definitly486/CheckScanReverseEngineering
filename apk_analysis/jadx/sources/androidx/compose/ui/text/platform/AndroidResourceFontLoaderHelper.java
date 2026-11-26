package androidx.compose.ui.text.platform;

import android.content.Context;
import android.graphics.Typeface;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
@ul2
final class AndroidResourceFontLoaderHelper {
    public static final AndroidResourceFontLoaderHelper INSTANCE = new AndroidResourceFontLoaderHelper();

    private AndroidResourceFontLoaderHelper() {
    }

    public final Typeface create(Context context, int i) {
        return context.getResources().getFont(i);
    }
}
