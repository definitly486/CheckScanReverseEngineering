package defpackage;

import android.view.View;
import com.warefly.checkscan.presentation.webview.WebViewReplenishmentActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class op5 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ op5(Object obj, int i) {
        super(1);
        this.f = i;
        this.g = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                List list = (List) obj;
                pp5 pp5Var = (pp5) obj2;
                list.getClass();
                List list2 = list;
                ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
                Iterator it = list2.iterator();
                while (true) {
                    int i2 = 0;
                    if (!it.hasNext()) {
                        pp5Var.d.addAll(arrayList);
                        ArrayList arrayList2 = new ArrayList(arrayList);
                        Iterator it2 = list.iterator();
                        int i3 = 0;
                        while (true) {
                            if (!it2.hasNext()) {
                                i3 = -1;
                            } else if (((to5) it2.next()).j()) {
                                i3++;
                            }
                        }
                        Object[] objArr = (pp5Var.c || i3 == -1) ? false : true;
                        if (objArr != false) {
                            arrayList2.add(i3, new bp5("Новые"));
                            pp5Var.c = true;
                        }
                        Iterator it3 = arrayList2.iterator();
                        while (true) {
                            if (it3.hasNext()) {
                                pz3 pz3Var = (pz3) it3.next();
                                cp5 cp5Var = pz3Var instanceof cp5 ? (cp5) pz3Var : null;
                                if (cp5Var == null || !cp5Var.e) {
                                    i2++;
                                }
                            } else {
                                i2 = -1;
                            }
                        }
                        if (!pp5Var.b && i2 != -1) {
                            arrayList2.add(i2, new bp5("Просмотренные"));
                            if (objArr != false) {
                                arrayList2.add(i2, new dd9());
                            }
                            pp5Var.b = true;
                        }
                        return arrayList2;
                    }
                    to5 to5Var = (to5) it.next();
                    to5Var.getClass();
                    int iE = to5Var.e();
                    String strH = to5Var.h();
                    String strB = to5Var.b();
                    String strC = to5Var.c();
                    boolean zJ = to5Var.j();
                    String strI = to5Var.i();
                    Boolean boolA = to5Var.a();
                    boolean zBooleanValue = boolA != null ? boolA.booleanValue() : false;
                    to5.b bVarD = to5Var.d();
                    String strB2 = bVarD != null ? bVarD.b() : null;
                    to5.a aVarF = to5Var.f();
                    cp5.a aVar = aVarF != null ? new cp5.a(aVarF.a(), aVarF.b()) : null;
                    c06 c06VarG = to5Var.g();
                    b06 b06VarF = c06VarG != null ? c06VarG.f() : null;
                    to5.b bVarD2 = to5Var.d();
                    arrayList.add(new cp5(iE, strH, strB, strC, zJ, zBooleanValue, strB2, aVar, b06VarF, strI, bVarD2 != null ? bVarD2.a() : null));
                }
                break;
            default:
                ((View) obj).getClass();
                WebViewReplenishmentActivity webViewReplenishmentActivity = (WebViewReplenishmentActivity) obj2;
                webViewReplenishmentActivity.setResult(1);
                webViewReplenishmentActivity.finish();
                return j59.a;
        }
    }
}
