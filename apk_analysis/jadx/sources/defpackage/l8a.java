package defpackage;

import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.my.target.n1;
import com.my.target.q;
import com.my.tracker.ads.AdFormat;
import com.tapjoy.TJAdUnitConstants;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes4.dex */
public final class l8a {
    public static final String[] o = {MimeTypes.VIDEO_MP4, "application/vnd.apple.mpegurl", "application/x-mpegurl"};
    public final z2a a;
    public final lia b;
    public final ArrayList c = new ArrayList();
    public final ArrayList d = new ArrayList();
    public final ArrayList e = new ArrayList();
    public final ArrayList f = new ArrayList();
    public final ArrayList g = new ArrayList();
    public boolean h;
    public String i;
    public String j;
    public k5a k;
    public lia l;
    public String m;
    public aga n;

    public l8a(z2a z2aVar, lia liaVar) {
        this.a = z2aVar;
        this.b = liaVar;
        this.n = liaVar.G;
    }

    public static String a(String str) {
        return str.replaceAll("&amp;", "&").replaceAll("&lt;", "<").replaceAll("&gt;", ">").trim();
    }

    public static float d(String str) {
        long j;
        try {
            if (str.contains(".")) {
                int iIndexOf = str.indexOf(".");
                j = Long.parseLong(str.substring(iIndexOf + 1));
                if (j > 1000) {
                    return -1.0f;
                }
                str = str.substring(0, iIndexOf);
            } else {
                j = 0;
            }
            String[] strArrSplit = str.split(StringUtils.PROCESS_POSTFIX_DELIMITER, 3);
            long j2 = Integer.parseInt(strArrSplit[0]);
            long j3 = Integer.parseInt(strArrSplit[1]);
            long j4 = Integer.parseInt(strArrSplit[2]);
            if (j2 >= 24 || j3 >= 60 || j4 >= 60) {
                return -1.0f;
            }
            return ((j2 * 3600000) + ((j3 * 60000) + ((j4 * 1000) + j))) / 1000.0f;
        } catch (Throwable unused) {
            return -1.0f;
        }
    }

    public static int i(XmlPullParser xmlPullParser) {
        try {
            return xmlPullParser.getEventType();
        } catch (Throwable th) {
            fg.e(null, new StringBuilder("VastParser: Error - "), th);
            return Integer.MIN_VALUE;
        }
    }

    public static int k(XmlPullParser xmlPullParser) {
        try {
            return xmlPullParser.next();
        } catch (Throwable th) {
            fg.e(null, new StringBuilder("VastParser: Error - "), th);
            return Integer.MIN_VALUE;
        }
    }

    public static int l(XmlPullParser xmlPullParser) {
        try {
            return xmlPullParser.nextTag();
        } catch (Throwable th) {
            fg.e(null, new StringBuilder("VastParser: Error - "), th);
            return Integer.MIN_VALUE;
        }
    }

    public static String m(XmlPullParser xmlPullParser) {
        String text;
        if (k(xmlPullParser) == 4) {
            text = xmlPullParser.getText();
            l(xmlPullParser);
        } else {
            y14.r(null, "VastParser: No text - " + xmlPullParser.getName());
            text = "";
        }
        return text.trim();
    }

    public static void n(XmlPullParser xmlPullParser) {
        if (i(xmlPullParser) != 2) {
            return;
        }
        int i = 1;
        while (i != 0) {
            int iK = k(xmlPullParser);
            if (iK == 2) {
                i++;
            } else if (iK == 3) {
                i--;
            }
        }
    }

    public final void b(float f, String str, ao9 ao9Var) {
        k8a k8aVar = new k8a("playheadReachedValue", str, false);
        k8aVar.f = -1.0f;
        k8aVar.g = -1.0f;
        if (ao9Var != null) {
            float f2 = ao9Var.z;
            if (f2 > 0.0f) {
                k8aVar.f = (f / 100.0f) * f2;
                ao9Var.a.c(k8aVar);
                return;
            }
        }
        k8aVar.g = f;
        this.e.add(k8aVar);
    }

