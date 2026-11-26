package defpackage;

import android.content.Context;
import android.content.Intent;
import com.warefly.checkscan.presentation.CiceroneActivity;

/* JADX INFO: loaded from: classes5.dex */
public final class xj1 implements wj1 {
    public final Context a;

    public xj1(Context context) {
        this.a = context;
    }

    @Override // defpackage.wj1
    public final Intent a() {
        return new Intent(this.a, (Class<?>) CiceroneActivity.class);
    }
}
