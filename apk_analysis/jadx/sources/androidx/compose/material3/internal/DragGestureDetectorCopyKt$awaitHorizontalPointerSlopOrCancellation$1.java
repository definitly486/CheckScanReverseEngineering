package androidx.compose.material3.internal;

import androidx.media3.muxer.WebmConstants;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.material3.internal.DragGestureDetectorCopyKt", f = "DragGestureDetectorCopy.kt", l = {145, WebmConstants.MkvEbmlElement.PIXEL_HEIGHT}, m = "awaitHorizontalPointerSlopOrCancellation-gDDlDlE")
public final class DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1 extends f02 {
    float F$0;
    float F$1;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    /* synthetic */ Object result;

    public DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1(e02<? super DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1> e02Var) {
        super(e02Var);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return DragGestureDetectorCopyKt.m4368awaitHorizontalPointerSlopOrCancellationgDDlDlE(null, 0L, 0, null, this);
    }
}
