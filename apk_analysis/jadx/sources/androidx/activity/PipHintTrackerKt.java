package androidx.activity;

import android.app.Activity;
import android.graphics.Rect;
import android.view.View;
import defpackage.a32;
import defpackage.e02;
import defpackage.id3;
import defpackage.j59;
import defpackage.s0;

/* JADX INFO: loaded from: classes.dex */
public final class PipHintTrackerKt {
    public static final Object trackPipAnimationHintView(final Activity activity, View view, e02<? super j59> e02Var) {
        Object objCollect = s0.a(new PipHintTrackerKt$trackPipAnimationHintView$flow$1(view, null)).collect(new id3() { // from class: androidx.activity.PipHintTrackerKt.trackPipAnimationHintView.2
            public final Object emit(Rect rect, e02<? super j59> e02Var2) {
                Api26Impl.INSTANCE.setPipParamsSourceRectHint(activity, rect);
                return j59.a;
            }

            @Override // defpackage.id3
            public /* bridge */ /* synthetic */ Object emit(Object obj, e02 e02Var2) {
                return emit((Rect) obj, (e02<? super j59>) e02Var2);
            }
        }, e02Var);
        return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Rect trackPipAnimationHintView$positionInWindow(View view) {
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        return rect;
    }
}
