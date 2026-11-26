package yads;

import com.google.android.gms.tasks.OnFailureListener;

/* JADX INFO: loaded from: classes6.dex */
public final class pv4 implements OnFailureListener {
    public final /* synthetic */ defpackage.c31 a;

    public pv4(defpackage.c31 c31Var) {
        this.a = c31Var;
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(Exception exc) {
        this.a.B(null, null);
    }
}
