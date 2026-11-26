package defpackage;

import android.view.View;
import com.warefly.checkscan.auth.presentation.userCallVerification.presenter.VerificationUserCallPresenter;
import com.warefly.checkscan.auth.presentation.userCallVerification.view.VerificationUserCallFragment;
import com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView;
import com.warefly.checkscan.presentation.flows.desktop.view.DesktopFlowFragment;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class p42 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ p42(Object obj, int i) {
        super(1);
        this.f = i;
        this.g = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        q42 q42Var;
        Object next;
        h57 h57VarB;
        String strA;
        g57 g57Var;
        zf zfVarA;
        g57 g57Var2;
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                List list = (List) obj;
                list.getClass();
                List<ww3> list2 = list;
                q42 q42Var2 = (q42) obj2;
                ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
                for (ww3 ww3Var : list2) {
                    String strE = ww3Var.e();
                    String strD = ww3Var.d();
                    String strI = ww3Var.i();
                    String strG = ww3Var.g();
                    String strF = ww3Var.f();
                    String strB = ww3Var.b();
                    String strJ = ww3Var.j();
                    boolean z = false;
                    boolean zA = ww3Var.a() ? !q42Var2.b.A0() : ww3Var.a();
                    List<lb8> listC = ww3Var.c();
                    if (!(listC instanceof Collection) || !listC.isEmpty()) {
                        Iterator<T> it = listC.iterator();
                        while (it.hasNext()) {
                            if (((lb8) it.next()).a() == mb8.AddToShoppingCart) {
                                z = true;
                            }
                        }
                    }
                    Iterator<T> it2 = ww3Var.c().iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            next = it2.next();
                            q42Var = q42Var2;
                            if (((lb8) next).a() != mb8.Order) {
                                q42Var2 = q42Var;
                            }
                        } else {
                            q42Var = q42Var2;
                            next = null;
                        }
                    }
                    lb8 lb8Var = (lb8) next;
                    String strB2 = lb8Var != null ? lb8Var.b() : null;
                    String strH = ww3Var.h();
                    if (strH == null || (g57Var2 = (g57) ht3.b(g57.class, strH)) == null || (h57VarB = g57Var2.b()) == null) {
                        h57VarB = h57.NO_RESTRICTION;
                    }
                    h57 h57Var = h57VarB;
                    String strH2 = ww3Var.h();
                    if (strH2 == null || (g57Var = (g57) ht3.b(g57.class, strH2)) == null || (zfVarA = g57Var.a()) == null || (strA = zfVarA.a()) == null) {
                        strA = "";
                    }
                    arrayList.add(new yw3(strE, strD, strI, strG, strF, strB, strJ, zA, z, strB2, h57Var, strA));
                    q42Var2 = q42Var;
                }
                return arrayList;
            case 1:
                ((View) obj).getClass();
                ((DesktopFlowFragment) obj2).q().onMenuItemClicked(DesktopView.a.Notifications);
                return j59.a;
            default:
                ((View) obj).getClass();
                VerificationUserCallPresenter verificationUserCallPresenter = ((VerificationUserCallFragment) obj2).presenter;
                if (verificationUserCallPresenter != null) {
                    verificationUserCallPresenter.onBackClicked();
                    return j59.a;
                }
                aa4.j("presenter");
                throw null;
        }
    }
}
