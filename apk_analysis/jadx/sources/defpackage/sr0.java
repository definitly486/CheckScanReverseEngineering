package defpackage;

import com.warefly.checkscan.presentation.bonuses.search.presenter.BonusesSearchPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class sr0 extends qm3 implements nl3 {
    public final /* synthetic */ int c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ sr0(int i, Object obj, Class cls, String str, String str2, int i2, int i3) {
        super(i, obj, cls, str, str2, i2);
        this.c = i3;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.c) {
            case 0:
                String str = (String) obj;
                str.getClass();
                ((BonusesSearchPresenter) this.receiver).onChipClick(str);
                break;
            default:
                String str2 = (String) obj;
                str2.getClass();
                ((sv6) this.receiver).onQuestionTextLinkClicked(str2);
                break;
        }
        return j59.a;
    }
}
