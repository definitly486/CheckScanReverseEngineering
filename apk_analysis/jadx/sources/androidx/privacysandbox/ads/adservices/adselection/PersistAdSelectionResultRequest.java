package androidx.privacysandbox.ads.adservices.adselection;

import androidx.privacysandbox.ads.adservices.common.AdTechIdentifier;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import defpackage.aa4;
import defpackage.jh2;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
@ExperimentalFeatures.Ext10OptIn
public final class PersistAdSelectionResultRequest {
    private final long adSelectionId;
    private final byte[] adSelectionResult;
    private final AdTechIdentifier seller;

    public /* synthetic */ PersistAdSelectionResultRequest(long j, AdTechIdentifier adTechIdentifier, byte[] bArr, int i, jh2 jh2Var) {
        this(j, (i & 2) != 0 ? null : adTechIdentifier, (i & 4) != 0 ? null : bArr);
    }

    public final android.adservices.adselection.PersistAdSelectionResultRequest convertToAdServices$ads_adservices_release() {
        android.adservices.adselection.PersistAdSelectionResultRequest.Builder adSelectionId = new android.adservices.adselection.PersistAdSelectionResultRequest.Builder().setAdSelectionId(this.adSelectionId);
        AdTechIdentifier adTechIdentifier = this.seller;
        android.adservices.adselection.PersistAdSelectionResultRequest persistAdSelectionResultRequestBuild = adSelectionId.setSeller(adTechIdentifier != null ? adTechIdentifier.convertToAdServices$ads_adservices_release() : null).setAdSelectionResult(this.adSelectionResult).build();
        persistAdSelectionResultRequestBuild.getClass();
        return persistAdSelectionResultRequestBuild;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PersistAdSelectionResultRequest)) {
            return false;
        }
        PersistAdSelectionResultRequest persistAdSelectionResultRequest = (PersistAdSelectionResultRequest) obj;
        return this.adSelectionId == persistAdSelectionResultRequest.adSelectionId && aa4.e(this.seller, persistAdSelectionResultRequest.seller) && Arrays.equals(this.adSelectionResult, persistAdSelectionResultRequest.adSelectionResult);
    }

    public final long getAdSelectionId() {
        return this.adSelectionId;
    }

    public final byte[] getAdSelectionResult() {
        return this.adSelectionResult;
    }

    public final AdTechIdentifier getSeller() {
        return this.seller;
    }

    public int hashCode() {
        int iHashCode = Long.hashCode(this.adSelectionId) * 31;
        AdTechIdentifier adTechIdentifier = this.seller;
        int iHashCode2 = (iHashCode + (adTechIdentifier != null ? adTechIdentifier.hashCode() : 0)) * 31;
        byte[] bArr = this.adSelectionResult;
        return iHashCode2 + (bArr != null ? bArr.hashCode() : 0);
    }

    public String toString() {
        return "PersistAdSelectionResultRequest: adSelectionId=" + this.adSelectionId + ", seller=" + this.seller + ", adSelectionResult=" + this.adSelectionResult;
    }

    public PersistAdSelectionResultRequest(long j, AdTechIdentifier adTechIdentifier) {
        this(j, adTechIdentifier, null, 4, null);
    }

    public PersistAdSelectionResultRequest(long j, AdTechIdentifier adTechIdentifier, byte[] bArr) {
        this.adSelectionId = j;
        this.seller = adTechIdentifier;
        this.adSelectionResult = bArr;
    }

    public PersistAdSelectionResultRequest(long j) {
        this(j, null, null, 6, null);
    }
}
