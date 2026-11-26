package com.warefly.checkscan.presentation.landing.view;

import com.wdullaer.materialdatetimepicker.date.DatePickerDialog;
import defpackage.aj4;
import defpackage.b06;
import defpackage.hx5;
import defpackage.i9;
import defpackage.k9;
import defpackage.kh5;
import defpackage.ur6;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class LandingView$$State extends kh5<LandingView> implements LandingView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.landing.view.LandingView
    public void openCustomTab(String str) {
        OpenCustomTabCommand openCustomTabCommand = new OpenCustomTabCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openCustomTabCommand).b(xd9Var.a, openCustomTabCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((LandingView) it.next()).openCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openCustomTabCommand).a(xd9Var2.a, openCustomTabCommand);
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
            ((LandingView) it.next()).openUrl(str);
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
            ((LandingView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.landing.view.LandingView
    public void showContent(aj4.a aVar) {
        ShowContentCommand showContentCommand = new ShowContentCommand(this, aVar);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showContentCommand).b(xd9Var.a, showContentCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((LandingView) it.next()).showContent(aVar);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showContentCommand).a(xd9Var2.a, showContentCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.landing.view.LandingView
    public void showDatePicker(DatePickerDialog.OnDateSetListener onDateSetListener) {
        ShowDatePickerCommand showDatePickerCommand = new ShowDatePickerCommand(this, onDateSetListener);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showDatePickerCommand).b(xd9Var.a, showDatePickerCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((LandingView) it.next()).showDatePicker(onDateSetListener);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showDatePickerCommand).a(xd9Var2.a, showDatePickerCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.landing.view.LandingView
    public void showImage(String str) {
        ShowImageCommand showImageCommand = new ShowImageCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showImageCommand).b(xd9Var.a, showImageCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((LandingView) it.next()).showImage(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showImageCommand).a(xd9Var2.a, showImageCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.landing.view.LandingView
    public void showOfdDialog(b06 b06Var) {
        ShowOfdDialogCommand showOfdDialogCommand = new ShowOfdDialogCommand(this, b06Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showOfdDialogCommand).b(xd9Var.a, showOfdDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((LandingView) it.next()).showOfdDialog(b06Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showOfdDialogCommand).a(xd9Var2.a, showOfdDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.landing.view.LandingView
    public void showOfferRegistrationDialog() {
        ShowOfferRegistrationDialogCommand showOfferRegistrationDialogCommand = new ShowOfferRegistrationDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showOfferRegistrationDialogCommand).b(xd9Var.a, showOfferRegistrationDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((LandingView) it.next()).showOfferRegistrationDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showOfferRegistrationDialogCommand).a(xd9Var2.a, showOfferRegistrationDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.landing.view.LandingView
    public void showPromoRegisterResult(ur6 ur6Var) {
        ShowPromoRegisterResultCommand showPromoRegisterResultCommand = new ShowPromoRegisterResultCommand(this, ur6Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showPromoRegisterResultCommand).b(xd9Var.a, showPromoRegisterResultCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((LandingView) it.next()).showPromoRegisterResult(ur6Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showPromoRegisterResultCommand).a(xd9Var2.a, showPromoRegisterResultCommand);
    }

    public class OpenCustomTabCommand extends wd9<LandingView> {
        public final String link;

        public OpenCustomTabCommand(LandingView$$State landingView$$State, String str) {
            super("openCustomTab", hx5.class);
            this.link = str;
        }

        @Override // defpackage.wd9
        public void apply(LandingView landingView) {
            landingView.openCustomTab(this.link);
        }
    }

    public class OpenUrlCommand extends wd9<LandingView> {
        public final String arg0;

        public OpenUrlCommand(LandingView$$State landingView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(LandingView landingView) {
            landingView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<LandingView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(LandingView$$State landingView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(LandingView landingView) {
            landingView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowContentCommand extends wd9<LandingView> {
        public final aj4.a content;

        public ShowContentCommand(LandingView$$State landingView$$State, aj4.a aVar) {
            super("showContent", i9.class);
            this.content = aVar;
        }

        @Override // defpackage.wd9
        public void apply(LandingView landingView) {
            landingView.showContent(this.content);
        }
    }

    public class ShowDatePickerCommand extends wd9<LandingView> {
        public final DatePickerDialog.OnDateSetListener onDateSetListener;

        public ShowDatePickerCommand(LandingView$$State landingView$$State, DatePickerDialog.OnDateSetListener onDateSetListener) {
            super("showDatePicker", hx5.class);
            this.onDateSetListener = onDateSetListener;
        }

        @Override // defpackage.wd9
        public void apply(LandingView landingView) {
            landingView.showDatePicker(this.onDateSetListener);
        }
    }

    public class ShowImageCommand extends wd9<LandingView> {
        public final String url;

        public ShowImageCommand(LandingView$$State landingView$$State, String str) {
            super("showImage", i9.class);
            this.url = str;
        }

        @Override // defpackage.wd9
        public void apply(LandingView landingView) {
            landingView.showImage(this.url);
        }
    }

    public class ShowOfdDialogCommand extends wd9<LandingView> {
        public final b06 data;

        public ShowOfdDialogCommand(LandingView$$State landingView$$State, b06 b06Var) {
            super("showOfdDialog", k9.class);
            this.data = b06Var;
        }

        @Override // defpackage.wd9
        public void apply(LandingView landingView) {
            landingView.showOfdDialog(this.data);
        }
    }

    public class ShowOfferRegistrationDialogCommand extends wd9<LandingView> {
        public ShowOfferRegistrationDialogCommand(LandingView$$State landingView$$State) {
            super("showOfferRegistrationDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(LandingView landingView) {
            landingView.showOfferRegistrationDialog();
        }
    }

    public class ShowPromoRegisterResultCommand extends wd9<LandingView> {
        public final ur6 result;

        public ShowPromoRegisterResultCommand(LandingView$$State landingView$$State, ur6 ur6Var) {
            super("showPromoRegisterResult", hx5.class);
            this.result = ur6Var;
        }

        @Override // defpackage.wd9
        public void apply(LandingView landingView) {
            landingView.showPromoRegisterResult(this.result);
        }
    }
}
