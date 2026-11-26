package defpackage;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes5.dex */
public final class ps5 extends gh4 implements nl3 {
    public final /* synthetic */ int f = 1;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ps5(ts5 ts5Var, ms5 ms5Var) {
        super(1);
        this.g = ms5Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                a57 a57Var = (a57) obj;
                a57Var.getClass();
                return ts5.e((ms5) obj2, a57Var);
            default:
                ((j59) obj).getClass();
                SharedPreferences sharedPreferences = ((fm9) obj2).a.a;
                sharedPreferences.getClass();
                SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                editorEdit.getClass();
                editorEdit.remove("fsa_event_key");
                editorEdit.apply();
                return j59.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ps5(fm9 fm9Var) {
        super(1);
        this.g = fm9Var;
    }
}
