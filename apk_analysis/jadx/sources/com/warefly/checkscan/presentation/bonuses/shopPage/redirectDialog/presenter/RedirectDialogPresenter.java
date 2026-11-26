package com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.view.RedirectDialogView;
import defpackage.cp2;
import defpackage.dx6;
import defpackage.gh4;
import defpackage.he7;
import defpackage.j59;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.nq5;
import defpackage.p08;
import defpackage.qz7;
import defpackage.rj;
import defpackage.sl0;
import defpackage.sy8;
import defpackage.uz7;
import defpackage.wm5;
import defpackage.x9;
import defpackage.xz7;
import defpackage.yb8;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class RedirectDialogPresenter extends BasePresenter<RedirectDialogView> {
    private final x9 admitadInteractor;
    private final sy8 redirectType;

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[sy8.values().length];
            try {
                iArr[sy8.App.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[sy8.Mobile.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[sy8.Desktop.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public static final class b extends gh4 implements nl3<cp2, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(cp2 cp2Var) {
            RedirectDialogView redirectDialogView = (RedirectDialogView) RedirectDialogPresenter.this.getViewState();
            if (redirectDialogView != null) {
                redirectDialogView.showLoadingShortLink(true);
            }
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<Throwable, j59> {
        public final /* synthetic */ String g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String str) {
            super(1);
            this.g = str;
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            dx6.b.getClass();
            boolean zNextBoolean = dx6.c.b().nextBoolean();
            RedirectDialogPresenter redirectDialogPresenter = RedirectDialogPresenter.this;
            if (zNextBoolean) {
                RedirectDialogView redirectDialogView = (RedirectDialogView) redirectDialogPresenter.getViewState();
                if (redirectDialogView != null) {
                    redirectDialogView.showShortLink(this.g, redirectDialogPresenter.redirectType != sy8.Mobile);
                }
            } else {
                RedirectDialogView redirectDialogView2 = (RedirectDialogView) redirectDialogPresenter.getViewState();
                if (redirectDialogView2 != null) {
                    redirectDialogView2.showCouldntLoadShortLink();
                }
            }
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<String, j59> {
        public d() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(String str) {
            String str2 = str;
            RedirectDialogPresenter redirectDialogPresenter = RedirectDialogPresenter.this;
            RedirectDialogView redirectDialogView = (RedirectDialogView) redirectDialogPresenter.getViewState();
            if (redirectDialogView != null) {
                str2.getClass();
                redirectDialogView.showShortLink(str2, redirectDialogPresenter.redirectType != sy8.Mobile);
            }
            return j59.a;
        }
    }

    public RedirectDialogPresenter(sy8 sy8Var, x9 x9Var) {
        sy8Var.getClass();
        x9Var.getClass();
        this.redirectType = sy8Var;
        this.admitadInteractor = x9Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void openAdaptiveLink$lambda$1(RedirectDialogPresenter redirectDialogPresenter) {
        RedirectDialogView redirectDialogView = (RedirectDialogView) redirectDialogPresenter.getViewState();
        if (redirectDialogView != null) {
            redirectDialogView.showLoadingShortLink(false);
        }
    }

    public final j59 closeDialog() {
        RedirectDialogView redirectDialogView = (RedirectDialogView) getViewState();
        if (redirectDialogView == null) {
            return null;
        }
        redirectDialogView.close();
        return j59.a;
    }

    public final j59 onCopyClick(String str) {
        str.getClass();
        RedirectDialogView redirectDialogView = (RedirectDialogView) getViewState();
        if (redirectDialogView == null) {
            return null;
        }
        redirectDialogView.copyShortLink(str);
        return j59.a;
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        RedirectDialogView redirectDialogView;
        int i = a.a[this.redirectType.ordinal()];
        if (i == 1) {
            RedirectDialogView redirectDialogView2 = (RedirectDialogView) getViewState();
            if (redirectDialogView2 != null) {
                redirectDialogView2.setApp();
                return;
            }
            return;
        }
        if (i != 2) {
            if (i == 3 && (redirectDialogView = (RedirectDialogView) getViewState()) != null) {
                redirectDialogView.setDesktop();
                return;
            }
            return;
        }
        RedirectDialogView redirectDialogView3 = (RedirectDialogView) getViewState();
        if (redirectDialogView3 != null) {
            redirectDialogView3.setMobile();
        }
    }

    public final j59 onShareClick(String str) {
        str.getClass();
        RedirectDialogView redirectDialogView = (RedirectDialogView) getViewState();
        if (redirectDialogView == null) {
            return null;
        }
        redirectDialogView.shareShortLink(str);
        return j59.a;
    }

    public final j59 openAdaptive(String str) {
        str.getClass();
        RedirectDialogView redirectDialogView = (RedirectDialogView) getViewState();
        if (redirectDialogView == null) {
            return null;
        }
        redirectDialogView.openGoToLinkInCustomTabs(str);
        return j59.a;
    }

    public final void openAdaptiveLink(String str) {
        str.getClass();
        RedirectDialogView redirectDialogView = (RedirectDialogView) getViewState();
        if (redirectDialogView != null) {
            redirectDialogView.hidePreview();
        }
        x9 x9Var = this.admitadInteractor;
        x9Var.getClass();
        p08 p08VarK = x9Var.a.k(str);
        he7 he7Var = ne7.b;
        nq5.a(TimeUnit.SECONDS, "unit is null");
        nq5.a(he7Var, "scheduler is null");
        BasePresenter.disposeOnDestroy$default(this, yb8.d(new uz7(new xz7(new qz7(p08VarK, he7Var).i(ne7.c).f(rj.a()), new sl0(new b(), 2)), new wm5(this, 1)), new c(str), new d()), null, 1, null);
    }

    public final j59 openLink(String str) {
        str.getClass();
        RedirectDialogView redirectDialogView = (RedirectDialogView) getViewState();
        if (redirectDialogView == null) {
            return null;
        }
        redirectDialogView.openUrl(str);
        return j59.a;
    }
}
