package com.google.android.gms.common;

import android.accounts.Account;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class AccountPicker {

    public static class AccountChooserOptions {
        public Account a;
        public ArrayList b;
        public ArrayList c;
        public boolean d;
        public String e;
        public Bundle f;

        public static class Builder {
            public Account a;
            public ArrayList b;
            public ArrayList c;
            public boolean d = false;
            public String e;
            public Bundle f;

            public AccountChooserOptions build() {
                Preconditions.checkArgument(true, "We only support hostedDomain filter for account chip styled account picker");
                Preconditions.checkArgument(true, "Consent is only valid for account chip styled account picker");
                AccountChooserOptions accountChooserOptions = new AccountChooserOptions();
                accountChooserOptions.c = this.c;
                accountChooserOptions.b = this.b;
                accountChooserOptions.d = this.d;
                accountChooserOptions.f = this.f;
                accountChooserOptions.a = this.a;
                accountChooserOptions.e = this.e;
                return accountChooserOptions;
            }

            public Builder setAllowableAccounts(List<Account> list) {
                this.b = list == null ? null : new ArrayList(list);
                return this;
            }

            public Builder setAllowableAccountsTypes(List<String> list) {
                this.c = list == null ? null : new ArrayList(list);
                return this;
            }

            public Builder setAlwaysShowAccountPicker(boolean z) {
                this.d = z;
                return this;
            }

            public Builder setOptionsForAddingAccount(Bundle bundle) {
                this.f = bundle;
                return this;
            }

            public Builder setSelectedAccount(Account account) {
                this.a = account;
                return this;
            }

            public Builder setTitleOverrideText(String str) {
                this.e = str;
                return this;
            }
        }
    }

    public static Intent newChooseAccountIntent(AccountChooserOptions accountChooserOptions) {
        Intent intent = new Intent();
        Preconditions.checkArgument(true, "We only support hostedDomain filter for account chip styled account picker");
        Preconditions.checkArgument(true, "Consent is only valid for account chip styled account picker");
        Preconditions.checkArgument(true, "Making the selected account non-clickable is only supported for the THEME_DAY_NIGHT_GOOGLE_MATERIAL2, THEME_LIGHT_GOOGLE_MATERIAL3, THEME_DARK_GOOGLE_MATERIAL3 or THEME_DAY_NIGHT_GOOGLE_MATERIAL3 themes");
        intent.setAction("com.google.android.gms.common.account.CHOOSE_ACCOUNT");
        intent.setPackage("com.google.android.gms");
        intent.putExtra("allowableAccounts", accountChooserOptions.b);
        ArrayList arrayList = accountChooserOptions.c;
        if (arrayList != null) {
            intent.putExtra("allowableAccountTypes", (String[]) arrayList.toArray(new String[0]));
        }
        intent.putExtra("addAccountOptions", accountChooserOptions.f);
        intent.putExtra("selectedAccount", accountChooserOptions.a);
        intent.putExtra("selectedAccountIsNotClickable", false);
        intent.putExtra("alwaysPromptForAccount", accountChooserOptions.d);
        intent.putExtra("descriptionTextOverride", accountChooserOptions.e);
        intent.putExtra("setGmsCoreAccount", false);
        intent.putExtra("realClientPackage", (String) null);
        intent.putExtra("overrideTheme", 0);
        intent.putExtra("overrideCustomTheme", 0);
        intent.putExtra("hostedDomainFilter", (String) null);
        Bundle bundle = new Bundle();
        if (!bundle.isEmpty()) {
            intent.putExtra("first_party_options_bundle", bundle);
        }
        return intent;
    }

    @Deprecated
    public static Intent newChooseAccountIntent(Account account, ArrayList<Account> arrayList, String[] strArr, boolean z, String str, String str2, String[] strArr2, Bundle bundle) {
        Intent intent = new Intent();
        Preconditions.checkArgument(true, "We only support hostedDomain filter for account chip styled account picker");
        intent.setAction("com.google.android.gms.common.account.CHOOSE_ACCOUNT");
        intent.setPackage("com.google.android.gms");
        intent.putExtra("allowableAccounts", arrayList);
        intent.putExtra("allowableAccountTypes", strArr);
        intent.putExtra("addAccountOptions", bundle);
        intent.putExtra("selectedAccount", account);
        intent.putExtra("alwaysPromptForAccount", z);
        intent.putExtra("descriptionTextOverride", str);
        intent.putExtra("authTokenType", str2);
        intent.putExtra("addAccountRequiredFeatures", strArr2);
        intent.putExtra("setGmsCoreAccount", false);
        intent.putExtra("overrideTheme", 0);
        intent.putExtra("overrideCustomTheme", 0);
        intent.putExtra("hostedDomainFilter", (String) null);
        return intent;
    }
}
