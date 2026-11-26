package androidx.compose.ui.platform;

import android.content.Context;
import android.content.res.Resources;
import androidx.compose.runtime.CompositionLocalAccessorScope;
import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidCompositionLocals_androidKt$LocalResources$1 extends gh4 implements nl3<CompositionLocalAccessorScope, Resources> {
    public static final AndroidCompositionLocals_androidKt$LocalResources$1 INSTANCE = new AndroidCompositionLocals_androidKt$LocalResources$1();

    public AndroidCompositionLocals_androidKt$LocalResources$1() {
        super(1);
    }

    @Override // defpackage.nl3
    public final Resources invoke(CompositionLocalAccessorScope compositionLocalAccessorScope) {
        compositionLocalAccessorScope.getCurrentValue(AndroidCompositionLocals_androidKt.getLocalConfiguration());
        return ((Context) compositionLocalAccessorScope.getCurrentValue(AndroidCompositionLocals_androidKt.getLocalContext())).getResources();
    }
}
