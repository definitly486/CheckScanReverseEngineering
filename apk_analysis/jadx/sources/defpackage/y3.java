package defpackage;

import android.os.Bundle;
import android.widget.TextView;
import androidx.activity.result.ActivityResultCallback;
import androidx.fragment.app.FragmentKt;
import androidx.fragment.app.FragmentResultListener;
import com.my.target.m1;
import com.my.target.r;
import com.warefly.checkscan.calendarspinner.widgets.WheelDayPicker;
import com.warefly.checkscan.personalform.presentation.form.view.PersonalDataFormFragment;
import com.warefly.checkscan.presentation.bonuses.onlineShops.presenter.NewOnlineShopPresenter;
import com.warefly.checkscan.presentation.qrHand.view.QrHandFragment;
import java.util.Map;
import yads.nr;
import yads.wu5;
import yads.xu5;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class y3 implements xl3, WheelDayPicker.a, ze6, ActivityResultCallback, FragmentResultListener, m1.b, wu5 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ y3(r rVar, ao9 ao9Var) {
        this.b = 6;
        this.c = ao9Var;
    }

    @Override // com.my.target.m1.b
    /* JADX INFO: renamed from: a */
    public void mo1a() {
        String str = ((ao9) this.c).B;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return (z79.a) ((s4) obj2).invoke(obj);
            default:
                return (String) ((nl3) obj2).invoke(obj);
        }
    }

    public void b(xu5 xu5Var) {
        ((nr) this.c).a((TextView) xu5Var);
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        PersonalDataFormFragment personalDataFormFragment = (PersonalDataFormFragment) this.c;
        Map map = (Map) obj;
        PersonalDataFormFragment.a aVar = PersonalDataFormFragment.l;
        map.getClass();
        Boolean bool = Boolean.FALSE;
        if (((Boolean) map.getOrDefault("android.permission.ACCESS_FINE_LOCATION", bool)).booleanValue() || ((Boolean) map.getOrDefault("android.permission.ACCESS_COARSE_LOCATION", bool)).booleanValue()) {
            personalDataFormFragment.o().updateLocation();
        } else {
            personalDataFormFragment.o().showCitySelection();
        }
    }

    @Override // androidx.fragment.app.FragmentResultListener
    public void onFragmentResult(String str, Bundle bundle) {
        QrHandFragment qrHandFragment = (QrHandFragment) this.c;
        ze4<Object>[] ze4VarArr = QrHandFragment.j;
        str.getClass();
        bundle.getClass();
        FragmentKt.clearFragmentResult(qrHandFragment, str);
        qrHandFragment.o().onTimeSelected(bundle.getInt("SELECTED_HOUR"), bundle.getInt("SELECTED_MINUTE"));
    }

    @Override // defpackage.ze6
    public boolean test(Object obj) {
        return NewOnlineShopPresenter.prepareAutoScroll$lambda$4((NewOnlineShopPresenter.k) this.c, obj);
    }

    public /* synthetic */ y3(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }
}
