package com.warefly.checkscan.presentation.profile.presenter;

import com.warefly.checkscan.auth.presentation.flow.AuthReason;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.profile.reason.ProfileReason;
import defpackage.aa4;
import defpackage.cg7;
import defpackage.eh7;
import defpackage.iw2;
import defpackage.ix;
import defpackage.jf6;
import defpackage.k66;
import defpackage.um6;
import defpackage.vf7;
import defpackage.zg7;

/* JADX INFO: loaded from: classes5.dex */
public final class ProfilePresenter extends BasePresenter<ProfileView> {
    private final iw2 emailValidator;
    private final jf6 preferencesRepository;
    private final ProfileReason reason;

    public ProfilePresenter(ProfileReason profileReason, jf6 jf6Var, iw2 iw2Var) {
        profileReason.getClass();
        jf6Var.getClass();
        iw2Var.getClass();
        this.reason = profileReason;
        this.preferencesRepository = jf6Var;
        this.emailValidator = iw2Var;
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        ProfileView profileView;
        super.onFirstViewAttach();
        ProfileReason profileReason = this.reason;
        if (aa4.e(profileReason, ProfileReason.ChangeCity.b)) {
            ProfileView profileView2 = (ProfileView) getViewState();
            if (profileView2 != null) {
                profileView2.setLaunchScreen(new cg7(0));
                return;
            }
            return;
        }
        if (aa4.e(profileReason, ProfileReason.ChangeEmail.b)) {
            if (this.emailValidator.a(this.preferencesRepository.c0())) {
                ProfileView profileView3 = (ProfileView) getViewState();
                if (profileView3 != null) {
                    profileView3.setLaunchScreen(zg7.a);
                    return;
                }
                return;
            }
            ProfileView profileView4 = (ProfileView) getViewState();
            if (profileView4 != null) {
                profileView4.setLaunchScreen(new ix(AuthReason.AddEmail.b));
                return;
            }
            return;
        }
        if (aa4.e(profileReason, ProfileReason.ChangePhone.b)) {
            ProfileView profileView5 = (ProfileView) getViewState();
            if (profileView5 != null) {
                profileView5.setLaunchScreen(vf7.a);
                return;
            }
            return;
        }
        if (profileReason instanceof ProfileReason.FillMyData) {
            ProfileView profileView6 = (ProfileView) getViewState();
            if (profileView6 != null) {
                profileView6.setLaunchScreen(new k66(((ProfileReason.FillMyData) this.reason).b));
                return;
            }
            return;
        }
        if (aa4.e(profileReason, ProfileReason.MainProfile.b)) {
            ProfileView profileView7 = (ProfileView) getViewState();
            if (profileView7 != null) {
                profileView7.setLaunchScreen(um6.a);
                return;
            }
            return;
        }
        if (!aa4.e(profileReason, ProfileReason.Notifications.b) || (profileView = (ProfileView) getViewState()) == null) {
            return;
        }
        profileView.setLaunchScreen(eh7.a);
    }
}
