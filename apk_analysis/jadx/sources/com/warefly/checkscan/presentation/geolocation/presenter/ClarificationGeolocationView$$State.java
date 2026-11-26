package com.warefly.checkscan.presentation.geolocation.presenter;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.l17;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class ClarificationGeolocationView$$State extends kh5<ClarificationGeolocationView> implements ClarificationGeolocationView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseView
    public void openUrl(String str) {
        OpenUrlCommand openUrlCommand = new OpenUrlCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openUrlCommand).b(xd9Var.a, openUrlCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ClarificationGeolocationView) it.next()).openUrl(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlCommand).a(xd9Var2.a, openUrlCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseView
    public void openUrlInCustomTab(String str) {
        OpenUrlInCustomTabCommand openUrlInCustomTabCommand = new OpenUrlInCustomTabCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openUrlInCustomTabCommand).b(xd9Var.a, openUrlInCustomTabCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ClarificationGeolocationView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.geolocation.presenter.ClarificationGeolocationView
    public void showButtonLoading(boolean z) {
        ShowButtonLoadingCommand showButtonLoadingCommand = new ShowButtonLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showButtonLoadingCommand).b(xd9Var.a, showButtonLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ClarificationGeolocationView) it.next()).showButtonLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showButtonLoadingCommand).a(xd9Var2.a, showButtonLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.geolocation.presenter.ClarificationGeolocationView
    public void showDefaultError() {
        ShowDefaultErrorCommand showDefaultErrorCommand = new ShowDefaultErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showDefaultErrorCommand).b(xd9Var.a, showDefaultErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ClarificationGeolocationView) it.next()).showDefaultError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showDefaultErrorCommand).a(xd9Var2.a, showDefaultErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.geolocation.presenter.ClarificationGeolocationView
    public void showLoading(boolean z) {
        ShowLoadingCommand showLoadingCommand = new ShowLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingCommand).b(xd9Var.a, showLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ClarificationGeolocationView) it.next()).showLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingCommand).a(xd9Var2.a, showLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.geolocation.presenter.ClarificationGeolocationView
    public void showSuggestCity(l17 l17Var) {
        ShowSuggestCityCommand showSuggestCityCommand = new ShowSuggestCityCommand(this, l17Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showSuggestCityCommand).b(xd9Var.a, showSuggestCityCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ClarificationGeolocationView) it.next()).showSuggestCity(l17Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showSuggestCityCommand).a(xd9Var2.a, showSuggestCityCommand);
    }

    public class OpenUrlCommand extends wd9<ClarificationGeolocationView> {
        public final String arg0;

        public OpenUrlCommand(ClarificationGeolocationView$$State clarificationGeolocationView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(ClarificationGeolocationView clarificationGeolocationView) {
            clarificationGeolocationView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<ClarificationGeolocationView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(ClarificationGeolocationView$$State clarificationGeolocationView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(ClarificationGeolocationView clarificationGeolocationView) {
            clarificationGeolocationView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowButtonLoadingCommand extends wd9<ClarificationGeolocationView> {
        public final boolean show;

        public ShowButtonLoadingCommand(ClarificationGeolocationView$$State clarificationGeolocationView$$State, boolean z) {
            super("showButtonLoading", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(ClarificationGeolocationView clarificationGeolocationView) {
            clarificationGeolocationView.showButtonLoading(this.show);
        }
    }

    public class ShowDefaultErrorCommand extends wd9<ClarificationGeolocationView> {
        public ShowDefaultErrorCommand(ClarificationGeolocationView$$State clarificationGeolocationView$$State) {
            super("showDefaultError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(ClarificationGeolocationView clarificationGeolocationView) {
            clarificationGeolocationView.showDefaultError();
        }
    }

    public class ShowLoadingCommand extends wd9<ClarificationGeolocationView> {
        public final boolean show;

        public ShowLoadingCommand(ClarificationGeolocationView$$State clarificationGeolocationView$$State, boolean z) {
            super("showLoading", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(ClarificationGeolocationView clarificationGeolocationView) {
            clarificationGeolocationView.showLoading(this.show);
        }
    }

    public class ShowSuggestCityCommand extends wd9<ClarificationGeolocationView> {
        public final l17 region;

        public ShowSuggestCityCommand(ClarificationGeolocationView$$State clarificationGeolocationView$$State, l17 l17Var) {
            super("showSuggestCity", k9.class);
            this.region = l17Var;
        }

        @Override // defpackage.wd9
        public void apply(ClarificationGeolocationView clarificationGeolocationView) {
            clarificationGeolocationView.showSuggestCity(this.region);
        }
    }
}
