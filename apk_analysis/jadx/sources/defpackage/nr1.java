package defpackage;

import android.text.TextUtils;
import androidx.activity.ComponentActivity;
import androidx.activity.OnBackPressedDispatcher;
import com.google.firebase.crashlytics.internal.common.CrashlyticsCore;
import com.my.target.b1;
import com.my.target.t0;
import com.my.target.u;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class nr1 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ nr1(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                ((ComponentActivity) this.c).addObserverForBackInvoker((OnBackPressedDispatcher) this.d);
                break;
            case 1:
                ((CrashlyticsCore) this.c).lambda$setUserId$4((String) this.d);
                break;
            default:
                b1 b1Var = (b1) this.c;
                t0 t0Var = (t0) this.d;
                kt9 kt9Var = rh5.c;
                Objects.requireNonNull(kt9Var);
                u uVar = (u) b1Var;
                kia kiaVar = uVar.d;
                if (kiaVar != null) {
                    j8a j8aVar = new j8a();
                    kia kiaVar2 = (kia) uVar.d(kiaVar, j8aVar);
                    if (kiaVar2 != null) {
                        j8aVar = new j8a();
                    }
                    uVar.c(kiaVar2, j8aVar, t0Var);
                } else {
                    zfa.a(kt9Var);
                    if (kt9Var.a()) {
                        n6a n6aVarA = n6a.a(kt9Var.a);
                        ArrayList arrayList = new ArrayList();
                        String strC = n6aVarA.c("hosts");
                        if (!TextUtils.isEmpty(strC)) {
                            Collections.addAll(arrayList, strC.split(StringUtils.COMMA));
                        }
                        arrayList.add("ad.mail.ru");
                        wm9.a aVar = new wm9.a();
                        String str = (String) arrayList.get(0);
                        z2a z2aVar = uVar.a;
                        v4a v4aVar = new v4a(uVar, t0Var, arrayList, n6aVarA);
                        z2aVar.g.b(1000);
                        mu9.a |= 304;
                        ArrayList arrayList2 = new ArrayList();
                        Iterator it = z2aVar.b.values().iterator();
                        while (it.hasNext()) {
                            c8 c8VarA = ((b8) it.next()).a();
                            if (c8VarA != null) {
                                arrayList2.add(c8VarA);
                            }
                        }
                        if (arrayList2.isEmpty()) {
                            y14.r(null, "DefaultAdServiceBuilder: no AdNetworkLoaders, direct call result");
                            wm9.a.a(str, z2aVar, new HashMap(), t0Var, kt9Var, v4aVar);
                        } else {
                            y14.r(null, "DefaultAdServiceBuilder: loading mediation params");
                            xy9 xy9Var = new xy9(z2aVar.f, arrayList2, kt9Var, new um9(aVar, str, z2aVar, t0Var, kt9Var, v4aVar));
                            if (xy9Var.f == 0) {
                                y14.r(null, "MediationParamsLoader: empty loaders list, direct onResult call");
                                xy9Var.a();
                            } else {
                                y14.r(null, "MediationParamsLoader: params loading started, loaders count: " + xy9Var.f);
                                xy9Var.b.b(xy9Var);
                                for (c8 c8Var : xy9Var.c) {
                                    y14.r(null, "MediationParamsLoader: loading params for " + c8Var);
                                    c8Var.b();
                                    c8Var.a();
                                }
                            }
                        }
                    } else {
                        uVar.a.g.a(null, 0, 0, 1002, null);
                        l6a l6aVar = l6a.d;
                        j8a j8aVar2 = new j8a();
                        j8aVar2.a = l6aVar;
                        uVar.c(null, j8aVar2, t0Var);
                    }
                }
                break;
        }
    }
}
