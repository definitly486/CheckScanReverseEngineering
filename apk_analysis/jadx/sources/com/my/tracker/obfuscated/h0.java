package com.my.tracker.obfuscated;

import android.content.Context;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.CellIdentityCdma;
import android.telephony.CellIdentityGsm;
import android.telephony.CellIdentityLte;
import android.telephony.CellIdentityNr;
import android.telephony.CellIdentityTdscdma;
import android.telephony.CellIdentityWcdma;
import android.telephony.CellInfo;
import android.telephony.CellInfoCdma;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoLte;
import android.telephony.CellInfoNr;
import android.telephony.CellInfoTdscdma;
import android.telephony.CellInfoWcdma;
import android.telephony.CellLocation;
import android.telephony.CellSignalStrengthCdma;
import android.telephony.CellSignalStrengthGsm;
import android.telephony.CellSignalStrengthLte;
import android.telephony.CellSignalStrengthNr;
import android.telephony.CellSignalStrengthTdscdma;
import android.telephony.CellSignalStrengthWcdma;
import android.telephony.TelephonyManager;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import com.tapjoy.TJDeviceNetworkKt;
import defpackage.nw9;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class h0 {
    private static final g0.k a = new g0.k(null, Collections.EMPTY_LIST);
    public static int b = 5;

    private List a(Context context) {
        g0.h hVarA;
        if (Build.VERSION.SDK_INT < 29) {
            if (!q1.a("android.permission.ACCESS_COARSE_LOCATION", context)) {
                b3.a("EnvironmentParamsDataProvider: can't access information");
                return Collections.EMPTY_LIST;
            }
        } else if (!q1.a("android.permission.ACCESS_FINE_LOCATION", context)) {
            b3.a("EnvironmentParamsDataProvider: can't access information");
            return Collections.EMPTY_LIST;
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager == null) {
                return Collections.EMPTY_LIST;
            }
            List<CellInfo> allCellInfo = telephonyManager.getAllCellInfo();
            if (allCellInfo != null && !allCellInfo.isEmpty()) {
                ArrayList arrayList = new ArrayList();
                for (CellInfo cellInfo : allCellInfo) {
                    if (cellInfo.isRegistered()) {
                        if (cellInfo instanceof CellInfoCdma) {
                            arrayList.add(a((CellInfoCdma) cellInfo));
                        } else if (cellInfo instanceof CellInfoGsm) {
                            arrayList.add(a((CellInfoGsm) cellInfo));
                        } else if (cellInfo instanceof CellInfoLte) {
                            arrayList.add(a((CellInfoLte) cellInfo));
                        } else if (cellInfo instanceof CellInfoWcdma) {
                            arrayList.add(a((CellInfoWcdma) cellInfo));
                        } else {
                            int i = Build.VERSION.SDK_INT;
                            if (i >= 29 && (cellInfo instanceof CellInfoTdscdma)) {
                                arrayList.add(a((CellInfoTdscdma) cellInfo));
                            } else if (i >= 29 && (cellInfo instanceof CellInfoNr)) {
                                arrayList.add(a((CellInfoNr) cellInfo));
                            }
                        }
                    }
                }
                if (arrayList.isEmpty() && (hVarA = a(telephonyManager)) != null) {
                    arrayList.add(hVarA);
                }
                return arrayList;
            }
            return Collections.EMPTY_LIST;
        } catch (Throwable th) {
            b3.a("EnvironmentParamsDataProvider: exception during collecting c-info", th);
            return Collections.EMPTY_LIST;
        }
    }

    private g0.k c(Context context) {
        g0.j jVar;
        if (!q1.a("android.permission.ACCESS_WIFI_STATE", context)) {
            return a;
        }
        try {
            WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService(TJDeviceNetworkKt.TJC_CONNECTION_TYPE_WIFI);
            if (wifiManager != null && wifiManager.isWifiEnabled()) {
                WifiInfo connectionInfo = wifiManager.getConnectionInfo();
                if (connectionInfo != null) {
                    String ssid = connectionInfo.getSSID();
                    String bssid = connectionInfo.getBSSID();
                    jVar = new g0.j(ssid == null ? "<null>" : ssid, bssid == null ? "<null>" : bssid, connectionInfo.getRssi(), connectionInfo.getNetworkId(), connectionInfo.getLinkSpeed());
                } else {
                    jVar = null;
                }
                if (!q1.a("android.permission.ACCESS_FINE_LOCATION", context) && !q1.a("android.permission.ACCESS_COARSE_LOCATION", context)) {
                    return new g0.k(jVar, Collections.EMPTY_LIST);
                }
                List<ScanResult> scanResults = wifiManager.getScanResults();
                if (scanResults != null && !scanResults.isEmpty()) {
                    Collections.sort(scanResults, new nw9());
                    int iMin = Math.min(scanResults.size(), b);
                    ArrayList arrayList = new ArrayList(iMin);
                    for (int i = 0; i < iMin; i++) {
                        ScanResult scanResult = scanResults.get(i);
                        String str = scanResult.SSID;
                        String str2 = scanResult.BSSID;
                        if (str == null) {
                            str = "<null>";
                        }
                        if (str2 == null) {
                            str2 = "<null>";
                        }
                        arrayList.add(new g0.a(str, str2, scanResult.level));
                    }
                    return new g0.k(jVar, arrayList);
                }
                return new g0.k(jVar, Collections.EMPTY_LIST);
            }
            return a;
        } catch (Throwable th) {
            b3.a("EnvironmentParamsDataProvider: exception during collecting w-info", th);
            return a;
        }
    }

    public g0 b(Context context) {
        return new g0(a(context), c(context));
    }

    private g0.c a(CellInfoCdma cellInfoCdma) {
        CellIdentityCdma cellIdentity = cellInfoCdma.getCellIdentity();
        int networkId = cellIdentity.getNetworkId();
        int systemId = cellIdentity.getSystemId();
        int basestationId = cellIdentity.getBasestationId();
        int latitude = cellIdentity.getLatitude();
        int longitude = cellIdentity.getLongitude();
        CellSignalStrengthCdma cellSignalStrength = cellInfoCdma.getCellSignalStrength();
        return new g0.c(networkId, systemId, basestationId, latitude, longitude, cellSignalStrength.getCdmaLevel(), cellSignalStrength.getCdmaDbm(), cellSignalStrength.getCdmaEcio(), cellSignalStrength.getEvdoLevel(), cellSignalStrength.getEvdoDbm(), cellSignalStrength.getEvdoEcio(), cellSignalStrength.getEvdoSnr());
    }

    private g0.d a(CellInfoGsm cellInfoGsm) {
        CellIdentityGsm cellIdentity = cellInfoGsm.getCellIdentity();
        CellSignalStrengthGsm cellSignalStrength = cellInfoGsm.getCellSignalStrength();
        int i = Build.VERSION.SDK_INT;
        return new g0.d(i >= 28 ? cellIdentity.getMccString() : String.valueOf(cellIdentity.getMcc()), i >= 28 ? cellIdentity.getMncString() : String.valueOf(cellIdentity.getMnc()), cellIdentity.getCid(), cellIdentity.getLac(), cellIdentity.getArfcn(), cellIdentity.getBsic(), cellSignalStrength.getLevel(), cellSignalStrength.getDbm(), cellSignalStrength.getAsuLevel(), cellSignalStrength.getTimingAdvance());
    }

    private g0.e a(CellInfoLte cellInfoLte) {
        CellIdentityLte cellIdentity = cellInfoLte.getCellIdentity();
        CellSignalStrengthLte cellSignalStrength = cellInfoLte.getCellSignalStrength();
        int i = Build.VERSION.SDK_INT;
        return new g0.e(i >= 28 ? cellIdentity.getMccString() : String.valueOf(cellIdentity.getMcc()), i >= 28 ? cellIdentity.getMncString() : String.valueOf(cellIdentity.getMnc()), cellIdentity.getCi(), cellIdentity.getTac(), cellIdentity.getEarfcn(), cellIdentity.getPci(), cellSignalStrength.getLevel(), cellSignalStrength.getDbm(), cellSignalStrength.getAsuLevel(), cellSignalStrength.getTimingAdvance());
    }

    private g0.i a(CellInfoWcdma cellInfoWcdma) {
        CellIdentityWcdma cellIdentity = cellInfoWcdma.getCellIdentity();
        CellSignalStrengthWcdma cellSignalStrength = cellInfoWcdma.getCellSignalStrength();
        int i = Build.VERSION.SDK_INT;
        return new g0.i(i >= 28 ? cellIdentity.getMccString() : String.valueOf(cellIdentity.getMcc()), i >= 28 ? cellIdentity.getMncString() : String.valueOf(cellIdentity.getMnc()), cellIdentity.getCid(), cellIdentity.getLac(), cellIdentity.getUarfcn(), cellIdentity.getPsc(), cellSignalStrength.getLevel(), cellSignalStrength.getDbm(), cellSignalStrength.getAsuLevel());
    }

    private g0.g a(CellInfoTdscdma cellInfoTdscdma) {
        CellIdentityTdscdma cellIdentity = cellInfoTdscdma.getCellIdentity();
        CellSignalStrengthTdscdma cellSignalStrength = cellInfoTdscdma.getCellSignalStrength();
        return new g0.g(cellIdentity.getMccString(), cellIdentity.getMncString(), cellIdentity.getCid(), cellIdentity.getLac(), cellIdentity.getUarfcn(), cellIdentity.getCpid(), cellSignalStrength.getLevel(), cellSignalStrength.getDbm(), cellSignalStrength.getAsuLevel());
    }

    private g0.f a(CellInfoNr cellInfoNr) {
        CellIdentityNr cellIdentityNr = (CellIdentityNr) cellInfoNr.getCellIdentity();
        CellSignalStrengthNr cellSignalStrengthNr = (CellSignalStrengthNr) cellInfoNr.getCellSignalStrength();
        return new g0.f(cellIdentityNr.getMccString(), cellIdentityNr.getMncString(), cellIdentityNr.getNci(), cellIdentityNr.getTac(), cellIdentityNr.getNrarfcn(), cellIdentityNr.getPci(), cellSignalStrengthNr.getLevel(), cellSignalStrengthNr.getDbm(), cellSignalStrengthNr.getAsuLevel());
    }

    private g0.h a(TelephonyManager telephonyManager) {
        String str;
        String strSubstring;
        CellLocation cellLocation = telephonyManager.getCellLocation();
        String strSubstring2 = null;
        if (!(cellLocation instanceof GsmCellLocation)) {
            return null;
        }
        String networkOperator = telephonyManager.getNetworkOperator();
        if (TextUtils.isEmpty(networkOperator)) {
            str = null;
        } else {
            try {
                strSubstring = networkOperator.substring(0, 3);
                try {
                    strSubstring2 = networkOperator.substring(3);
                } catch (Throwable unused) {
                    b3.a("EnvironmentParamsDataProvider: unable to substring network operator " + networkOperator);
                }
            } catch (Throwable unused2) {
                strSubstring = null;
            }
            str = strSubstring2;
            strSubstring2 = strSubstring;
        }
        GsmCellLocation gsmCellLocation = (GsmCellLocation) cellLocation;
        return new g0.h(strSubstring2, str, gsmCellLocation.getCid(), gsmCellLocation.getLac());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(ScanResult scanResult, ScanResult scanResult2) {
        return Integer.compare(scanResult2.level, scanResult.level);
    }
}
