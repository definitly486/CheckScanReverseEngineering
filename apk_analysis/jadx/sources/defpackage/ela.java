package defpackage;

import android.app.Activity;
import android.content.Intent;
import com.google.android.gms.common.internal.zaj;

/* JADX INFO: loaded from: classes4.dex */
public final class ela extends zaj {
    public final /* synthetic */ Intent b;
    public final /* synthetic */ Activity c;
    public final /* synthetic */ int d;

    public ela(Activity activity, Intent intent, int i) {
        this.b = intent;
        this.c = activity;
        this.d = i;
    }

    @Override // com.google.android.gms.common.internal.zaj
    public final void a() {
        Intent intent = this.b;
        if (intent != null) {
            this.c.startActivityForResult(intent, this.d);
        }
    }
}
