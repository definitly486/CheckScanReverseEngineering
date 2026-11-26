package defpackage;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import com.google.firebase.Firebase;
import com.google.firebase.dynamiclinks.FirebaseDynamicLinksKt;
import java.net.URI;

/* JADX INFO: loaded from: classes5.dex */
public final class os7 {
    public final ll3<j59> a;
    public final nl3<Boolean, j59> b;
    public final nu2 c;
    public final vs7 d;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            os7.this.a.invoke();
            return j59.a;
        }
    }

    public os7(View view, nl3 nl3Var, ll3 ll3Var) {
        view.getClass();
        this.a = ll3Var;
        this.b = nl3Var;
        Context context = view.getContext();
        context.getClass();
        this.c = new nu2(context);
        Context context2 = view.getContext();
        context2.getClass();
        this.d = new vs7(context2);
        view.setOnClickListener(new lb7(new a()));
    }

    public final rx1 a(final String str, final String str2, final String str3, String str4, ll3 ll3Var) {
        x7.b(str, str2, str4);
        String aSCIIString = URI.create(str4).toASCIIString();
        aSCIIString.getClass();
        final Uri uri = Uri.parse(aSCIIString);
        final nu2 nu2Var = this.c;
        nu2Var.getClass();
        uri.getClass();
        return yb8.d(new uz7(new xz7(new oz7(new w08() { // from class: fu2
            @Override // defpackage.w08
            public final void c(oz7.a aVar) {
                FirebaseDynamicLinksKt.shortLinkAsync(FirebaseDynamicLinksKt.getDynamicLinks(Firebase.INSTANCE), 2, new lu2(nu2Var, str, str2, str3, uri)).addOnSuccessListener(new gu2(new mu2(aVar, 0))).addOnFailureListener(new hu2(aVar));
            }
        }).i(ne7.c).f(rj.a()), new fm6(new ls7(this), 1)), new h6() { // from class: ks7
            @Override // defpackage.h6
            public final void run() {
                this.a.b.invoke(Boolean.FALSE);
            }
        }), new ms7(ll3Var), new ns7(this, str2, ll3Var));
    }
}
