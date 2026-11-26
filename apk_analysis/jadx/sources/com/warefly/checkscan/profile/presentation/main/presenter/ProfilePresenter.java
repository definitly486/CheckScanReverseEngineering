package com.warefly.checkscan.profile.presentation.main.presenter;

import android.net.Uri;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.profile.domain.entities.PromocodeBlock;
import com.warefly.checkscan.profile.presentation.main.view.ProfileView;
import defpackage.a32;
import defpackage.a83;
import defpackage.aa4;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.cl6;
import defpackage.cp2;
import defpackage.df3;
import defpackage.e02;
import defpackage.fl6;
import defpackage.fm6;
import defpackage.gh4;
import defpackage.hy1;
import defpackage.i57;
import defpackage.j59;
import defpackage.j89;
import defpackage.jf6;
import defpackage.jm6;
import defpackage.k89;
import defpackage.kd;
import defpackage.kn1;
import defpackage.lv4;
import defpackage.lz;
import defpackage.m96;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.nl6;
import defpackage.pg8;
import defpackage.pl6;
import defpackage.px;
import defpackage.pz3;
import defpackage.qx1;
import defpackage.r08;
import defpackage.r57;
import defpackage.r73;
import defpackage.rj;
import defpackage.s57;
import defpackage.s73;
import defpackage.sl6;
import defpackage.sm6;
import defpackage.tb7;
import defpackage.xg5;
import defpackage.xl6;
import defpackage.xz7;
import defpackage.yb8;
import defpackage.z73;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ProfilePresenter extends BasePresenter<ProfileView> implements cl6.a, fl6.a, nl6.a, xl6.a, jm6.a, sl6 {
    private static final String AVATAR_FORM_DATA_NAME = "file";
    public static final a Companion = new a();
    private final hy1 contentResolverProvider;
    private final s73 fetchProfileScreenUseCase;
    private final a83 fetchReferralLinkUseCase;
    private final lv4 logoutInteractor;
    private final jf6 preferencesRepository;
    private final sm6 profileRouter;
    private final xg5<i57<List<pz3>>> screenItems;
    private final k89 uploadAvatarUseCase;

    public static final class a {
    }

    public static final class b extends gh4 implements nl3<cp2, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(cp2 cp2Var) {
            ProfileView profileView = (ProfileView) ProfilePresenter.this.getViewState();
            if (profileView != null) {
                profileView.showLoadingDialog();
            }
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<Throwable, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            ProfileView profileView = (ProfileView) ProfilePresenter.this.getViewState();
            if (profileView != null) {
                profileView.showErrorDeleteAccount();
            }
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<Boolean, j59> {
        public d() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Boolean bool) {
            ProfilePresenter profilePresenter = ProfilePresenter.this;
            ProfileView profileView = (ProfileView) profilePresenter.getViewState();
            if (profileView != null) {
                profileView.dismissLoadingDialog();
            }
            profilePresenter.profileRouter.b();
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.profile.presentation.main.presenter.ProfilePresenter$fetchProfileScreen$1", f = "ProfilePresenter.kt", l = {}, m = "invokeSuspend")
    public static final class e extends pg8 implements bm3<i57<? extends List<? extends pz3>>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public e(e02<? super e> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            e eVar = ProfilePresenter.this.new e(e02Var);
            eVar.l = obj;
            return eVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends List<? extends pz3>> i57Var, e02<? super j59> e02Var) {
            return ((e) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            Object value;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            xg5 xg5Var = ProfilePresenter.this.screenItems;
            do {
                value = xg5Var.getValue();
            } while (!xg5Var.a(value, i57Var));
            return j59.a;
        }
    }

    public static final class f extends gh4 implements nl3<cp2, j59> {
        public f() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(cp2 cp2Var) {
            ProfileView profileView = (ProfileView) ProfilePresenter.this.getViewState();
            if (profileView != null) {
                profileView.showLoadingDialog();
            }
            return j59.a;
        }
    }

    public static final class g extends gh4 implements nl3<Throwable, j59> {
        public g() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            ProfileView profileView = (ProfileView) ProfilePresenter.this.getViewState();
            if (profileView != null) {
                profileView.showUnSuccessLogOut();
            }
            return j59.a;
        }
    }

    public static final class h extends gh4 implements nl3<Boolean, j59> {
        public h() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Boolean bool) {
            ProfilePresenter profilePresenter = ProfilePresenter.this;
            ProfileView profileView = (ProfileView) profilePresenter.getViewState();
            if (profileView != null) {
                profileView.dismissLoadingDialog();
            }
            profilePresenter.profileRouter.b();
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.profile.presentation.main.presenter.ProfilePresenter$onFirstViewAttach$1", f = "ProfilePresenter.kt", l = {}, m = "invokeSuspend")
    public static final class i extends pg8 implements bm3<i57<? extends List<? extends pz3>>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public i(e02<? super i> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            i iVar = ProfilePresenter.this.new i(e02Var);
            iVar.l = obj;
            return iVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends List<? extends pz3>> i57Var, e02<? super j59> e02Var) {
            return ((i) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            ProfilePresenter profilePresenter = ProfilePresenter.this;
            if (z) {
                ProfileView profileView = (ProfileView) profilePresenter.getViewState();
                if (profileView != null) {
                    profileView.showLoadingSpinner(false);
                }
                ProfileView profileView2 = (ProfileView) profilePresenter.getViewState();
                if (profileView2 != null) {
                    profileView2.showErrorTryAgain(true);
                }
            } else if (aa4.e(i57Var, i57.b.a)) {
                ProfileView profileView3 = (ProfileView) profilePresenter.getViewState();
                if (profileView3 != null) {
                    profileView3.showLoadingSpinner(true);
                }
                ProfileView profileView4 = (ProfileView) profilePresenter.getViewState();
                if (profileView4 != null) {
                    profileView4.showErrorTryAgain(false);
                }
            } else if (i57Var instanceof i57.c) {
                ProfileView profileView5 = (ProfileView) profilePresenter.getViewState();
                if (profileView5 != null) {
                    profileView5.showLoadingSpinner(false);
                }
                ProfileView profileView6 = (ProfileView) profilePresenter.getViewState();
                if (profileView6 != null) {
                    profileView6.showErrorTryAgain(false);
                }
                ProfileView profileView7 = (ProfileView) profilePresenter.getViewState();
                if (profileView7 != null) {
                    profileView7.showScreen((List) ((i57.c) i57Var).a);
                }
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.profile.presentation.main.presenter.ProfilePresenter$onShareCode$1", f = "ProfilePresenter.kt", l = {}, m = "invokeSuspend")
    public static final class j extends pg8 implements bm3<i57<? extends String>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public j(e02<? super j> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            j jVar = ProfilePresenter.this.new j(e02Var);
            jVar.l = obj;
            return jVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends String> i57Var, e02<? super j59> e02Var) {
            return ((j) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            ProfilePresenter profilePresenter = ProfilePresenter.this;
            if (z) {
                ProfileView profileView = (ProfileView) profilePresenter.getViewState();
                if (profileView != null) {
                    profileView.showNetworkError();
                }
                profilePresenter.setShareReferralButtonLoading(false);
            } else if (aa4.e(i57Var, i57.b.a)) {
                profilePresenter.setShareReferralButtonLoading(true);
            } else if (i57Var instanceof i57.c) {
                profilePresenter.setShareReferralButtonLoading(false);
                ProfileView profileView2 = (ProfileView) profilePresenter.getViewState();
                if (profileView2 != null) {
                    profileView2.shareReferralLink((String) ((i57.c) i57Var).a);
                }
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.profile.presentation.main.presenter.ProfilePresenter$uploadUserAvatar$1", f = "ProfilePresenter.kt", l = {}, m = "invokeSuspend")
    public static final class k extends pg8 implements bm3<i57<? extends lz>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        /* JADX INFO: loaded from: classes.dex */
        public static final /* synthetic */ class a {
            public static final /* synthetic */ int[] a;

            static {
                int[] iArr = new int[lz.values().length];
                try {
                    iArr[lz.NewAvatarSent.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[lz.LargeFile.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                a = iArr;
            }
        }

        public k(e02<? super k> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            k kVar = ProfilePresenter.this.new k(e02Var);
            kVar.l = obj;
            return kVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends lz> i57Var, e02<? super j59> e02Var) {
            return ((k) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            if (i57Var instanceof i57.c) {
                int i = a.a[((lz) ((i57.c) i57Var).a).ordinal()];
                ProfilePresenter profilePresenter = ProfilePresenter.this;
                if (i == 1) {
                    profilePresenter.fetchProfileScreen();
                } else if (i != 2) {
                    ProfileView profileView = (ProfileView) profilePresenter.getViewState();
                    if (profileView != null) {
                        profileView.showNetworkError();
                    }
                } else {
                    ProfileView profileView2 = (ProfileView) profilePresenter.getViewState();
                    if (profileView2 != null) {
                        profileView2.showLargeFile();
                    }
                }
            }
            return j59.a;
        }
    }

    public ProfilePresenter(s73 s73Var, hy1 hy1Var, sm6 sm6Var, jf6 jf6Var, k89 k89Var, lv4 lv4Var, a83 a83Var) {
        s73Var.getClass();
        hy1Var.getClass();
        sm6Var.getClass();
        jf6Var.getClass();
        k89Var.getClass();
        lv4Var.getClass();
        a83Var.getClass();
        this.fetchProfileScreenUseCase = s73Var;
        this.contentResolverProvider = hy1Var;
        this.profileRouter = sm6Var;
        this.preferencesRepository = jf6Var;
        this.uploadAvatarUseCase = k89Var;
        this.logoutInteractor = lv4Var;
        this.fetchReferralLinkUseCase = a83Var;
        this.screenItems = px.a(i57.b.a);
    }

    private final void deleteAccount() {
        BasePresenter.disposeOnDestroy$default(this, yb8.d(new xz7(this.logoutInteractor.a().i(ne7.c).f(rj.a()), new fm6(new b(), 0)), new c(), new d()), null, 1, null);
    }

    private final File findFileByUri(InputStream inputStream) throws IOException {
        File fileCreateTempFile = File.createTempFile("avatar", "tmp");
        FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
        byte[] bArr = new byte[1024];
        int i2 = inputStream.read(bArr);
        while (i2 > 0) {
            fileOutputStream.write(bArr, 0, i2);
            i2 = inputStream.read(bArr);
        }
        fileOutputStream.close();
        inputStream.close();
        fileCreateTempFile.getClass();
        return fileCreateTempFile;
    }

    private final void logout() {
        new kd.a.h.b().a();
        r08 r08VarF = this.logoutInteractor.g().i(ne7.c).f(rj.a());
        final f fVar = new f();
        disposeOnDestroy(yb8.d(new xz7(r08VarF, new qx1() { // from class: gm6
            @Override // defpackage.qx1
            public final void accept(Object obj) {
                fVar.invoke(obj);
            }
        }), new g(), new h()), "logOut");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setShareReferralButtonLoading(boolean z) {
        boolean z2;
        i57<List<pz3>> value = this.screenItems.getValue();
        if (!(value instanceof i57.c)) {
            return;
        }
        xg5<i57<List<pz3>>> xg5Var = this.screenItems;
        while (true) {
            i57<List<pz3>> value2 = xg5Var.getValue();
            Iterable<pz3> iterable = (Iterable) ((i57.c) value).a;
            ArrayList arrayList = new ArrayList(kn1.q(iterable, 10));
            for (pz3 pl6Var : iterable) {
                if (pl6Var instanceof pl6) {
                    pl6 pl6Var2 = (pl6) pl6Var;
                    String str = pl6Var2.a;
                    String str2 = pl6Var2.b;
                    String str3 = pl6Var2.c;
                    String str4 = pl6Var2.d;
                    str.getClass();
                    str2.getClass();
                    str3.getClass();
                    z2 = z;
                    pl6Var = new pl6(str, str2, str3, str4, z2);
                } else {
                    z2 = z;
                }
                arrayList.add(pl6Var);
                z = z2;
            }
            boolean z3 = z;
            if (xg5Var.a(value2, new i57.c(arrayList))) {
                return;
            } else {
                z = z3;
            }
        }
    }

    private final void uploadUserAvatar(File file) {
        if (file.exists()) {
            k89 k89Var = this.uploadAvatarUseCase;
            k89Var.getClass();
            launchInPresenter(new df3(s57.a(new tb7(new j89(k89Var, file, null))), new k(null)));
        }
    }

    public final void fetchProfileScreen() {
        s73 s73Var = this.fetchProfileScreenUseCase;
        s73Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new r73(s73Var, null))), new e(null)));
    }

    public final void handleDeleteResult(boolean z) {
        ProfileView profileView = (ProfileView) getViewState();
        if (profileView != null) {
            profileView.dismissDeleteWarningDialog();
        }
        if (z) {
            deleteAccount();
        }
    }

    public final void handleLogOutResult(boolean z) {
        ProfileView profileView = (ProfileView) getViewState();
        if (profileView != null) {
            profileView.dismissLogoutWarningDialog();
        }
        if (z) {
            logout();
        }
    }

    @Override // defpackage.sl6
    public void onActivatePromocodeClick(PromocodeBlock promocodeBlock) {
        promocodeBlock.getClass();
        ProfileView profileView = (ProfileView) getViewState();
        if (profileView != null) {
            profileView.showPromocodeEnterBottomSheet(promocodeBlock);
        }
    }

    @Override // fl6.a
    public void onAddEmailClicked(String str) {
        str.getClass();
        ProfileView profileView = (ProfileView) getViewState();
        if (profileView != null) {
            profileView.openUrl(str);
        }
    }

    public final void onBackClicked() {
        this.profileRouter.a();
    }

    @Override // nl6.a
    public void onCopyClick(String str) {
        str.getClass();
        kd.l0.a.e.a();
        ProfileView profileView = (ProfileView) getViewState();
        if (profileView != null) {
            profileView.copyInviteCode(str);
        }
    }

    @Override // cl6.a
    public void onDeleteAccountClicked() {
        ProfileView profileView = (ProfileView) getViewState();
        if (profileView != null) {
            profileView.showWarningDeleteAccount();
        }
    }

    @Override // fl6.a
    public void onEditPersonalDataClicked() {
        this.profileRouter.onEditPersonalDataClicked();
    }

    @Override // defpackage.sl6
    public void onElectroChequeClick() {
        this.profileRouter.onElectroChequeClick();
    }

    @Override // fl6.a
    public void onExpiredSubscriptionClicked(String str) {
        str.getClass();
        ProfileView profileView = (ProfileView) getViewState();
        if (profileView != null) {
            profileView.openUrlInCustomTab(str);
        }
    }

    @Override // defpackage.sl6
    public void onFaqClick() {
        ProfileView profileView = (ProfileView) getViewState();
        if (profileView != null) {
            profileView.showFaqPage(this.preferencesRepository.N());
        }
    }

    @Override // defpackage.sl6
    public void onFavouriteClick() {
        this.profileRouter.onFavouriteClick();
    }

    @Override // defpackage.sl6
    public void onFeedbackClick() {
        new kd.a.h.d().a();
        this.profileRouter.onFeedbackClick();
    }

    public void onFillMyDataClick(String str) {
        str.getClass();
        ProfileView profileView = (ProfileView) getViewState();
        if (profileView != null) {
            profileView.openUrl(str);
        }
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        launchInPresenter(new df3(this.screenItems, new i(null)));
    }

    @Override // defpackage.sl6
    public void onHistoryShopClick() {
        this.profileRouter.onHistoryShopClick();
    }

    @Override // xl6.a
    public void onLogoutClicked() {
        ProfileView profileView = (ProfileView) getViewState();
        if (profileView != null) {
            profileView.showWarningLogoutDialog();
        }
    }

    @Override // fl6.a
    public void onPhotoClicked() {
        ProfileView profileView = (ProfileView) getViewState();
        if (profileView != null) {
            profileView.requestGallery();
        }
    }

    @Override // jm6.a
    public void onPrivatePolicyClicked(String str) {
        str.getClass();
        ProfileView profileView = (ProfileView) getViewState();
        if (profileView != null) {
            profileView.openUrlInCustomTab(str);
        }
    }

    @Override // nl6.a
    public void onShareCode() {
        a83 a83Var = this.fetchReferralLinkUseCase;
        a83Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new z73(a83Var, null))), new j(null)));
    }

    public final void updateAvatar(Uri uri) {
        if (uri == null) {
            return;
        }
        try {
            InputStream inputStreamOpenInputStream = this.contentResolverProvider.a().openInputStream(uri);
            if (inputStreamOpenInputStream != null) {
                try {
                    uploadUserAvatar(findFileByUri(inputStreamOpenInputStream));
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        m96.c(inputStreamOpenInputStream, th);
                        throw th2;
                    }
                }
            }
            j59 j59Var = j59.a;
            m96.c(inputStreamOpenInputStream, null);
        } catch (Throwable unused) {
        }
    }
}
