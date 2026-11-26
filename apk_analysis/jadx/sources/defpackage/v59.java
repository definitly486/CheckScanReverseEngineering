package defpackage;

import com.tapjoy.TJAdUnitConstants;
import com.tapjoy.Tapjoy;
import com.tapjoy.TapjoyConnectFlag;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.component.unityofferwall.UnityOfferwallController$awaitConnect$2", f = "UnityOfferwallController.kt", l = {305}, m = "invokeSuspend")
public final class v59 extends pg8 implements bm3<y22, e02<? super Boolean>, Object> {
    public int l;
    public final /* synthetic */ s59 m;
    public final /* synthetic */ String n;

    public static final class a extends gh4 implements nl3<Boolean, j59> {
        public final /* synthetic */ s59 f;
        public final /* synthetic */ c31 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(s59 s59Var, c31 c31Var) {
            super(1);
            this.f = s59Var;
            this.g = c31Var;
        }

        @Override // defpackage.nl3
        public final j59 invoke(Boolean bool) {
            boolean zBooleanValue = bool.booleanValue();
            c31 c31Var = this.g;
            s59 s59Var = this.f;
            s59Var.f(new u59(s59Var, c31Var, zBooleanValue));
            return j59.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v59(s59 s59Var, String str, e02<? super v59> e02Var) {
        super(2, e02Var);
        this.m = s59Var;
        this.n = str;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new v59(this.m, this.n, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super Boolean> e02Var) {
        return ((v59) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Throwable {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.l;
        if (i != 0) {
            if (i == 1) {
                r57.b(obj);
                return obj;
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        this.l = 1;
        c31 c31Var = new c31(1, zya.b(this));
        c31Var.u();
        s59 s59Var = this.m;
        sk8 sk8Var = s59Var.a;
        a aVar = new a(s59Var, c31Var);
        String str = this.n;
        str.getClass();
        Hashtable hashtable = new Hashtable();
        hashtable.put(TapjoyConnectFlag.USER_ID, str);
        hashtable.put("TJC_OPTION_DISMISS_CONTENT_ALL", TJAdUnitConstants.String.TRUE);
        if (!Tapjoy.connect(sk8Var.a, "t8xDZwg2Rs6hjtxe_62mVgECTh3AdpnHmgb0J4Nhut90n-iFHnDO8WhHt66w", hashtable, new tk8(aVar))) {
            aVar.invoke(Boolean.FALSE);
        }
        Object objS = c31Var.s();
        return objS == a32Var ? a32Var : objS;
    }
}
