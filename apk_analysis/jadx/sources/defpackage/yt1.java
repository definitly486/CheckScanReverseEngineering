package defpackage;

import android.view.View;
import androidx.compose.foundation.text.input.internal.ComposeInputMethodManager_androidKt;
import androidx.compose.ui.text.SaversKt;
import androidx.window.layout.WindowMetricsCalculator;
import yads.e92;
import yads.gl1;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class yt1 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ yt1(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return ComposeInputMethodManager_androidKt.ComposeInputMethodManagerFactory$lambda$0((View) obj);
            case 1:
                return SaversKt.LineHeightStyleModeSaver$lambda$1(obj);
            case 2:
                return WindowMetricsCalculator.Companion.decorator$lambda$0((WindowMetricsCalculator) obj);
            case 3:
                return Boolean.valueOf(e92.b(obj));
            default:
                return Boolean.valueOf(gl1.a(obj));
        }
    }
}
