package defpackage;

import android.content.Intent;
import com.google.android.gms.common.api.internal.LifecycleFragment;
import com.google.android.gms.common.internal.zaj;

/* JADX INFO: loaded from: classes4.dex */
public final class jla extends zaj {
    public final /* synthetic */ Intent b;
    public final /* synthetic */ LifecycleFragment c;

    public jla(Intent intent, LifecycleFragment lifecycleFragment) {
        this.b = intent;
        this.c = lifecycleFragment;
    }

    @Override // com.google.android.gms.common.internal.zaj
    public final void a() {
        Intent intent = this.b;
        if (intent != null) {
            this.c.startActivityForResult(intent, 2);
        }
    }
}
