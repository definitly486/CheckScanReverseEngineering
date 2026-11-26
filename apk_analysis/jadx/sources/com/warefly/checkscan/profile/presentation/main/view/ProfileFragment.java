package com.warefly.checkscan.profile.presentation.main.view;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.PickVisualMediaRequest;
import androidx.activity.result.PickVisualMediaRequestKt;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.os.BundleKt;
import androidx.fragment.app.FragmentKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.webkit.internal.AssetHelper;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.core.ui.base.dialogs.DialogTwoButtons;
import com.warefly.checkscan.core.ui.base.dialogs.LoadingDialog;
import com.warefly.checkscan.core.ui.databinding.LayoutToolbarTitleTransparentBinding;
import com.warefly.checkscan.profile.databinding.FragmentProfileBinding;
import com.warefly.checkscan.profile.domain.entities.PromocodeBlock;
import com.warefly.checkscan.profile.presentation.main.dialogs.ProfilePromocodeErrorBottomSheet;
import com.warefly.checkscan.profile.presentation.main.dialogs.enter.view.ProfilePromocodeEnterBottomSheet;
import com.warefly.checkscan.profile.presentation.main.presenter.ProfilePresenter;
import defpackage.a83;
import defpackage.aa4;
import defpackage.b36;
import defpackage.bm3;
import defpackage.bs6;
import defpackage.cl6;
import defpackage.dm6;
import defpackage.eu1;
import defpackage.fl6;
import defpackage.fy8;
import defpackage.gh4;
import defpackage.hy1;
import defpackage.i72;
import defpackage.j59;
import defpackage.jd;
import defpackage.jf6;
import defpackage.jm6;
import defpackage.k57;
import defpackage.k89;
import defpackage.lb7;
import defpackage.lv4;
import defpackage.m2;
import defpackage.m6;
import defpackage.nl3;
import defpackage.nl6;
import defpackage.ol4;
import defpackage.oz1;
import defpackage.pz3;
import defpackage.q86;
import defpackage.s73;
import defpackage.sm6;
import defpackage.x07;
import defpackage.xl6;
import defpackage.ze4;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ProfileFragment extends BaseFragment<FragmentProfileBinding> implements ProfileView {
    public static final a n;
    public static final /* synthetic */ ze4<Object>[] o;
    public final int f = R.layout.fragment_profile;
    public final ol4 g = new ol4(FragmentProfileBinding.class);
    public final ActivityResultLauncher<PickVisualMediaRequest> h;
    public eu1 i;
    public DialogTwoButtons j;
    public DialogTwoButtons k;
    public LoadingDialog l;
    public ProfilePromocodeErrorBottomSheet m;
    public ProfilePresenter presenter;

    public static final class a {
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            ProfileFragment.this.o().fetchProfileScreen();
            return j59.a;
        }
    }

    public static final class c extends gh4 implements bm3<String, Bundle, j59> {
        public c() {
            super(2);
        }

        @Override // defpackage.bm3
        public final j59 invoke(String str, Bundle bundle) {
            String str2 = str;
            Bundle bundle2 = bundle;
            str2.getClass();
            bundle2.getClass();
            ProfileFragment profileFragment = ProfileFragment.this;
            FragmentKt.clearFragmentResult(profileFragment, str2);
            String string = bundle2.getString("DIALOG_TAG");
            if (aa4.e(string, "DELETE_ACCOUNT_TAG")) {
                profileFragment.o().handleDeleteResult(bundle2.getBoolean(str2));
            } else if (aa4.e(string, "LOG_OUT_TAG")) {
                profileFragment.o().handleLogOutResult(bundle2.getBoolean(str2));
            }
            return j59.a;
        }
    }

    public static final class d extends gh4 implements bm3<String, Bundle, j59> {
        public d() {
            super(2);
        }

        @Override // defpackage.bm3
        public final j59 invoke(String str, Bundle bundle) {
            String str2 = str;
            str2.getClass();
            bundle.getClass();
            ProfileFragment profileFragment = ProfileFragment.this;
            FragmentKt.clearFragmentResult(profileFragment, str2);
            profileFragment.o().fetchProfileScreen();
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<View, j59> {
        public e() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            ProfileFragment.this.o().onBackClicked();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(ProfileFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/profile/databinding/FragmentProfileBinding;", 0);
        x07.a.getClass();
        o = new ze4[]{bs6Var};
        n = new a();
    }

    public ProfileFragment() {
        ActivityResultLauncher<PickVisualMediaRequest> activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts.PickVisualMedia(), new jd(this));
        activityResultLauncherRegisterForActivityResult.getClass();
        this.h = activityResultLauncherRegisterForActivityResult;
    }

    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public final void copyInviteCode(String str) {
        str.getClass();
        Context context = getContext();
        if (context != null) {
            Object systemService = context.getSystemService("clipboard");
            systemService.getClass();
            ((ClipboardManager) systemService).setPrimaryClip(ClipData.newPlainText(getString(R.string.profile_promo_code_label), str));
            Toast.makeText(context, R.string.profile_invite_promo_code_copied, 0).show();
        }
    }

    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public final void dismissDeleteWarningDialog() {
        FragmentKt.clearFragmentResult(this, "DIALOG_TWO_BUTTONS_REQUEST_KEY");
    }

    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public final void dismissLoadingDialog() {
        LoadingDialog loadingDialog = this.l;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
    }

    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public final void dismissLogoutWarningDialog() {
        FragmentKt.clearFragmentResult(this, "DIALOG_TWO_BUTTONS_REQUEST_KEY");
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    public final FragmentProfileBinding n() {
        return (FragmentProfileBinding) this.g.getValue(this, o[0]);
    }

    public final ProfilePresenter o() {
        ProfilePresenter profilePresenter = this.presenter;
        if (profilePresenter != null) {
            return profilePresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        o().fetchProfileScreen();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        RecyclerView recyclerView = n().rvContent;
        recyclerView.setHasFixedSize(true);
        eu1 eu1Var = new eu1(new q86(), new fl6(o()), new nl6(o()), new dm6(o()), new jm6(o()), new xl6(o()), new cl6(o()));
        this.i = eu1Var;
        recyclerView.setAdapter(eu1Var);
        recyclerView.setItemAnimator(null);
        recyclerView.addItemDecoration(new fy8());
        LayoutToolbarTitleTransparentBinding layoutToolbarTitleTransparentBinding = n().toolbar;
        layoutToolbarTitleTransparentBinding.tvTitle.setText(getString(R.string.profile_toolbar_title));
        ImageView imageView = layoutToolbarTitleTransparentBinding.ivBtnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new e()));
        TextView textView = n().incldError.btnTryAgain;
        textView.getClass();
        textView.setOnClickListener(new lb7(new b()));
        FragmentKt.setFragmentResultListener(this, "DIALOG_TWO_BUTTONS_REQUEST_KEY", new c());
        FragmentKt.setFragmentResultListener(this, "PROMOCODE_ACTIVATED_REQUEST_KEY", new d());
    }

    public final ProfilePresenter providePresenter() {
        return new ProfilePresenter((s73) m2.c(s73.class, defpackage.e.e(this), null, null), (hy1) m2.c(hy1.class, defpackage.e.e(this), null, null), (sm6) m2.c(sm6.class, defpackage.e.e(this), null, null), (jf6) m2.c(jf6.class, defpackage.e.e(this), null, null), (k89) m2.c(k89.class, defpackage.e.e(this), null, null), (lv4) m2.c(lv4.class, defpackage.e.e(this), null, null), (a83) m2.c(a83.class, defpackage.e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public final void requestGallery() {
        this.h.launch(PickVisualMediaRequestKt.PickVisualMediaRequest$default(ActivityResultContracts.PickVisualMedia.ImageOnly.INSTANCE, 0, false, null, 14, null));
    }

    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public final void shareReferralLink(String str) {
        Object aVar;
        str.getClass();
        try {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.SEND");
            intent.putExtra("android.intent.extra.TEXT", str);
            intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
            startActivity(Intent.createChooser(intent, getString(R.string.profile_referral_share_title)));
            aVar = j59.a;
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Throwable thA = k57.a(aVar);
        if (thA != null) {
            String localizedMessage = thA.getLocalizedMessage();
            if (localizedMessage == null) {
                localizedMessage = "";
            }
            showToastMessage(localizedMessage);
        }
    }

    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public final void showErrorDeleteAccount() {
        LoadingDialog loadingDialog = this.l;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
        View view = getView();
        if (view != null) {
            oz1.i(R.string.profile_page_couldnt_delete, view);
        }
    }

    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public final void showErrorTryAgain(boolean z) {
        ConstraintLayout root = n().incldError.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public final void showFaqPage(String str) {
        str.getClass();
        Context context = getContext();
        if (context != null) {
            i72.b(context, str);
        }
    }

    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public final void showLargeFile() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.profile_page_large_file, view);
        }
    }

    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public final void showLoadingDialog() {
        LoadingDialog loadingDialog = this.l;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
        LoadingDialog.a aVar = LoadingDialog.d;
        String string = getString(R.string.profile_page_logging_out);
        string.getClass();
        aVar.getClass();
        LoadingDialog loadingDialogA = LoadingDialog.a.a(string);
        m(loadingDialogA);
        this.l = loadingDialogA;
    }

    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public final void showLoadingSpinner(boolean z) {
        ConstraintLayout root = n().incldLoading.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public final void showNetworkError() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.profile_network_error, view);
        }
    }

    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public final void showPromocodeEnterBottomSheet(PromocodeBlock promocodeBlock) {
        promocodeBlock.getClass();
        if (getContext() != null) {
            ProfilePromocodeErrorBottomSheet profilePromocodeErrorBottomSheet = this.m;
            if (profilePromocodeErrorBottomSheet != null) {
                profilePromocodeErrorBottomSheet.dismiss();
            }
            ProfilePromocodeEnterBottomSheet.e.getClass();
            ProfilePromocodeEnterBottomSheet profilePromocodeEnterBottomSheet = new ProfilePromocodeEnterBottomSheet();
            profilePromocodeEnterBottomSheet.setArguments(BundleKt.bundleOf(new b36("PROMOCODE_BLOCK_KEY", promocodeBlock)));
            if (isAdded()) {
                profilePromocodeEnterBottomSheet.show(getParentFragmentManager(), profilePromocodeEnterBottomSheet.getClass().getSimpleName());
            }
        }
    }

    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public final void showPromocodeErrorBottomSheet(m6 m6Var) {
        Context context = getContext();
        if (context != null) {
            ProfilePromocodeErrorBottomSheet profilePromocodeErrorBottomSheet = this.m;
            if (profilePromocodeErrorBottomSheet != null) {
                profilePromocodeErrorBottomSheet.dismiss();
            }
            ProfilePromocodeErrorBottomSheet profilePromocodeErrorBottomSheet2 = new ProfilePromocodeErrorBottomSheet(context, false, m6Var);
            this.m = profilePromocodeErrorBottomSheet2;
            profilePromocodeErrorBottomSheet2.show();
        }
    }

    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public final void showScreen(List<? extends pz3> list) {
        list.getClass();
        eu1 eu1Var = this.i;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
    }

    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public final void showToastMessage(String str) {
        str.getClass();
        Context context = getContext();
        if (context != null) {
            Toast.makeText(context, str, 1).show();
        }
    }

    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public final void showUnSuccessLogOut() {
        LoadingDialog loadingDialog = this.l;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
        View view = getView();
        if (view != null) {
            oz1.i(R.string.profile_page_couldnt_logout, view);
        }
    }

    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public final void showWarningDeleteAccount() {
        DialogTwoButtons dialogTwoButtons = this.k;
        if (dialogTwoButtons != null) {
            dialogTwoButtons.dismiss();
        }
        DialogTwoButtons.a aVar = DialogTwoButtons.d;
        String string = getString(R.string.profile_logout_warning_delete_dialog_title);
        string.getClass();
        String string2 = getString(R.string.profile_logout_warning_delete_dialog_description);
        string2.getClass();
        String string3 = getString(R.string.profile_logout_warning_delete_dialog_top_button_title);
        string3.getClass();
        String string4 = getString(R.string.profile_logout_warning_delete_dialog_bottom_button_title);
        string4.getClass();
        aVar.getClass();
        DialogTwoButtons dialogTwoButtonsA = DialogTwoButtons.a.a(string, string2, string3, string4, "DELETE_ACCOUNT_TAG");
        this.k = dialogTwoButtonsA;
        l(dialogTwoButtonsA);
    }

    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public final void showWarningLogoutDialog() {
        DialogTwoButtons dialogTwoButtons = this.j;
        if (dialogTwoButtons != null) {
            dialogTwoButtons.dismiss();
        }
        DialogTwoButtons.a aVar = DialogTwoButtons.d;
        String string = getString(R.string.profile_logout_warning_dialog_title);
        string.getClass();
        String string2 = getString(R.string.profile_logout_warning_dialog_description);
        string2.getClass();
        String string3 = getString(R.string.profile_logout_warning_dialog_top_button_title);
        string3.getClass();
        String string4 = getString(R.string.profile_logout_warning_dialog_bottom_button_title);
        string4.getClass();
        aVar.getClass();
        DialogTwoButtons dialogTwoButtonsA = DialogTwoButtons.a.a(string, string2, string3, string4, "LOG_OUT_TAG");
        this.j = dialogTwoButtonsA;
        l(dialogTwoButtonsA);
    }
}
