package androidx.core.provider;

import android.util.Base64;
import androidx.core.util.Preconditions;
import defpackage.dg;
import defpackage.me0;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class FontRequest {
    private final List<List<byte[]>> mCertificates;
    private final int mCertificatesArray;
    private final String mIdentifier;
    private final String mProviderAuthority;
    private final String mProviderPackage;
    private final String mQuery;
    private final String mSystemFont;
    private final String mVariationSettings;

    public FontRequest(String str, String str2, String str3, int i) {
        this.mProviderAuthority = (String) Preconditions.checkNotNull(str);
        this.mProviderPackage = (String) Preconditions.checkNotNull(str2);
        this.mQuery = (String) Preconditions.checkNotNull(str3);
        this.mCertificates = null;
        Preconditions.checkArgument(i != 0);
        this.mCertificatesArray = i;
        this.mSystemFont = null;
        this.mVariationSettings = null;
        this.mIdentifier = createIdentifier(str, str2, str3, null, null);
    }

    private String createIdentifier(String str, String str2, String str3, String str4, String str5) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("-");
        sb.append(str2);
        sb.append("-");
        sb.append(str3);
        return dg.c(sb, "-", str4, "-", str5);
    }

    public List<List<byte[]>> getCertificates() {
        return this.mCertificates;
    }

    public int getCertificatesArrayResId() {
        return this.mCertificatesArray;
    }

    public String getId() {
        return this.mIdentifier;
    }

    @Deprecated
    public String getIdentifier() {
        return this.mIdentifier;
    }

    public String getProviderAuthority() {
        return this.mProviderAuthority;
    }

    public String getProviderPackage() {
        return this.mProviderPackage;
    }

    public String getQuery() {
        return this.mQuery;
    }

    public String getSystemFont() {
        return this.mSystemFont;
    }

    public String getVariationSettings() {
        return this.mVariationSettings;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FontRequest {mProviderAuthority: ");
        sb.append(this.mProviderAuthority);
        sb.append(", mProviderPackage: ");
        sb.append(this.mProviderPackage);
        sb.append(", mQuery: ");
        sb.append(this.mQuery);
        sb.append(", mSystemFont: ");
        sb.append(this.mSystemFont);
        sb.append(", mVariationSettings: ");
        StringBuilder sb2 = new StringBuilder(me0.d(sb, this.mVariationSettings, ", mCertificates:"));
        for (int i = 0; i < this.mCertificates.size(); i++) {
            sb2.append(" [");
            List<byte[]> list = this.mCertificates.get(i);
            for (int i2 = 0; i2 < list.size(); i2++) {
                sb2.append(" \"");
                sb2.append(Base64.encodeToString(list.get(i2), 0));
                sb2.append("\"");
            }
            sb2.append(" ]");
        }
        sb2.append("}");
        sb2.append("mCertificatesArray: " + this.mCertificatesArray);
        return sb2.toString();
    }

    public FontRequest(String str, String str2, String str3, List<List<byte[]>> list, String str4, String str5) {
        this.mProviderAuthority = (String) Preconditions.checkNotNull(str);
        this.mProviderPackage = (String) Preconditions.checkNotNull(str2);
        this.mQuery = (String) Preconditions.checkNotNull(str3);
        this.mCertificates = (List) Preconditions.checkNotNull(list);
        this.mCertificatesArray = 0;
        this.mSystemFont = str4;
        this.mVariationSettings = str5;
        this.mIdentifier = createIdentifier(str, str2, str3, str4, str5);
    }

    public FontRequest(String str, String str2, String str3, List<List<byte[]>> list) {
        this(str, str2, str3, list, null, null);
    }
}
