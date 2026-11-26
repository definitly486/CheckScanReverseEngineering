package com.warefly.checkscan.personalform.presentation.form.view;

import com.warefly.checkscan.personalform.presentation.form.bottomSheet.a;
import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.pz3;
import defpackage.u66;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class PersonalDataFormView$$State extends kh5<PersonalDataFormView> implements PersonalDataFormView {
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
            ((PersonalDataFormView) it.next()).openUrl(str);
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
            ((PersonalDataFormView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.personalform.presentation.form.view.PersonalDataFormView
    public void requestGeoPermission() {
        RequestGeoPermissionCommand requestGeoPermissionCommand = new RequestGeoPermissionCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(requestGeoPermissionCommand).b(xd9Var.a, requestGeoPermissionCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PersonalDataFormView) it.next()).requestGeoPermission();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(requestGeoPermissionCommand).a(xd9Var2.a, requestGeoPermissionCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.personalform.presentation.form.view.PersonalDataFormView
    public void setButtonEnabled(boolean z) {
        SetButtonEnabledCommand setButtonEnabledCommand = new SetButtonEnabledCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setButtonEnabledCommand).b(xd9Var.a, setButtonEnabledCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PersonalDataFormView) it.next()).setButtonEnabled(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setButtonEnabledCommand).a(xd9Var2.a, setButtonEnabledCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.personalform.presentation.form.view.PersonalDataFormView
    public void showItems(List<? extends pz3> list) {
        ShowItemsCommand showItemsCommand = new ShowItemsCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showItemsCommand).b(xd9Var.a, showItemsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PersonalDataFormView) it.next()).showItems(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showItemsCommand).a(xd9Var2.a, showItemsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.personalform.presentation.form.view.PersonalDataFormView
    public void showOnboardingWarning(a aVar) {
        ShowOnboardingWarningCommand showOnboardingWarningCommand = new ShowOnboardingWarningCommand(this, aVar);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showOnboardingWarningCommand).b(xd9Var.a, showOnboardingWarningCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PersonalDataFormView) it.next()).showOnboardingWarning(aVar);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showOnboardingWarningCommand).a(xd9Var2.a, showOnboardingWarningCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.personalform.presentation.form.view.PersonalDataFormView
    public void showSaveError() {
        ShowSaveErrorCommand showSaveErrorCommand = new ShowSaveErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showSaveErrorCommand).b(xd9Var.a, showSaveErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PersonalDataFormView) it.next()).showSaveError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showSaveErrorCommand).a(xd9Var2.a, showSaveErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.personalform.presentation.form.view.PersonalDataFormView
    public void showSaveLoading(boolean z) {
        ShowSaveLoadingCommand showSaveLoadingCommand = new ShowSaveLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showSaveLoadingCommand).b(xd9Var.a, showSaveLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PersonalDataFormView) it.next()).showSaveLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showSaveLoadingCommand).a(xd9Var2.a, showSaveLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.personalform.presentation.form.view.PersonalDataFormView
    public void showSaveSuccess(String str) {
        ShowSaveSuccessCommand showSaveSuccessCommand = new ShowSaveSuccessCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showSaveSuccessCommand).b(xd9Var.a, showSaveSuccessCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PersonalDataFormView) it.next()).showSaveSuccess(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showSaveSuccessCommand).a(xd9Var2.a, showSaveSuccessCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.personalform.presentation.form.view.PersonalDataFormView
    public void showSaveSuccessFirstTime(u66 u66Var) {
        ShowSaveSuccessFirstTimeCommand showSaveSuccessFirstTimeCommand = new ShowSaveSuccessFirstTimeCommand(this, u66Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showSaveSuccessFirstTimeCommand).b(xd9Var.a, showSaveSuccessFirstTimeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PersonalDataFormView) it.next()).showSaveSuccessFirstTime(u66Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showSaveSuccessFirstTimeCommand).a(xd9Var2.a, showSaveSuccessFirstTimeCommand);
    }

    public class OpenUrlCommand extends wd9<PersonalDataFormView> {
        public final String arg0;

        public OpenUrlCommand(PersonalDataFormView$$State personalDataFormView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(PersonalDataFormView personalDataFormView) {
            personalDataFormView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<PersonalDataFormView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(PersonalDataFormView$$State personalDataFormView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(PersonalDataFormView personalDataFormView) {
            personalDataFormView.openUrlInCustomTab(this.arg0);
        }
    }

    public class RequestGeoPermissionCommand extends wd9<PersonalDataFormView> {
        public RequestGeoPermissionCommand(PersonalDataFormView$$State personalDataFormView$$State) {
            super("requestGeoPermission", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(PersonalDataFormView personalDataFormView) {
            personalDataFormView.requestGeoPermission();
        }
    }

    public class SetButtonEnabledCommand extends wd9<PersonalDataFormView> {
        public final boolean isEnabled;

        public SetButtonEnabledCommand(PersonalDataFormView$$State personalDataFormView$$State, boolean z) {
            super("setButtonEnabled", k9.class);
            this.isEnabled = z;
        }

        @Override // defpackage.wd9
        public void apply(PersonalDataFormView personalDataFormView) {
            personalDataFormView.setButtonEnabled(this.isEnabled);
        }
    }

    public class ShowItemsCommand extends wd9<PersonalDataFormView> {
        public final List<? extends pz3> items;

        public ShowItemsCommand(PersonalDataFormView$$State personalDataFormView$$State, List<? extends pz3> list) {
            super("showItems", k9.class);
            this.items = list;
        }

        @Override // defpackage.wd9
        public void apply(PersonalDataFormView personalDataFormView) {
            personalDataFormView.showItems(this.items);
        }
    }

    public class ShowOnboardingWarningCommand extends wd9<PersonalDataFormView> {
        public final a warning;

        public ShowOnboardingWarningCommand(PersonalDataFormView$$State personalDataFormView$$State, a aVar) {
            super("showOnboardingWarning", hx5.class);
            this.warning = aVar;
        }

        @Override // defpackage.wd9
        public void apply(PersonalDataFormView personalDataFormView) {
            personalDataFormView.showOnboardingWarning(this.warning);
        }
    }

    public class ShowSaveErrorCommand extends wd9<PersonalDataFormView> {
        public ShowSaveErrorCommand(PersonalDataFormView$$State personalDataFormView$$State) {
            super("showSaveError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(PersonalDataFormView personalDataFormView) {
            personalDataFormView.showSaveError();
        }
    }

    public class ShowSaveLoadingCommand extends wd9<PersonalDataFormView> {
        public final boolean isLoading;

        public ShowSaveLoadingCommand(PersonalDataFormView$$State personalDataFormView$$State, boolean z) {
            super("showSaveLoading", k9.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(PersonalDataFormView personalDataFormView) {
            personalDataFormView.showSaveLoading(this.isLoading);
        }
    }

    public class ShowSaveSuccessCommand extends wd9<PersonalDataFormView> {
        public final String text;

        public ShowSaveSuccessCommand(PersonalDataFormView$$State personalDataFormView$$State, String str) {
            super("showSaveSuccess", hx5.class);
            this.text = str;
        }

        @Override // defpackage.wd9
        public void apply(PersonalDataFormView personalDataFormView) {
            personalDataFormView.showSaveSuccess(this.text);
        }
    }

    public class ShowSaveSuccessFirstTimeCommand extends wd9<PersonalDataFormView> {
        public final u66 personalDataSuccess;

        public ShowSaveSuccessFirstTimeCommand(PersonalDataFormView$$State personalDataFormView$$State, u66 u66Var) {
            super("showSaveSuccessFirstTime", hx5.class);
            this.personalDataSuccess = u66Var;
        }

        @Override // defpackage.wd9
        public void apply(PersonalDataFormView personalDataFormView) {
            personalDataFormView.showSaveSuccessFirstTime(this.personalDataSuccess);
        }
    }
}
