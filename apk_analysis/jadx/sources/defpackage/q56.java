package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import com.google.android.material.textfield.TextInputEditText;
import com.warefly.checkscan.R;
import com.warefly.checkscan.personalform.databinding.ItemPersonalDataFormNotEditableTextFieldBinding;
import com.warefly.checkscan.personalform.databinding.PersonalDataFormPopupDropDownBinding;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class q56 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ ItemPersonalDataFormNotEditableTextFieldBinding f;
    public final /* synthetic */ s56 g;
    public final /* synthetic */ p56 h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q56(ItemPersonalDataFormNotEditableTextFieldBinding itemPersonalDataFormNotEditableTextFieldBinding, s56 s56Var, p56 p56Var) {
        super(1);
        this.f = itemPersonalDataFormNotEditableTextFieldBinding;
        this.g = s56Var;
        this.h = p56Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        view.getClass();
        ItemPersonalDataFormNotEditableTextFieldBinding itemPersonalDataFormNotEditableTextFieldBinding = this.f;
        PopupWindow popupWindow = new PopupWindow(itemPersonalDataFormNotEditableTextFieldBinding.getRoot().getContext());
        PersonalDataFormPopupDropDownBinding personalDataFormPopupDropDownBindingInflate = PersonalDataFormPopupDropDownBinding.inflate(LayoutInflater.from(itemPersonalDataFormNotEditableTextFieldBinding.getRoot().getContext()));
        personalDataFormPopupDropDownBindingInflate.getClass();
        popupWindow.setContentView(personalDataFormPopupDropDownBindingInflate.getRoot());
        popupWindow.setElevation(1.0f);
        popupWindow.setBackgroundDrawable(new ColorDrawable(-1));
        popupWindow.setWidth(itemPersonalDataFormNotEditableTextFieldBinding.tilField.getWidth());
        popupWindow.setHeight(-2);
        popupWindow.setFocusable(true);
        ListView listView = personalDataFormPopupDropDownBindingInflate.lvOptions;
        Context context = itemPersonalDataFormNotEditableTextFieldBinding.getRoot().getContext();
        s56 s56Var = this.g;
        List<s56.a> list = s56Var.a;
        List<s56.a> list2 = list;
        ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
        Iterator<T> it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(((s56.a) it.next()).d);
        }
        listView.setAdapter((ListAdapter) new ArrayAdapter(context, R.layout.personal_data_form_popup_drop_down_item, arrayList));
        listView.setOnItemClickListener(new r56(this.h, s56Var, popupWindow));
        personalDataFormPopupDropDownBindingInflate.lvOptions.measure(0, 0);
        int[] iArr = new int[2];
        itemPersonalDataFormNotEditableTextFieldBinding.etField.getLocationOnScreen(iArr);
        int size = list.size() * pl2.e(30);
        int i = iArr[1];
        int i2 = iArr[0];
        int height = Resources.getSystem().getDisplayMetrics().heightPixels - (itemPersonalDataFormNotEditableTextFieldBinding.etField.getHeight() + i);
        TextInputEditText textInputEditText = itemPersonalDataFormNotEditableTextFieldBinding.etField;
        if (height >= size) {
            popupWindow.showAsDropDown(textInputEditText);
        } else {
            popupWindow.showAtLocation(textInputEditText, 0, i2, i - size);
        }
        return j59.a;
    }
}
