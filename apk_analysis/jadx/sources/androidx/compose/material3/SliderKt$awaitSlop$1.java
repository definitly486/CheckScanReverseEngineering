package androidx.compose.material3;

import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.material3.SliderKt", f = "Slider.kt", l = {2188}, m = "awaitSlop-8vUncbI")
public final class SliderKt$awaitSlop$1 extends f02 {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    public SliderKt$awaitSlop$1(e02<? super SliderKt$awaitSlop$1> e02Var) {
        super(e02Var);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return SliderKt.m3907awaitSlop8vUncbI(null, 0L, 0, this);
    }
}
