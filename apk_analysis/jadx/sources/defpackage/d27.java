package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RenderEffect;
import android.graphics.RenderNode;
import android.graphics.Shader;

/* JADX INFO: loaded from: classes2.dex */
public final class d27 implements gk0 {
    public int b;
    public int c;
    public h27 e;
    public Context f;
    public final RenderNode a = c27.a();
    public float d = 1.0f;

    @Override // defpackage.gk0
    public final void a() {
        Bitmap.Config config = Bitmap.Config.ARGB_8888;
    }

    @Override // defpackage.gk0
    public final void b(Canvas canvas, Bitmap bitmap) {
        if (canvas.isHardwareAccelerated()) {
            canvas.drawRenderNode(this.a);
            return;
        }
        h27 h27Var = this.e;
        if (h27Var == null) {
            h27Var = new h27(this.f);
            this.e = h27Var;
        }
        h27Var.c(bitmap, this.d);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, this.e.a);
    }

    @Override // defpackage.gk0
    public final Bitmap c(Bitmap bitmap, float f) {
        this.d = f;
        if (bitmap.getHeight() != this.b || bitmap.getWidth() != this.c) {
            this.b = bitmap.getHeight();
            int width = bitmap.getWidth();
            this.c = width;
            this.a.setPosition(0, 0, width, this.b);
        }
        this.a.beginRecording().drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        this.a.endRecording();
        this.a.setRenderEffect(RenderEffect.createBlurEffect(f, f, Shader.TileMode.MIRROR));
        return bitmap;
    }

    @Override // defpackage.gk0
    public final void destroy() {
        this.a.discardDisplayList();
        h27 h27Var = this.e;
        if (h27Var != null) {
            h27Var.destroy();
        }
    }
}
