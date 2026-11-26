package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.auth.api.signin.internal.HashAccumulator;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.ah;
import defpackage.hka;
import defpackage.ti0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public class GoogleSignInOptions extends AbstractSafeParcelable implements Api.ApiOptions.Optional, ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR;
    public static final GoogleSignInOptions DEFAULT_GAMES_SIGN_IN;
    public static final GoogleSignInOptions DEFAULT_SIGN_IN;
    public static final hka l;
    public static final Scope zaa = new Scope(Scopes.PROFILE);
    public static final Scope zab = new Scope("email");
    public static final Scope zac = new Scope(Scopes.OPEN_ID);
    public static final Scope zad;
    public static final Scope zae;
    public final int b;
    public final ArrayList c;
    public final Account d;
    public final boolean e;
    public final boolean f;
    public final boolean g;
    public final String h;
    public final String i;
    public final ArrayList j;
    public final String k;

    static {
        Scope scope = new Scope(Scopes.GAMES_LITE);
        zad = scope;
        zae = new Scope(Scopes.GAMES);
        Builder builder = new Builder();
        builder.requestId();
        builder.requestProfile();
        DEFAULT_SIGN_IN = builder.build();
        Builder builder2 = new Builder();
        builder2.requestScopes(scope, new Scope[0]);
        DEFAULT_GAMES_SIGN_IN = builder2.build();
        CREATOR = new zad();
        l = new hka();
    }

    public GoogleSignInOptions(int i, ArrayList arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, HashMap map, String str3) {
        this.b = i;
        this.c = arrayList;
        this.d = account;
        this.e = z;
        this.f = z2;
        this.g = z3;
        this.h = str;
        this.i = str2;
        this.j = new ArrayList(map.values());
        this.k = str3;
    }

    public static HashMap a(ArrayList arrayList) {
        HashMap map = new HashMap();
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                GoogleSignInOptionsExtensionParcelable googleSignInOptionsExtensionParcelable = (GoogleSignInOptionsExtensionParcelable) it.next();
                map.put(Integer.valueOf(googleSignInOptionsExtensionParcelable.getType()), googleSignInOptionsExtensionParcelable);
            }
        }
        return map;
    }

    public static GoogleSignInOptions zaa(String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("scopes");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(jSONArray.getString(i)));
        }
        String strOptString = jSONObject.has("accountName") ? jSONObject.optString("accountName") : null;
        return new GoogleSignInOptions(3, new ArrayList(hashSet), !TextUtils.isEmpty(strOptString) ? new Account(strOptString, "com.google") : null, jSONObject.getBoolean("idTokenRequested"), jSONObject.getBoolean("serverAuthRequested"), jSONObject.getBoolean("forceCodeForRefreshToken"), jSONObject.has("serverClientId") ? jSONObject.optString("serverClientId") : null, jSONObject.has("hostedDomain") ? jSONObject.optString("hostedDomain") : null, new HashMap(), null);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0050 A[Catch: ClassCastException -> 0x008c, TryCatch #0 {ClassCastException -> 0x008c, blocks: (B:5:0x0006, B:7:0x0010, B:10:0x001a, B:12:0x002a, B:15:0x0035, B:17:0x0039, B:22:0x004a, B:24:0x0050, B:30:0x0066, B:32:0x006e, B:34:0x0076, B:36:0x007e, B:27:0x005b, B:20:0x0040), top: B:42:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:26:0x005a  */
    /* JADX WARN: Code duplicated, block: B:27:0x005b A[Catch: ClassCastException -> 0x008c, TryCatch #0 {ClassCastException -> 0x008c, blocks: (B:5:0x0006, B:7:0x0010, B:10:0x001a, B:12:0x002a, B:15:0x0035, B:17:0x0039, B:22:0x004a, B:24:0x0050, B:30:0x0066, B:32:0x006e, B:34:0x0076, B:36:0x007e, B:27:0x005b, B:20:0x0040), top: B:42:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x0065  */
    /* JADX WARN: Code duplicated, block: B:30:0x0066 A[Catch: ClassCastException -> 0x008c, TryCatch #0 {ClassCastException -> 0x008c, blocks: (B:5:0x0006, B:7:0x0010, B:10:0x001a, B:12:0x002a, B:15:0x0035, B:17:0x0039, B:22:0x004a, B:24:0x0050, B:30:0x0066, B:32:0x006e, B:34:0x0076, B:36:0x007e, B:27:0x005b, B:20:0x0040), top: B:42:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x006e A[Catch: ClassCastException -> 0x008c, TryCatch #0 {ClassCastException -> 0x008c, blocks: (B:5:0x0006, B:7:0x0010, B:10:0x001a, B:12:0x002a, B:15:0x0035, B:17:0x0039, B:22:0x004a, B:24:0x0050, B:30:0x0066, B:32:0x006e, B:34:0x0076, B:36:0x007e, B:27:0x005b, B:20:0x0040), top: B:42:0x0006 }] */
    public boolean equals(Object obj) {
        String str = this.h;
        if (obj == null) {
            return false;
        }
        try {
            GoogleSignInOptions googleSignInOptions = (GoogleSignInOptions) obj;
            if (this.j.isEmpty() && googleSignInOptions.j.isEmpty()) {
                ArrayList arrayList = this.c;
                if (arrayList.size() == googleSignInOptions.getScopes().size() && arrayList.containsAll(googleSignInOptions.getScopes())) {
                    Account account = this.d;
                    if (account == null) {
                        if (googleSignInOptions.getAccount() == null) {
                            if (TextUtils.isEmpty(str)) {
                                if (TextUtils.isEmpty(googleSignInOptions.getServerClientId())) {
                                    if (this.g != googleSignInOptions.isForceCodeForRefreshToken() && this.e == googleSignInOptions.isIdTokenRequested() && this.f == googleSignInOptions.isServerAuthCodeRequested() && TextUtils.equals(this.k, googleSignInOptions.getLogSessionId())) {
                                        return true;
                                    }
                                }
                            } else if (!str.equals(googleSignInOptions.getServerClientId())) {
                                if (this.g != googleSignInOptions.isForceCodeForRefreshToken()) {
                                }
                            }
                        }
                    } else if (account.equals(googleSignInOptions.getAccount())) {
                        if (TextUtils.isEmpty(str)) {
                            if (TextUtils.isEmpty(googleSignInOptions.getServerClientId())) {
                                if (this.g != googleSignInOptions.isForceCodeForRefreshToken()) {
                                }
                            }
                        } else if (!str.equals(googleSignInOptions.getServerClientId())) {
                            if (this.g != googleSignInOptions.isForceCodeForRefreshToken()) {
                            }
                        }
                    }
                }
            }
        } catch (ClassCastException unused) {
        }
        return false;
    }

    public Account getAccount() {
        return this.d;
    }

    public ArrayList<GoogleSignInOptionsExtensionParcelable> getExtensions() {
        return this.j;
    }

    public String getLogSessionId() {
        return this.k;
    }

    public Scope[] getScopeArray() {
        ArrayList arrayList = this.c;
        return (Scope[]) arrayList.toArray(new Scope[arrayList.size()]);
    }

    public ArrayList<Scope> getScopes() {
        return new ArrayList<>(this.c);
    }

    public String getServerClientId() {
        return this.h;
    }

    public int hashCode() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.c;
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(((Scope) arrayList2.get(i)).getScopeUri());
        }
        Collections.sort(arrayList);
        HashAccumulator hashAccumulator = new HashAccumulator();
        hashAccumulator.addObject(arrayList);
        hashAccumulator.addObject(this.d);
        hashAccumulator.addObject(this.h);
        hashAccumulator.zaa(this.g);
        hashAccumulator.zaa(this.e);
        hashAccumulator.zaa(this.f);
        hashAccumulator.addObject(this.k);
        return hashAccumulator.hash();
    }

    public boolean isForceCodeForRefreshToken() {
        return this.g;
    }

    public boolean isIdTokenRequested() {
        return this.e;
    }

    public boolean isServerAuthCodeRequested() {
        return this.f;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.b);
        SafeParcelWriter.writeTypedList(parcel, 2, getScopes(), false);
        SafeParcelWriter.writeParcelable(parcel, 3, getAccount(), i, false);
        SafeParcelWriter.writeBoolean(parcel, 4, isIdTokenRequested());
        SafeParcelWriter.writeBoolean(parcel, 5, isServerAuthCodeRequested());
        SafeParcelWriter.writeBoolean(parcel, 6, isForceCodeForRefreshToken());
        SafeParcelWriter.writeString(parcel, 7, getServerClientId(), false);
        SafeParcelWriter.writeString(parcel, 8, this.i, false);
        SafeParcelWriter.writeTypedList(parcel, 9, getExtensions(), false);
        SafeParcelWriter.writeString(parcel, 10, getLogSessionId(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final String zab() {
        String str = this.i;
        String str2 = this.h;
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            ArrayList arrayList = this.c;
            Collections.sort(arrayList, l);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                jSONArray.put(((Scope) it.next()).getScopeUri());
            }
            jSONObject.put("scopes", jSONArray);
            Account account = this.d;
            if (account != null) {
                jSONObject.put("accountName", account.name);
            }
            jSONObject.put("idTokenRequested", this.e);
            jSONObject.put("forceCodeForRefreshToken", this.g);
            jSONObject.put("serverAuthRequested", this.f);
            if (!TextUtils.isEmpty(str2)) {
                jSONObject.put("serverClientId", str2);
            }
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put("hostedDomain", str);
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            ti0.f(e);
            return null;
        }
    }

    @Deprecated
    public static final class Builder {
        public final HashSet a;
        public boolean b;
        public boolean c;
        public boolean d;
        public String e;
        public Account f;
        public String g;
        public final HashMap h;
        public String i;

        public Builder(GoogleSignInOptions googleSignInOptions) {
            this.a = new HashSet();
            this.h = new HashMap();
            Preconditions.checkNotNull(googleSignInOptions);
            this.a = new HashSet(googleSignInOptions.c);
            this.b = googleSignInOptions.f;
            this.c = googleSignInOptions.g;
            this.d = googleSignInOptions.e;
            this.e = googleSignInOptions.h;
            this.f = googleSignInOptions.d;
            this.g = googleSignInOptions.i;
            this.h = GoogleSignInOptions.a(googleSignInOptions.j);
            this.i = googleSignInOptions.k;
        }

        public Builder addExtension(GoogleSignInOptionsExtension googleSignInOptionsExtension) {
            Integer numValueOf = Integer.valueOf(googleSignInOptionsExtension.getExtensionType());
            HashMap map = this.h;
            if (map.containsKey(numValueOf)) {
                ah.f("Only one extension per type may be added");
                return null;
            }
            List<Scope> impliedScopes = googleSignInOptionsExtension.getImpliedScopes();
            if (impliedScopes != null) {
                this.a.addAll(impliedScopes);
            }
            map.put(Integer.valueOf(googleSignInOptionsExtension.getExtensionType()), new GoogleSignInOptionsExtensionParcelable(googleSignInOptionsExtension));
            return this;
        }

        public GoogleSignInOptions build() {
            Scope scope = GoogleSignInOptions.zae;
            HashSet hashSet = this.a;
            if (hashSet.contains(scope)) {
                Scope scope2 = GoogleSignInOptions.zad;
                if (hashSet.contains(scope2)) {
                    hashSet.remove(scope2);
                }
            }
            if (this.d && (this.f == null || !hashSet.isEmpty())) {
                requestId();
            }
            return new GoogleSignInOptions(3, new ArrayList(hashSet), this.f, this.d, this.b, this.c, this.e, this.g, this.h, this.i);
        }

        public Builder requestEmail() {
            this.a.add(GoogleSignInOptions.zab);
            return this;
        }

        public Builder requestId() {
            this.a.add(GoogleSignInOptions.zac);
            return this;
        }

        public Builder requestIdToken(String str) {
            boolean z = true;
            this.d = true;
            Preconditions.checkNotEmpty(str);
            String str2 = this.e;
            if (str2 != null && !str2.equals(str)) {
                z = false;
            }
            Preconditions.checkArgument(z, "two different server client ids provided");
            this.e = str;
            return this;
        }

        public Builder requestProfile() {
            this.a.add(GoogleSignInOptions.zaa);
            return this;
        }

        public Builder requestScopes(Scope scope, Scope... scopeArr) {
            HashSet hashSet = this.a;
            hashSet.add(scope);
            hashSet.addAll(Arrays.asList(scopeArr));
            return this;
        }

        public Builder requestServerAuthCode(String str, boolean z) {
            boolean z2 = true;
            this.b = true;
            Preconditions.checkNotEmpty(str);
            String str2 = this.e;
            if (str2 != null && !str2.equals(str)) {
                z2 = false;
            }
            Preconditions.checkArgument(z2, "two different server client ids provided");
            this.e = str;
            this.c = z;
            return this;
        }

        public Builder setAccountName(String str) {
            this.f = new Account(Preconditions.checkNotEmpty(str), "com.google");
            return this;
        }

        public Builder setHostedDomain(String str) {
            this.g = Preconditions.checkNotEmpty(str);
            return this;
        }

        public Builder setLogSessionId(String str) {
            this.i = str;
            return this;
        }

        public Builder requestServerAuthCode(String str) {
            requestServerAuthCode(str, false);
            return this;
        }

        public Builder() {
            this.a = new HashSet();
            this.h = new HashMap();
        }
    }
}
