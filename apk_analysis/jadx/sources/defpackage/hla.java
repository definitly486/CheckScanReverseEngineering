package defpackage;

import android.content.Intent;
import androidx.fragment.app.Fragment;
import com.google.android.gms.common.internal.zaj;

/* JADX INFO: loaded from: classes4.dex */
public final class hla extends zaj {
    public final /* synthetic */ Intent b;
    public final /* synthetic */ Fragment c;
    public final /* synthetic */ int d;

    public hla(Fragment fragment, Intent intent, int i) {
        this.b = intent;
        this.c = fragment;
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
