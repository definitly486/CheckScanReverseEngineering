package defpackage;

import android.util.Log;
import com.google.firebase.Firebase;
import com.google.firebase.analytics.AnalyticsKt;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.analytics.ParametersBuilder;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class u67 implements s67 {
    public final fh8 a = nm4.b(a.f);

    /* JADX INFO: loaded from: classes4.dex */
    public static final class a extends gh4 implements ll3<FirebaseAnalytics> {
        public static final a f = new a(0);

        @Override // defpackage.ll3
        public final FirebaseAnalytics invoke() {
            return AnalyticsKt.getAnalytics(Firebase.INSTANCE);
        }
    }

    @Override // defpackage.s67
    public final kq1 a(ua3... ua3VarArr) {
        ArrayList arrayList = new ArrayList(ua3VarArr.length);
        for (final ua3 ua3Var : ua3VarArr) {
            arrayList.add(new cq1(new h6() { // from class: t67
                @Override // defpackage.h6
                public final void run() {
                    FirebaseAnalytics firebaseAnalytics = (FirebaseAnalytics) this.a.a.getValue();
                    ua3 ua3Var2 = ua3Var;
                    String strA = ua3Var2.a();
                    ParametersBuilder parametersBuilder = new ParametersBuilder();
                    List<ua3.a> listB = ua3Var2.b();
                    if (listB != null) {
                        for (ua3.a aVar : listB) {
                            String strA2 = aVar.a();
                            qd4 qd4VarB = aVar.b();
                            Serializable serializable = qd4VarB.b;
                            if (serializable instanceof Number) {
                                parametersBuilder.param(strA2, qd4VarB.i());
                            } else if (serializable instanceof String) {
                                String strG = qd4VarB.g();
                                strG.getClass();
                                parametersBuilder.param(strA2, strG);
                            }
                        }
                    }
                    firebaseAnalytics.logEvent(strA, parametersBuilder.getBundle());
                    Log.d("FirebaseRevenue", ua3Var2.a());
                }
            }));
        }
        return new kq1(arrayList);
    }
}
