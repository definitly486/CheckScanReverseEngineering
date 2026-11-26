package com.warefly.checkscan.presentation.queue.afterScanSplash.view;

import defpackage.b06;
import defpackage.hc0;
import defpackage.hx5;
import defpackage.i9;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wc8;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class LoadingSplashView$$State extends kh5<LoadingSplashView> implements LoadingSplashView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public void openDeeplink(String str) {
        OpenDeeplinkCommand openDeeplinkCommand = new OpenDeeplinkCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openDeeplinkCommand).b(xd9Var.a, openDeeplinkCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((LoadingSplashView) it.next()).openDeeplink(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openDeeplinkCommand).a(xd9Var2.a, openDeeplinkCommand);
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
            ((LoadingSplashView) it.next()).openUrl(str);
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
            ((LoadingSplashView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public void setFinishedTitle(String str) {
        SetFinishedTitleCommand setFinishedTitleCommand = new SetFinishedTitleCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setFinishedTitleCommand).b(xd9Var.a, setFinishedTitleCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((LoadingSplashView) it.next()).setFinishedTitle(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setFinishedTitleCommand).a(xd9Var2.a, setFinishedTitleCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public void setSecondsLeft(long j) {
        SetSecondsLeftCommand setSecondsLeftCommand = new SetSecondsLeftCommand(this, j);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setSecondsLeftCommand).b(xd9Var.a, setSecondsLeftCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((LoadingSplashView) it.next()).setSecondsLeft(j);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setSecondsLeftCommand).a(xd9Var2.a, setSecondsLeftCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public void setSecondsLeftWithoutSplash(long j) {
        SetSecondsLeftWithoutSplashCommand setSecondsLeftWithoutSplashCommand = new SetSecondsLeftWithoutSplashCommand(this, j);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setSecondsLeftWithoutSplashCommand).b(xd9Var.a, setSecondsLeftWithoutSplashCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((LoadingSplashView) it.next()).setSecondsLeftWithoutSplash(j);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setSecondsLeftWithoutSplashCommand).a(xd9Var2.a, setSecondsLeftWithoutSplashCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public void setSplashFinishedInvisible(boolean z) {
        SetSplashFinishedInvisibleCommand setSplashFinishedInvisibleCommand = new SetSplashFinishedInvisibleCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setSplashFinishedInvisibleCommand).b(xd9Var.a, setSplashFinishedInvisibleCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((LoadingSplashView) it.next()).setSplashFinishedInvisible(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setSplashFinishedInvisibleCommand).a(xd9Var2.a, setSplashFinishedInvisibleCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public void setSplashLoadingInvisible(boolean z) {
        SetSplashLoadingInvisibleCommand setSplashLoadingInvisibleCommand = new SetSplashLoadingInvisibleCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setSplashLoadingInvisibleCommand).b(xd9Var.a, setSplashLoadingInvisibleCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((LoadingSplashView) it.next()).setSplashLoadingInvisible(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setSplashLoadingInvisibleCommand).a(xd9Var2.a, setSplashLoadingInvisibleCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public void setSplashLoadingTitle(String str) {
        SetSplashLoadingTitleCommand setSplashLoadingTitleCommand = new SetSplashLoadingTitleCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setSplashLoadingTitleCommand).b(xd9Var.a, setSplashLoadingTitleCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((LoadingSplashView) it.next()).setSplashLoadingTitle(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setSplashLoadingTitleCommand).a(xd9Var2.a, setSplashLoadingTitleCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public void setWithoutSplashLoadingTitle(String str) {
        SetWithoutSplashLoadingTitleCommand setWithoutSplashLoadingTitleCommand = new SetWithoutSplashLoadingTitleCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setWithoutSplashLoadingTitleCommand).b(xd9Var.a, setWithoutSplashLoadingTitleCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((LoadingSplashView) it.next()).setWithoutSplashLoadingTitle(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setWithoutSplashLoadingTitleCommand).a(xd9Var2.a, setWithoutSplashLoadingTitleCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public void showAdInfoDialog(b06 b06Var) {
        ShowAdInfoDialogCommand showAdInfoDialogCommand = new ShowAdInfoDialogCommand(this, b06Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showAdInfoDialogCommand).b(xd9Var.a, showAdInfoDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((LoadingSplashView) it.next()).showAdInfoDialog(b06Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showAdInfoDialogCommand).a(xd9Var2.a, showAdInfoDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public void showCloseButton(boolean z) {
        ShowCloseButtonCommand showCloseButtonCommand = new ShowCloseButtonCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showCloseButtonCommand).b(xd9Var.a, showCloseButtonCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((LoadingSplashView) it.next()).showCloseButton(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showCloseButtonCommand).a(xd9Var2.a, showCloseButtonCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public void showLoadingWithSplash(boolean z) {
        ShowLoadingWithSplashCommand showLoadingWithSplashCommand = new ShowLoadingWithSplashCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingWithSplashCommand).b(xd9Var.a, showLoadingWithSplashCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((LoadingSplashView) it.next()).showLoadingWithSplash(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingWithSplashCommand).a(xd9Var2.a, showLoadingWithSplashCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public void showLoadingWithoutSplash(boolean z) {
        ShowLoadingWithoutSplashCommand showLoadingWithoutSplashCommand = new ShowLoadingWithoutSplashCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingWithoutSplashCommand).b(xd9Var.a, showLoadingWithoutSplashCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((LoadingSplashView) it.next()).showLoadingWithoutSplash(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingWithoutSplashCommand).a(xd9Var2.a, showLoadingWithoutSplashCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public void showReceiptLoadedWithoutSplash() {
        ShowReceiptLoadedWithoutSplashCommand showReceiptLoadedWithoutSplashCommand = new ShowReceiptLoadedWithoutSplashCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showReceiptLoadedWithoutSplashCommand).b(xd9Var.a, showReceiptLoadedWithoutSplashCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((LoadingSplashView) it.next()).showReceiptLoadedWithoutSplash();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showReceiptLoadedWithoutSplashCommand).a(xd9Var2.a, showReceiptLoadedWithoutSplashCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public void showSplash(hc0.c cVar) {
        ShowSplashCommand showSplashCommand = new ShowSplashCommand(this, cVar);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showSplashCommand).b(xd9Var.a, showSplashCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((LoadingSplashView) it.next()).showSplash(cVar);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showSplashCommand).a(xd9Var2.a, showSplashCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public void showSubscriptionSplash(wc8 wc8Var) {
        ShowSubscriptionSplashCommand showSubscriptionSplashCommand = new ShowSubscriptionSplashCommand(this, wc8Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showSubscriptionSplashCommand).b(xd9Var.a, showSubscriptionSplashCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((LoadingSplashView) it.next()).showSubscriptionSplash(wc8Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showSubscriptionSplashCommand).a(xd9Var2.a, showSubscriptionSplashCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public void skip() {
        SkipCommand skipCommand = new SkipCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(skipCommand).b(xd9Var.a, skipCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((LoadingSplashView) it.next()).skip();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(skipCommand).a(xd9Var2.a, skipCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public void startProgressAnimation(long j) {
        StartProgressAnimationCommand startProgressAnimationCommand = new StartProgressAnimationCommand(this, j);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(startProgressAnimationCommand).b(xd9Var.a, startProgressAnimationCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((LoadingSplashView) it.next()).startProgressAnimation(j);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(startProgressAnimationCommand).a(xd9Var2.a, startProgressAnimationCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public void startProgressAnimationWithoutSplash(long j) {
        StartProgressAnimationWithoutSplashCommand startProgressAnimationWithoutSplashCommand = new StartProgressAnimationWithoutSplashCommand(this, j);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(startProgressAnimationWithoutSplashCommand).b(xd9Var.a, startProgressAnimationWithoutSplashCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((LoadingSplashView) it.next()).startProgressAnimationWithoutSplash(j);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(startProgressAnimationWithoutSplashCommand).a(xd9Var2.a, startProgressAnimationWithoutSplashCommand);
    }

    public class OpenDeeplinkCommand extends wd9<LoadingSplashView> {
        public final String btnDeeplink;

        public OpenDeeplinkCommand(LoadingSplashView$$State loadingSplashView$$State, String str) {
            super("openDeeplink", hx5.class);
            this.btnDeeplink = str;
        }

        @Override // defpackage.wd9
        public void apply(LoadingSplashView loadingSplashView) {
            loadingSplashView.openDeeplink(this.btnDeeplink);
        }
    }

    public class OpenUrlCommand extends wd9<LoadingSplashView> {
        public final String arg0;

        public OpenUrlCommand(LoadingSplashView$$State loadingSplashView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(LoadingSplashView loadingSplashView) {
            loadingSplashView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<LoadingSplashView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(LoadingSplashView$$State loadingSplashView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(LoadingSplashView loadingSplashView) {
            loadingSplashView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetFinishedTitleCommand extends wd9<LoadingSplashView> {
        public final String text;

        public SetFinishedTitleCommand(LoadingSplashView$$State loadingSplashView$$State, String str) {
            super("setFinishedTitle", k9.class);
            this.text = str;
        }

        @Override // defpackage.wd9
        public void apply(LoadingSplashView loadingSplashView) {
            loadingSplashView.setFinishedTitle(this.text);
        }
    }

    public class SetSecondsLeftCommand extends wd9<LoadingSplashView> {
        public final long second;

        public SetSecondsLeftCommand(LoadingSplashView$$State loadingSplashView$$State, long j) {
            super("setSecondsLeft", k9.class);
            this.second = j;
        }

        @Override // defpackage.wd9
        public void apply(LoadingSplashView loadingSplashView) {
            loadingSplashView.setSecondsLeft(this.second);
        }
    }

    public class SetSecondsLeftWithoutSplashCommand extends wd9<LoadingSplashView> {
        public final long second;

        public SetSecondsLeftWithoutSplashCommand(LoadingSplashView$$State loadingSplashView$$State, long j) {
            super("setSecondsLeftWithoutSplash", k9.class);
            this.second = j;
        }

        @Override // defpackage.wd9
        public void apply(LoadingSplashView loadingSplashView) {
            loadingSplashView.setSecondsLeftWithoutSplash(this.second);
        }
    }

    public class SetSplashFinishedInvisibleCommand extends wd9<LoadingSplashView> {
        public final boolean isInvisible;

        public SetSplashFinishedInvisibleCommand(LoadingSplashView$$State loadingSplashView$$State, boolean z) {
            super("setSplashFinishedInvisible", k9.class);
            this.isInvisible = z;
        }

        @Override // defpackage.wd9
        public void apply(LoadingSplashView loadingSplashView) {
            loadingSplashView.setSplashFinishedInvisible(this.isInvisible);
        }
    }

    public class SetSplashLoadingInvisibleCommand extends wd9<LoadingSplashView> {
        public final boolean isInvisible;

        public SetSplashLoadingInvisibleCommand(LoadingSplashView$$State loadingSplashView$$State, boolean z) {
            super("setSplashLoadingInvisible", k9.class);
            this.isInvisible = z;
        }

        @Override // defpackage.wd9
        public void apply(LoadingSplashView loadingSplashView) {
            loadingSplashView.setSplashLoadingInvisible(this.isInvisible);
        }
    }

    public class SetSplashLoadingTitleCommand extends wd9<LoadingSplashView> {
        public final String text;

        public SetSplashLoadingTitleCommand(LoadingSplashView$$State loadingSplashView$$State, String str) {
            super("setSplashLoadingTitle", k9.class);
            this.text = str;
        }

        @Override // defpackage.wd9
        public void apply(LoadingSplashView loadingSplashView) {
            loadingSplashView.setSplashLoadingTitle(this.text);
        }
    }

    public class SetWithoutSplashLoadingTitleCommand extends wd9<LoadingSplashView> {
        public final String text;

        public SetWithoutSplashLoadingTitleCommand(LoadingSplashView$$State loadingSplashView$$State, String str) {
            super("setWithoutSplashLoadingTitle", k9.class);
            this.text = str;
        }

        @Override // defpackage.wd9
        public void apply(LoadingSplashView loadingSplashView) {
            loadingSplashView.setWithoutSplashLoadingTitle(this.text);
        }
    }

    public class ShowAdInfoDialogCommand extends wd9<LoadingSplashView> {
        public final b06 ordInfo;

        public ShowAdInfoDialogCommand(LoadingSplashView$$State loadingSplashView$$State, b06 b06Var) {
            super("showAdInfoDialog", hx5.class);
            this.ordInfo = b06Var;
        }

        @Override // defpackage.wd9
        public void apply(LoadingSplashView loadingSplashView) {
            loadingSplashView.showAdInfoDialog(this.ordInfo);
        }
    }

    public class ShowCloseButtonCommand extends wd9<LoadingSplashView> {
        public final boolean isShow;

        public ShowCloseButtonCommand(LoadingSplashView$$State loadingSplashView$$State, boolean z) {
            super("showCloseButton", k9.class);
            this.isShow = z;
        }

        @Override // defpackage.wd9
        public void apply(LoadingSplashView loadingSplashView) {
            loadingSplashView.showCloseButton(this.isShow);
        }
    }

    public class ShowLoadingWithSplashCommand extends wd9<LoadingSplashView> {
        public final boolean show;

        public ShowLoadingWithSplashCommand(LoadingSplashView$$State loadingSplashView$$State, boolean z) {
            super("showLoadingWithSplash", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(LoadingSplashView loadingSplashView) {
            loadingSplashView.showLoadingWithSplash(this.show);
        }
    }

    public class ShowLoadingWithoutSplashCommand extends wd9<LoadingSplashView> {
        public final boolean show;

        public ShowLoadingWithoutSplashCommand(LoadingSplashView$$State loadingSplashView$$State, boolean z) {
            super("showLoadingWithoutSplash", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(LoadingSplashView loadingSplashView) {
            loadingSplashView.showLoadingWithoutSplash(this.show);
        }
    }

    public class ShowReceiptLoadedWithoutSplashCommand extends wd9<LoadingSplashView> {
        public ShowReceiptLoadedWithoutSplashCommand(LoadingSplashView$$State loadingSplashView$$State) {
            super("showReceiptLoadedWithoutSplash", i9.class);
        }

        @Override // defpackage.wd9
        public void apply(LoadingSplashView loadingSplashView) {
            loadingSplashView.showReceiptLoadedWithoutSplash();
        }
    }

    public class ShowSplashCommand extends wd9<LoadingSplashView> {
        public final hc0.c splash;

        public ShowSplashCommand(LoadingSplashView$$State loadingSplashView$$State, hc0.c cVar) {
            super("showSplash", k9.class);
            this.splash = cVar;
        }

        @Override // defpackage.wd9
        public void apply(LoadingSplashView loadingSplashView) {
            loadingSplashView.showSplash(this.splash);
        }
    }

    public class ShowSubscriptionSplashCommand extends wd9<LoadingSplashView> {
        public final wc8 splash;

        public ShowSubscriptionSplashCommand(LoadingSplashView$$State loadingSplashView$$State, wc8 wc8Var) {
            super("showSubscriptionSplash", k9.class);
            this.splash = wc8Var;
        }

        @Override // defpackage.wd9
        public void apply(LoadingSplashView loadingSplashView) {
            loadingSplashView.showSubscriptionSplash(this.splash);
        }
    }

    public class SkipCommand extends wd9<LoadingSplashView> {
        public SkipCommand(LoadingSplashView$$State loadingSplashView$$State) {
            super("skip", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(LoadingSplashView loadingSplashView) {
            loadingSplashView.skip();
        }
    }

    public class StartProgressAnimationCommand extends wd9<LoadingSplashView> {
        public final long duration;

        public StartProgressAnimationCommand(LoadingSplashView$$State loadingSplashView$$State, long j) {
            super("startProgressAnimation", k9.class);
            this.duration = j;
        }

        @Override // defpackage.wd9
        public void apply(LoadingSplashView loadingSplashView) {
            loadingSplashView.startProgressAnimation(this.duration);
        }
    }

    public class StartProgressAnimationWithoutSplashCommand extends wd9<LoadingSplashView> {
        public final long duration;

        public StartProgressAnimationWithoutSplashCommand(LoadingSplashView$$State loadingSplashView$$State, long j) {
            super("startProgressAnimationWithoutSplash", k9.class);
            this.duration = j;
        }

        @Override // defpackage.wd9
        public void apply(LoadingSplashView loadingSplashView) {
            loadingSplashView.startProgressAnimationWithoutSplash(this.duration);
        }
    }
}
