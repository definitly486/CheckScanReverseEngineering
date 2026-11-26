package com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.view;

import com.tapjoy.TJAdUnitConstants;
import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class RedirectDialogView$$State extends kh5<RedirectDialogView> implements RedirectDialogView {

    public class ShowShortLinkCommand extends wd9<RedirectDialogView> {
        public final boolean noMobileType;
        public final String url;

        public ShowShortLinkCommand(RedirectDialogView$$State redirectDialogView$$State, String str, boolean z) {
            super("showShortLink", k9.class);
            this.url = str;
            this.noMobileType = z;
        }

        @Override // defpackage.wd9
        public void apply(RedirectDialogView redirectDialogView) {
            redirectDialogView.showShortLink(this.url, this.noMobileType);
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.view.RedirectDialogView
    public void close() {
        CloseCommand closeCommand = new CloseCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(closeCommand).b(xd9Var.a, closeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((RedirectDialogView) it.next()).close();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(closeCommand).a(xd9Var2.a, closeCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.view.RedirectDialogView
    public void copyShortLink(String str) {
        CopyShortLinkCommand copyShortLinkCommand = new CopyShortLinkCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(copyShortLinkCommand).b(xd9Var.a, copyShortLinkCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((RedirectDialogView) it.next()).copyShortLink(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(copyShortLinkCommand).a(xd9Var2.a, copyShortLinkCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.view.RedirectDialogView
    public void hidePreview() {
        HidePreviewCommand hidePreviewCommand = new HidePreviewCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(hidePreviewCommand).b(xd9Var.a, hidePreviewCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((RedirectDialogView) it.next()).hidePreview();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(hidePreviewCommand).a(xd9Var2.a, hidePreviewCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.view.RedirectDialogView
    public void openGoToLinkInBrowser(String str) {
        OpenGoToLinkInBrowserCommand openGoToLinkInBrowserCommand = new OpenGoToLinkInBrowserCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openGoToLinkInBrowserCommand).b(xd9Var.a, openGoToLinkInBrowserCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((RedirectDialogView) it.next()).openGoToLinkInBrowser(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openGoToLinkInBrowserCommand).a(xd9Var2.a, openGoToLinkInBrowserCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.view.RedirectDialogView
    public void openGoToLinkInCustomTabs(String str) {
        OpenGoToLinkInCustomTabsCommand openGoToLinkInCustomTabsCommand = new OpenGoToLinkInCustomTabsCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openGoToLinkInCustomTabsCommand).b(xd9Var.a, openGoToLinkInCustomTabsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((RedirectDialogView) it.next()).openGoToLinkInCustomTabs(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openGoToLinkInCustomTabsCommand).a(xd9Var2.a, openGoToLinkInCustomTabsCommand);
    }

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
            ((RedirectDialogView) it.next()).openUrl(str);
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
            ((RedirectDialogView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.view.RedirectDialogView
    public void setApp() {
        SetAppCommand setAppCommand = new SetAppCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setAppCommand).b(xd9Var.a, setAppCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((RedirectDialogView) it.next()).setApp();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setAppCommand).a(xd9Var2.a, setAppCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.view.RedirectDialogView
    public void setDesktop() {
        SetDesktopCommand setDesktopCommand = new SetDesktopCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setDesktopCommand).b(xd9Var.a, setDesktopCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((RedirectDialogView) it.next()).setDesktop();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setDesktopCommand).a(xd9Var2.a, setDesktopCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.view.RedirectDialogView
    public void setMobile() {
        SetMobileCommand setMobileCommand = new SetMobileCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setMobileCommand).b(xd9Var.a, setMobileCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((RedirectDialogView) it.next()).setMobile();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setMobileCommand).a(xd9Var2.a, setMobileCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.view.RedirectDialogView
    public void shareShortLink(String str) {
        ShareShortLinkCommand shareShortLinkCommand = new ShareShortLinkCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(shareShortLinkCommand).b(xd9Var.a, shareShortLinkCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((RedirectDialogView) it.next()).shareShortLink(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(shareShortLinkCommand).a(xd9Var2.a, shareShortLinkCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.view.RedirectDialogView
    public void showCouldntLoadShortLink() {
        ShowCouldntLoadShortLinkCommand showCouldntLoadShortLinkCommand = new ShowCouldntLoadShortLinkCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showCouldntLoadShortLinkCommand).b(xd9Var.a, showCouldntLoadShortLinkCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((RedirectDialogView) it.next()).showCouldntLoadShortLink();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showCouldntLoadShortLinkCommand).a(xd9Var2.a, showCouldntLoadShortLinkCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.view.RedirectDialogView
    public void showLoadingShortLink(boolean z) {
        ShowLoadingShortLinkCommand showLoadingShortLinkCommand = new ShowLoadingShortLinkCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingShortLinkCommand).b(xd9Var.a, showLoadingShortLinkCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((RedirectDialogView) it.next()).showLoadingShortLink(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingShortLinkCommand).a(xd9Var2.a, showLoadingShortLinkCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.view.RedirectDialogView
    public void showShortLink(String str, boolean z) {
        ShowShortLinkCommand showShortLinkCommand = new ShowShortLinkCommand(this, str, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showShortLinkCommand).b(xd9Var.a, showShortLinkCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((RedirectDialogView) it.next()).showShortLink(str, z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showShortLinkCommand).a(xd9Var2.a, showShortLinkCommand);
    }

    public class CloseCommand extends wd9<RedirectDialogView> {
        public CloseCommand(RedirectDialogView$$State redirectDialogView$$State) {
            super(TJAdUnitConstants.String.CLOSE, hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(RedirectDialogView redirectDialogView) {
            redirectDialogView.close();
        }
    }

    public class CopyShortLinkCommand extends wd9<RedirectDialogView> {
        public final String url;

        public CopyShortLinkCommand(RedirectDialogView$$State redirectDialogView$$State, String str) {
            super("copyShortLink", hx5.class);
            this.url = str;
        }

        @Override // defpackage.wd9
        public void apply(RedirectDialogView redirectDialogView) {
            redirectDialogView.copyShortLink(this.url);
        }
    }

    public class HidePreviewCommand extends wd9<RedirectDialogView> {
        public HidePreviewCommand(RedirectDialogView$$State redirectDialogView$$State) {
            super("hidePreview", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(RedirectDialogView redirectDialogView) {
            redirectDialogView.hidePreview();
        }
    }

    public class OpenGoToLinkInBrowserCommand extends wd9<RedirectDialogView> {
        public final String url;

        public OpenGoToLinkInBrowserCommand(RedirectDialogView$$State redirectDialogView$$State, String str) {
            super("openGoToLinkInBrowser", hx5.class);
            this.url = str;
        }

        @Override // defpackage.wd9
        public void apply(RedirectDialogView redirectDialogView) {
            redirectDialogView.openGoToLinkInBrowser(this.url);
        }
    }

    public class OpenGoToLinkInCustomTabsCommand extends wd9<RedirectDialogView> {
        public final String url;

        public OpenGoToLinkInCustomTabsCommand(RedirectDialogView$$State redirectDialogView$$State, String str) {
            super("openGoToLinkInCustomTabs", hx5.class);
            this.url = str;
        }

        @Override // defpackage.wd9
        public void apply(RedirectDialogView redirectDialogView) {
            redirectDialogView.openGoToLinkInCustomTabs(this.url);
        }
    }

    public class OpenUrlCommand extends wd9<RedirectDialogView> {
        public final String arg0;

        public OpenUrlCommand(RedirectDialogView$$State redirectDialogView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(RedirectDialogView redirectDialogView) {
            redirectDialogView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<RedirectDialogView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(RedirectDialogView$$State redirectDialogView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(RedirectDialogView redirectDialogView) {
            redirectDialogView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetAppCommand extends wd9<RedirectDialogView> {
        public SetAppCommand(RedirectDialogView$$State redirectDialogView$$State) {
            super("setApp", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(RedirectDialogView redirectDialogView) {
            redirectDialogView.setApp();
        }
    }

    public class SetDesktopCommand extends wd9<RedirectDialogView> {
        public SetDesktopCommand(RedirectDialogView$$State redirectDialogView$$State) {
            super("setDesktop", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(RedirectDialogView redirectDialogView) {
            redirectDialogView.setDesktop();
        }
    }

    public class SetMobileCommand extends wd9<RedirectDialogView> {
        public SetMobileCommand(RedirectDialogView$$State redirectDialogView$$State) {
            super("setMobile", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(RedirectDialogView redirectDialogView) {
            redirectDialogView.setMobile();
        }
    }

    public class ShareShortLinkCommand extends wd9<RedirectDialogView> {
        public final String url;

        public ShareShortLinkCommand(RedirectDialogView$$State redirectDialogView$$State, String str) {
            super("shareShortLink", hx5.class);
            this.url = str;
        }

        @Override // defpackage.wd9
        public void apply(RedirectDialogView redirectDialogView) {
            redirectDialogView.shareShortLink(this.url);
        }
    }

    public class ShowCouldntLoadShortLinkCommand extends wd9<RedirectDialogView> {
        public ShowCouldntLoadShortLinkCommand(RedirectDialogView$$State redirectDialogView$$State) {
            super("showCouldntLoadShortLink", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(RedirectDialogView redirectDialogView) {
            redirectDialogView.showCouldntLoadShortLink();
        }
    }

    public class ShowLoadingShortLinkCommand extends wd9<RedirectDialogView> {
        public final boolean visible;

        public ShowLoadingShortLinkCommand(RedirectDialogView$$State redirectDialogView$$State, boolean z) {
            super("showLoadingShortLink", k9.class);
            this.visible = z;
        }

        @Override // defpackage.wd9
        public void apply(RedirectDialogView redirectDialogView) {
            redirectDialogView.showLoadingShortLink(this.visible);
        }
    }
}
