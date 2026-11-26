package yads;

import android.content.Context;
import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class tu5 implements gg6 {
    public final Context a;

    public tu5(Context context) {
        this.a = context;
    }

    @Override // yads.gg6
    public final View a() {
        return new xu5(this.a);
    }
}
