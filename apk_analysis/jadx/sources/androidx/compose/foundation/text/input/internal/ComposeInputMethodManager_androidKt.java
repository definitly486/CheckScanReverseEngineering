package androidx.compose.foundation.text.input.internal;

import android.os.Build;
import android.view.View;
import defpackage.nl3;
import defpackage.yt1;

/* JADX INFO: loaded from: classes.dex */
public final class ComposeInputMethodManager_androidKt {
    private static nl3<? super View, ? extends ComposeInputMethodManager> ComposeInputMethodManagerFactory = new yt1(0);

    public static final ComposeInputMethodManager ComposeInputMethodManager(View view) {
        return ComposeInputMethodManagerFactory.invoke(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ComposeInputMethodManager ComposeInputMethodManagerFactory$lambda$0(View view) {
        return Build.VERSION.SDK_INT >= 34 ? new ComposeInputMethodManagerImplApi34(view) : new ComposeInputMethodManagerImplApi24(view);
    }

    public static final nl3<View, ComposeInputMethodManager> overrideComposeInputMethodManagerFactoryForTests(nl3<? super View, ? extends ComposeInputMethodManager> nl3Var) {
        nl3 nl3Var2 = ComposeInputMethodManagerFactory;
        ComposeInputMethodManagerFactory = nl3Var;
        return nl3Var2;
    }
}
