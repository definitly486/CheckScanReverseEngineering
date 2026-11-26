package com.google.android.gms.auth.api.identity;

import android.accounts.Account;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class AuthorizationRequest extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<AuthorizationRequest> CREATOR = new zbb();
    public final List b;
    public final String c;
    public final boolean d;
    public final boolean e;
    public final Account f;
    public final String g;
    public final String h;
    public final boolean i;
    public final Bundle j;
    public final boolean k;
    public final int l;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Prompt {
        public static final int CONSENT = 1;
        public static final int NOT_SET = 0;
        public static final int SELECT_ACCOUNT = 2;
    }

    public enum ResourceParameter {
        ACCOUNT_SELECTION_TOKEN("account_selection_token"),
        ACCOUNT_SELECTION_STATE("account_selection_state"),
        PICKER_ALLOW_MULTIPLE("allow_multiple"),
        PICKER_MIMETYPES("mimetypes"),
        PICKER_FILE_IDS("file_ids"),
        PICKER_OAUTH_TRIGGER("trigger_onepick"),
        PICKER_ALLOW_FOLDER_SELECTION("allow_folder_selection"),
        GHP_STRUCTURE_ID("stid"),
        GHP_ALLOWED_STRUCTURE_IDS("stids"),
        GHP_ALLOW_STRUCTURE_CHANGE("stc"),
        GHP_INVITATION_TOKEN("itk");

        final String zba;

        ResourceParameter(String str) {
            this.zba = str;
        }
    }

    public AuthorizationRequest(List list, String str, boolean z, boolean z2, Account account, String str2, String str3, boolean z3, Bundle bundle, boolean z4, int i) {
        boolean z5 = false;
        if (list != null && !list.isEmpty()) {
            z5 = true;
        }
        Preconditions.checkArgument(z5, "requestedScopes cannot be null or empty");
        this.b = list;
        this.c = str;
        this.d = z;
        this.e = z2;
        this.f = account;
        this.g = str2;
        this.h = str3;
        this.i = z3;
        this.j = bundle;
        this.k = z4;
        this.l = i;
    }

    public static Builder builder() {
        return new Builder();
    }

    public static Builder zba(AuthorizationRequest authorizationRequest) {
        ResourceParameter resourceParameter;
        Preconditions.checkNotNull(authorizationRequest);
        Builder builder = builder();
        builder.setRequestedScopes(authorizationRequest.getRequestedScopes());
        Bundle resourceParameters = authorizationRequest.getResourceParameters();
        if (resourceParameters != null) {
            for (String str : resourceParameters.keySet()) {
                String string = resourceParameters.getString(str);
                ResourceParameter[] resourceParameterArrValues = ResourceParameter.values();
                int length = resourceParameterArrValues.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        resourceParameter = null;
                        break;
                    }
                    resourceParameter = resourceParameterArrValues[i];
                    if (resourceParameter.zba.equals(str)) {
                        break;
                    }
                    i++;
                }
                if (string != null && resourceParameter != null) {
                    builder.addResourceParameter(resourceParameter, string);
                }
            }
        }
        boolean zIsForceCodeForRefreshToken = authorizationRequest.isForceCodeForRefreshToken();
        String str2 = authorizationRequest.h;
        String hostedDomain = authorizationRequest.getHostedDomain();
        Account account = authorizationRequest.getAccount();
        String serverClientId = authorizationRequest.getServerClientId();
        if (str2 != null) {
            builder.zbb(str2);
        }
        if (hostedDomain != null) {
            builder.filterByHostedDomain(hostedDomain);
        }
        if (account != null) {
            builder.setAccount(account);
        }
        if (authorizationRequest.e && serverClientId != null) {
            builder.zba(serverClientId);
        }
        if (authorizationRequest.isOfflineAccessRequested() && serverClientId != null) {
            builder.requestOfflineAccess(serverClientId, zIsForceCodeForRefreshToken);
        }
        builder.setOptOutIncludingGrantedScopes(authorizationRequest.k);
        builder.setPrompt(authorizationRequest.getPrompt());
        return builder;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AuthorizationRequest)) {
            return false;
        }
        AuthorizationRequest authorizationRequest = (AuthorizationRequest) obj;
        List list = this.b;
        int size = list.size();
        List list2 = authorizationRequest.b;
        if (size == list2.size() && list.containsAll(list2)) {
            Bundle bundle = authorizationRequest.j;
            Bundle bundle2 = this.j;
            if (bundle2 == null) {
                if (bundle == null) {
                    bundle = null;
                }
                return false;
            }
            if (bundle2 == null || bundle != null) {
                if (bundle2 != null) {
                    if (bundle2.size() != bundle.size()) {
                        return false;
                    }
                    for (String str : bundle2.keySet()) {
                        if (!Objects.equal(bundle2.getString(str), bundle.getString(str))) {
                            return false;
                        }
                    }
                }
                if (this.d == authorizationRequest.d && this.i == authorizationRequest.i && this.e == authorizationRequest.e && this.k == authorizationRequest.k && this.l == authorizationRequest.l && Objects.equal(this.c, authorizationRequest.c) && Objects.equal(this.f, authorizationRequest.f) && Objects.equal(this.g, authorizationRequest.g) && Objects.equal(this.h, authorizationRequest.h)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public Account getAccount() {
        return this.f;
    }

    public String getHostedDomain() {
        return this.g;
    }

    public boolean getOptOutIncludingGrantedScopes() {
        return this.k;
    }

    public int getPrompt() {
        return this.l;
    }

    public List<Scope> getRequestedScopes() {
        return this.b;
    }

    public String getResourceParameter(ResourceParameter resourceParameter) {
        Bundle bundle = this.j;
        if (bundle == null) {
            return null;
        }
        return bundle.getString(resourceParameter.zba);
    }

    public Bundle getResourceParameters() {
        return this.j;
    }

    public String getServerClientId() {
        return this.c;
    }

    public int hashCode() {
        return Objects.hashCode(this.b, this.c, Boolean.valueOf(this.d), Boolean.valueOf(this.i), Boolean.valueOf(this.e), this.f, this.g, this.h, this.j, Boolean.valueOf(this.k), Integer.valueOf(this.l));
    }

    public boolean isForceCodeForRefreshToken() {
        return this.i;
    }

    public boolean isOfflineAccessRequested() {
        return this.d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, getRequestedScopes(), false);
        SafeParcelWriter.writeString(parcel, 2, getServerClientId(), false);
        SafeParcelWriter.writeBoolean(parcel, 3, isOfflineAccessRequested());
        SafeParcelWriter.writeBoolean(parcel, 4, this.e);
        SafeParcelWriter.writeParcelable(parcel, 5, getAccount(), i, false);
        SafeParcelWriter.writeString(parcel, 6, getHostedDomain(), false);
        SafeParcelWriter.writeString(parcel, 7, this.h, false);
        SafeParcelWriter.writeBoolean(parcel, 8, isForceCodeForRefreshToken());
        SafeParcelWriter.writeBundle(parcel, 9, getResourceParameters(), false);
        SafeParcelWriter.writeBoolean(parcel, 10, getOptOutIncludingGrantedScopes());
        SafeParcelWriter.writeInt(parcel, 11, getPrompt());
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public static final class Builder {
        public List a;
        public String b;
        public boolean c;
        public boolean d;
        public Account e;
        public String f;
        public String g;
        public boolean h;
        public Bundle i;
        public boolean j;
        public int k = 0;

        public final void a(String str) {
            Preconditions.checkNotNull(str);
            String str2 = this.b;
            boolean z = true;
            if (str2 != null && !str2.equals(str)) {
                z = false;
            }
            Preconditions.checkArgument(z, "two different server client ids provided");
        }

        public Builder addResourceParameter(ResourceParameter resourceParameter, String str) {
            Preconditions.checkNotNull(resourceParameter, "Resource parameter cannot be null");
            Preconditions.checkNotNull(str, "Resource parameter value cannot be null");
            Bundle bundle = this.i;
            if (bundle == null) {
                bundle = new Bundle();
                this.i = bundle;
            }
            bundle.putString(resourceParameter.zba, str);
            return this;
        }

        public AuthorizationRequest build() {
            return new AuthorizationRequest(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k);
        }

        public Builder filterByHostedDomain(String str) {
            this.f = Preconditions.checkNotEmpty(str);
            return this;
        }

        @Deprecated
        public Builder requestOfflineAccess(String str, boolean z) {
            a(str);
            this.b = str;
            this.c = true;
            this.h = z;
            if (z) {
                setPrompt(1 | this.k);
            }
            return this;
        }

        public Builder setAccount(Account account) {
            this.e = (Account) Preconditions.checkNotNull(account);
            return this;
        }

        public Builder setOptOutIncludingGrantedScopes(boolean z) {
            this.j = z;
            return this;
        }

        public Builder setPrompt(int i) {
            this.k = i;
            return this;
        }

        public Builder setRequestedScopes(List<Scope> list) {
            boolean z = false;
            if (list != null && !list.isEmpty()) {
                z = true;
            }
            Preconditions.checkArgument(z, "requestedScopes cannot be null or empty");
            this.a = list;
            return this;
        }

        public final Builder zba(String str) {
            a(str);
            this.b = str;
            this.d = true;
            return this;
        }

        public final Builder zbb(String str) {
            this.g = str;
            return this;
        }

        public Builder requestOfflineAccess(String str) {
            a(str);
            this.b = str;
            this.c = true;
            this.h = false;
            return this;
        }
    }
}
