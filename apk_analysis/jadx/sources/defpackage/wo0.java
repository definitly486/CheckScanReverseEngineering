package defpackage;

import android.graphics.Canvas;
import com.google.android.material.canvas.CanvasCompat;
import com.google.android.material.carousel.MaskableFrameLayout;
import yads.z83;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class wo0 implements xl3, CanvasCompat.CanvasOperation, z83 {
    public final /* synthetic */ Object b;

    public /* synthetic */ wo0(Object obj) {
        this.b = obj;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return (qq1) ((cp0) this.b).invoke(obj);
    }

    @Override // com.google.android.material.canvas.CanvasCompat.CanvasOperation
    public void run(Canvas canvas) {
        ((MaskableFrameLayout) this.b).lambda$dispatchDraw$1(canvas);
    }
}
