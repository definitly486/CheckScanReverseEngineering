package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class jc0 {
    public final Context a;

    public jc0(Context context) {
        this.a = w60.a(context);
    }

    public final boolean a() {
        return (this.a.getResources().getConfiguration().uiMode & 48) == 32;
    }
}
