package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.tapjoy.TJAdUnitConstants;
import defpackage.bg;
import defpackage.fg;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class WebImage extends AbstractSafeParcelable {
    public static final Parcelable.Creator<WebImage> CREATOR = new zah();
    public final int b;
    public final Uri c;
    public final int d;
    public final int e;

    /* JADX WARN: Illegal instructions before constructor call */
    public WebImage(JSONObject jSONObject) {
        Uri uri = Uri.EMPTY;
        if (jSONObject.has("url")) {
            try {
                uri = Uri.parse(jSONObject.getString("url"));
            } catch (JSONException unused) {
            }
        }
        this(uri, jSONObject.optInt(TJAdUnitConstants.String.WIDTH, 0), jSONObject.optInt(TJAdUnitConstants.String.HEIGHT, 0));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof WebImage)) {
            WebImage webImage = (WebImage) obj;
            if (Objects.equal(this.c, webImage.c) && this.d == webImage.d && this.e == webImage.e) {
                return true;
            }
        }
        return false;
    }

    public int getHeight() {
        return this.e;
    }

    public Uri getUrl() {
        return this.c;
    }

    public int getWidth() {
        return this.d;
    }

    public int hashCode() {
        return Objects.hashCode(this.c, Integer.valueOf(this.d), Integer.valueOf(this.e));
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("url", this.c.toString());
            jSONObject.put(TJAdUnitConstants.String.WIDTH, this.d);
            jSONObject.put(TJAdUnitConstants.String.HEIGHT, this.e);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public String toString() {
        Locale locale = Locale.US;
        String string = this.c.toString();
        StringBuilder sbF = bg.f(this.d, this.e, "Image ", "x", " ");
        sbF.append(string);
        return sbF.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.b);
        SafeParcelWriter.writeParcelable(parcel, 2, getUrl(), i, false);
        SafeParcelWriter.writeInt(parcel, 3, getWidth());
        SafeParcelWriter.writeInt(parcel, 4, getHeight());
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public WebImage(Uri uri) {
        this(uri, 0, 0);
    }

    public WebImage(Uri uri, int i, int i2) {
        this(1, uri, i, i2);
        if (uri == null) {
            fg.c("url cannot be null");
            throw null;
        }
        if (i < 0 || i2 < 0) {
            fg.c("width and height must not be negative");
            throw null;
        }
    }

    public WebImage(int i, Uri uri, int i2, int i3) {
        this.b = i;
        this.c = uri;
        this.d = i2;
        this.e = i3;
    }
}
