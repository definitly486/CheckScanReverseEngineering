package defpackage;

import android.util.DisplayMetrics;
import androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl;
import androidx.compose.foundation.text.selection.SelectionContainerKt;
import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.work.impl.WorkDatabase_Impl;
import yads.nq0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class jd6 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ jd6(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                DisplayMetrics displayMetrics = ((od6) obj).b.getResources().getDisplayMetrics();
                displayMetrics.getClass();
                return displayMetrics;
            case 1:
                return SelectionContainerKt.SelectionContainer$lambda$9$0$0$0$0$1$0((SelectionManager) obj);
            case 2:
                return UseCaseCameraRequestControlImpl.capturePipeline_delegate$lambda$0((UseCaseCameraRequestControlImpl) obj);
            case 3:
                return WorkDatabase_Impl._dependencyDao$lambda$1((WorkDatabase_Impl) obj);
            default:
                return nq0.h0((nq0) obj);
        }
    }
}
