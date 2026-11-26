package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.view.View;
import androidx.collection.ArraySet;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.signin.SignInOptions;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class ClientSettings {
    public final Account a;
    public final Set b;
    public final Set c;
    public final Map d;
    public final int e;
    public final View f;
    public final String g;
    public final String h;
    public final SignInOptions i;
    public Integer j;

    public static final class Builder {
        public Account a;
        public ArraySet b;
        public String c;
        public String d;
        public final SignInOptions e = SignInOptions.zaa;

        public ClientSettings build() {
            return new ClientSettings(this.a, this.b, null, 0, null, this.c, this.d, this.e, false);
        }

        public Builder setRealClientPackageName(String str) {
            this.c = str;
            return this;
        }

        public final Builder zaa(Account account) {
            this.a = account;
            return this;
        }

        public final Builder zab(Collection collection) {
            ArraySet arraySet = this.b;
            if (arraySet == null) {
                arraySet = new ArraySet();
                this.b = arraySet;
            }
            arraySet.addAll(collection);
            return this;
        }

        public final Builder zac(String str) {
            this.d = str;
            return this;
        }
    }

    public ClientSettings(Account account, Set set, Map map, int i, View view, String str, String str2, SignInOptions signInOptions, boolean z) {
        this.a = account;
        Set setUnmodifiableSet = set == null ? Collections.EMPTY_SET : Collections.unmodifiableSet(set);
        this.b = setUnmodifiableSet;
        map = map == null ? Collections.EMPTY_MAP : map;
        this.d = map;
        this.f = view;
        this.e = i;
        this.g = str;
        this.h = str2;
        this.i = signInOptions == null ? SignInOptions.zaa : signInOptions;
        HashSet hashSet = new HashSet(setUnmodifiableSet);
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            hashSet.addAll(((zae) it.next()).zaa);
        }
        this.c = Collections.unmodifiableSet(hashSet);
    }

    public static ClientSettings createDefault(Context context) {
        return new GoogleApiClient.Builder(context).zaa();
    }

    public Account getAccount() {
        return this.a;
    }

    @Deprecated
    public String getAccountName() {
        Account account = this.a;
        if (account != null) {
            return account.name;
        }
        return null;
    }

    public Account getAccountOrDefault() {
        Account account = this.a;
        return account != null ? account : new Account("<<default account>>", "com.google");
    }

    public Set<Scope> getAllRequestedScopes() {
        return this.c;
    }

    public Set<Scope> getApplicableScopes(Api<?> api) {
        zae zaeVar = (zae) this.d.get(api);
        Set<Scope> set = this.b;
        if (zaeVar != null) {
            Set set2 = zaeVar.zaa;
            if (!set2.isEmpty()) {
                HashSet hashSet = new HashSet(set);
                hashSet.addAll(set2);
                return hashSet;
            }
        }
        return set;
    }

    public int getGravityForPopups() {
        return this.e;
    }

    public String getRealClientPackageName() {
        return this.g;
    }

    public Set<Scope> getRequiredScopes() {
        return this.b;
    }

    public View getViewForPopups() {
        return this.f;
    }

    public final Map zaa() {
        return this.d;
    }

    public final String zab() {
        return this.h;
    }

    public final SignInOptions zac() {
        return this.i;
    }

    public final Integer zad() {
        return this.j;
    }

    public final void zae(Integer num) {
        this.j = num;
    }

    public ClientSettings(Account account, Set<Scope> set, Map<Api<?>, zae> map, int i, View view, String str, String str2, SignInOptions signInOptions) {
        this(account, set, map, i, view, str, str2, signInOptions, false);
    }
}
