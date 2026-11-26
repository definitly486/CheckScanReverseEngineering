package yads;

import android.os.IBinder;
import android.os.IInterface;
import com.monetization.ads.core.identifiers.ad.gms.service.GmsServiceAdvertisingInfoReader;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class t73 {
    public final id a(p73 p73Var) {
        try {
            IBinder iBinder = (IBinder) p73Var.a.poll(5L, TimeUnit.SECONDS);
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            GmsServiceAdvertisingInfoReader gmsServiceAdvertisingInfoReader = iInterfaceQueryLocalInterface instanceof GmsServiceAdvertisingInfoReader ? (GmsServiceAdvertisingInfoReader) iInterfaceQueryLocalInterface : null;
            if (gmsServiceAdvertisingInfoReader == null) {
                gmsServiceAdvertisingInfoReader = new GmsServiceAdvertisingInfoReader(iBinder);
            }
            String advertisingId = gmsServiceAdvertisingInfoReader.readAdvertisingId();
            Boolean adTrackingLimited = gmsServiceAdvertisingInfoReader.readAdTrackingLimited();
            if (adTrackingLimited == null || advertisingId == null) {
                return null;
            }
            return new id(advertisingId, adTrackingLimited.booleanValue());
        } catch (InterruptedException unused) {
            return null;
        }
    }
}