    public final void c(XmlPullParser xmlPullParser, ao9 ao9Var, boolean z) {
        float fD;
        while (l(xmlPullParser) == 2) {
            if (i(xmlPullParser) == 2) {
                if ("Tracking".equals(xmlPullParser.getName())) {
                    String attributeValue = xmlPullParser.getAttributeValue(null, NotificationCompat.CATEGORY_EVENT);
                    String attributeValue2 = xmlPullParser.getAttributeValue(null, TypedValues.CycleType.S_WAVE_OFFSET);
                    if (attributeValue != null) {
                        if (!"progress".equals(attributeValue) || TextUtils.isEmpty(attributeValue2)) {
                            String strM = m(xmlPullParser);
                            if (TtmlNode.START.equalsIgnoreCase(attributeValue)) {
                                e(z ? "show" : "playbackStarted", strM, ao9Var);
                            } else if ("firstQuartile".equalsIgnoreCase(attributeValue)) {
                                b(25.0f, strM, ao9Var);
                            } else if ("midpoint".equalsIgnoreCase(attributeValue)) {
                                b(50.0f, strM, ao9Var);
                            } else if ("thirdQuartile".equalsIgnoreCase(attributeValue)) {
                                b(75.0f, strM, ao9Var);
                            } else if ("complete".equalsIgnoreCase(attributeValue)) {
                                b(100.0f, strM, ao9Var);
                            } else if ("creativeView".equalsIgnoreCase(attributeValue)) {
                                e(z ? "show" : "playbackStarted", strM, ao9Var);
                            } else if ("mute".equalsIgnoreCase(attributeValue)) {
                                e("volumeOff", strM, ao9Var);
                            } else if ("unmute".equalsIgnoreCase(attributeValue)) {
                                e("volumeOn", strM, ao9Var);
                            } else if ("pause".equalsIgnoreCase(attributeValue)) {
                                e("playbackPaused", strM, ao9Var);
                            } else if ("resume".equalsIgnoreCase(attributeValue)) {
                                e("playbackResumed", strM, ao9Var);
                            } else if ("fullscreen".equalsIgnoreCase(attributeValue)) {
                                e("fullscreenOn", strM, ao9Var);
                            } else if ("exitFullscreen".equalsIgnoreCase(attributeValue)) {
                                e("fullscreenOff", strM, ao9Var);
                            } else if ("skip".equalsIgnoreCase(attributeValue)) {
                                e("closedByUser", strM, ao9Var);
                            } else if ("error".equalsIgnoreCase(attributeValue)) {
                                e("error", strM, ao9Var);
                            } else if ("ClickTracking".equalsIgnoreCase(attributeValue)) {
                                e("click", strM, ao9Var);
                            } else if (TJAdUnitConstants.String.CLOSE.equalsIgnoreCase(attributeValue) || "closeLinear".equalsIgnoreCase(attributeValue)) {
                                e("closedByUser", strM, ao9Var);
                            }
                        } else if (attributeValue2.endsWith("%")) {
                            try {
                                b(Integer.parseInt(attributeValue2.replace("%", "")), m(xmlPullParser), ao9Var);
                            } catch (Throwable unused) {
                                y14.r(null, "VastParser: Unable to parse progress stat with value ".concat(attributeValue2));
                            }
                        } else {
                            String strM2 = m(xmlPullParser);
                            try {
                                fD = d(attributeValue2);
                            } catch (Throwable unused2) {
                                fD = -1.0f;
                            }
                            if (fD >= 0.0f) {
                                k8a k8aVar = new k8a("playheadReachedValue", strM2, false);
                                k8aVar.g = -1.0f;
                                k8aVar.f = fD;
                                if (ao9Var != null) {
                                    ao9Var.a.c(k8aVar);
                                } else {
                                    this.d.add(k8aVar);
                                }
                            } else {
                                y14.r(null, "VastParser: Unable to parse progress stat with value ".concat(attributeValue2));
                            }
                        }
                    }
                    y14.r(null, "VastParser: Added VAST tracking \"" + attributeValue + "\"");
                } else {
                    n(xmlPullParser);
                }
            }
        }
    }

    public final void e(String str, String str2, ao9 ao9Var) {
        if (ao9Var != null) {
            ao9Var.a.c(new m2a(str, str2, false));
        } else {
            this.d.add(new m2a(str, str2, false));
        }
    }

