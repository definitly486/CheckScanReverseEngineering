package com.warefly.checkscan.presentation.bonuses.view.chooseRegion.presenter;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.l17;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ChooseRegionView$$State extends kh5<ChooseRegionView> implements ChooseRegionView {
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
            ((ChooseRegionView) it.next()).openUrl(str);
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
            ((ChooseRegionView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.view.chooseRegion.presenter.ChooseRegionView
    public void showSelectedRegion(l17 l17Var) {
        ShowSelectedRegionCommand showSelectedRegionCommand = new ShowSelectedRegionCommand(this, l17Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showSelectedRegionCommand).b(xd9Var.a, showSelectedRegionCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChooseRegionView) it.next()).showSelectedRegion(l17Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showSelectedRegionCommand).a(xd9Var2.a, showSelectedRegionCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.view.chooseRegion.presenter.ChooseRegionView
    public void showSuggestions(List<l17> list) {
        ShowSuggestionsCommand showSuggestionsCommand = new ShowSuggestionsCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showSuggestionsCommand).b(xd9Var.a, showSuggestionsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChooseRegionView) it.next()).showSuggestions(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showSuggestionsCommand).a(xd9Var2.a, showSuggestionsCommand);
    }

    public class OpenUrlCommand extends wd9<ChooseRegionView> {
        public final String arg0;

        public OpenUrlCommand(ChooseRegionView$$State chooseRegionView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(ChooseRegionView chooseRegionView) {
            chooseRegionView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<ChooseRegionView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(ChooseRegionView$$State chooseRegionView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(ChooseRegionView chooseRegionView) {
            chooseRegionView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowSelectedRegionCommand extends wd9<ChooseRegionView> {
        public final l17 region;

        public ShowSelectedRegionCommand(ChooseRegionView$$State chooseRegionView$$State, l17 l17Var) {
            super("showSelectedRegion", k9.class);
            this.region = l17Var;
        }

        @Override // defpackage.wd9
        public void apply(ChooseRegionView chooseRegionView) {
            chooseRegionView.showSelectedRegion(this.region);
        }
    }

    public class ShowSuggestionsCommand extends wd9<ChooseRegionView> {
        public final List<l17> regions;

        public ShowSuggestionsCommand(ChooseRegionView$$State chooseRegionView$$State, List<l17> list) {
            super("showSuggestions", k9.class);
            this.regions = list;
        }

        @Override // defpackage.wd9
        public void apply(ChooseRegionView chooseRegionView) {
            chooseRegionView.showSuggestions(this.regions);
        }
    }
}
