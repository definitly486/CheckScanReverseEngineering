package defpackage;

import android.net.Uri;
import com.google.firebase.dynamiclinks.FirebaseDynamicLinks;

/* JADX INFO: loaded from: classes.dex */
public final class qu2 extends ou2 {
    public final a d = new a();

    public static final class a extends gh4 implements nl3<b08<Uri>, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(b08<Uri> b08Var) {
            b08<Uri> b08Var2 = b08Var;
            b08Var2.getClass();
            FirebaseDynamicLinks.getInstance().getDynamicLink(qu2.this.c).addOnSuccessListener(new kk2(new pu2(b08Var2))).addOnFailureListener(new x3(b08Var2, 3));
            return j59.a;
        }
    }

    @Override // defpackage.u1
    public final nl3<b08<Uri>, j59> f() {
        return this.d;
    }
}
