package defpackage;

import android.view.View;
import android.view.WindowInsets;
import androidx.core.view.ViewGroupCompat;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class de9 implements View.OnApplyWindowInsetsListener {
    @Override // android.view.View.OnApplyWindowInsetsListener
    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        return ViewGroupCompat.lambda$installCompatInsetsDispatch$0(view, windowInsets);
    }
}
