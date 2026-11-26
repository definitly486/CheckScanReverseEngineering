package androidx.compose.ui.text.font;

import android.content.Context;
import androidx.core.content.res.ResourcesCompat;
import defpackage.a32;
import defpackage.c31;
import defpackage.e02;
import defpackage.zya;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidFontLoader_androidKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final android.graphics.Typeface load(ResourceFont resourceFont, Context context) {
        android.graphics.Typeface font = ResourcesCompat.getFont(context, resourceFont.getResId());
        font.getClass();
        return font;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object loadAsync(final ResourceFont resourceFont, Context context, e02<? super android.graphics.Typeface> e02Var) throws Throwable {
        final c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        ResourcesCompat.getFont(context, resourceFont.getResId(), new ResourcesCompat.FontCallback() { // from class: androidx.compose.ui.text.font.AndroidFontLoader_androidKt$loadAsync$2$1
            @Override // androidx.core.content.res.ResourcesCompat.FontCallback
            /* JADX INFO: renamed from: onFontRetrievalFailed */
            public void lambda$callbackFailAsync$1(int i) {
                c31Var.d(new IllegalStateException("Unable to load font " + resourceFont + " (reason=" + i + ')'));
            }

            @Override // androidx.core.content.res.ResourcesCompat.FontCallback
            /* JADX INFO: renamed from: onFontRetrieved */
            public void lambda$callbackSuccessAsync$0(android.graphics.Typeface typeface) {
                c31Var.resumeWith(typeface);
            }
        }, null);
        Object objS = c31Var.s();
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objS;
    }
}
