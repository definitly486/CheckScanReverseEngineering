package com.warefly.checkscan.presentation.flows.desktop.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.Deeplink;
import com.warefly.checkscan.presentation.flows.desktop.view.TabContainerView;
import defpackage.ag7;
import defpackage.ek6;
import defpackage.jf6;
import defpackage.ji7;
import defpackage.ki8;
import defpackage.ko3;
import defpackage.lk3;
import defpackage.of7;
import defpackage.pr0;
import defpackage.ri8;
import defpackage.tf7;

/* JADX INFO: loaded from: classes5.dex */
public final class TabContainerPresenter extends BasePresenter<TabContainerView> {
    private final ki8 args;
    private final pr0 bonusesScreenProvider;
    private final Deeplink.Desktop deeplink;
    private final jf6 preferencesRepository;

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[ri8.values().length];
            try {
                iArr[ri8.Cheques.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ri8.Discount.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ri8.Balance.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ri8.Tasks.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ri8.Games.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            a = iArr;
        }
    }

    public TabContainerPresenter(ki8 ki8Var, pr0 pr0Var, Deeplink.Desktop desktop, jf6 jf6Var) {
        ki8Var.getClass();
        pr0Var.getClass();
        jf6Var.getClass();
        this.args = ki8Var;
        this.bonusesScreenProvider = pr0Var;
        this.deeplink = desktop;
        this.preferencesRepository = jf6Var;
    }

    private final lk3 getBalanceScreen() {
        Deeplink.Desktop desktop = this.deeplink;
        return desktop instanceof Deeplink.Desktop.Balance ? new of7(((Deeplink.Desktop.Balance) desktop).c) : new of7(false);
    }

    private final lk3 getBrandlinkScreen() {
        return this.preferencesRepository.Z() ? ek6.a : getOldBrandlink();
    }

    private final lk3 getOldBrandlink() {
        Deeplink.Desktop desktop = this.deeplink;
        if (!(desktop instanceof Deeplink.Desktop.Brandlink)) {
            return new tf7(0, 255, null, null, null);
        }
        Deeplink.Desktop.Brandlink brandlink = (Deeplink.Desktop.Brandlink) desktop;
        return new tf7(brandlink.c, brandlink.d, brandlink.e, brandlink.f, brandlink.h, brandlink.i, brandlink.g, brandlink.j);
    }

    private final lk3 getTasksScreen() {
        Deeplink.Desktop desktop = this.deeplink;
        return desktop instanceof Deeplink.Desktop.Tasks ? new ji7(((Deeplink.Desktop.Tasks) desktop).c) : new ji7(null);
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        lk3 brandlinkScreen;
        super.onFirstViewAttach();
        int i = a.a[this.args.a.ordinal()];
        if (i == 1) {
            brandlinkScreen = ag7.a;
        } else if (i == 2) {
            brandlinkScreen = getBrandlinkScreen();
        } else if (i == 3) {
            brandlinkScreen = getBalanceScreen();
        } else if (i == 4) {
            brandlinkScreen = getTasksScreen();
        } else if (i != 5) {
            brandlinkScreen = this.bonusesScreenProvider.a(this.args.b);
        } else {
            Deeplink.Desktop desktop = this.deeplink;
            Deeplink.Desktop.Games games = desktop instanceof Deeplink.Desktop.Games ? (Deeplink.Desktop.Games) desktop : null;
            brandlinkScreen = new ko3(games != null && games.c);
        }
        TabContainerView tabContainerView = (TabContainerView) getViewState();
        if (tabContainerView != null) {
            tabContainerView.setScreenForContainer(brandlinkScreen);
        }
    }
}
