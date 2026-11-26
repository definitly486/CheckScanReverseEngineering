package androidx.compose.ui.text.font;

import defpackage.e02;

/* JADX INFO: loaded from: classes2.dex */
public interface PlatformFontLoader {
    Object awaitLoad(Font font, e02<Object> e02Var);

    Object getCacheKey();

    Object loadBlocking(Font font);
}
