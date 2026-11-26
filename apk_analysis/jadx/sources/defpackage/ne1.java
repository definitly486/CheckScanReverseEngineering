package defpackage;

import com.warefly.checkscan.presentation.chequePage.view.ChequePageFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class ne1 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ne1(Object obj, int i) {
        super(1);
        this.f = i;
        this.g = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                ((c81) obj).getClass();
                ((ChequePageFragment) obj2).showCategoryTutorial();
                break;
            default:
                ((oz7.a) obj2).onSuccess((String) obj);
                break;
        }
        return j59.a;
    }
}
