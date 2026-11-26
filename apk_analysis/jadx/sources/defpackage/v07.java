package defpackage;

import com.warefly.checkscan.presentation.CiceroneActivity;

/* JADX INFO: loaded from: classes.dex */
public final class v07 implements u07 {
    @Override // defpackage.u07
    public final void a(CiceroneActivity ciceroneActivity, CiceroneActivity.e eVar) {
        Object aVar;
        try {
            kl8<a64> kl8VarA = new b64(ciceroneActivity).a();
            kl8VarA.a(new kk2(eVar), null);
            kl8VarA.a(null, new x3(eVar, 4));
            aVar = kl8VarA;
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (k57.a(aVar) != null) {
            eVar.invoke(null);
        }
    }
}
