package defpackage;

import android.content.Intent;
import android.net.Uri;
import com.warefly.checkscan.presentation.CiceroneActivity;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class uj1 extends qm3 implements bm3<ly5.a, String, Boolean> {
    @Override // defpackage.bm3
    public final Boolean invoke(ly5.a aVar, String str) {
        boolean zBooleanValue;
        Object aVar2;
        ly5.a aVar3 = aVar;
        String str2 = str;
        aVar3.getClass();
        str2.getClass();
        CiceroneActivity ciceroneActivity = (CiceroneActivity) this.receiver;
        int i = CiceroneActivity.s;
        if (aVar3 instanceof ly5.a.c) {
            jq4 jq4Var = (jq4) ciceroneActivity.k.getValue();
            String str3 = ((ly5.a.c) aVar3).a;
            jq4Var.getClass();
            try {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str2)).setPackage(str3);
                intent.getClass();
                ciceroneActivity.startActivity(intent);
                aVar2 = Boolean.TRUE;
            } catch (Throwable th) {
                aVar2 = new k57.a(th);
            }
            Object obj = Boolean.FALSE;
            if (aVar2 instanceof k57.a) {
                aVar2 = obj;
            }
            zBooleanValue = ((Boolean) aVar2).booleanValue();
        } else {
            ciceroneActivity.getClass();
            if (aVar3.equals(ly5.a.C0302a.a)) {
                n07 n07Var = new n07();
                n07Var.b = true;
                oz1.c(ciceroneActivity, str2, new sj1(n07Var));
                zBooleanValue = n07Var.b;
            } else {
                if (!aVar3.equals(ly5.a.b.a)) {
                    me0.e();
                    return null;
                }
                i72.b(ciceroneActivity, str2);
                zBooleanValue = true;
            }
        }
        return Boolean.valueOf(zBooleanValue);
    }
}
