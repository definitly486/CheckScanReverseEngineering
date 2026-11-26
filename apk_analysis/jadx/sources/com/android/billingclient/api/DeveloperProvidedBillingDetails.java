package com.android.billingclient.api;

import defpackage.ad2;
import defpackage.me0;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class DeveloperProvidedBillingDetails {
    private final String zza;
    private final JSONObject zzb;
    private final List zzc;
    private final String zzd;
    private final String zze;

    public static class Product {
        private final String zza;
        private final String zzb;
        private final String zzc;

        public /* synthetic */ Product(JSONObject jSONObject, zzdo zzdoVar) {
            this.zza = jSONObject.optString("productId");
            this.zzb = jSONObject.optString("productType");
            String strOptString = jSONObject.optString("offerToken");
            this.zzc = true == strOptString.isEmpty() ? null : strOptString;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Product)) {
                return false;
            }
            Product product = (Product) obj;
            return this.zza.equals(product.getId()) && this.zzb.equals(product.getType()) && Objects.equals(this.zzc, product.getOfferToken());
        }

        public String getId() {
            return this.zza;
        }

        public String getOfferToken() {
            return this.zzc;
        }

        public String getType() {
            return this.zzb;
        }

        public int hashCode() {
            return Objects.hash(this.zza, this.zzb, this.zzc);
        }

        public String toString() {
            String str = this.zza;
            String str2 = this.zzb;
            return me0.d(ad2.d("{id: ", str, ", type: ", str2, ", offer token: "), this.zzc, "}");
        }
    }

    public DeveloperProvidedBillingDetails(String str) {
        this.zza = str;
        JSONObject jSONObject = new JSONObject(str);
        this.zzb = jSONObject;
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("products");
        ArrayList arrayList = new ArrayList();
        if (jSONArrayOptJSONArray != null) {
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject != null) {
                    arrayList.add(new Product(jSONObjectOptJSONObject, null));
                }
            }
        }
        this.zzc = arrayList;
        this.zzd = zza("originalExternalTransactionId");
        this.zze = zza("externalTransactionToken");
    }

    private final String zza(String str) {
        String strOptString = this.zzb.optString(str);
        if (strOptString.isEmpty()) {
            return null;
        }
        return strOptString;
    }

    public String getExternalTransactionToken() {
        return this.zze;
    }

    public String getLinkUri() {
        return this.zzb.optString("linkUri");
    }

    public String getOriginalExternalTransactionId() {
        return this.zzd;
    }

    public List<Product> getProducts() {
        return this.zzc;
    }
}
