package defpackage;

import android.content.Context;
import androidx.compose.ui.graphics.AndroidImageBitmap_androidKt;
import androidx.compose.ui.graphics.painter.BitmapPainterKt;
import androidx.compose.ui.graphics.painter.Painter;

/* JADX INFO: loaded from: classes2.dex */
public final class v14 {
    public static final Painter a(x04 x04Var, Context context, int i) {
        if (x04Var instanceof dj0) {
            return BitmapPainterKt.m6929BitmapPainterQZhYCtY$default(AndroidImageBitmap_androidKt.asImageBitmap(((dj0) x04Var).a), 0L, 0L, i, 6, null);
        }
        return x04Var instanceof gs2 ? new ks2(n24.a(x04Var, context.getResources()).mutate()) : new u14(x04Var);
    }
}
