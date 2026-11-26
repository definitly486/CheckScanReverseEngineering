package defpackage;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.engine.GlideException;

/* JADX INFO: loaded from: classes5.dex */
public final class e68 implements o37<Drawable> {
    public final /* synthetic */ oz7.a a;

    public e68(oz7.a aVar) {
        this.a = aVar;
    }

    @Override // defpackage.o37
    public final boolean onLoadFailed(GlideException glideException, Object obj, wk8<Drawable> wk8Var, boolean z) {
        this.a.onSuccess(new b68.a(null));
        return false;
    }

    @Override // defpackage.o37
    public final boolean onResourceReady(Drawable drawable, Object obj, wk8<Drawable> wk8Var, y82 y82Var, boolean z) {
        this.a.onSuccess(new b68.a(drawable));
        return false;
    }
}
