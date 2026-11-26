package defpackage;

import com.warefly.checkscan.presentation.createCard.presenter.CreateCardPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class wd1 implements h6 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ wd1(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.h6
    public final void run() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                ((xd1) obj).b().onNext(j59.a);
                break;
            default:
                CreateCardPresenter.onIssueClick$lambda$2((CreateCardPresenter) obj);
                break;
        }
    }
}
