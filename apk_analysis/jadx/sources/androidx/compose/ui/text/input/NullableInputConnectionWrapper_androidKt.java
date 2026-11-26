package androidx.compose.ui.text.input;

import android.os.Build;
import android.view.inputmethod.InputConnection;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class NullableInputConnectionWrapper_androidKt {
    public static final NullableInputConnectionWrapper NullableInputConnectionWrapper(InputConnection inputConnection, nl3<? super NullableInputConnectionWrapper, j59> nl3Var) {
        return Build.VERSION.SDK_INT >= 34 ? new NullableInputConnectionWrapperApi34(inputConnection, nl3Var) : new NullableInputConnectionWrapperApi25(inputConnection, nl3Var);
    }
}
