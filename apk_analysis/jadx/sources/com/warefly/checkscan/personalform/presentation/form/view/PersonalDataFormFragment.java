package com.warefly.checkscan.personalform.presentation.form.view;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.core.ui.databinding.LayoutToolbarTitleWithTextButtonTransparentBinding;
import com.warefly.checkscan.personalform.databinding.FragmentPersonalDataFormBinding;
import com.warefly.checkscan.personalform.presentation.form.bottomSheet.AfterOnboardingWarningBottomSheet;
import com.warefly.checkscan.personalform.presentation.form.bottomSheet.PersonalDataSuccessBottomSheet;
import com.warefly.checkscan.personalform.presentation.form.presenter.PersonalDataFormPresenter;
import defpackage.a56;
import defpackage.aa4;
import defpackage.aq;
import defpackage.bs6;
import defpackage.d76;
import defpackage.e56;
import defpackage.eu1;
import defpackage.gh4;
import defpackage.i66;
import defpackage.j59;
import defpackage.jf6;
import defpackage.lb7;
import defpackage.m2;
import defpackage.nl3;
import defpackage.ol4;
import defpackage.oz1;
import defpackage.pl2;
import defpackage.pz3;
import defpackage.qm3;
import defpackage.sg;
import defpackage.u56;
import defpackage.u66;
import defpackage.w66;
import defpackage.x07;
import defpackage.y3;
import defpackage.z46;
import defpackage.ze4;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class PersonalDataFormFragment extends BaseFragment<FragmentPersonalDataFormBinding> implements PersonalDataFormView {
    public static final a l;
    public static final /* synthetic */ ze4<Object>[] m;
    public final int f = R.layout.fragment_personal_data_form;
    public final ol4 g = new ol4(FragmentPersonalDataFormBinding.class);
    public final ActivityResultLauncher<String[]> h;
    public eu1 i;
    public AfterOnboardingWarningBottomSheet j;
    public PersonalDataSuccessBottomSheet k;
    public PersonalDataFormPresenter presenter;

    public static final class a {
    }

    public static final class b extends RecyclerView.ItemDecoration {
        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            sg.e(rect, view, recyclerView, state);
            super.getItemOffsets(rect, view, recyclerView, state);
            rect.top = pl2.e(12);
        }
    }

    public static final class c extends gh4 implements nl3<View, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            PersonalDataFormFragment.this.o().onBackClicked();
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<View, j59> {
        public d() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            PersonalDataFormFragment.this.o().onSaveClicked();
            return j59.a;
        }
    }

    public static final /* synthetic */ class e extends qm3 implements nl3<Boolean, j59> {
        @Override // defpackage.nl3
        public final j59 invoke(Boolean bool) {
            ((PersonalDataFormPresenter) this.receiver).onLaterClicked(bool.booleanValue());
            return j59.a;
        }
    }

    public static final /* synthetic */ class f extends qm3 implements nl3<String, j59> {
        @Override // defpackage.nl3
        public final j59 invoke(String str) {
            String str2 = str;
            str2.getClass();
            ((PersonalDataFormPresenter) this.receiver).onOpenUrlClicked(str2);
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(PersonalDataFormFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/personalform/databinding/FragmentPersonalDataFormBinding;", 0);
        x07.a.getClass();
        m = new ze4[]{bs6Var};
        l = new a();
    }

    public PersonalDataFormFragment() {
        ActivityResultLauncher<String[]> activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts.RequestMultiplePermissions(), new y3(this, 4));
        activityResultLauncherRegisterForActivityResult.getClass();
        this.h = activityResultLauncherRegisterForActivityResult;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final boolean k() {
        o().onBackClicked();
        return false;
    }

    public final FragmentPersonalDataFormBinding n() {
        return (FragmentPersonalDataFormBinding) this.g.getValue(this, m[0]);
    }

    public final PersonalDataFormPresenter o() {
        PersonalDataFormPresenter personalDataFormPresenter = this.presenter;
        if (personalDataFormPresenter != null) {
            return personalDataFormPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        o().onResume();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        LayoutToolbarTitleWithTextButtonTransparentBinding layoutToolbarTitleWithTextButtonTransparentBinding = n().toolbar;
        layoutToolbarTitleWithTextButtonTransparentBinding.getRoot().setBackgroundColor(ContextCompat.getColor(requireContext(), R.color.gray_10));
        layoutToolbarTitleWithTextButtonTransparentBinding.tvTitle.setText(getString(R.string.personal_form_toolbar_title));
        ImageView imageView = layoutToolbarTitleWithTextButtonTransparentBinding.ivBtnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new c()));
        TextView textView = layoutToolbarTitleWithTextButtonTransparentBinding.btnAction;
        textView.setText(getString(R.string.personal_form_toolbar_button_text));
        textView.setEnabled(false);
        textView.setOnClickListener(new lb7(new d()));
        RecyclerView recyclerView = n().rvContent;
        eu1 eu1Var = new eu1(new u56(o()), new a56(z46.c), new e56(o()));
        this.i = eu1Var;
        recyclerView.setAdapter(eu1Var);
        recyclerView.setLayoutManager(new LinearLayoutManager(requireContext(), 1, false));
        recyclerView.setItemAnimator(null);
        recyclerView.addItemDecoration(new b());
    }

    public final PersonalDataFormPresenter providePresenter() {
        w66 w66Var = (w66) m2.c(w66.class, defpackage.e.e(this), null, null);
        Bundle arguments = getArguments();
        return new PersonalDataFormPresenter(w66Var, (jf6) m2.c(jf6.class, defpackage.e.e(this), null, null), arguments != null ? arguments.getBoolean("IS_AFTER_ONBOARDING_KEY") : false, (i66) m2.c(i66.class, defpackage.e.e(this), null, null), (d76) m2.c(d76.class, defpackage.e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.personalform.presentation.form.view.PersonalDataFormView
    public final void requestGeoPermission() {
        Context contextRequireContext = requireContext();
        contextRequireContext.getClass();
        if (aq.a(contextRequireContext)) {
            o().updateLocation();
        } else {
            this.h.launch(new String[]{"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"});
        }
    }

    @Override // com.warefly.checkscan.personalform.presentation.form.view.PersonalDataFormView
    public final void setButtonEnabled(boolean z) {
        n().toolbar.btnAction.setEnabled(z);
    }

    @Override // com.warefly.checkscan.personalform.presentation.form.view.PersonalDataFormView
    public final void showItems(List<? extends pz3> list) {
        list.getClass();
        eu1 eu1Var = this.i;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
    }

    @Override // com.warefly.checkscan.personalform.presentation.form.view.PersonalDataFormView
    public final void showOnboardingWarning(com.warefly.checkscan.personalform.presentation.form.bottomSheet.a aVar) {
        aVar.getClass();
        AfterOnboardingWarningBottomSheet afterOnboardingWarningBottomSheet = this.j;
        if (afterOnboardingWarningBottomSheet != null) {
            afterOnboardingWarningBottomSheet.dismiss();
        }
        Context contextRequireContext = requireContext();
        contextRequireContext.getClass();
        AfterOnboardingWarningBottomSheet afterOnboardingWarningBottomSheet2 = new AfterOnboardingWarningBottomSheet(contextRequireContext, aVar, new e(1, o(), PersonalDataFormPresenter.class, "onLaterClicked", "onLaterClicked(Z)V", 0));
        this.j = afterOnboardingWarningBottomSheet2;
        afterOnboardingWarningBottomSheet2.show();
    }

    @Override // com.warefly.checkscan.personalform.presentation.form.view.PersonalDataFormView
    public final void showSaveError() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.personal_form_save_default_error, view);
        }
    }

    @Override // com.warefly.checkscan.personalform.presentation.form.view.PersonalDataFormView
    public final void showSaveLoading(boolean z) {
        ConstraintLayout root = n().incldLoading.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.personalform.presentation.form.view.PersonalDataFormView
    public final void showSaveSuccess(String str) {
        if (str != null) {
            Toast.makeText(requireContext(), str, 0).show();
        }
    }

    @Override // com.warefly.checkscan.personalform.presentation.form.view.PersonalDataFormView
    public final void showSaveSuccessFirstTime(u66 u66Var) {
        u66Var.getClass();
        PersonalDataSuccessBottomSheet personalDataSuccessBottomSheet = this.k;
        if (personalDataSuccessBottomSheet != null) {
            personalDataSuccessBottomSheet.dismiss();
        }
        Context contextRequireContext = requireContext();
        contextRequireContext.getClass();
        PersonalDataSuccessBottomSheet personalDataSuccessBottomSheet2 = new PersonalDataSuccessBottomSheet(contextRequireContext, u66Var, new f(1, o(), PersonalDataFormPresenter.class, "onOpenUrlClicked", "onOpenUrlClicked(Ljava/lang/String;)V", 0));
        this.k = personalDataSuccessBottomSheet2;
        personalDataSuccessBottomSheet2.show();
    }
}
