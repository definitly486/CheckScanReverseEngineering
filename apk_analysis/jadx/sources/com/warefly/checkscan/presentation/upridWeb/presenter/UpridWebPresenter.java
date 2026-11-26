package com.warefly.checkscan.presentation.upridWeb.presenter;

import android.net.Uri;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.upridWeb.veiw.UpridWebView;
import defpackage.av0;
import defpackage.ca0;
import defpackage.gh4;
import defpackage.j59;
import defpackage.kd;
import defpackage.ne7;
import defpackage.nj1;
import defpackage.nl3;
import defpackage.rj;
import defpackage.z89;
import defpackage.zl2;

/* JADX INFO: loaded from: classes5.dex */
public final class UpridWebPresenter extends BasePresenter<UpridWebView> {
    private final ca0 bankInteractor;
    private final zl2 desktopInteractor;

    public static final class a extends gh4 implements nl3<String, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(String str) {
            String str2 = str;
            if (str2 != null) {
                UpridWebPresenter upridWebPresenter = UpridWebPresenter.this;
                av0.c(upridWebPresenter.getPresenterScope(), null, null, new com.warefly.checkscan.presentation.upridWeb.presenter.a(upridWebPresenter, str2, null), 3);
            }
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<Throwable, j59> {
        public static final b f = new b(1);

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            return j59.a;
        }
    }

    public UpridWebPresenter(ca0 ca0Var, zl2 zl2Var) {
        ca0Var.getClass();
        zl2Var.getClass();
        this.bankInteractor = ca0Var;
        this.desktopInteractor = zl2Var;
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        kd.j.b.k.e.a();
    }

    public final void sendLink(String str) {
        String string;
        if (str == null) {
            str = "";
        }
        Uri uri = Uri.parse(str);
        if (uri.isOpaque()) {
            string = uri.toString();
        } else {
            string = uri.getScheme() + "://" + uri.getHost() + uri.getPath();
        }
        string.getClass();
        ca0 ca0Var = this.bankInteractor;
        ca0Var.getClass();
        BasePresenter.disposeOnDestroy$default(this, ca0Var.a.g(string).i(ne7.c).f(rj.a()).g(new nj1(new a(), 1), new z89(b.f, 0)), null, 1, null);
    }
}
