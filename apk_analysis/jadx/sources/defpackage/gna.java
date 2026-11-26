package defpackage;

import android.content.Context;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.GoogleSignInResult;
import com.google.android.gms.auth.api.signin.internal.zba;
import com.google.android.gms.auth.api.signin.internal.zbn;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes4.dex */
public final class gna extends zba {
    public final /* synthetic */ Context a;
    public final /* synthetic */ GoogleSignInOptions b;
    public final /* synthetic */ hna l;

    public gna(hna hnaVar, Context context, GoogleSignInOptions googleSignInOptions) {
        this.a = context;
        this.b = googleSignInOptions;
        this.l = hnaVar;
    }

    @Override // com.google.android.gms.auth.api.signin.internal.zba, com.google.android.gms.auth.api.signin.internal.zbr
    public final void zbb(GoogleSignInAccount googleSignInAccount, Status status) {
        if (googleSignInAccount != null) {
            zbn.zba(this.a).zbc(this.b, googleSignInAccount);
        }
        this.l.setResult(new GoogleSignInResult(googleSignInAccount, status));
    }
}
