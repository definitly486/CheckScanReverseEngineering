package defpackage;

import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.messaging.FirebaseMessaging;

/* JADX INFO: loaded from: classes.dex */
public final class ka5 implements lu6 {

    public static final class a implements OnSuccessListener {
        public final /* synthetic */ t9 b;

        public a(t9 t9Var) {
            this.b = t9Var;
        }

        @Override // com.google.android.gms.tasks.OnSuccessListener
        public final /* synthetic */ void onSuccess(Object obj) {
            this.b.invoke(obj);
        }
    }

    @Override // defpackage.lu6
    public final Object a(qo7 qo7Var) throws Throwable {
        c31 c31Var = new c31(1, zya.b(qo7Var));
        c31Var.u();
        FirebaseMessaging.getInstance().getToken().addOnSuccessListener(new a(new t9(c31Var, 1))).addOnFailureListener(new ja5(c31Var));
        Object objS = c31Var.s();
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objS;
    }
}
