package defpackage;

import android.graphics.drawable.Drawable;
import com.google.android.gms.internal.base.zah;

/* JADX INFO: loaded from: classes4.dex */
public final class dla extends Drawable.ConstantState {
    public int a;
    public int b;

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return this.a;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return new zah(this);
    }
}
