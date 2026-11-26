package com.warefly.checkscan.presentation.flows.desktop.presenter;

import com.warefly.checkscan.presentation.Deeplink;
import defpackage.kd;
import defpackage.me0;
import defpackage.px;
import defpackage.ri8;
import defpackage.z68;
import java.util.Collections;
import java.util.Map;
import java.util.Stack;

/* JADX INFO: loaded from: classes5.dex */
public final class a {
    public final Deeplink.Desktop a;
    public final DesktopPresenter b;
    public final DesktopPresenter.b c;
    public final z68 d;
    public final Stack<ri8> e;

    /* JADX INFO: renamed from: com.warefly.checkscan.presentation.flows.desktop.presenter.a$a, reason: collision with other inner class name */
    public interface InterfaceC0163a {
        void onCloseDesktopTabs();

        void openDesktopUrlDeeplinkInBrowser(String str);

        void setBonusesToolbar();

        void setBottomItem(ri8 ri8Var);

        void setBottomNavigationSelectedIcon(ri8 ri8Var);

        void setBottomNavigationTab(ri8 ri8Var, Deeplink.Desktop desktop);

        void setBottomNavigationTabs(boolean z);

        void setChequesToolbar();

        void setDiscountToolbar();

        void setGamesToolbar();

        void setTasksToolbar();

        void showToolbar(boolean z);
    }

    public static final /* synthetic */ class b {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[ri8.values().length];
            try {
                iArr[ri8.Cheques.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ri8.Tasks.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ri8.Bonuses.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ri8.Discount.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ri8.Balance.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ri8.Games.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            a = iArr;
        }
    }

    public a(Deeplink.Desktop desktop, DesktopPresenter desktopPresenter, DesktopPresenter.b bVar) {
        this.a = desktop;
        this.b = desktopPresenter;
        this.c = bVar;
        this.d = px.a(a(desktop));
        Stack<ri8> stack = new Stack<>();
        stack.add(ri8.Bonuses);
        this.e = stack;
    }

    public final ri8 a(Deeplink.Desktop desktop) {
        if (desktop instanceof Deeplink.Desktop.Bonuses) {
            return ri8.Bonuses;
        }
        if (desktop instanceof Deeplink.Desktop.Brandlink) {
            return ri8.Discount;
        }
        if (desktop.equals(Deeplink.Desktop.Cheques.c)) {
            return ri8.Cheques;
        }
        if (desktop instanceof Deeplink.Desktop.Balance) {
            return ri8.Balance;
        }
        if (desktop instanceof Deeplink.Desktop.Tasks) {
            return ri8.Tasks;
        }
        if (desktop.equals(Deeplink.Desktop.ProductsDeeplink.c)) {
            return ri8.Discount;
        }
        if (desktop instanceof Deeplink.Desktop.Games) {
            return ((Boolean) this.c.invoke()).booleanValue() ? ri8.Games : ri8.Bonuses;
        }
        me0.e();
        return null;
    }

    public final void b(ri8 ri8Var) {
        this.d.setValue(ri8Var);
        Stack<ri8> stack = this.e;
        if (stack.isEmpty() || stack.peek() != ri8Var) {
            stack.remove(ri8Var);
            stack.push(ri8Var);
            this.b.setBottomNavigationTab(ri8Var, null);
            c(ri8Var);
            int i = b.a[ri8Var.ordinal()];
            if (i == 1) {
                new kd.q0.a.b(new Object()).a();
                return;
            }
            if (i == 3) {
                kd.r0.e.a();
                return;
            }
            if (i == 4) {
                Map mapSingletonMap = Collections.singletonMap("Search", "Discounts");
                mapSingletonMap.getClass();
                new kd.q0.a.c.C0282a(mapSingletonMap).a();
            } else if (i != 5) {
                if (i != 6) {
                    return;
                }
                new kd.q0.a.C0280a("Games").c();
            } else {
                Map mapSingletonMap2 = Collections.singletonMap("CashBack", "CB_CLICKED");
                mapSingletonMap2.getClass();
                new kd.a.c.C0223a("Account", mapSingletonMap2).a();
                kd.s.a.C0283a.e.a();
            }
        }
    }

    public final void c(ri8 ri8Var) {
        int i = b.a[ri8Var.ordinal()];
        DesktopPresenter desktopPresenter = this.b;
        switch (i) {
            case 1:
                desktopPresenter.setBottomNavigationSelectedIcon(ri8Var);
                desktopPresenter.setChequesToolbar();
                break;
            case 2:
                desktopPresenter.setBottomNavigationSelectedIcon(ri8Var);
                desktopPresenter.setTasksToolbar();
                break;
            case 3:
                desktopPresenter.setBottomNavigationSelectedIcon(ri8Var);
                desktopPresenter.setBonusesToolbar();
                break;
            case 4:
                desktopPresenter.setBottomNavigationSelectedIcon(ri8Var);
                desktopPresenter.setDiscountToolbar();
                break;
            case 5:
                desktopPresenter.setBottomNavigationSelectedIcon(ri8Var);
                desktopPresenter.showToolbar(false);
                break;
            case 6:
                desktopPresenter.setBottomNavigationSelectedIcon(ri8Var);
                desktopPresenter.setGamesToolbar();
                break;
        }
    }

    public final boolean d(ri8 ri8Var) {
        ri8Var.getClass();
        return this.e.contains(ri8Var);
    }

    public final void e() {
        DesktopPresenter.b bVar = this.c;
        boolean zBooleanValue = ((Boolean) bVar.invoke()).booleanValue();
        DesktopPresenter desktopPresenter = this.b;
        desktopPresenter.setBottomNavigationTabs(zBooleanValue);
        ri8 ri8Var = ((Boolean) bVar.invoke()).booleanValue() ? ri8.Discount : ri8.Games;
        Stack<ri8> stack = this.e;
        stack.remove(ri8Var);
        z68 z68Var = this.d;
        if (z68Var.getValue() == ri8Var) {
            ri8 ri8Var2 = ri8.Bonuses;
            z68Var.setValue(ri8Var2);
            stack.remove(ri8Var2);
            stack.push(ri8Var2);
            desktopPresenter.setBottomNavigationTab(ri8Var2, null);
            c(ri8Var2);
        }
    }
}
