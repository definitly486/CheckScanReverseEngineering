package com.warefly.checkscan.presentation.bonuses.shopPage.presenter;

import com.warefly.checkscan.R;
import com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView;
import defpackage.b06;
import defpackage.dn1;
import defpackage.ew3;
import defpackage.gh4;
import defpackage.j59;
import defpackage.kd;
import defpackage.nl3;
import defpackage.nx5;
import defpackage.qx5;
import defpackage.sy8;
import defpackage.ta8;
import defpackage.zn6;
import java.text.ParseException;

/* JADX INFO: loaded from: classes5.dex */
public final class i extends gh4 implements nl3<qx5, j59> {
    public final /* synthetic */ BonusAdmitadNewPresenter f;

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[sy8.values().length];
            try {
                iArr[sy8.Desktop.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[sy8.Mobile.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[sy8.App.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(BonusAdmitadNewPresenter bonusAdmitadNewPresenter) {
        super(1);
        this.f = bonusAdmitadNewPresenter;
    }

    @Override // defpackage.nl3
    public final j59 invoke(qx5 qx5Var) throws ParseException {
        BonusAdmitadNewView bonusAdmitadNewView;
        BonusAdmitadNewView bonusAdmitadNewView2;
        BonusAdmitadNewView bonusAdmitadNewView3;
        qx5 qx5Var2 = qx5Var;
        boolean z = qx5Var2.d;
        b06 b06Var = qx5Var2.n;
        sy8 sy8Var = qx5Var2.l;
        zn6 zn6Var = qx5Var2.o;
        if (z) {
            kd.p.a.C0278a.e.a();
        }
        BonusAdmitadNewPresenter bonusAdmitadNewPresenter = this.f;
        BonusAdmitadNewView bonusAdmitadNewView4 = (BonusAdmitadNewView) bonusAdmitadNewPresenter.getViewState();
        if (bonusAdmitadNewView4 != null) {
            bonusAdmitadNewView4.setOnlineShopInfo(qx5Var2);
        }
        dn1.c cVar = qx5Var2.m;
        ew3 ew3Var = qx5Var2.q;
        if (ew3Var != null) {
            bonusAdmitadNewPresenter.setUpFixedCashback(ew3Var, cVar);
        } else {
            bonusAdmitadNewPresenter.setUpCashback(cVar);
        }
        if (!ta8.M(zn6Var.b) && (bonusAdmitadNewView3 = (BonusAdmitadNewView) bonusAdmitadNewPresenter.getViewState()) != null) {
            bonusAdmitadNewView3.showPromoView(zn6Var);
        }
        bonusAdmitadNewPresenter.redirectType = sy8Var;
        int i = a.a[sy8Var.ordinal()];
        if (i == 1) {
            BonusAdmitadNewView bonusAdmitadNewView5 = (BonusAdmitadNewView) bonusAdmitadNewPresenter.getViewState();
            if (bonusAdmitadNewView5 != null) {
                bonusAdmitadNewView5.showRedirectInfo((String) bonusAdmitadNewPresenter.resString.invoke(Integer.valueOf(R.string.admitad_redirect_web)));
            }
        } else if (i == 2 && (bonusAdmitadNewView2 = (BonusAdmitadNewView) bonusAdmitadNewPresenter.getViewState()) != null) {
            bonusAdmitadNewView2.showRedirectInfo((String) bonusAdmitadNewPresenter.resString.invoke(Integer.valueOf(R.string.admitad_redirect_app)));
        }
        BonusAdmitadNewView bonusAdmitadNewView6 = (BonusAdmitadNewView) bonusAdmitadNewPresenter.getViewState();
        if (bonusAdmitadNewView6 != null) {
            nx5 nx5Var = qx5Var2.h;
            String str = nx5Var != null ? nx5Var.b : null;
            if (str == null) {
                str = "";
            }
            bonusAdmitadNewView6.setButtonShopListener(str);
        }
        String str2 = b06Var.e;
        if (str2 != null && !ta8.M(str2) && (bonusAdmitadNewView = (BonusAdmitadNewView) bonusAdmitadNewPresenter.getViewState()) != null) {
            bonusAdmitadNewView.showOrd(b06Var);
        }
        return j59.a;
    }
}
