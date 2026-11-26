package defpackage;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes3.dex */
public final class u19 implements w19.a {
    public final /* synthetic */ int a;

    public u19(int i) {
        this.a = i;
    }

    @Override // w19.a
    public final void a(Canvas canvas, Paint paint, RectF rectF) {
        float f = this.a;
        canvas.drawRoundRect(rectF, f, f, paint);
    }
}
