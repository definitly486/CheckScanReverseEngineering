package androidx.compose.ui.platform;

import android.view.View;
import defpackage.e02;

/* JADX INFO: loaded from: classes.dex */
public interface PlatformTextInputSession {
    View getView();

    Object startInputMethod(PlatformTextInputMethodRequest platformTextInputMethodRequest, e02<?> e02Var);
}