    public final void f(XmlPullParser xmlPullParser) {
        while (l(xmlPullParser) == 2) {
            if (i(xmlPullParser) == 2) {
                if ("Verification".equals(xmlPullParser.getName())) {
                    String attributeValue = xmlPullParser.getAttributeValue(null, "vendor");
                    String strM = null;
                    String strM2 = null;
                    while (l(xmlPullParser) == 2) {
                        if (i(xmlPullParser) == 2) {
                            String name = xmlPullParser.getName();
                            if ("JavaScriptResource".equals(name)) {
                                strM = m(xmlPullParser);
                            } else if ("VerificationParameters".equals(name)) {
                                strM2 = m(xmlPullParser);
                            } else {
                                n(xmlPullParser);
                            }
                        }
                    }
                    if (strM != null) {
                        if (this.n == null) {
                            this.n = new aga(null, null);
                        }
                        this.n.c.add((TextUtils.isEmpty(attributeValue) || TextUtils.isEmpty(strM2)) ? new iea(strM, null, null) : new iea(strM, attributeValue, strM2));
                    }
                } else {
                    n(xmlPullParser);
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:129:0x030c  */
    /* JADX WARN: Code duplicated, block: B:131:0x0329  */
    /* JADX WARN: Code duplicated, block: B:172:0x03d2  */
    /* JADX WARN: Code duplicated, block: B:174:0x03f7  */
    /* JADX WARN: Code duplicated, block: B:409:0x0416 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x024d  */
    /* JADX WARN: Instruction removed from duplicated block: B:129:0x030c, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    public final void g(XmlPullParser xmlPullParser) {
        boolean z;
        String str;
        int i;
        String str2;
        String str3;
        kha khaVar;
        float fD;
        float fD2;
        String str4;
        String str5;
        String str6;
        String str7;
        rn9 rn9Var;
        int i2;
        int i3;
        String str8;
        Object obj;
        l7a l7aVar;
        String str9;
        String str10;
        String str11;
        String str12;
        String str13;
        while (true) {
            int i4 = 2;
            if (l(xmlPullParser) != 2) {
                return;
            }
            if (i(xmlPullParser) == 2) {
                if ("Creative".equals(xmlPullParser.getName())) {
                    String str14 = null;
                    String str15 = TtmlNode.ATTR_ID;
                    String attributeValue = xmlPullParser.getAttributeValue(null, TtmlNode.ATTR_ID);
                    Object obj2 = null;
                    String str16 = null;
                    String str17 = null;
                    boolean z2 = false;
                    int i5 = 0;
                    while (l(xmlPullParser) == i4) {
                        if (i(xmlPullParser) == i4) {
                            String name = xmlPullParser.getName();
                            boolean zEquals = "CreativeExtensions".equals(name);
                            String str18 = ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY;
                            if (zEquals) {
                                while (l(xmlPullParser) == i4) {
                                    if (i(xmlPullParser) == i4) {
                                        if ("CreativeExtension".equals(xmlPullParser.getName())) {
                                            String attributeValue2 = xmlPullParser.getAttributeValue(str14, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
                                            if ("adChoices".equals(attributeValue2)) {
                                                y14.r(str14, "VastParser: Found adChoices for creative (id = " + attributeValue + ")");
                                                String strA = a(m(xmlPullParser));
                                                if (TextUtils.isEmpty(strA)) {
                                                    y14.u(str14, "VastParser: Error: VAST adChoices declared but it's content is empty");
                                                } else if (obj2 != null) {
                                                    y14.u(str14, "VastParser: Error: VAST adChoices declared but it's content is empty for creativeId = " + attributeValue);
                                                } else {
                                                    try {
                                                        q qVarA = n1.a(new JSONObject(strA));
                                                        y14.r(str14, "VastParser: Parsed adChoices for creative (id = " + attributeValue + ")");
                                                        obj2 = qVarA;
                                                    } catch (JSONException e) {
                                                        y14.u(str14, "VastParser: VAST adChoices json error: " + e.getMessage());
                                                        obj2 = str14;
                                                    }
                                                }
                                            } else if ("adDisclaimer".equals(attributeValue2)) {
                                                y14.r(str14, "VastParser: Found adDisclaimer for creative (id = " + attributeValue + ")");
                                                String strM = m(xmlPullParser);
                                                if (TextUtils.isEmpty(strM)) {
                                                    y14.u(str14, "VastParser: Error: VAST adDisclaimer declared but it's content is empty");
                                                } else if (str16 != null) {
                                                    y14.u(str14, "VastParser: Error: VAST duplicate adDisclaimer for creativeId = " + attributeValue);
                                                } else {
                                                    str16 = strM;
                                                }
                                            } else if ("adAgeRestriction".equals(attributeValue2)) {
                                                y14.r(str14, "VastParser: Found adAgeRestrictions for creative (id = " + attributeValue + ")");
                                                String strM2 = m(xmlPullParser);
                                                if (TextUtils.isEmpty(strM2)) {
                                                    y14.u(str14, "VastParser: Error: VAST ageRestrictions declared but it's content is empty");
                                                } else if (str17 != null) {
                                                    y14.u(str14, "VastParser: Error: VAST duplicate ageRestrictions for creativeId = " + attributeValue);
                                                } else {
                                                    str17 = strM2;
                                                }
                                            } else {
                                                n(xmlPullParser);
                                            }
                                        } else {
                                            n(xmlPullParser);
                                        }
                                    }
                                }
                            } else {
                                boolean z3 = true;
                                String str19 = "TrackingEvents";
                                if ("Linear".equals(name)) {
                                    if (this.h) {
                                        khaVar = null;
                                    } else {
                                        khaVar = new kha(pp9.d);
                                        khaVar.B = attributeValue != null ? attributeValue : "";
                                    }
                                    z = z2;
                                    String attributeValue3 = xmlPullParser.getAttributeValue(null, "skipoffset");
                                    while (true) {
                                        i5 = i5;
                                        if (l(xmlPullParser) == 2) {
                                            String name2 = xmlPullParser.getName();
                                            str17 = str17;
                                            if (i(xmlPullParser) == 2) {
                                                if ("Duration".equals(name2)) {
                                                    if (khaVar != null) {
                                                        try {
                                                            fD = d(m(xmlPullParser));
                                                        } catch (Throwable unused) {
                                                            fD = 0.0f;
                                                        }
                                                        if (fD > 0.0f) {
                                                            khaVar.z = fD;
                                                            if (attributeValue3 == null) {
                                                                fD2 = -1.0f;
                                                            } else if (attributeValue3.contains("%")) {
                                                                int i6 = Integer.parseInt(attributeValue3.substring(0, attributeValue3.length() - 1));
                                                                y14.r(null, "VastParser: Linear skipoffset is " + attributeValue3 + " [%]");
                                                                fD2 = (khaVar.z / 100.0f) * ((float) i6);
                                                            } else if (attributeValue3.contains(StringUtils.PROCESS_POSTFIX_DELIMITER)) {
                                                                try {
                                                                    fD2 = d(attributeValue3);
                                                                } catch (Throwable unused2) {
                                                                    StringBuilder sbD = n7.d("VastParser: Failed to convert ISO time skipoffset string ", attributeValue3, " with banner id ");
                                                                    sbD.append(khaVar.B);
                                                                    y14.w(null, sbD.toString());
                                                                    fD2 = -1.0f;
                                                                }
                                                            } else {
                                                                fD2 = -1.0f;
                                                            }
                                                            if (fD2 > 0.0f) {
                                                                khaVar.f0 = fD2;
                                                            }
                                                        }
                                                    }
                                                } else if (str19.equals(name2)) {
                                                    c(xmlPullParser, khaVar, false);
                                                } else {
                                                    if (!"MediaFiles".equals(name2)) {
                                                        str4 = attributeValue3;
                                                        str19 = str19;
                                                        str3 = str15;
                                                        obj2 = obj2;
                                                        str = str16;
                                                        str5 = str18;
                                                        if ("VideoClicks".equals(name2)) {
                                                            while (l(xmlPullParser) == 2) {
                                                                if (i(xmlPullParser) == 2) {
                                                                    String name3 = xmlPullParser.getName();
                                                                    if ("ClickThrough".equals(name3)) {
                                                                        if (khaVar != null) {
                                                                            String strM3 = m(xmlPullParser);
                                                                            if (!TextUtils.isEmpty(strM3)) {
                                                                                khaVar.F = a(strM3);
                                                                            }
                                                                        }
                                                                    } else if ("ClickTracking".equals(name3)) {
                                                                        String strM4 = m(xmlPullParser);
                                                                        if (!TextUtils.isEmpty(strM4)) {
                                                                            this.d.add(new m2a("click", strM4, false));
                                                                        }
                                                                    } else {
                                                                        n(xmlPullParser);
                                                                    }
                                                                }
                                                            }
                                                        } else {
                                                            n(xmlPullParser);
                                                        }
                                                    } else if (khaVar != null) {
                                                        String str20 = "bitrate";
                                                        str4 = attributeValue3;
                                                        String str21 = "MediaFile";
                                                        if (!"instreamads".equals(this.a.f)) {
                                                            str = str16;
                                                            if (!"fullscreen".equals(this.a.f) && !AdFormat.REWARDED.equals(this.a.f)) {
                                                                if ("instreamaudioads".equals(this.a.f)) {
                                                                    while (l(xmlPullParser) == 2) {
                                                                        if (i(xmlPullParser) == 2) {
                                                                            if ("MediaFile".equals(xmlPullParser.getName())) {
                                                                                String attributeValue4 = xmlPullParser.getAttributeValue(null, str18);
                                                                                String attributeValue5 = xmlPullParser.getAttributeValue(null, "bitrate");
                                                                                String strA2 = a(m(xmlPullParser));
                                                                                if (TextUtils.isEmpty(attributeValue4) || TextUtils.isEmpty(strA2)) {
                                                                                    str8 = str19;
                                                                                    obj = obj2;
                                                                                } else {
                                                                                    obj = obj2;
                                                                                    str8 = str19;
                                                                                    if (attributeValue4.toLowerCase(Locale.ROOT).trim().startsWith(MimeTypes.BASE_TYPE_AUDIO)) {
                                                                                        if (attributeValue5 != null) {
                                                                                            try {
                                                                                                Integer.parseInt(attributeValue5);
                                                                                            } catch (Throwable unused3) {
                                                                                            }
                                                                                        }
                                                                                        l7aVar = new l7a(strA2);
                                                                                    }
                                                                                    if (l7aVar == null) {
                                                                                        y14.r(null, "VastParser: Skipping unsupported VAST file (mimetype=" + attributeValue4 + ",url=" + strA2);
                                                                                    } else {
                                                                                        khaVar.h0 = l7aVar;
                                                                                    }
                                                                                    obj2 = obj;
                                                                                    str19 = str8;
                                                                                }
                                                                                l7aVar = null;
                                                                                if (l7aVar == null) {
                                                                                    y14.r(null, "VastParser: Skipping unsupported VAST file (mimetype=" + attributeValue4 + ",url=" + strA2);
                                                                                } else {
                                                                                    khaVar.h0 = l7aVar;
                                                                                }
                                                                                obj2 = obj;
                                                                                str19 = str8;
                                                                            } else {
                                                                                n(xmlPullParser);
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                                str19 = str19;
                                                                obj2 = obj2;
                                                                str3 = str15;
                                                                str5 = str18;
                                                            }
                                                            if (khaVar.h0 == null) {
                                                                y14.r(null, "VastParser: Unable to find valid mediafile!");
                                                                break;
                                                            }
                                                        } else {
                                                            str = str16;
                                                        }
                                                        ArrayList arrayList = new ArrayList();
                                                        while (l(xmlPullParser) == 2) {
                                                            if (i(xmlPullParser) == 2) {
                                                                if (str21.equals(xmlPullParser.getName())) {
                                                                    String attributeValue6 = xmlPullParser.getAttributeValue(null, str18);
                                                                    String attributeValue7 = xmlPullParser.getAttributeValue(null, str20);
                                                                    String str22 = str21;
                                                                    String attributeValue8 = xmlPullParser.getAttributeValue(null, TJAdUnitConstants.String.WIDTH);
                                                                    String attributeValue9 = xmlPullParser.getAttributeValue(null, TJAdUnitConstants.String.HEIGHT);
                                                                    String strA3 = a(m(xmlPullParser));
                                                                    if (TextUtils.isEmpty(attributeValue6) || TextUtils.isEmpty(strA3)) {
                                                                        str6 = str20;
                                                                        str7 = str18;
                                                                    } else {
                                                                        String[] strArr = o;
                                                                        str6 = str20;
                                                                        str7 = str18;
                                                                        int i7 = 0;
                                                                        while (true) {
                                                                            if (i7 < 3) {
                                                                                if (strArr[i7].equals(attributeValue6)) {
                                                                                    if (attributeValue8 != null) {
                                                                                        try {
                                                                                            i2 = Integer.parseInt(attributeValue8);
                                                                                        } catch (Throwable unused4) {
                                                                                            i2 = 0;
                                                                                            i3 = 0;
                                                                                            if (i2 <= 0) {
                                                                                            }
                                                                                            rn9Var = null;
                                                                                            if (rn9Var == null) {
                                                                                                StringBuilder sbD2 = ad2.d("VastParser: Skipping unsupported VAST file (mimeType=", attributeValue6, ",width=", attributeValue8, ",height=");
                                                                                                sbD2.append(attributeValue9);
                                                                                                sbD2.append(",url=");
                                                                                                sbD2.append(strA3);
                                                                                                y14.r(null, sbD2.toString());
                                                                                            } else {
                                                                                                arrayList.add(rn9Var);
                                                                                            }
                                                                                            str21 = str22;
                                                                                            str20 = str6;
                                                                                            str18 = str7;
                                                                                            str15 = str15;
                                                                                        }
                                                                                    } else {
                                                                                        i2 = 0;
                                                                                    }
                                                                                    if (attributeValue9 != null) {
                                                                                        try {
                                                                                            i3 = Integer.parseInt(attributeValue9);
                                                                                        } catch (Throwable unused5) {
                                                                                            i3 = 0;
                                                                                        }
                                                                                    } else {
                                                                                        i3 = 0;
                                                                                    }
                                                                                    if (attributeValue7 != null) {
                                                                                        try {
                                                                                            Integer.parseInt(attributeValue7);
                                                                                        } catch (Throwable unused6) {
                                                                                        }
                                                                                    }
                                                                                    if (i2 <= 0 && i3 > 0) {
                                                                                        str15 = str15;
                                                                                        rn9Var = new rn9(strA3, i2, i3);
                                                                                    }
                                                                                    if (rn9Var == null) {
                                                                                        StringBuilder sbD3 = ad2.d("VastParser: Skipping unsupported VAST file (mimeType=", attributeValue6, ",width=", attributeValue8, ",height=");
                                                                                        sbD3.append(attributeValue9);
                                                                                        sbD3.append(",url=");
                                                                                        sbD3.append(strA3);
                                                                                        y14.r(null, sbD3.toString());
                                                                                    } else {
                                                                                        arrayList.add(rn9Var);
                                                                                    }
                                                                                    str21 = str22;
                                                                                    str20 = str6;
                                                                                    str18 = str7;
                                                                                    str15 = str15;
                                                                                } else {
                                                                                    i7++;
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    rn9Var = null;
                                                                    if (rn9Var == null) {
                                                                        StringBuilder sbD4 = ad2.d("VastParser: Skipping unsupported VAST file (mimeType=", attributeValue6, ",width=", attributeValue8, ",height=");
                                                                        sbD4.append(attributeValue9);
                                                                        sbD4.append(",url=");
                                                                        sbD4.append(strA3);
                                                                        y14.r(null, sbD4.toString());
                                                                    } else {
                                                                        arrayList.add(rn9Var);
                                                                    }
                                                                    str21 = str22;
                                                                    str20 = str6;
                                                                    str18 = str7;
                                                                    str15 = str15;
                                                                } else {
                                                                    n(xmlPullParser);
                                                                }
                                                            }
                                                        }
                                                        str3 = str15;
                                                        str5 = str18;
                                                        khaVar.h0 = rn9.a(arrayList);
                                                        if (khaVar.h0 == null) {
                                                            y14.r(null, "VastParser: Unable to find valid mediafile!");
                                                            break;
                                                        }
                                                    }
                                                    attributeValue3 = str4;
                                                    str16 = str;
                                                    obj2 = obj2;
                                                    str19 = str19;
                                                    str18 = str5;
                                                    str15 = str3;
                                                }
                                            }
                                        } else {
                                            str17 = str17;
                                        }
                                        str3 = str15;
                                        obj2 = obj2;
                                        str = str16;
                                        break;
                                    }
                                    if (khaVar == null) {
                                        str2 = null;
                                    } else if (khaVar.z <= 0.0f) {
                                        str2 = null;
                                        y14.u(null, "VastParser: Error: VAST has no valid Duration with banner id " + khaVar.B);
                                    } else if (khaVar.h0 != null) {
                                        this.g.add(khaVar);
                                        z2 = true;
                                        i5 = i5;
                                        str17 = str17;
                                        str16 = str;
                                        obj2 = obj2;
                                        str15 = str3;
                                        i4 = 2;
                                        str14 = null;
                                    } else {
                                        str2 = null;
                                        y14.u(null, "VastParser: Error: VAST has no valid mediaData with banner id " + khaVar.B);
                                    }
                                    i = 2;
                                    str14 = str2;
                                    str15 = str3;
                                    i4 = i;
                                    z2 = z;
                                    i5 = i5;
                                    str16 = str;
                                    obj2 = obj2;
                                } else {
                                    String str23 = "TrackingEvents";
                                    String str24 = str15;
                                    z = z2;
                                    i5 = i5;
                                    obj2 = obj2;
                                    str = str16;
                                    String str25 = str17;
                                    str2 = null;
                                    if (name == null || !name.equals("CompanionAds")) {
                                        str3 = str24;
                                        i = 2;
                                        n(xmlPullParser);
                                        str17 = str25;
                                        str14 = str2;
                                        str15 = str3;
                                        i4 = i;
                                        z2 = z;
                                        i5 = i5;
                                        str16 = str;
                                        obj2 = obj2;
                                    } else {
                                        String attributeValue10 = xmlPullParser.getAttributeValue(null, "required");
                                        if (attributeValue10 != null && !TtmlNode.COMBINE_ALL.equals(attributeValue10) && !"any".equals(attributeValue10) && !"none".equals(attributeValue10)) {
                                            y14.u(null, "VastParser: Error: Wrong companion required attribute: " + attributeValue10 + "with banner id " + attributeValue);
                                        }
                                        int size = this.f.size();
                                        while (l(xmlPullParser) == 2) {
                                            if (i(xmlPullParser) != 2) {
                                                str10 = str24;
                                            } else {
                                                String name4 = xmlPullParser.getName();
                                                if (name4 == null || !name4.equals("Companion")) {
                                                    str9 = str23;
                                                    str10 = str24;
                                                    n(xmlPullParser);
                                                } else {
                                                    String attributeValue11 = xmlPullParser.getAttributeValue(null, TJAdUnitConstants.String.WIDTH);
                                                    String attributeValue12 = xmlPullParser.getAttributeValue(null, TJAdUnitConstants.String.HEIGHT);
                                                    str10 = str24;
                                                    String attributeValue13 = xmlPullParser.getAttributeValue(null, str10);
                                                    g1a g1aVar = new g1a();
                                                    if (attributeValue13 == null) {
                                                        attributeValue13 = "";
                                                    }
                                                    g1aVar.B = attributeValue13;
                                                    try {
                                                        g1aVar.x = Integer.parseInt(attributeValue11);
                                                        g1aVar.y = Integer.parseInt(attributeValue12);
                                                        str11 = null;
                                                    } catch (Throwable unused7) {
                                                        str11 = null;
                                                        y14.u(null, "VastParser: Error: Unable  to convert required companion attributes, width = " + attributeValue11 + " height = " + attributeValue12);
                                                    }
                                                    String attributeValue14 = xmlPullParser.getAttributeValue(str11, "assetWidth");
                                                    String attributeValue15 = xmlPullParser.getAttributeValue(str11, "assetHeight");
                                                    try {
                                                        if (!TextUtils.isEmpty(attributeValue14)) {
                                                            Integer.parseInt(attributeValue14);
                                                        }
                                                        if (!TextUtils.isEmpty(attributeValue15)) {
                                                            Integer.parseInt(attributeValue15);
                                                        }
                                                        str12 = null;
                                                    } catch (Throwable th) {
                                                        str12 = null;
                                                        fg.e(null, new StringBuilder("VastParser: Wrong VAST asset dimensions - "), th);
                                                    }
                                                    String attributeValue16 = xmlPullParser.getAttributeValue(str12, "expandedWidth");
                                                    String attributeValue17 = xmlPullParser.getAttributeValue(str12, "expandedHeight");
                                                    try {
                                                        if (!TextUtils.isEmpty(attributeValue16)) {
                                                            Integer.parseInt(attributeValue16);
                                                        }
                                                        if (!TextUtils.isEmpty(attributeValue17)) {
                                                            Integer.parseInt(attributeValue17);
                                                        }
                                                        str13 = null;
                                                    } catch (Throwable th2) {
                                                        str13 = null;
                                                        fg.e(null, new StringBuilder("VastParser: Wrong VAST expanded dimensions "), th2);
                                                    }
                                                    xmlPullParser.getAttributeValue(str13, "adSlotID");
                                                    xmlPullParser.getAttributeValue(str13, "apiFramework");
                                                    this.f.add(g1aVar);
                                                    while (l(xmlPullParser) == 2) {
                                                        String name5 = xmlPullParser.getName();
                                                        if ("StaticResource".equals(name5)) {
                                                            g1aVar.R = y14.f(m(xmlPullParser));
                                                        } else if ("HTMLResource".equals(name5)) {
                                                            g1aVar.S = y14.f(m(xmlPullParser));
                                                        } else if ("IFrameResource".equals(name5)) {
                                                            y14.f(m(xmlPullParser));
                                                        } else if ("CompanionClickThrough".equals(name5)) {
                                                            String strM5 = m(xmlPullParser);
                                                            if (!TextUtils.isEmpty(strM5)) {
                                                                g1aVar.F = a(strM5);
                                                            }
                                                        } else if ("CompanionClickTracking".equals(name5)) {
                                                            String strM6 = m(xmlPullParser);
                                                            if (!TextUtils.isEmpty(strM6)) {
                                                                g1aVar.a.c(new m2a("click", strM6, false));
                                                            }
                                                        } else {
                                                            String str26 = str23;
                                                            if (str26.equals(name5)) {
                                                                c(xmlPullParser, g1aVar, z3);
                                                                str23 = str26;
                                                            } else {
                                                                n(xmlPullParser);
                                                                str23 = str26;
                                                                z3 = true;
                                                            }
                                                        }
                                                    }
                                                }
                                                str23 = str9;
                                                str24 = str10;
                                                z3 = true;
                                            }
                                            str9 = str23;
                                            str23 = str9;
                                            str24 = str10;
                                            z3 = true;
                                        }
                                        int size2 = this.f.size() - size;
                                        y14.r(null, "VastParser: parsed " + size2 + " companion banners");
                                        str14 = null;
                                        str15 = str24;
                                        i4 = 2;
                                        z2 = z;
                                        str17 = str25;
                                        str16 = str;
                                        obj2 = obj2;
                                        i5 = size2;
                                    }
                                }
                            }
                        }
                        z = z2;
                        i5 = i5;
                        obj2 = obj2;
                        str = str16;
                        i = i4;
                        str2 = str14;
                        str3 = str15;
                        str14 = str2;
                        str15 = str3;
                        i4 = i;
                        z2 = z;
                        i5 = i5;
                        str16 = str;
                        obj2 = obj2;
                    }
                    boolean z4 = z2;
                    int i8 = i5;
                    q qVar = obj2;
                    String str27 = str16;
                    String str28 = str17;
                    ArrayList arrayList2 = this.f;
                    if (z4) {
                        kha khaVar2 = (kha) dd2.b(1, this.g);
                        if (qVar != 0) {
                            khaVar2.H = qVar;
                        }
                        if (str27 != null) {
                            khaVar2.f = str27;
                        }
                        if (str28 != null) {
                            khaVar2.g = str28;
                        }
                    } else {
                        for (int size3 = arrayList2.size() - i8; size3 < arrayList2.size(); size3++) {
                            g1a g1aVar2 = (g1a) arrayList2.get(size3);
                            if (qVar != 0) {
                                g1aVar2.H = qVar;
                            }
                            if (str27 != null) {
                                g1aVar2.f = str27;
                            }
                            if (str28 != null) {
                                g1aVar2.g = str28;
                            }
                        }
                    }
                } else {
                    n(xmlPullParser);
                }
            }
        }
    }

    public final void h(XmlPullParser xmlPullParser) {
        fv9 fv9VarA;
        while (l(xmlPullParser) == 2) {
            if (i(xmlPullParser) == 2) {
                if ("Extension".equals(xmlPullParser.getName())) {
                    String attributeValue = xmlPullParser.getAttributeValue(null, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
                    if ("linkTxt".equals(attributeValue)) {
                        String strM = m(xmlPullParser);
                        this.i = y14.f(strM);
                        y14.r(null, "VastParser: VAST linkTxt raw text: " + strM);
                    } else if ("erid".equals(attributeValue)) {
                        this.m = y14.f(m(xmlPullParser));
                        i01.d(new StringBuilder("VastParser: ERID text: "), this.m, null);
                    } else if ("yandex_ad_info".equals(attributeValue)) {
                        String strM2 = m(xmlPullParser);
                        if (TextUtils.isEmpty(strM2)) {
                            fv9VarA = null;
                        } else {
                            try {
                                fv9VarA = new f9a().a(new JSONObject(strM2));
                                y14.r(null, "VastParser: Parsed yandex_ad_info: " + fv9VarA);
                            } catch (JSONException e) {
                                y14.r(null, "VastParser: Failed to parse yandex_ad_info: " + e);
                                fv9VarA = null;
                            }
                        }
                        if (fv9VarA != null) {
                            this.j = fv9VarA.a.c;
                            List list = fv9VarA.b.a;
                            if (list != null && !list.isEmpty()) {
                                h14.a(((fv9.a.C0187a) list.get(0)).b, ((fv9.a.C0187a) list.get(0)).c, ((fv9.a.C0187a) list.get(0)).a);
                                this.k = new k5a();
                            }
                        }
                        y14.r(null, "VastParser: VAST yandex_ad_info additional text: " + this.j);
                        y14.r(null, "VastParser: VAST yandex_ad_info postView: " + this.k);
                    }
                    n(xmlPullParser);
                } else {
                    n(xmlPullParser);
                }
            }
        }
    }

    public final void j(XmlPullParser xmlPullParser) {
        String strM = m(xmlPullParser);
        if (TextUtils.isEmpty(strM)) {
            return;
        }
        this.c.add(new m2a("playbackStarted", strM, false));
        i01.d(new StringBuilder("VastParser: Impression tracker url for wrapper - "), strM, null);
    }
}
