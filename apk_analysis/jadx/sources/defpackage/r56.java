package defpackage;

import android.view.View;
import android.widget.AdapterView;
import android.widget.PopupWindow;
import com.warefly.checkscan.personalform.presentation.form.presenter.PersonalDataFormPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class r56 implements AdapterView.OnItemClickListener {
    public final /* synthetic */ p56 b;
    public final /* synthetic */ s56 c;
    public final /* synthetic */ PopupWindow d;

    public r56(p56 p56Var, s56 s56Var, PopupWindow popupWindow) {
        this.b = p56Var;
        this.c = s56Var;
        this.d = popupWindow;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        Object itemAtPosition = adapterView.getItemAtPosition(i);
        itemAtPosition.getClass();
        String str = (String) itemAtPosition;
        PersonalDataFormPresenter personalDataFormPresenter = this.b.b;
        for (s56.a aVar : this.c.a) {
            if (aa4.e(aVar.d, str)) {
                personalDataFormPresenter.onDropDownClicked(aVar);
                this.d.dismiss();
                return;
            }
        }
        ag.g("Collection contains no element matching the predicate.");
    }
}
