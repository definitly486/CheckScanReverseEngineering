package com.android.billingclient.api;

import defpackage.fg;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class QueryProductDetailsParams {
    private final com.google.android.gms.internal.play_billing.zzca zza;

    public /* synthetic */ QueryProductDetailsParams(Builder builder, zzem zzemVar) {
        this.zza = builder.zza;
    }

    public static Builder newBuilder() {
        return new Builder(null);
    }

    public final com.google.android.gms.internal.play_billing.zzca zza() {
        return this.zza;
    }

    public final String zzb() {
        return ((Product) this.zza.get(0)).zzb();
    }

    public static class Product {
        private final String dynamicProductToken;
        private final String zza;
        private final String zzb;

        public /* synthetic */ Product(Builder builder, zzem zzemVar) {
            this.zza = builder.zza;
            this.zzb = builder.zzb;
            this.dynamicProductToken = builder.dynamicProductToken;
        }

        public static Builder newBuilder() {
            return new Builder(null);
        }

        public String getDynamicProductToken() {
            return this.dynamicProductToken;
        }

        public final String zza() {
            return this.zza;
        }

        public final String zzb() {
            return this.zzb;
        }

        public static class Builder {
            private String dynamicProductToken;
            private String zza;
            private String zzb;

            public /* synthetic */ Builder(zzem zzemVar) {
            }

            public Product build() {
                String str = this.zzb;
                if ("first_party".equals(str)) {
                    fg.c("Serialized doc id must be provided for first party products.");
                    return null;
                }
                if (this.zza == null) {
                    fg.c("Product id must be provided.");
                    return null;
                }
                if (str != null) {
                    return new Product(this, null);
                }
                fg.c("Product type must be provided.");
                return null;
            }

            public Builder setDynamicProductToken(String str) {
                this.dynamicProductToken = str;
                return this;
            }

            public Builder setProductId(String str) {
                this.zza = str;
                return this;
            }

            public Builder setProductType(String str) {
                this.zzb = str;
                return this;
            }

            private Builder() {
                throw null;
            }
        }
    }

    public static class Builder {
        private com.google.android.gms.internal.play_billing.zzca zza;

        public /* synthetic */ Builder(zzem zzemVar) {
        }

        public QueryProductDetailsParams build() {
            if (this.zza != null) {
                return new QueryProductDetailsParams(this, null);
            }
            fg.c("Product list must be set to a non empty list.");
            return null;
        }

        public Builder setProductList(List<Product> list) {
            if (list == null || list.isEmpty()) {
                fg.c("Product list cannot be empty.");
                return null;
            }
            HashSet hashSet = new HashSet();
            for (Product product : list) {
                if (!"play_pass_subs".equals(product.zzb())) {
                    hashSet.add(product.zzb());
                }
            }
            if (hashSet.size() <= 1) {
                this.zza = com.google.android.gms.internal.play_billing.zzca.zzj(list);
                return this;
            }
            fg.c("All products should be of the same product type.");
            return null;
        }

        private Builder() {
            throw null;
        }
    }
}
