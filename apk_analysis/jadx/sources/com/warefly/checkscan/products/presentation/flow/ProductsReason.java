package com.warefly.checkscan.products.presentation.flow;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.kv2;

/* JADX INFO: loaded from: classes5.dex */
public interface ProductsReason extends Parcelable {

    public static final class Main implements ProductsReason {
        public static final Main b = new Main();
        public static final Parcelable.Creator<Main> CREATOR = new a();

        public static final class a implements Parcelable.Creator<Main> {
            @Override // android.os.Parcelable.Creator
            public final Main createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return Main.b;
            }

            @Override // android.os.Parcelable.Creator
            public final Main[] newArray(int i) {
                return new Main[i];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    public static final class Product implements ProductsReason {
        public static final Parcelable.Creator<Product> CREATOR = new a();
        public final int b;

        public static final class a implements Parcelable.Creator<Product> {
            @Override // android.os.Parcelable.Creator
            public final Product createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new Product(parcel.readInt());
            }

            @Override // android.os.Parcelable.Creator
            public final Product[] newArray(int i) {
                return new Product[i];
            }
        }

        public Product(int i) {
            this.b = i;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Product) && this.b == ((Product) obj).b;
        }

        public final int hashCode() {
            return Integer.hashCode(this.b);
        }

        public final String toString() {
            return kv2.b(this.b, "Product(id=", ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeInt(this.b);
        }
    }

    public static final class Shop implements ProductsReason {
        public static final Parcelable.Creator<Shop> CREATOR = new a();
        public final int b;
        public final boolean c;

        public static final class a implements Parcelable.Creator<Shop> {
            @Override // android.os.Parcelable.Creator
            public final Shop createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new Shop(parcel.readInt(), parcel.readInt() != 0);
            }

            @Override // android.os.Parcelable.Creator
            public final Shop[] newArray(int i) {
                return new Shop[i];
            }
        }

        public Shop(int i, boolean z) {
            this.b = i;
            this.c = z;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Shop)) {
                return false;
            }
            Shop shop = (Shop) obj;
            return this.b == shop.b && this.c == shop.c;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.c) + (Integer.hashCode(this.b) * 31);
        }

        public final String toString() {
            return "Shop(id=" + this.b + ", isMerchant=" + this.c + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeInt(this.b);
            parcel.writeInt(this.c ? 1 : 0);
        }
    }
}
