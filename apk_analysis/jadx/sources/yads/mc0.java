package yads;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.messaging.Constants;
import com.tapjoy.TJAdUnitConstants;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xml.sax.helpers.DefaultHandler;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: loaded from: classes6.dex */
public final class mc0 extends DefaultHandler implements it4 {
    public static final Pattern b = Pattern.compile("(\\d+)(?:/(\\d+))?");
    public static final Pattern c = Pattern.compile("CC([1-4])=.*");
    public static final Pattern d = Pattern.compile("([1-9]|[1-5][0-9]|6[0-3])=.*");
    public static final int[] e = {-1, 1, 2, 3, 4, 5, 6, 8, 2, 3, 4, 7, 8, 24, 8, 12, 10, 12, 14, 12, 14};
    public final XmlPullParserFactory a;

    public mc0() {
        try {
            this.a = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e2) {
            defpackage.mg.e("Couldn't create XmlPullParserFactory instance", e2);
            throw null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:157:0x0374  */
    /* JADX WARN: Code duplicated, block: B:175:0x03dc  */
    /* JADX WARN: Code duplicated, block: B:220:0x053f  */
    /* JADX WARN: Code duplicated, block: B:284:0x07bd  */
    /* JADX WARN: Code duplicated, block: B:334:0x0a68 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:335:0x0a6a  */
    /* JADX WARN: Code duplicated, block: B:337:0x0a72  */
    /* JADX WARN: Code duplicated, block: B:339:0x0a7a  */
    /* JADX WARN: Code duplicated, block: B:340:0x0a80  */
    /* JADX WARN: Code duplicated, block: B:343:0x0a91  */
    /* JADX WARN: Code duplicated, block: B:349:0x0aaf  */
    /* JADX WARN: Code duplicated, block: B:351:0x0abd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:353:0x0ac3  */
    /* JADX WARN: Code duplicated, block: B:355:0x0acb  */
    /* JADX WARN: Code duplicated, block: B:356:0x0acf  */
    /* JADX WARN: Code duplicated, block: B:359:0x0ade  */
    /* JADX WARN: Code duplicated, block: B:365:0x0afc  */
    /* JADX WARN: Code duplicated, block: B:370:0x0b0f  */
    /* JADX WARN: Code duplicated, block: B:373:0x0b1d  */
    /* JADX WARN: Code duplicated, block: B:375:0x0b29  */
    /* JADX WARN: Code duplicated, block: B:379:0x0b35  */
    /* JADX WARN: Code duplicated, block: B:382:0x0b3c  */
    /* JADX WARN: Code duplicated, block: B:395:0x0b80  */
    /* JADX WARN: Code duplicated, block: B:397:0x0b85  */
    /* JADX WARN: Code duplicated, block: B:401:0x0b9c  */
    /* JADX WARN: Code duplicated, block: B:403:0x0bb2  */
    /* JADX WARN: Code duplicated, block: B:410:0x0bc3  */
    /* JADX WARN: Code duplicated, block: B:417:0x0be2  */
    /* JADX WARN: Code duplicated, block: B:419:0x0bf2  */
    /* JADX WARN: Code duplicated, block: B:422:0x0bf8  */
    /* JADX WARN: Code duplicated, block: B:424:0x0bff  */
    /* JADX WARN: Code duplicated, block: B:425:0x0c02  */
    /* JADX WARN: Code duplicated, block: B:428:0x0c0b  */
    /* JADX WARN: Code duplicated, block: B:429:0x0c0f  */
    /* JADX WARN: Code duplicated, block: B:432:0x0c18  */
    /* JADX WARN: Code duplicated, block: B:433:0x0c1c  */
    /* JADX WARN: Code duplicated, block: B:436:0x0c25  */
    /* JADX WARN: Code duplicated, block: B:437:0x0c29  */
    /* JADX WARN: Code duplicated, block: B:440:0x0c32  */
    /* JADX WARN: Code duplicated, block: B:441:0x0c36  */
    /* JADX WARN: Code duplicated, block: B:444:0x0c3f  */
    /* JADX WARN: Code duplicated, block: B:445:0x0c42  */
    /* JADX WARN: Code duplicated, block: B:448:0x0c4b  */
    /* JADX WARN: Code duplicated, block: B:449:0x0c4d  */
    /* JADX WARN: Code duplicated, block: B:452:0x0c56  */
    /* JADX WARN: Code duplicated, block: B:453:0x0c58  */
    /* JADX WARN: Code duplicated, block: B:456:0x0c5f  */
    /* JADX WARN: Code duplicated, block: B:457:0x0c61  */
    /* JADX WARN: Code duplicated, block: B:460:0x0c6a  */
    /* JADX WARN: Code duplicated, block: B:461:0x0c6c  */
    /* JADX WARN: Code duplicated, block: B:464:0x0c73  */
    /* JADX WARN: Code duplicated, block: B:465:0x0c76  */
    /* JADX WARN: Code duplicated, block: B:468:0x0c7f  */
    /* JADX WARN: Code duplicated, block: B:469:0x0c81  */
    /* JADX WARN: Code duplicated, block: B:472:0x0c8b  */
    /* JADX WARN: Code duplicated, block: B:473:0x0c8d  */
    /* JADX WARN: Code duplicated, block: B:476:0x0c97  */
    /* JADX WARN: Code duplicated, block: B:478:0x0c9b  */
    /* JADX WARN: Code duplicated, block: B:479:0x0c9d  */
    /* JADX WARN: Code duplicated, block: B:480:0x0c9f  */
    /* JADX WARN: Code duplicated, block: B:481:0x0ca2  */
    /* JADX WARN: Code duplicated, block: B:482:0x0ca5  */
    /* JADX WARN: Code duplicated, block: B:483:0x0ca8  */
    /* JADX WARN: Code duplicated, block: B:484:0x0cab  */
    /* JADX WARN: Code duplicated, block: B:485:0x0cad  */
    /* JADX WARN: Code duplicated, block: B:486:0x0cb0  */
    /* JADX WARN: Code duplicated, block: B:487:0x0cb2  */
    /* JADX WARN: Code duplicated, block: B:488:0x0cb5  */
    /* JADX WARN: Code duplicated, block: B:489:0x0cb8  */
    /* JADX WARN: Code duplicated, block: B:495:0x0ccc  */
    /* JADX WARN: Code duplicated, block: B:497:0x0ce2  */
    /* JADX WARN: Code duplicated, block: B:500:0x0cea  */
    /* JADX WARN: Code duplicated, block: B:502:0x0cf1  */
    /* JADX WARN: Code duplicated, block: B:503:0x0cf4  */
    /* JADX WARN: Code duplicated, block: B:506:0x0cfd  */
    /* JADX WARN: Code duplicated, block: B:507:0x0d01  */
    /* JADX WARN: Code duplicated, block: B:510:0x0d0a  */
    /* JADX WARN: Code duplicated, block: B:511:0x0d0e  */
    /* JADX WARN: Code duplicated, block: B:514:0x0d17  */
    /* JADX WARN: Code duplicated, block: B:515:0x0d1b  */
    /* JADX WARN: Code duplicated, block: B:518:0x0d24  */
    /* JADX WARN: Code duplicated, block: B:519:0x0d28  */
    /* JADX WARN: Code duplicated, block: B:522:0x0d31  */
    /* JADX WARN: Code duplicated, block: B:523:0x0d34  */
    /* JADX WARN: Code duplicated, block: B:526:0x0d3d  */
    /* JADX WARN: Code duplicated, block: B:527:0x0d3f  */
    /* JADX WARN: Code duplicated, block: B:530:0x0d48  */
    /* JADX WARN: Code duplicated, block: B:531:0x0d4a  */
    /* JADX WARN: Code duplicated, block: B:534:0x0d51  */
    /* JADX WARN: Code duplicated, block: B:535:0x0d53  */
    /* JADX WARN: Code duplicated, block: B:538:0x0d5c  */
    /* JADX WARN: Code duplicated, block: B:539:0x0d5e  */
    /* JADX WARN: Code duplicated, block: B:542:0x0d65  */
    /* JADX WARN: Code duplicated, block: B:543:0x0d68  */
    /* JADX WARN: Code duplicated, block: B:546:0x0d71  */
    /* JADX WARN: Code duplicated, block: B:547:0x0d73  */
    /* JADX WARN: Code duplicated, block: B:550:0x0d7d  */
    /* JADX WARN: Code duplicated, block: B:551:0x0d7f  */
    /* JADX WARN: Code duplicated, block: B:554:0x0d89  */
    /* JADX WARN: Code duplicated, block: B:557:0x0d8f  */
    /* JADX WARN: Code duplicated, block: B:558:0x0d93  */
    /* JADX WARN: Code duplicated, block: B:560:0x0d99  */
    /* JADX WARN: Code duplicated, block: B:561:0x0d9d  */
    /* JADX WARN: Code duplicated, block: B:562:0x0da0  */
    /* JADX WARN: Code duplicated, block: B:563:0x0da3  */
    /* JADX WARN: Code duplicated, block: B:564:0x0da7  */
    /* JADX WARN: Code duplicated, block: B:565:0x0daa  */
    /* JADX WARN: Code duplicated, block: B:566:0x0daf  */
    /* JADX WARN: Code duplicated, block: B:567:0x0db3  */
    /* JADX WARN: Code duplicated, block: B:568:0x0db7  */
    /* JADX WARN: Code duplicated, block: B:569:0x0dba  */
    /* JADX WARN: Code duplicated, block: B:571:0x0dc6  */
    /* JADX WARN: Code duplicated, block: B:574:0x0dcb  */
    /* JADX WARN: Code duplicated, block: B:576:0x0dd2  */
    /* JADX WARN: Code duplicated, block: B:577:0x0dd4  */
    /* JADX WARN: Code duplicated, block: B:580:0x0ddd  */
    /* JADX WARN: Code duplicated, block: B:581:0x0ddf  */
    /* JADX WARN: Code duplicated, block: B:584:0x0de8  */
    /* JADX WARN: Code duplicated, block: B:585:0x0deb  */
    /* JADX WARN: Code duplicated, block: B:588:0x0df4  */
    /* JADX WARN: Code duplicated, block: B:589:0x0df6  */
    /* JADX WARN: Code duplicated, block: B:592:0x0dff  */
    /* JADX WARN: Code duplicated, block: B:593:0x0e01  */
    /* JADX WARN: Code duplicated, block: B:596:0x0e0a  */
    /* JADX WARN: Code duplicated, block: B:599:0x0e10 A[PHI: r73
      0x0e10: PHI (r73v5 java.lang.String) = (r73v2 java.lang.String), (r73v14 java.lang.String) binds: [B:597:0x0e0b, B:563:0x0da3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:600:0x0e12 A[PHI: r73
      0x0e12: PHI (r73v6 java.lang.String) = (r73v2 java.lang.String), (r73v15 java.lang.String) binds: [B:597:0x0e0b, B:560:0x0d99] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:601:0x0e15 A[PHI: r73
      0x0e15: PHI (r73v7 java.lang.String) = (r73v2 java.lang.String), (r73v17 java.lang.String) binds: [B:597:0x0e0b, B:557:0x0d8f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:602:0x0e17 A[PHI: r73
      0x0e17: PHI (r73v4 java.lang.String) = (r73v2 java.lang.String), (r73v12 java.lang.String) binds: [B:597:0x0e0b, B:566:0x0daf] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:603:0x0e1a A[PHI: r73
      0x0e1a: PHI (r73v3 java.lang.String) = (r73v2 java.lang.String), (r73v11 java.lang.String) binds: [B:597:0x0e0b, B:567:0x0db3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:605:0x0e20  */
    /* JADX WARN: Code duplicated, block: B:610:0x0e38  */
    /* JADX WARN: Code duplicated, block: B:612:0x0e48  */
    /* JADX WARN: Code duplicated, block: B:617:0x0e56  */
    /* JADX WARN: Code duplicated, block: B:619:0x0e66  */
    /* JADX WARN: Code duplicated, block: B:623:0x0e91  */
    /* JADX WARN: Code duplicated, block: B:624:0x0e9f  */
    /* JADX WARN: Code duplicated, block: B:626:0x0ead  */
    /* JADX WARN: Code duplicated, block: B:627:0x0eb5  */
    /* JADX WARN: Code duplicated, block: B:629:0x0ebb  */
    /* JADX WARN: Code duplicated, block: B:631:0x0ec3  */
    /* JADX WARN: Code duplicated, block: B:634:0x0eca  */
    /* JADX WARN: Code duplicated, block: B:643:0x0f0c  */
    /* JADX WARN: Code duplicated, block: B:645:0x0f14  */
    /* JADX WARN: Code duplicated, block: B:648:0x0f1b  */
    /* JADX WARN: Code duplicated, block: B:657:0x0f5d  */
    /* JADX WARN: Code duplicated, block: B:659:0x0f61  */
    /* JADX WARN: Code duplicated, block: B:661:0x0f6d  */
    /* JADX WARN: Code duplicated, block: B:664:0x0f78  */
    /* JADX WARN: Code duplicated, block: B:665:0x0f7b  */
    /* JADX WARN: Code duplicated, block: B:668:0x0f8a  */
    /* JADX WARN: Code duplicated, block: B:670:0x0f93  */
    /* JADX WARN: Code duplicated, block: B:673:0x0fa8  */
    /* JADX WARN: Code duplicated, block: B:675:0x0fac  */
    /* JADX WARN: Code duplicated, block: B:685:0x0fdb A[LOOP:11: B:290:0x0803->B:685:0x0fdb, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:717:0x1186  */
    /* JADX WARN: Code duplicated, block: B:719:0x1195  */
    /* JADX WARN: Code duplicated, block: B:722:0x119b  */
    /* JADX WARN: Code duplicated, block: B:725:0x11ac  */
    /* JADX WARN: Code duplicated, block: B:728:0x11b3  */
    /* JADX WARN: Code duplicated, block: B:737:0x11dc  */
    /* JADX WARN: Code duplicated, block: B:740:0x11e3  */
    /* JADX WARN: Code duplicated, block: B:745:0x120a  */
    /* JADX WARN: Code duplicated, block: B:749:0x121d  */
    /* JADX WARN: Code duplicated, block: B:752:0x1228  */
    /* JADX WARN: Code duplicated, block: B:755:0x122f  */
    /* JADX WARN: Code duplicated, block: B:766:0x1261  */
    /* JADX WARN: Code duplicated, block: B:769:0x127a  */
    /* JADX WARN: Code duplicated, block: B:770:0x1282  */
    /* JADX WARN: Code duplicated, block: B:772:0x1286  */
    /* JADX WARN: Code duplicated, block: B:777:0x12ca A[LOOP:5: B:181:0x044b->B:777:0x12ca, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:885:0x1664  */
    /* JADX WARN: Code duplicated, block: B:887:0x1668  */
    /* JADX WARN: Code duplicated, block: B:889:0x166e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:891:0x1671  */
    /* JADX WARN: Code duplicated, block: B:895:0x1682  */
    /* JADX WARN: Code duplicated, block: B:897:0x1692  */
    /* JADX WARN: Code duplicated, block: B:899:0x169a A[LOOP:1: B:45:0x00cd->B:899:0x169a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:905:0x129c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:907:0x1660 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:912:0x1176 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:916:0x11d2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:923:0x124d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:931:0x0a5c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:934:0x0b74 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:937:0x0bd3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:939:0x0bc8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:942:0x0cbe A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:948:0x0e4a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:951:0x0e68 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:952:0x0f5d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:957:0x0f5d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:962:0x0a6c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:966:0x0abf A[SYNTHETIC] */
    public static kc0 a(XmlPullParser xmlPullParser, Uri uri) throws XmlPullParserException, IOException {
        boolean z;
        boolean z2;
        long j;
        long j2;
        long j3;
        boolean z3;
        long j4;
        ArrayList arrayList;
        ArrayList arrayList2;
        long j5;
        String str;
        ArrayList arrayList3;
        long j6;
        long j7;
        ByteArrayOutputStream byteArrayOutputStream;
        String str2;
        ByteArrayOutputStream byteArrayOutputStream2;
        long j8;
        int i;
        float f;
        ArrayList arrayList4;
        long j9;
        ArrayList arrayList5;
        int i2;
        String str3;
        ArrayList arrayList6;
        long j10;
        int i3;
        String str4;
        String str5;
        ArrayList arrayList7;
        float f2;
        ArrayList arrayList8;
        String str6;
        String str7;
        ArrayList arrayList9;
        String str8;
        String str9;
        int i4;
        int i5;
        int i6;
        float f3;
        int i7;
        String str10;
        String str11;
        long j11;
        long j12;
        String str12;
        ArrayList arrayList10;
        ArrayList arrayList11;
        ArrayList arrayList12;
        ArrayList arrayList13;
        ArrayList arrayList14;
        long j13;
        long j14;
        String str13;
        ArrayList arrayList15;
        ArrayList arrayList16;
        long j15;
        ei5 ei5VarA;
        String str14;
        String str15;
        String str16;
        String strA;
        String str17;
        String[] strArrSplit;
        int length;
        int i8;
        String strA2;
        String str18;
        ei5 ei5Var;
        int i9;
        int i10;
        long j16;
        String str19;
        ArrayList arrayList17;
        ArrayList arrayList18;
        int i11;
        int i12;
        int i13;
        int i14;
        ArrayList arrayList19;
        int i15;
        int i16;
        int i17;
        int i18;
        uz2 uz2Var;
        int i19;
        int i20;
        int i21;
        kn0 kn0Var;
        String str20;
        int i22;
        int i23;
        kn0 kn0Var2;
        String str21;
        ei5 di5Var;
        ArrayList arrayList20;
        int iD;
        int i24;
        kn0 kn0Var3;
        int i25;
        String str22;
        String str23;
        byte b2;
        int i26;
        String str24;
        byte b3;
        kn0 kn0Var4;
        String str25;
        int i27;
        kn0 kn0Var5;
        String str26;
        int i28;
        int i29;
        int i30;
        String str27;
        String[] strArrSplit2;
        int length2;
        int i31;
        String strA3;
        int i32;
        ArrayList arrayList21;
        int i33;
        uz2 uz2Var2;
        String str28;
        ArrayList arrayList22;
        long j17;
        int i34;
        String str29;
        ArrayList arrayList23;
        vz2 vz2Var;
        oe3 oe3Var;
        ei5 ei5Var2;
        Object m75Var;
        int i35;
        String str30;
        int i36;
        pl2 pl2Var;
        int size;
        pl2 pl2Var2;
        int i37;
        pl2 pl2Var3;
        pl2 pl2Var4;
        String str31;
        String strNextText;
        String strNextText2;
        String strNextText3;
        String[] strArrSplit3 = new String[0];
        String str32 = null;
        String attributeValue = xmlPullParser.getAttributeValue(null, "profiles");
        if (attributeValue != null) {
            strArrSplit3 = attributeValue.split(StringUtils.COMMA);
        }
        int length3 = strArrSplit3.length;
        int i38 = 0;
        while (true) {
            z = true;
            if (i38 >= length3) {
                z2 = false;
                break;
            }
            if (strArrSplit3[i38].startsWith("urn:dvb:dash:profile:dvb-dash:")) {
                z2 = true;
                break;
            }
            i38++;
        }
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "availabilityStartTime");
        long j18 = C.TIME_UNSET;
        long jF = attributeValue2 == null ? -9223372036854775807L : u56.f(attributeValue2);
        long jA = a(xmlPullParser, "mediaPresentationDuration", C.TIME_UNSET);
        long jA2 = a(xmlPullParser, "minBufferTime", C.TIME_UNSET);
        boolean zEquals = "dynamic".equals(xmlPullParser.getAttributeValue(null, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY));
        long jA3 = zEquals ? a(xmlPullParser, "minimumUpdatePeriod", C.TIME_UNSET) : -9223372036854775807L;
        long jA4 = zEquals ? a(xmlPullParser, "timeShiftBufferDepth", C.TIME_UNSET) : -9223372036854775807L;
        long jA5 = zEquals ? a(xmlPullParser, "suggestedPresentationDelay", C.TIME_UNSET) : -9223372036854775807L;
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "publishTime");
        long jF2 = attributeValue3 == null ? -9223372036854775807L : u56.f(attributeValue3);
        long jA6 = zEquals ? 0L : -9223372036854775807L;
        ArrayList arrayListA = xt3.a(new ms(z2 ? 1 : Integer.MIN_VALUE, 1, uri.toString(), uri.toString()));
        ArrayList arrayList24 = new ArrayList();
        ArrayList arrayList25 = new ArrayList();
        long j19 = zEquals ? -9223372036854775807L : 0L;
        boolean z4 = false;
        boolean z5 = false;
        w05 w05Var = null;
        t56 t56Var = null;
        Uri uri2 = null;
        bj5 bj5Var = null;
        while (true) {
            xmlPullParser.next();
            String str33 = "BaseURL";
            if (am6.c(xmlPullParser, "BaseURL")) {
                if (!z4) {
                    jA6 = a(xmlPullParser, jA6);
                    z4 = z;
                }
                arrayList25.addAll(a(xmlPullParser, arrayListA, z2));
                arrayListA = arrayListA;
                j3 = j18;
                j19 = j19;
                z2 = z2;
                arrayList24 = arrayList24;
                z3 = false;
            } else {
                String str34 = "lang";
                if (am6.c(xmlPullParser, "ProgramInformation")) {
                    String attributeValue4 = xmlPullParser.getAttributeValue(str32, "moreInformationURL");
                    String str35 = attributeValue4 == null ? str32 : attributeValue4;
                    String attributeValue5 = xmlPullParser.getAttributeValue(str32, "lang");
                    if (attributeValue5 == null) {
                        strNextText = str32;
                        strNextText2 = strNextText;
                        strNextText3 = strNextText2;
                        str31 = strNextText3;
                    } else {
                        str31 = attributeValue5;
                        strNextText = str32;
                        strNextText2 = strNextText;
                        strNextText3 = strNextText2;
                    }
                    while (true) {
                        xmlPullParser.next();
                        j = j18;
                        if (am6.c(xmlPullParser, "Title")) {
                            strNextText = xmlPullParser.nextText();
                        } else if (am6.c(xmlPullParser, "Source")) {
                            strNextText2 = xmlPullParser.nextText();
                        } else if (am6.c(xmlPullParser, ExifInterface.TAG_COPYRIGHT)) {
                            strNextText3 = xmlPullParser.nextText();
                        } else {
                            a(xmlPullParser);
                        }
                        String str36 = strNextText;
                        String str37 = strNextText2;
                        String str38 = strNextText3;
                        if (am6.b(xmlPullParser, "ProgramInformation")) {
                            arrayListA = arrayListA;
                            j19 = j19;
                            w05Var = new w05(str36, str37, str38, str35, str31);
                        } else {
                            strNextText = str36;
                            strNextText2 = str37;
                            strNextText3 = str38;
                            j18 = j;
                        }
                    }
                } else {
                    j = j18;
                    if (am6.c(xmlPullParser, "UTCTiming")) {
                        t56Var = new t56(xmlPullParser.getAttributeValue(str32, "schemeIdUri"), xmlPullParser.getAttributeValue(str32, "value"));
                    } else {
                        if (am6.c(xmlPullParser, "Location")) {
                            uri2 = Uri.parse(o46.a(uri.toString(), xmlPullParser.nextText()));
                        } else if (am6.c(xmlPullParser, "ServiceDescription")) {
                            float f4 = -3.4028235E38f;
                            float f5 = -3.4028235E38f;
                            long j20 = j;
                            long j21 = j20;
                            long j22 = j21;
                            while (true) {
                                xmlPullParser.next();
                                if (am6.c(xmlPullParser, "Latency")) {
                                    arrayListA = arrayListA;
                                    String attributeValue6 = xmlPullParser.getAttributeValue(null, TypedValues.AttributesType.S_TARGET);
                                    j20 = attributeValue6 == null ? j : Long.parseLong(attributeValue6);
                                    String attributeValue7 = xmlPullParser.getAttributeValue(null, "min");
                                    j21 = attributeValue7 == null ? j : Long.parseLong(attributeValue7);
                                    String attributeValue8 = xmlPullParser.getAttributeValue(null, "max");
                                    j22 = attributeValue8 == null ? j : Long.parseLong(attributeValue8);
                                } else {
                                    arrayListA = arrayListA;
                                    if (am6.c(xmlPullParser, "PlaybackRate")) {
                                        String attributeValue9 = xmlPullParser.getAttributeValue(null, "min");
                                        f4 = attributeValue9 == null ? -3.4028235E38f : Float.parseFloat(attributeValue9);
                                        String attributeValue10 = xmlPullParser.getAttributeValue(null, "max");
                                        f5 = attributeValue10 == null ? -3.4028235E38f : Float.parseFloat(attributeValue10);
                                    }
                                }
                                float f6 = f4;
                                float f7 = f5;
                                long j23 = j20;
                                long j24 = j21;
                                long j25 = j22;
                                if (am6.b(xmlPullParser, "ServiceDescription")) {
                                    bj5 bj5Var2 = new bj5(j23, j24, j25, f6, f7);
                                    j19 = j19;
                                    z2 = z2;
                                    arrayList24 = arrayList24;
                                    j3 = j;
                                    bj5Var = bj5Var2;
                                    z3 = false;
                                } else {
                                    arrayListA = arrayListA;
                                    j20 = j23;
                                    j21 = j24;
                                    j22 = j25;
                                    f4 = f6;
                                    f5 = f7;
                                }
                            }
                        } else {
                            arrayListA = arrayListA;
                            if (!am6.c(xmlPullParser, "Period") || z5) {
                                j2 = jA6;
                                j19 = j19;
                                z2 = z2;
                                arrayList24 = arrayList24;
                                j3 = j;
                                z3 = false;
                                arrayList25 = arrayList25;
                                j4 = jA4;
                                a(xmlPullParser);
                            } else {
                                ArrayList arrayList26 = !arrayList25.isEmpty() ? arrayList25 : arrayListA;
                                String str39 = TtmlNode.ATTR_ID;
                                String str40 = "schemeIdUri";
                                String attributeValue11 = xmlPullParser.getAttributeValue(null, TtmlNode.ATTR_ID);
                                long jA7 = a(xmlPullParser, TtmlNode.START, j19);
                                long j26 = jF != j ? jF + jA7 : j;
                                j2 = jA6;
                                long jA8 = a(xmlPullParser, TypedValues.TransitionType.S_DURATION, j);
                                Object obj = "Period";
                                ArrayList arrayList27 = new ArrayList();
                                String str41 = "value";
                                ArrayList arrayList28 = new ArrayList();
                                ArrayList arrayList29 = new ArrayList();
                                String str42 = TypedValues.TransitionType.S_DURATION;
                                long j27 = j;
                                long jA9 = j2;
                                ei5 ei5VarA2 = null;
                                boolean z6 = false;
                                while (true) {
                                    xmlPullParser.next();
                                    if (am6.c(xmlPullParser, str33)) {
                                        if (!z6) {
                                            jA9 = a(xmlPullParser, jA9);
                                            z6 = true;
                                        }
                                        arrayList29.addAll(a(xmlPullParser, arrayList26, z2));
                                        long j28 = jA8;
                                        arrayList25 = arrayList25;
                                        j7 = j28;
                                        arrayList26 = arrayList26;
                                        str = str39;
                                        j5 = jA9;
                                        str33 = str33;
                                        z2 = z2;
                                        arrayList = arrayList29;
                                        arrayList2 = arrayList27;
                                        str34 = str34;
                                        str40 = str40;
                                        j6 = j26;
                                        arrayList3 = arrayList28;
                                        str42 = str42;
                                        j3 = C.TIME_UNSET;
                                        z3 = false;
                                        j19 = j19;
                                        j4 = jA4;
                                        arrayList24 = arrayList24;
                                    } else {
                                        arrayList = arrayList29;
                                        arrayList2 = arrayList27;
                                        String str43 = "SegmentTemplate";
                                        if (am6.c(xmlPullParser, "AdaptationSet")) {
                                            if (!arrayList.isEmpty()) {
                                                arrayList26 = arrayList;
                                            }
                                            j5 = jA9;
                                            String attributeValue12 = xmlPullParser.getAttributeValue(null, str39);
                                            int i39 = attributeValue12 == null ? -1 : Integer.parseInt(attributeValue12);
                                            String str44 = "contentType";
                                            String str45 = "AdaptationSet";
                                            String attributeValue13 = xmlPullParser.getAttributeValue(null, "contentType");
                                            boolean zIsEmpty = TextUtils.isEmpty(attributeValue13);
                                            String str46 = "text";
                                            arrayList25 = arrayList25;
                                            String str47 = MimeTypes.BASE_TYPE_VIDEO;
                                            j19 = j19;
                                            String str48 = MimeTypes.BASE_TYPE_AUDIO;
                                            if (zIsEmpty) {
                                                i = -1;
                                            } else if (MimeTypes.BASE_TYPE_AUDIO.equals(attributeValue13)) {
                                                i = 1;
                                            } else if (MimeTypes.BASE_TYPE_VIDEO.equals(attributeValue13)) {
                                                i = 2;
                                            } else if ("text".equals(attributeValue13)) {
                                                i = 3;
                                            } else {
                                                i = -1;
                                            }
                                            int i40 = i;
                                            String attributeValue14 = xmlPullParser.getAttributeValue(null, "mimeType");
                                            String attributeValue15 = xmlPullParser.getAttributeValue(null, "codecs");
                                            String attributeValue16 = xmlPullParser.getAttributeValue(null, TJAdUnitConstants.String.WIDTH);
                                            int i41 = attributeValue16 == null ? -1 : Integer.parseInt(attributeValue16);
                                            String attributeValue17 = xmlPullParser.getAttributeValue(null, TJAdUnitConstants.String.HEIGHT);
                                            int i42 = attributeValue17 == null ? -1 : Integer.parseInt(attributeValue17);
                                            String attributeValue18 = xmlPullParser.getAttributeValue(null, "frameRate");
                                            if (attributeValue18 != null) {
                                                Matcher matcher = b.matcher(attributeValue18);
                                                if (matcher.matches()) {
                                                    int i43 = Integer.parseInt(matcher.group(1));
                                                    j4 = jA4;
                                                    String strGroup = matcher.group(2);
                                                    f = !TextUtils.isEmpty(strGroup) ? i43 / Integer.parseInt(strGroup) : i43;
                                                } else {
                                                    j4 = jA4;
                                                    f = -1.0f;
                                                }
                                            } else {
                                                j4 = jA4;
                                                f = -1.0f;
                                            }
                                            float f8 = f;
                                            String attributeValue19 = xmlPullParser.getAttributeValue(null, "audioSamplingRate");
                                            int i44 = attributeValue19 == null ? -1 : Integer.parseInt(attributeValue19);
                                            String attributeValue20 = xmlPullParser.getAttributeValue(null, str34);
                                            String attributeValue21 = xmlPullParser.getAttributeValue(null, Constants.ScionAnalytics.PARAM_LABEL);
                                            ArrayList arrayList30 = new ArrayList();
                                            ArrayList arrayList31 = new ArrayList();
                                            ArrayList arrayList32 = new ArrayList();
                                            String text = attributeValue21;
                                            ArrayList arrayList33 = new ArrayList();
                                            ArrayList arrayList34 = arrayList31;
                                            ArrayList arrayList35 = new ArrayList();
                                            String str49 = "SegmentList";
                                            ArrayList arrayList36 = new ArrayList();
                                            String str50 = "SegmentBase";
                                            ArrayList arrayList37 = new ArrayList();
                                            ArrayList arrayList38 = new ArrayList();
                                            ArrayList arrayList39 = arrayList36;
                                            int i45 = i40;
                                            String str51 = str39;
                                            ArrayList arrayList40 = arrayList33;
                                            ArrayList arrayList41 = arrayList35;
                                            ei5 ei5VarA3 = ei5VarA2;
                                            long j29 = j27;
                                            long jA10 = j5;
                                            String str52 = attributeValue20;
                                            String str53 = null;
                                            boolean z7 = false;
                                            int iB = -1;
                                            while (true) {
                                                xmlPullParser.next();
                                                if (am6.c(xmlPullParser, str33)) {
                                                    if (!z7) {
                                                        jA10 = a(xmlPullParser, jA10);
                                                        z7 = true;
                                                    }
                                                    arrayList38.addAll(a(xmlPullParser, arrayList26, z2));
                                                    str46 = str46;
                                                    str44 = str44;
                                                    str47 = str47;
                                                    str48 = str48;
                                                    arrayList30 = arrayList30;
                                                    str33 = str33;
                                                    z2 = z2;
                                                    str40 = str40;
                                                    jA8 = jA8;
                                                    str42 = str42;
                                                    str43 = str43;
                                                    arrayList25 = arrayList25;
                                                    j19 = j19;
                                                    arrayList39 = arrayList39;
                                                    j4 = j4;
                                                    text = text;
                                                    arrayList34 = arrayList34;
                                                    str50 = str50;
                                                    str51 = str51;
                                                    j9 = jA10;
                                                    arrayList4 = arrayList26;
                                                    arrayList37 = arrayList37;
                                                } else {
                                                    arrayList4 = arrayList26;
                                                    if (am6.c(xmlPullParser, "ContentProtection")) {
                                                        Pair pairC = c(xmlPullParser);
                                                        j9 = jA10;
                                                        Object obj2 = pairC.first;
                                                        if (obj2 != null) {
                                                            str53 = (String) obj2;
                                                        }
                                                        Object obj3 = pairC.second;
                                                        if (obj3 != null) {
                                                            arrayList30.add((pl2) obj3);
                                                        }
                                                    } else {
                                                        j9 = jA10;
                                                        if (am6.c(xmlPullParser, "ContentComponent")) {
                                                            String attributeValue22 = xmlPullParser.getAttributeValue(null, str34);
                                                            if (str52 == null) {
                                                                str52 = attributeValue22;
                                                            } else if (attributeValue22 != null && !str52.equals(attributeValue22)) {
                                                                defpackage.ud.g();
                                                                return null;
                                                            }
                                                            String attributeValue23 = xmlPullParser.getAttributeValue(null, str44);
                                                            if (TextUtils.isEmpty(attributeValue23)) {
                                                                i32 = -1;
                                                            } else if (str48.equals(attributeValue23)) {
                                                                i32 = 1;
                                                            } else if (str47.equals(attributeValue23)) {
                                                                i32 = 2;
                                                            } else if (str46.equals(attributeValue23)) {
                                                                i32 = 3;
                                                            } else {
                                                                i32 = -1;
                                                            }
                                                            if (i45 == -1) {
                                                                str46 = str46;
                                                                str44 = str44;
                                                                str47 = str47;
                                                                str48 = str48;
                                                                arrayList30 = arrayList30;
                                                                str33 = str33;
                                                                z2 = z2;
                                                                str40 = str40;
                                                                jA8 = jA8;
                                                                str42 = str42;
                                                                str43 = str43;
                                                                arrayList25 = arrayList25;
                                                                j19 = j19;
                                                                arrayList39 = arrayList39;
                                                                j4 = j4;
                                                                text = text;
                                                                arrayList34 = arrayList34;
                                                                str50 = str50;
                                                                str51 = str51;
                                                                str34 = str34;
                                                                arrayList24 = arrayList24;
                                                                str49 = str49;
                                                                String str54 = str45;
                                                                i3 = i32;
                                                                arrayList37 = arrayList37;
                                                                ArrayList arrayList42 = arrayList38;
                                                                str52 = str52;
                                                                j26 = j26;
                                                                arrayList6 = arrayList40;
                                                                arrayList32 = arrayList32;
                                                                arrayList38 = arrayList42;
                                                                str45 = str54;
                                                            } else if (i32 != -1 && i45 != i32) {
                                                                defpackage.ud.g();
                                                                return null;
                                                            }
                                                        } else {
                                                            if (am6.c(xmlPullParser, "Role")) {
                                                                arrayList5 = arrayList40;
                                                                arrayList5.add(a(xmlPullParser, "Role"));
                                                            } else {
                                                                arrayList5 = arrayList40;
                                                                if (am6.c(xmlPullParser, "AudioChannelConfiguration")) {
                                                                    iB = b(xmlPullParser);
                                                                    str46 = str46;
                                                                    str44 = str44;
                                                                    str47 = str47;
                                                                    str48 = str48;
                                                                    arrayList30 = arrayList30;
                                                                    str33 = str33;
                                                                    z2 = z2;
                                                                    arrayList38 = arrayList38;
                                                                    str40 = str40;
                                                                    jA8 = jA8;
                                                                    str42 = str42;
                                                                    str43 = str43;
                                                                    arrayList25 = arrayList25;
                                                                    j19 = j19;
                                                                    arrayList39 = arrayList39;
                                                                    text = text;
                                                                    arrayList34 = arrayList34;
                                                                    str50 = str50;
                                                                    arrayList37 = arrayList37;
                                                                    str51 = str51;
                                                                    str52 = str52;
                                                                    str34 = str34;
                                                                    arrayList24 = arrayList24;
                                                                    str49 = str49;
                                                                    arrayList6 = arrayList5;
                                                                    j4 = j4;
                                                                    i3 = i45;
                                                                } else if (am6.c(xmlPullParser, "Accessibility")) {
                                                                    arrayList32.add(a(xmlPullParser, "Accessibility"));
                                                                } else if (am6.c(xmlPullParser, "EssentialProperty")) {
                                                                    arrayList41.add(a(xmlPullParser, "EssentialProperty"));
                                                                    arrayList32 = arrayList32;
                                                                    arrayList6 = arrayList5;
                                                                    j4 = j4;
                                                                    j10 = j29;
                                                                    i45 = i2;
                                                                    arrayList37 = arrayList37;
                                                                    j29 = j10;
                                                                    text = text;
                                                                    i3 = i45;
                                                                    str45 = str45;
                                                                } else {
                                                                    arrayList38 = arrayList38;
                                                                    ArrayList arrayList43 = arrayList41;
                                                                    if (am6.c(xmlPullParser, "SupplementalProperty")) {
                                                                        ArrayList arrayList44 = arrayList39;
                                                                        arrayList44.add(a(xmlPullParser, "SupplementalProperty"));
                                                                        str46 = str46;
                                                                        str44 = str44;
                                                                        str47 = str47;
                                                                        str48 = str48;
                                                                        arrayList30 = arrayList30;
                                                                        str33 = str33;
                                                                        arrayList41 = arrayList43;
                                                                        z2 = z2;
                                                                        i45 = i45;
                                                                        str40 = str40;
                                                                        jA8 = jA8;
                                                                        str42 = str42;
                                                                        str43 = str43;
                                                                        str45 = str45;
                                                                        arrayList25 = arrayList25;
                                                                        j19 = j19;
                                                                        arrayList34 = arrayList34;
                                                                        str50 = str50;
                                                                        arrayList37 = arrayList37;
                                                                        str51 = str51;
                                                                        arrayList39 = arrayList44;
                                                                        arrayList32 = arrayList32;
                                                                        arrayList6 = arrayList5;
                                                                        j4 = j4;
                                                                        j10 = j29;
                                                                        i45 = i2;
                                                                        arrayList37 = arrayList37;
                                                                        j29 = j10;
                                                                        text = text;
                                                                        i3 = i45;
                                                                        str45 = str45;
                                                                    } else {
                                                                        ArrayList arrayList45 = arrayList39;
                                                                        str34 = str34;
                                                                        String str55 = "EssentialProperty";
                                                                        i2 = i45;
                                                                        if (am6.c(xmlPullParser, "Representation")) {
                                                                            if (arrayList38.isEmpty()) {
                                                                                str5 = str51;
                                                                                arrayList7 = arrayList4;
                                                                            } else {
                                                                                str5 = str51;
                                                                                arrayList7 = arrayList38;
                                                                            }
                                                                            str46 = str46;
                                                                            String str56 = "SupplementalProperty";
                                                                            String attributeValue24 = xmlPullParser.getAttributeValue(null, str5);
                                                                            String str57 = str5;
                                                                            String attributeValue25 = xmlPullParser.getAttributeValue(null, "bandwidth");
                                                                            int i46 = attributeValue25 == null ? -1 : Integer.parseInt(attributeValue25);
                                                                            String attributeValue26 = xmlPullParser.getAttributeValue(null, "mimeType");
                                                                            String str58 = attributeValue26 == null ? attributeValue14 : attributeValue26;
                                                                            String attributeValue27 = xmlPullParser.getAttributeValue(null, "codecs");
                                                                            String str59 = attributeValue27 == null ? attributeValue15 : attributeValue27;
                                                                            String attributeValue28 = xmlPullParser.getAttributeValue(null, TJAdUnitConstants.String.WIDTH);
                                                                            int i47 = attributeValue28 == null ? i41 : Integer.parseInt(attributeValue28);
                                                                            String attributeValue29 = xmlPullParser.getAttributeValue(null, TJAdUnitConstants.String.HEIGHT);
                                                                            int i48 = attributeValue29 == null ? i42 : Integer.parseInt(attributeValue29);
                                                                            String attributeValue30 = xmlPullParser.getAttributeValue(null, "frameRate");
                                                                            if (attributeValue30 != null) {
                                                                                Matcher matcher2 = b.matcher(attributeValue30);
                                                                                if (matcher2.matches()) {
                                                                                    int i49 = Integer.parseInt(matcher2.group(1));
                                                                                    str44 = str44;
                                                                                    String strGroup2 = matcher2.group(2);
                                                                                    f2 = !TextUtils.isEmpty(strGroup2) ? i49 / Integer.parseInt(strGroup2) : i49;
                                                                                } else {
                                                                                    str44 = str44;
                                                                                    f2 = f8;
                                                                                }
                                                                            } else {
                                                                                str44 = str44;
                                                                                f2 = f8;
                                                                            }
                                                                            String attributeValue31 = xmlPullParser.getAttributeValue(null, "audioSamplingRate");
                                                                            int i50 = attributeValue31 == null ? i44 : Integer.parseInt(attributeValue31);
                                                                            ArrayList arrayList46 = new ArrayList();
                                                                            ArrayList arrayList47 = new ArrayList();
                                                                            ArrayList arrayList48 = new ArrayList(arrayList43);
                                                                            ArrayList arrayList49 = new ArrayList(arrayList45);
                                                                            ArrayList arrayList50 = arrayList45;
                                                                            ArrayList arrayList51 = new ArrayList();
                                                                            int i51 = i50;
                                                                            float f9 = f2;
                                                                            String str60 = str47;
                                                                            String str61 = str48;
                                                                            ei5 ei5VarA4 = ei5VarA3;
                                                                            long j30 = j29;
                                                                            int iB2 = iB;
                                                                            long jA11 = j9;
                                                                            boolean z8 = false;
                                                                            String str62 = null;
                                                                            while (true) {
                                                                                xmlPullParser.next();
                                                                                if (am6.c(xmlPullParser, str33)) {
                                                                                    if (!z8) {
                                                                                        jA11 = a(xmlPullParser, jA11);
                                                                                        z8 = true;
                                                                                    }
                                                                                    arrayList8 = arrayList48;
                                                                                    arrayList51.addAll(a(xmlPullParser, arrayList7, z2));
                                                                                } else {
                                                                                    arrayList8 = arrayList48;
                                                                                    if (am6.c(xmlPullParser, "AudioChannelConfiguration")) {
                                                                                        iB2 = b(xmlPullParser);
                                                                                    } else {
                                                                                        String str63 = str50;
                                                                                        if (am6.c(xmlPullParser, str63)) {
                                                                                            str4 = str63;
                                                                                            arrayList30 = arrayList30;
                                                                                            str33 = str33;
                                                                                            z2 = z2;
                                                                                            arrayList16 = arrayList49;
                                                                                            str40 = str40;
                                                                                            str42 = str42;
                                                                                            str3 = str43;
                                                                                            str7 = str45;
                                                                                            j19 = j19;
                                                                                            arrayList9 = arrayList34;
                                                                                            str6 = str49;
                                                                                            str8 = str52;
                                                                                            str9 = str55;
                                                                                            str13 = str56;
                                                                                            str51 = str57;
                                                                                            i4 = i46;
                                                                                            i5 = i47;
                                                                                            i6 = i48;
                                                                                            arrayList39 = arrayList50;
                                                                                            arrayList10 = arrayList47;
                                                                                            f3 = f9;
                                                                                            i7 = i51;
                                                                                            str10 = str60;
                                                                                            str11 = str61;
                                                                                            arrayList15 = arrayList8;
                                                                                            j11 = jA11;
                                                                                            arrayList41 = arrayList43;
                                                                                            arrayList24 = arrayList24;
                                                                                            j12 = jA8;
                                                                                            arrayList25 = arrayList25;
                                                                                            str12 = str58;
                                                                                            ei5VarA = a(xmlPullParser, (di5) ei5VarA4);
                                                                                            arrayList11 = arrayList51;
                                                                                            str14 = str62;
                                                                                            arrayList12 = arrayList46;
                                                                                            long j31 = j26;
                                                                                            arrayList13 = arrayList32;
                                                                                            arrayList14 = arrayList5;
                                                                                            j13 = j31;
                                                                                            j14 = j4;
                                                                                            j15 = j30;
                                                                                            iB2 = iB2;
                                                                                        } else {
                                                                                            String str64 = str49;
                                                                                            if (am6.c(xmlPullParser, str64)) {
                                                                                                ArrayList arrayList52 = arrayList30;
                                                                                                str33 = str33;
                                                                                                long jA12 = a(xmlPullParser, j30);
                                                                                                str6 = str64;
                                                                                                str4 = str63;
                                                                                                str40 = str40;
                                                                                                long j32 = j26;
                                                                                                str42 = str42;
                                                                                                str7 = str45;
                                                                                                j19 = j19;
                                                                                                arrayList9 = arrayList34;
                                                                                                arrayList30 = arrayList52;
                                                                                                str8 = str52;
                                                                                                str9 = str55;
                                                                                                str51 = str57;
                                                                                                i4 = i46;
                                                                                                i5 = i47;
                                                                                                i6 = i48;
                                                                                                f3 = f9;
                                                                                                i7 = i51;
                                                                                                str10 = str60;
                                                                                                str11 = str61;
                                                                                                arrayList13 = arrayList32;
                                                                                                arrayList41 = arrayList43;
                                                                                                arrayList14 = arrayList5;
                                                                                                ArrayList arrayList53 = arrayList49;
                                                                                                arrayList24 = arrayList24;
                                                                                                long j33 = jA8;
                                                                                                arrayList25 = arrayList25;
                                                                                                long j34 = j4;
                                                                                                str12 = str58;
                                                                                                arrayList10 = arrayList47;
                                                                                                arrayList11 = arrayList51;
                                                                                                arrayList12 = arrayList46;
                                                                                                ai5 ai5VarA = a(xmlPullParser, (ai5) ei5VarA4, j32, j33, jA11, jA12, j34);
                                                                                                j11 = jA11;
                                                                                                j12 = j33;
                                                                                                j13 = j32;
                                                                                                j15 = jA12;
                                                                                                z2 = z2;
                                                                                                str3 = str43;
                                                                                                str13 = str56;
                                                                                                arrayList39 = arrayList50;
                                                                                                arrayList16 = arrayList53;
                                                                                                arrayList15 = arrayList8;
                                                                                                j14 = j34;
                                                                                                ei5VarA = ai5VarA;
                                                                                            } else {
                                                                                                str6 = str64;
                                                                                                str4 = str63;
                                                                                                arrayList30 = arrayList30;
                                                                                                str33 = str33;
                                                                                                str40 = str40;
                                                                                                str42 = str42;
                                                                                                String str65 = str43;
                                                                                                str7 = str45;
                                                                                                j19 = j19;
                                                                                                arrayList9 = arrayList34;
                                                                                                str8 = str52;
                                                                                                str9 = str55;
                                                                                                str51 = str57;
                                                                                                i4 = i46;
                                                                                                i5 = i47;
                                                                                                i6 = i48;
                                                                                                f3 = f9;
                                                                                                i7 = i51;
                                                                                                str10 = str60;
                                                                                                str11 = str61;
                                                                                                j11 = jA11;
                                                                                                arrayList41 = arrayList43;
                                                                                                ArrayList arrayList54 = arrayList49;
                                                                                                arrayList24 = arrayList24;
                                                                                                j12 = jA8;
                                                                                                arrayList25 = arrayList25;
                                                                                                str12 = str58;
                                                                                                arrayList10 = arrayList47;
                                                                                                arrayList11 = arrayList51;
                                                                                                arrayList12 = arrayList46;
                                                                                                long j35 = j26;
                                                                                                arrayList13 = arrayList32;
                                                                                                arrayList14 = arrayList5;
                                                                                                j13 = j35;
                                                                                                long j36 = j4;
                                                                                                if (am6.c(xmlPullParser, str65)) {
                                                                                                    long jA13 = a(xmlPullParser, j30);
                                                                                                    str3 = str65;
                                                                                                    z2 = z2;
                                                                                                    j14 = j36;
                                                                                                    ArrayList arrayList55 = arrayList50;
                                                                                                    ei5VarA4 = a(xmlPullParser, (bi5) ei5VarA4, arrayList55, j13, j12, j11, jA13, j14);
                                                                                                    arrayList39 = arrayList55;
                                                                                                    j12 = j12;
                                                                                                    j13 = j13;
                                                                                                    j15 = jA13;
                                                                                                } else {
                                                                                                    str3 = str65;
                                                                                                    z2 = z2;
                                                                                                    arrayList39 = arrayList50;
                                                                                                    j14 = j36;
                                                                                                    if (am6.c(xmlPullParser, "ContentProtection")) {
                                                                                                        Pair pairC2 = c(xmlPullParser);
                                                                                                        Object obj4 = pairC2.first;
                                                                                                        if (obj4 != null) {
                                                                                                            str62 = (String) obj4;
                                                                                                        }
                                                                                                        Object obj5 = pairC2.second;
                                                                                                        if (obj5 != null) {
                                                                                                            arrayList12.add((pl2) obj5);
                                                                                                        }
                                                                                                        j15 = j30;
                                                                                                    } else {
                                                                                                        if (am6.c(xmlPullParser, "InbandEventStream")) {
                                                                                                            arrayList10.add(a(xmlPullParser, "InbandEventStream"));
                                                                                                            str13 = str56;
                                                                                                            arrayList16 = arrayList54;
                                                                                                            arrayList15 = arrayList8;
                                                                                                        } else if (am6.c(xmlPullParser, str9)) {
                                                                                                            arrayList15 = arrayList8;
                                                                                                            arrayList15.add(a(xmlPullParser, str9));
                                                                                                            str9 = str9;
                                                                                                            str13 = str56;
                                                                                                            arrayList16 = arrayList54;
                                                                                                        } else {
                                                                                                            str13 = str56;
                                                                                                            arrayList15 = arrayList8;
                                                                                                            if (am6.c(xmlPullParser, str13)) {
                                                                                                                str9 = str9;
                                                                                                                arrayList16 = arrayList54;
                                                                                                                arrayList16.add(a(xmlPullParser, str13));
                                                                                                            } else {
                                                                                                                str9 = str9;
                                                                                                                arrayList16 = arrayList54;
                                                                                                                a(xmlPullParser);
                                                                                                            }
                                                                                                        }
                                                                                                        j15 = j30;
                                                                                                        ei5VarA = ei5VarA4;
                                                                                                    }
                                                                                                }
                                                                                                str13 = str56;
                                                                                                ei5VarA = ei5VarA4;
                                                                                                arrayList16 = arrayList54;
                                                                                                arrayList15 = arrayList8;
                                                                                            }
                                                                                            str14 = str62;
                                                                                        }
                                                                                    }
                                                                                    if (am6.b(xmlPullParser, "Representation")) {
                                                                                        str15 = str11;
                                                                                        if (str15.equals(z84.c(str12))) {
                                                                                            if (str59 == null) {
                                                                                                j13 = j13;
                                                                                            } else {
                                                                                                int i52 = u56.a;
                                                                                                if (TextUtils.isEmpty(str59)) {
                                                                                                    strArrSplit2 = new String[0];
                                                                                                } else {
                                                                                                    strArrSplit2 = str59.trim().split("(\\s*,\\s*)", -1);
                                                                                                }
                                                                                                length2 = strArrSplit2.length;
                                                                                                i31 = 0;
                                                                                                while (true) {
                                                                                                    if (i31 < length2) {
                                                                                                        strA3 = z84.a(strArrSplit2[i31]);
                                                                                                        int i53 = length2;
                                                                                                        if (strA3 == null && str15.equals(z84.c(strA3))) {
                                                                                                            strA2 = strA3;
                                                                                                            str16 = str10;
                                                                                                            str17 = str12;
                                                                                                            strA = strA2;
                                                                                                        } else {
                                                                                                            i31++;
                                                                                                            length2 = i53;
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                            str17 = str12;
                                                                                            str16 = str10;
                                                                                            strA = null;
                                                                                        } else {
                                                                                            j13 = j13;
                                                                                            str16 = str10;
                                                                                            if (str16.equals(z84.c(str12))) {
                                                                                                if (str59 != null) {
                                                                                                    int i54 = u56.a;
                                                                                                    if (TextUtils.isEmpty(str59)) {
                                                                                                        strArrSplit = new String[0];
                                                                                                    } else {
                                                                                                        strArrSplit = str59.trim().split("(\\s*,\\s*)", -1);
                                                                                                    }
                                                                                                    length = strArrSplit.length;
                                                                                                    i8 = 0;
                                                                                                    while (true) {
                                                                                                        if (i8 < length) {
                                                                                                            strA2 = z84.a(strArrSplit[i8]);
                                                                                                            int i55 = length;
                                                                                                            if (strA2 == null && str16.equals(z84.c(strA2))) {
                                                                                                                str17 = str12;
                                                                                                                strA = strA2;
                                                                                                            } else {
                                                                                                                i8++;
                                                                                                                length = i55;
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                                str17 = str12;
                                                                                            } else if (z84.e(str12) && !"image".equals(z84.c(str12))) {
                                                                                                str17 = str12;
                                                                                                if (MimeTypes.APPLICATION_MP4.equals(str17)) {
                                                                                                    strA = z84.a(str59);
                                                                                                    if (MimeTypes.TEXT_VTT.equals(strA)) {
                                                                                                        strA = MimeTypes.APPLICATION_MP4VTT;
                                                                                                    }
                                                                                                }
                                                                                            } else {
                                                                                                strA = str12;
                                                                                                str17 = strA;
                                                                                            }
                                                                                            strA = null;
                                                                                        }
                                                                                        if (MimeTypes.AUDIO_E_AC3.equals(strA)) {
                                                                                            i29 = 0;
                                                                                            while (true) {
                                                                                                if (i29 < arrayList16.size()) {
                                                                                                    kn0 kn0Var6 = (kn0) arrayList16.get(i29);
                                                                                                    i30 = i29;
                                                                                                    str27 = kn0Var6.a;
                                                                                                    jA8 = j12;
                                                                                                    if (("tag:dolby.com,2018:dash:EC3_ExtensionType:2018".equals(str27) || !"JOC".equals(kn0Var6.b)) && !("tag:dolby.com,2014:dash:DolbyDigitalPlusExtensionType:2014".equals(str27) && MimeTypes.CODEC_E_AC3_JOC.equals(kn0Var6.b))) {
                                                                                                        i29 = i30 + 1;
                                                                                                        j12 = jA8;
                                                                                                    } else {
                                                                                                        strA = MimeTypes.AUDIO_E_AC3_JOC;
                                                                                                    }
                                                                                                } else {
                                                                                                    jA8 = j12;
                                                                                                    strA = MimeTypes.AUDIO_E_AC3;
                                                                                                }
                                                                                            }
                                                                                            if (MimeTypes.AUDIO_E_AC3_JOC.equals(strA)) {
                                                                                                str59 = MimeTypes.CODEC_E_AC3_JOC;
                                                                                            }
                                                                                        } else {
                                                                                            jA8 = j12;
                                                                                        }
                                                                                        str18 = str59;
                                                                                        ei5Var = ei5VarA;
                                                                                        i9 = 0;
                                                                                        i10 = 0;
                                                                                        while (true) {
                                                                                            j16 = j14;
                                                                                            str19 = "forced-subtitle";
                                                                                            arrayList17 = arrayList10;
                                                                                            if (i9 < arrayList14.size()) {
                                                                                                ArrayList arrayList56 = arrayList14;
                                                                                                int i56 = i9;
                                                                                                kn0Var5 = (kn0) arrayList56.get(i9);
                                                                                                ArrayList arrayList57 = arrayList12;
                                                                                                if (!oj.a("urn:mpeg:dash:role:2011", kn0Var5.a)) {
                                                                                                    str26 = kn0Var5.b;
                                                                                                    if (str26 == null && (str26.equals("forced_subtitle") || str26.equals("forced-subtitle"))) {
                                                                                                        i28 = 2;
                                                                                                    } else {
                                                                                                        i28 = 0;
                                                                                                    }
                                                                                                    i10 = i28 | i10;
                                                                                                }
                                                                                                i9 = i56 + 1;
                                                                                                arrayList14 = arrayList56;
                                                                                                j14 = j16;
                                                                                                arrayList12 = arrayList57;
                                                                                                arrayList10 = arrayList17;
                                                                                            } else {
                                                                                                ArrayList arrayList58 = arrayList12;
                                                                                                arrayList18 = arrayList14;
                                                                                                i11 = 0;
                                                                                                i12 = 0;
                                                                                                while (i11 < arrayList18.size()) {
                                                                                                    kn0Var4 = (kn0) arrayList18.get(i11);
                                                                                                    int i57 = i11;
                                                                                                    if (!oj.a("urn:mpeg:dash:role:2011", kn0Var4.a)) {
                                                                                                        str25 = kn0Var4.b;
                                                                                                        if (str25 == null) {
                                                                                                            switch (str25) {
                                                                                                                case "subtitle":
                                                                                                                case "forced_subtitle":
                                                                                                                case "forced-subtitle":
                                                                                                                    i27 = 128;
                                                                                                                    break;
                                                                                                                case "description":
                                                                                                                    i27 = 512;
                                                                                                                    break;
                                                                                                                case "enhanced-audio-intelligibility":
                                                                                                                    i27 = 2048;
                                                                                                                    break;
                                                                                                                case "alternate":
                                                                                                                    i27 = 2;
                                                                                                                    break;
                                                                                                                case "dub":
                                                                                                                    i27 = 16;
                                                                                                                    break;
                                                                                                                case "main":
                                                                                                                    i27 = 1;
                                                                                                                    break;
                                                                                                                case "sign":
                                                                                                                    i27 = 256;
                                                                                                                    break;
                                                                                                                case "caption":
                                                                                                                    i27 = 64;
                                                                                                                    break;
                                                                                                                case "commentary":
                                                                                                                    i27 = 8;
                                                                                                                    break;
                                                                                                                case "emergency":
                                                                                                                    i27 = 32;
                                                                                                                    break;
                                                                                                                case "supplementary":
                                                                                                                    i27 = 4;
                                                                                                                    break;
                                                                                                                default:
                                                                                                                    i27 = 0;
                                                                                                                    break;
                                                                                                            }
                                                                                                        } else {
                                                                                                            i27 = 0;
                                                                                                        }
                                                                                                        i12 |= i27;
                                                                                                    }
                                                                                                    i11 = i57 + 1;
                                                                                                }
                                                                                                i13 = 0;
                                                                                                i14 = 0;
                                                                                                while (i13 < arrayList13.size()) {
                                                                                                    ArrayList arrayList59 = arrayList13;
                                                                                                    int i58 = i13;
                                                                                                    kn0Var3 = (kn0) arrayList59.get(i13);
                                                                                                    i25 = i14;
                                                                                                    if (oj.a("urn:mpeg:dash:role:2011", kn0Var3.a)) {
                                                                                                        str24 = kn0Var3.b;
                                                                                                        if (str24 != null) {
                                                                                                            switch (str24.hashCode()) {
                                                                                                                case -2060497896:
                                                                                                                    if (str24.equals("subtitle")) {
                                                                                                                        b3 = 0;
                                                                                                                    } else {
                                                                                                                        b3 = -1;
                                                                                                                    }
                                                                                                                    break;
                                                                                                                case -1724546052:
                                                                                                                    if (str24.equals("description")) {
                                                                                                                        b3 = 1;
                                                                                                                    } else {
                                                                                                                        b3 = -1;
                                                                                                                    }
                                                                                                                    break;
                                                                                                                case -1580883024:
                                                                                                                    if (str24.equals("enhanced-audio-intelligibility")) {
                                                                                                                        b3 = 2;
                                                                                                                    } else {
                                                                                                                        b3 = -1;
                                                                                                                    }
                                                                                                                    break;
                                                                                                                case -1574842690:
                                                                                                                    if (str24.equals("forced_subtitle")) {
                                                                                                                        b3 = 3;
                                                                                                                    } else {
                                                                                                                        b3 = -1;
                                                                                                                    }
                                                                                                                    break;
                                                                                                                case -1408024454:
                                                                                                                    if (str24.equals("alternate")) {
                                                                                                                        b3 = 4;
                                                                                                                    } else {
                                                                                                                        b3 = -1;
                                                                                                                    }
                                                                                                                    break;
                                                                                                                case -1396432756:
                                                                                                                    if (str24.equals(str19)) {
                                                                                                                        b3 = 5;
                                                                                                                    } else {
                                                                                                                        b3 = -1;
                                                                                                                    }
                                                                                                                    break;
                                                                                                                case 99825:
                                                                                                                    if (str24.equals("dub")) {
                                                                                                                        b3 = 6;
                                                                                                                    } else {
                                                                                                                        b3 = -1;
                                                                                                                    }
                                                                                                                    break;
                                                                                                                case 3343801:
                                                                                                                    if (str24.equals("main")) {
                                                                                                                        b3 = 7;
                                                                                                                    } else {
                                                                                                                        b3 = -1;
                                                                                                                    }
                                                                                                                    break;
                                                                                                                case 3530173:
                                                                                                                    if (str24.equals("sign")) {
                                                                                                                        b3 = 8;
                                                                                                                    } else {
                                                                                                                        b3 = -1;
                                                                                                                    }
                                                                                                                    break;
                                                                                                                case 552573414:
                                                                                                                    if (str24.equals("caption")) {
                                                                                                                        b3 = 9;
                                                                                                                    } else {
                                                                                                                        b3 = -1;
                                                                                                                    }
                                                                                                                    break;
                                                                                                                case 899152809:
                                                                                                                    if (str24.equals("commentary")) {
                                                                                                                        b3 = 10;
                                                                                                                    } else {
                                                                                                                        b3 = -1;
                                                                                                                    }
                                                                                                                    break;
                                                                                                                case 1629013393:
                                                                                                                    if (str24.equals("emergency")) {
                                                                                                                        b3 = 11;
                                                                                                                    } else {
                                                                                                                        b3 = -1;
                                                                                                                    }
                                                                                                                    break;
                                                                                                                case 1855372047:
                                                                                                                    if (str24.equals("supplementary")) {
                                                                                                                        b3 = 12;
                                                                                                                    } else {
                                                                                                                        b3 = -1;
                                                                                                                    }
                                                                                                                    break;
                                                                                                                default:
                                                                                                                    b3 = -1;
                                                                                                                    break;
                                                                                                            }
                                                                                                            switch (b3) {
                                                                                                                case 0:
                                                                                                                case 3:
                                                                                                                case 5:
                                                                                                                    i26 = 128;
                                                                                                                    str22 = str19;
                                                                                                                    break;
                                                                                                                case 1:
                                                                                                                    str22 = str19;
                                                                                                                    i26 = 512;
                                                                                                                    break;
                                                                                                                case 2:
                                                                                                                    str22 = str19;
                                                                                                                    i26 = 2048;
                                                                                                                    break;
                                                                                                                case 4:
                                                                                                                    str22 = str19;
                                                                                                                    i26 = 2;
                                                                                                                    break;
                                                                                                                case 6:
                                                                                                                    i26 = 16;
                                                                                                                    str22 = str19;
                                                                                                                    break;
                                                                                                                case 7:
                                                                                                                    str22 = str19;
                                                                                                                    i26 = 1;
                                                                                                                    break;
                                                                                                                case 8:
                                                                                                                    i26 = 256;
                                                                                                                    str22 = str19;
                                                                                                                    break;
                                                                                                                case 9:
                                                                                                                    i26 = 64;
                                                                                                                    str22 = str19;
                                                                                                                    break;
                                                                                                                case 10:
                                                                                                                    str22 = str19;
                                                                                                                    i26 = 8;
                                                                                                                    break;
                                                                                                                case 11:
                                                                                                                    i26 = 32;
                                                                                                                    str22 = str19;
                                                                                                                    break;
                                                                                                                case 12:
                                                                                                                    str22 = str19;
                                                                                                                    i26 = 4;
                                                                                                                    break;
                                                                                                            }
                                                                                                            i14 = i25 | i26;
                                                                                                        }
                                                                                                        str22 = str19;
                                                                                                        i26 = 0;
                                                                                                        i14 = i25 | i26;
                                                                                                    } else {
                                                                                                        str22 = str19;
                                                                                                        if (oj.a("urn:tva:metadata:cs:AudioPurposeCS:2007", kn0Var3.a)) {
                                                                                                            str23 = kn0Var3.b;
                                                                                                            if (str23 != null) {
                                                                                                                switch (str23.hashCode()) {
                                                                                                                    case 49:
                                                                                                                        if (str23.equals("1")) {
                                                                                                                            b2 = 0;
                                                                                                                        } else {
                                                                                                                            b2 = -1;
                                                                                                                        }
                                                                                                                        break;
                                                                                                                    case 50:
                                                                                                                        if (str23.equals(ExifInterface.GPS_MEASUREMENT_2D)) {
                                                                                                                            b2 = 1;
                                                                                                                        } else {
                                                                                                                            b2 = -1;
                                                                                                                        }
                                                                                                                        break;
                                                                                                                    case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                                                                                                                        if (str23.equals(ExifInterface.GPS_MEASUREMENT_3D)) {
                                                                                                                            b2 = 2;
                                                                                                                        } else {
                                                                                                                            b2 = -1;
                                                                                                                        }
                                                                                                                        break;
                                                                                                                    case 52:
                                                                                                                        if (str23.equals("4")) {
                                                                                                                            b2 = 3;
                                                                                                                        } else {
                                                                                                                            b2 = -1;
                                                                                                                        }
                                                                                                                        break;
                                                                                                                    case 53:
                                                                                                                    default:
                                                                                                                        b2 = -1;
                                                                                                                        break;
                                                                                                                    case 54:
                                                                                                                        if (str23.equals("6")) {
                                                                                                                            b2 = 4;
                                                                                                                        } else {
                                                                                                                            b2 = -1;
                                                                                                                        }
                                                                                                                        break;
                                                                                                                }
                                                                                                                switch (b2) {
                                                                                                                    case 0:
                                                                                                                        i26 = 512;
                                                                                                                        break;
                                                                                                                    case 1:
                                                                                                                        i26 = 2048;
                                                                                                                        break;
                                                                                                                    case 2:
                                                                                                                        i26 = 4;
                                                                                                                        break;
                                                                                                                    case 3:
                                                                                                                        i26 = 8;
                                                                                                                        break;
                                                                                                                    case 4:
                                                                                                                        i26 = 1;
                                                                                                                        break;
                                                                                                                }
                                                                                                                i14 = i25 | i26;
                                                                                                            }
                                                                                                            i26 = 0;
                                                                                                            i14 = i25 | i26;
                                                                                                        } else {
                                                                                                            i14 = i25;
                                                                                                        }
                                                                                                    }
                                                                                                    i13 = i58 + 1;
                                                                                                    arrayList13 = arrayList59;
                                                                                                    str19 = str22;
                                                                                                }
                                                                                                arrayList19 = arrayList13;
                                                                                                int i59 = i12 | i14;
                                                                                                i16 = 0;
                                                                                                for (i15 = 0; i15 < arrayList15.size(); i15++) {
                                                                                                    if (oj.a("http://dashif.org/guidelines/trickmode", ((kn0) arrayList15.get(i15)).a)) {
                                                                                                        i16 = 16384;
                                                                                                    }
                                                                                                }
                                                                                                int i60 = i59 | i16;
                                                                                                i18 = 0;
                                                                                                for (i17 = 0; i17 < arrayList16.size(); i17++) {
                                                                                                    if (oj.a("http://dashif.org/guidelines/trickmode", ((kn0) arrayList16.get(i17)).a)) {
                                                                                                        i18 = 16384;
                                                                                                    }
                                                                                                }
                                                                                                uz2Var = new uz2();
                                                                                                uz2Var.a = attributeValue24;
                                                                                                uz2Var.j = str17;
                                                                                                uz2Var.k = strA;
                                                                                                uz2Var.h = str18;
                                                                                                uz2Var.g = i4;
                                                                                                uz2Var.d = i10;
                                                                                                uz2Var.e = i60 | i18;
                                                                                                str52 = str8;
                                                                                                uz2Var.c = str52;
                                                                                                if (str16.equals(z84.c(strA))) {
                                                                                                    uz2Var.p = i5;
                                                                                                    uz2Var.q = i6;
                                                                                                    uz2Var.r = f3;
                                                                                                } else {
                                                                                                    i19 = i5;
                                                                                                    i20 = i6;
                                                                                                    if (str15.equals(z84.c(strA))) {
                                                                                                        uz2Var.x = iB2;
                                                                                                        uz2Var.y = i7;
                                                                                                    } else if (z84.e(strA)) {
                                                                                                        if (MimeTypes.APPLICATION_CEA608.equals(strA)) {
                                                                                                            i23 = 0;
                                                                                                            while (true) {
                                                                                                                if (i23 < arrayList19.size()) {
                                                                                                                    kn0Var2 = (kn0) arrayList19.get(i23);
                                                                                                                    if (!"urn:scte:dash:cc:cea-608:2015".equals(kn0Var2.a) && (str21 = kn0Var2.b) != null) {
                                                                                                                        Matcher matcher3 = c.matcher(str21);
                                                                                                                        if (matcher3.matches()) {
                                                                                                                            i22 = Integer.parseInt(matcher3.group(1));
                                                                                                                        } else {
                                                                                                                            sv3.d("MpdParser", "Unable to parse CEA-608 channel number from: " + kn0Var2.b);
                                                                                                                        }
                                                                                                                    }
                                                                                                                    i23++;
                                                                                                                } else {
                                                                                                                    i22 = -1;
                                                                                                                }
                                                                                                            }
                                                                                                        } else if (MimeTypes.APPLICATION_CEA708.equals(strA)) {
                                                                                                            i21 = 0;
                                                                                                            while (true) {
                                                                                                                if (i21 < arrayList19.size()) {
                                                                                                                    kn0Var = (kn0) arrayList19.get(i21);
                                                                                                                    if (!"urn:scte:dash:cc:cea-708:2015".equals(kn0Var.a) && (str20 = kn0Var.b) != null) {
                                                                                                                        Matcher matcher4 = d.matcher(str20);
                                                                                                                        if (matcher4.matches()) {
                                                                                                                            i22 = Integer.parseInt(matcher4.group(1));
                                                                                                                        } else {
                                                                                                                            sv3.d("MpdParser", "Unable to parse CEA-708 service block number from: " + kn0Var.b);
                                                                                                                        }
                                                                                                                    }
                                                                                                                    i21++;
                                                                                                                } else {
                                                                                                                    i22 = -1;
                                                                                                                }
                                                                                                            }
                                                                                                        } else {
                                                                                                            i22 = -1;
                                                                                                        }
                                                                                                        uz2Var.C = i22;
                                                                                                    } else if ("image".equals(z84.c(strA))) {
                                                                                                        uz2Var.p = i19;
                                                                                                        uz2Var.q = i20;
                                                                                                    }
                                                                                                }
                                                                                                vz2 vz2Var2 = new vz2(uz2Var);
                                                                                                if (ei5Var != null) {
                                                                                                    di5Var = ei5Var;
                                                                                                } else {
                                                                                                    di5Var = new di5();
                                                                                                }
                                                                                                if (arrayList11.isEmpty()) {
                                                                                                    arrayList20 = arrayList7;
                                                                                                } else {
                                                                                                    arrayList20 = arrayList11;
                                                                                                }
                                                                                                lc0 lc0Var = new lc0(vz2Var2, arrayList20, di5Var, str14, arrayList58, arrayList17, arrayList15, arrayList16);
                                                                                                iD = z84.d(vz2Var2.m);
                                                                                                if (i2 == -1) {
                                                                                                    i24 = iD;
                                                                                                } else {
                                                                                                    if (iD != -1 && i2 != iD) {
                                                                                                        defpackage.ud.g();
                                                                                                        return null;
                                                                                                    }
                                                                                                    i24 = i2;
                                                                                                }
                                                                                                arrayList37 = arrayList37;
                                                                                                arrayList37.add(lc0Var);
                                                                                                str47 = str16;
                                                                                                str48 = str15;
                                                                                                arrayList32 = arrayList19;
                                                                                                i3 = i24;
                                                                                                arrayList6 = arrayList18;
                                                                                                j26 = j13;
                                                                                                j4 = j16;
                                                                                                arrayList34 = arrayList9;
                                                                                                str45 = str7;
                                                                                                str49 = str6;
                                                                                            }
                                                                                        }
                                                                                    } else {
                                                                                        long j37 = j13;
                                                                                        long j38 = j12;
                                                                                        long j39 = j14;
                                                                                        arrayList46 = arrayList12;
                                                                                        String str66 = str12;
                                                                                        ei5 ei5Var3 = ei5VarA;
                                                                                        ArrayList arrayList60 = arrayList13;
                                                                                        iB2 = iB2;
                                                                                        arrayList48 = arrayList15;
                                                                                        arrayList47 = arrayList10;
                                                                                        arrayList51 = arrayList11;
                                                                                        arrayList24 = arrayList24;
                                                                                        arrayList5 = arrayList14;
                                                                                        arrayList25 = arrayList25;
                                                                                        z2 = z2;
                                                                                        jA11 = j11;
                                                                                        arrayList50 = arrayList39;
                                                                                        j30 = j15;
                                                                                        j26 = j37;
                                                                                        j4 = j39;
                                                                                        str62 = str14;
                                                                                        str33 = str33;
                                                                                        arrayList34 = arrayList9;
                                                                                        str52 = str8;
                                                                                        i46 = i4;
                                                                                        i47 = i5;
                                                                                        i48 = i6;
                                                                                        f9 = f3;
                                                                                        i51 = i7;
                                                                                        str45 = str7;
                                                                                        str40 = str40;
                                                                                        str49 = str6;
                                                                                        str60 = str10;
                                                                                        str61 = str11;
                                                                                        str43 = str3;
                                                                                        arrayList49 = arrayList16;
                                                                                        str58 = str66;
                                                                                        arrayList32 = arrayList60;
                                                                                        ei5VarA4 = ei5Var3;
                                                                                        j19 = j19;
                                                                                        arrayList7 = arrayList7;
                                                                                        arrayList43 = arrayList41;
                                                                                        jA8 = j38;
                                                                                        str42 = str42;
                                                                                        str50 = str4;
                                                                                        str55 = str9;
                                                                                        str57 = str51;
                                                                                        str56 = str13;
                                                                                        arrayList30 = arrayList30;
                                                                                    }
                                                                                }
                                                                                long j40 = j26;
                                                                                arrayList13 = arrayList32;
                                                                                j13 = j40;
                                                                                arrayList30 = arrayList30;
                                                                                str33 = str33;
                                                                                arrayList14 = arrayList5;
                                                                                z2 = z2;
                                                                                str40 = str40;
                                                                                str42 = str42;
                                                                                str3 = str43;
                                                                                str7 = str45;
                                                                                j19 = j19;
                                                                                j14 = j4;
                                                                                arrayList9 = arrayList34;
                                                                                str6 = str49;
                                                                                str4 = str50;
                                                                                str8 = str52;
                                                                                str9 = str55;
                                                                                str13 = str56;
                                                                                str51 = str57;
                                                                                i4 = i46;
                                                                                i5 = i47;
                                                                                i6 = i48;
                                                                                arrayList39 = arrayList50;
                                                                                f3 = f9;
                                                                                i7 = i51;
                                                                                str10 = str60;
                                                                                str11 = str61;
                                                                                arrayList15 = arrayList8;
                                                                                j15 = j30;
                                                                                j11 = jA11;
                                                                                arrayList41 = arrayList43;
                                                                                arrayList16 = arrayList49;
                                                                                arrayList24 = arrayList24;
                                                                                j12 = jA8;
                                                                                arrayList25 = arrayList25;
                                                                                str12 = str58;
                                                                                ei5VarA = ei5VarA4;
                                                                                arrayList10 = arrayList47;
                                                                                iB2 = iB2;
                                                                                arrayList11 = arrayList51;
                                                                                str14 = str62;
                                                                                arrayList12 = arrayList46;
                                                                                if (am6.b(xmlPullParser, "Representation")) {
                                                                                    str15 = str11;
                                                                                    if (str15.equals(z84.c(str12))) {
                                                                                        if (str59 == null) {
                                                                                            j13 = j13;
                                                                                        } else {
                                                                                            int i510 = u56.a;
                                                                                            if (TextUtils.isEmpty(str59)) {
                                                                                                strArrSplit2 = new String[0];
                                                                                            } else {
                                                                                                strArrSplit2 = str59.trim().split("(\\s*,\\s*)", -1);
                                                                                            }
                                                                                            length2 = strArrSplit2.length;
                                                                                            i31 = 0;
                                                                                            while (true) {
                                                                                                if (i31 < length2) {
                                                                                                    strA3 = z84.a(strArrSplit2[i31]);
                                                                                                    int i511 = length2;
                                                                                                    if (strA3 == null) {
                                                                                                    }
                                                                                                    i31++;
                                                                                                    length2 = i511;
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        str17 = str12;
                                                                                        str16 = str10;
                                                                                        strA = null;
                                                                                    } else {
                                                                                        j13 = j13;
                                                                                        str16 = str10;
                                                                                        if (str16.equals(z84.c(str12))) {
                                                                                            if (str59 != null) {
                                                                                                int i512 = u56.a;
                                                                                                if (TextUtils.isEmpty(str59)) {
                                                                                                    strArrSplit = new String[0];
                                                                                                } else {
                                                                                                    strArrSplit = str59.trim().split("(\\s*,\\s*)", -1);
                                                                                                }
                                                                                                length = strArrSplit.length;
                                                                                                i8 = 0;
                                                                                                while (true) {
                                                                                                    if (i8 < length) {
                                                                                                        strA2 = z84.a(strArrSplit[i8]);
                                                                                                        int i513 = length;
                                                                                                        if (strA2 == null) {
                                                                                                        }
                                                                                                        i8++;
                                                                                                        length = i513;
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                            str17 = str12;
                                                                                        } else if (z84.e(str12)) {
                                                                                            strA = str12;
                                                                                            str17 = strA;
                                                                                        } else {
                                                                                            str17 = str12;
                                                                                            if (MimeTypes.APPLICATION_MP4.equals(str17)) {
                                                                                                strA = z84.a(str59);
                                                                                                if (MimeTypes.TEXT_VTT.equals(strA)) {
                                                                                                    strA = MimeTypes.APPLICATION_MP4VTT;
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        strA = null;
                                                                                    }
                                                                                    if (MimeTypes.AUDIO_E_AC3.equals(strA)) {
                                                                                        i29 = 0;
                                                                                        while (true) {
                                                                                            if (i29 < arrayList16.size()) {
                                                                                                kn0 kn0Var7 = (kn0) arrayList16.get(i29);
                                                                                                i30 = i29;
                                                                                                str27 = kn0Var7.a;
                                                                                                jA8 = j12;
                                                                                                if ("tag:dolby.com,2018:dash:EC3_ExtensionType:2018".equals(str27)) {
                                                                                                    i29 = i30 + 1;
                                                                                                    j12 = jA8;
                                                                                                } else {
                                                                                                    i29 = i30 + 1;
                                                                                                    j12 = jA8;
                                                                                                }
                                                                                                strA = MimeTypes.AUDIO_E_AC3_JOC;
                                                                                            } else {
                                                                                                jA8 = j12;
                                                                                                strA = MimeTypes.AUDIO_E_AC3;
                                                                                            }
                                                                                        }
                                                                                        if (MimeTypes.AUDIO_E_AC3_JOC.equals(strA)) {
                                                                                            str59 = MimeTypes.CODEC_E_AC3_JOC;
                                                                                        }
                                                                                    } else {
                                                                                        jA8 = j12;
                                                                                    }
                                                                                    str18 = str59;
                                                                                    ei5Var = ei5VarA;
                                                                                    i9 = 0;
                                                                                    i10 = 0;
                                                                                    while (true) {
                                                                                        j16 = j14;
                                                                                        str19 = "forced-subtitle";
                                                                                        arrayList17 = arrayList10;
                                                                                        if (i9 < arrayList14.size()) {
                                                                                            ArrayList arrayList510 = arrayList14;
                                                                                            int i514 = i9;
                                                                                            kn0Var5 = (kn0) arrayList510.get(i9);
                                                                                            ArrayList arrayList511 = arrayList12;
                                                                                            if (!oj.a("urn:mpeg:dash:role:2011", kn0Var5.a)) {
                                                                                                str26 = kn0Var5.b;
                                                                                                if (str26 == null) {
                                                                                                    i28 = 0;
                                                                                                } else {
                                                                                                    i28 = 2;
                                                                                                }
                                                                                                i10 = i28 | i10;
                                                                                            }
                                                                                            i9 = i514 + 1;
                                                                                            arrayList14 = arrayList510;
                                                                                            j14 = j16;
                                                                                            arrayList12 = arrayList511;
                                                                                            arrayList10 = arrayList17;
                                                                                        } else {
                                                                                            ArrayList arrayList512 = arrayList12;
                                                                                            arrayList18 = arrayList14;
                                                                                            i11 = 0;
                                                                                            i12 = 0;
                                                                                            while (i11 < arrayList18.size()) {
                                                                                                kn0Var4 = (kn0) arrayList18.get(i11);
                                                                                                int i515 = i11;
                                                                                                if (!oj.a("urn:mpeg:dash:role:2011", kn0Var4.a)) {
                                                                                                    str25 = kn0Var4.b;
                                                                                                    if (str25 == null) {
                                                                                                        switch (str25) {
                                                                                                            case -2060497896:
                                                                                                                if (!str25.equals("subtitle")) {
                                                                                                                }
                                                                                                                break;
                                                                                                            case -1724546052:
                                                                                                                if (!str25.equals("description")) {
                                                                                                                }
                                                                                                                break;
                                                                                                            case -1580883024:
                                                                                                                if (!str25.equals("enhanced-audio-intelligibility")) {
                                                                                                                }
                                                                                                                break;
                                                                                                            case -1574842690:
                                                                                                                if (!str25.equals("forced_subtitle")) {
                                                                                                                }
                                                                                                                break;
                                                                                                            case -1408024454:
                                                                                                                if (!str25.equals("alternate")) {
                                                                                                                }
                                                                                                                break;
                                                                                                            case -1396432756:
                                                                                                                if (!str25.equals("forced-subtitle")) {
                                                                                                                }
                                                                                                                break;
                                                                                                            case 99825:
                                                                                                                if (!str25.equals("dub")) {
                                                                                                                }
                                                                                                                break;
                                                                                                            case 3343801:
                                                                                                                if (!str25.equals("main")) {
                                                                                                                }
                                                                                                                break;
                                                                                                            case 3530173:
                                                                                                                if (!str25.equals("sign")) {
                                                                                                                }
                                                                                                                break;
                                                                                                            case 552573414:
                                                                                                                if (!str25.equals("caption")) {
                                                                                                                }
                                                                                                                break;
                                                                                                            case 899152809:
                                                                                                                if (!str25.equals("commentary")) {
                                                                                                                }
                                                                                                                break;
                                                                                                            case 1629013393:
                                                                                                                if (!str25.equals("emergency")) {
                                                                                                                }
                                                                                                                break;
                                                                                                            case 1855372047:
                                                                                                                if (!str25.equals("supplementary")) {
                                                                                                                }
                                                                                                                break;
                                                                                                            default:
                                                                                                                break;
                                                                                                        }
                                                                                                        /*  JADX ERROR: Method code generation error
                                                                                                            java.lang.NullPointerException: Switch insn not found in header
                                                                                                            	at java.base/java.util.Objects.requireNonNull(Objects.java:235)
                                                                                                            	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:246)
                                                                                                            	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:90)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                                                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                                                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                                            	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:226)
                                                                                                            	at jadx.core.dex.regions.loops.LoopRegion.generate(LoopRegion.java:173)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                                                                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                                            	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:175)
                                                                                                            	at jadx.core.dex.regions.loops.LoopRegion.generate(LoopRegion.java:173)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                                                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                                            	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:175)
                                                                                                            	at jadx.core.dex.regions.loops.LoopRegion.generate(LoopRegion.java:173)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                                                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                                                                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                                                                                                            	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                                                                                                            	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                                                                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                                                                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                                                                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                                                                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                                                                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                                            	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:175)
                                                                                                            	at jadx.core.dex.regions.loops.LoopRegion.generate(LoopRegion.java:173)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                                                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                                                                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                                            	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:175)
                                                                                                            	at jadx.core.dex.regions.loops.LoopRegion.generate(LoopRegion.java:173)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                                                                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                                                                                                            	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                                                                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                                                                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                                                                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                                                                                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                                                                            	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:175)
                                                                                                            	at jadx.core.dex.regions.loops.LoopRegion.generate(LoopRegion.java:173)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                                                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                                                                            	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                                                                                                            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                                                                                                            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                                                                                                            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                                                                                                            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
                                                                                                            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                                                                                                            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                                                                                                            	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                                                                                                            	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                                                                                                            */
                                                                                                        /*
                                                                                                            Method dump skipped, instruction units count: 6028
                                                                                                            To view this dump add '--comments-level debug' option
                                                                                                        */
                                                                                                        throw new UnsupportedOperationException("Method not decompiled: yads.mc0.a(org.xmlpull.v1.XmlPullParser, android.net.Uri):yads.kc0");
                                                                                                    }

                                                                                                    public static int b(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
                                                                                                        String attributeValue = xmlPullParser.getAttributeValue(null, "schemeIdUri");
                                                                                                        if (attributeValue == null) {
                                                                                                            attributeValue = null;
                                                                                                        }
                                                                                                        attributeValue.getClass();
                                                                                                        int iBitCount = 6;
                                                                                                        switch (attributeValue) {
                                                                                                            case "urn:dts:dash:audio_channel_configuration:2012":
                                                                                                            case "tag:dts.com,2014:dash:audio_channel_configuration:2012":
                                                                                                                String attributeValue2 = xmlPullParser.getAttributeValue(null, "value");
                                                                                                                iBitCount = attributeValue2 == null ? -1 : Integer.parseInt(attributeValue2);
                                                                                                                if (iBitCount <= 0 || iBitCount >= 33) {
                                                                                                                    iBitCount = -1;
                                                                                                                    break;
                                                                                                                }
                                                                                                                break;
                                                                                                            case "urn:mpeg:dash:23003:3:audio_channel_configuration:2011":
                                                                                                                String attributeValue3 = xmlPullParser.getAttributeValue(null, "value");
                                                                                                                if (attributeValue3 == null) {
                                                                                                                    iBitCount = -1;
                                                                                                                    break;
                                                                                                                } else {
                                                                                                                    iBitCount = Integer.parseInt(attributeValue3);
                                                                                                                    break;
                                                                                                                }
                                                                                                                break;
                                                                                                            case "tag:dolby.com,2014:dash:audio_channel_configuration:2011":
                                                                                                            case "urn:dolby:dash:audio_channel_configuration:2011":
                                                                                                                String attributeValue4 = xmlPullParser.getAttributeValue(null, "value");
                                                                                                                if (attributeValue4 == null) {
                                                                                                                    iBitCount = -1;
                                                                                                                    break;
                                                                                                                } else {
                                                                                                                    String strA = oj.a(attributeValue4);
                                                                                                                    strA.getClass();
                                                                                                                    switch (strA) {
                                                                                                                        case "4000":
                                                                                                                            iBitCount = 1;
                                                                                                                            break;
                                                                                                                        case "a000":
                                                                                                                            iBitCount = 2;
                                                                                                                            break;
                                                                                                                        case "f801":
                                                                                                                            break;
                                                                                                                        case "fa01":
                                                                                                                            iBitCount = 8;
                                                                                                                            break;
                                                                                                                        default:
                                                                                                                            iBitCount = -1;
                                                                                                                            break;
                                                                                                                    }
                                                                                                                }
                                                                                                                break;
                                                                                                            case "urn:mpeg:mpegB:cicp:ChannelConfiguration":
                                                                                                                String attributeValue5 = xmlPullParser.getAttributeValue(null, "value");
                                                                                                                int i = attributeValue5 == null ? -1 : Integer.parseInt(attributeValue5);
                                                                                                                if (i >= 0) {
                                                                                                                    int[] iArr = e;
                                                                                                                    iBitCount = i >= iArr.length ? -1 : iArr[i];
                                                                                                                    break;
                                                                                                                } else {
                                                                                                                    iBitCount = -1;
                                                                                                                    break;
                                                                                                                }
                                                                                                                break;
                                                                                                            case "tag:dts.com,2018:uhd:audio_channel_configuration":
                                                                                                                String attributeValue6 = xmlPullParser.getAttributeValue(null, "value");
                                                                                                                if (attributeValue6 == null || (iBitCount = Integer.bitCount(Integer.parseInt(attributeValue6, 16))) == 0) {
                                                                                                                    iBitCount = -1;
                                                                                                                    break;
                                                                                                                }
                                                                                                                break;
                                                                                                            default:
                                                                                                                iBitCount = -1;
                                                                                                                break;
                                                                                                        }
                                                                                                        do {
                                                                                                            xmlPullParser.next();
                                                                                                        } while (!am6.b(xmlPullParser, "AudioChannelConfiguration"));
                                                                                                        return iBitCount;
                                                                                                    }

                                                                                                    /* JADX WARN: Code duplicated, block: B:52:0x00ba  */
                                                                                                    /* JADX WARN: Code duplicated, block: B:79:0x012e A[DONT_INVERT] */
                                                                                                    /* JADX WARN: Code duplicated, block: B:80:0x0130  */
                                                                                                    /* JADX WARN: Code duplicated, block: B:87:0x0153  */
                                                                                                    /* JADX WARN: Multi-variable type inference failed */
                                                                                                    /* JADX WARN: Type inference failed for: r7v10 */
                                                                                                    /* JADX WARN: Type inference failed for: r7v11 */
                                                                                                    /* JADX WARN: Type inference failed for: r7v13, types: [byte[]] */
                                                                                                    /* JADX WARN: Type inference failed for: r7v2 */
                                                                                                    /* JADX WARN: Type inference failed for: r7v25 */
                                                                                                    /* JADX WARN: Type inference failed for: r7v26 */
                                                                                                    /* JADX WARN: Type inference failed for: r7v27 */
                                                                                                    /* JADX WARN: Type inference failed for: r7v28 */
                                                                                                    /* JADX WARN: Type inference failed for: r7v29 */
                                                                                                    /* JADX WARN: Type inference failed for: r7v3 */
                                                                                                    /* JADX WARN: Type inference failed for: r7v30 */
                                                                                                    /* JADX WARN: Type inference failed for: r8v0 */
                                                                                                    /* JADX WARN: Type inference failed for: r8v1 */
                                                                                                    /* JADX WARN: Type inference failed for: r8v15 */
                                                                                                    /* JADX WARN: Type inference failed for: r8v16 */
                                                                                                    /* JADX WARN: Type inference failed for: r8v17 */
                                                                                                    /* JADX WARN: Type inference failed for: r8v18 */
                                                                                                    /* JADX WARN: Type inference failed for: r8v19 */
                                                                                                    /* JADX WARN: Type inference failed for: r8v2 */
                                                                                                    /* JADX WARN: Type inference failed for: r8v20 */
                                                                                                    /* JADX WARN: Type inference failed for: r8v5, types: [java.lang.String] */
                                                                                                    /* JADX WARN: Type inference failed for: r8v9 */
                                                                                                    public static Pair c(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
                                                                                                        String attributeValue;
                                                                                                        UUID uuid;
                                                                                                        UUID uuid2;
                                                                                                        ?? attributeValue2;
                                                                                                        ?? A;
                                                                                                        UUID uuid3;
                                                                                                        String attributeValue3;
                                                                                                        String attributeValue4 = xmlPullParser.getAttributeValue(null, "schemeIdUri");
                                                                                                        if (attributeValue4 != null) {
                                                                                                            String strA = oj.a(attributeValue4);
                                                                                                            strA.getClass();
                                                                                                            switch (strA) {
                                                                                                                case "urn:uuid:e2719d58-a985-b3c9-781a-b030af78d30e":
                                                                                                                    uuid = uv.c;
                                                                                                                    attributeValue = null;
                                                                                                                    uuid2 = null;
                                                                                                                    attributeValue2 = uuid2;
                                                                                                                    A = uuid2;
                                                                                                                    break;
                                                                                                                case "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95":
                                                                                                                    uuid = uv.e;
                                                                                                                    attributeValue = null;
                                                                                                                    uuid2 = null;
                                                                                                                    attributeValue2 = uuid2;
                                                                                                                    A = uuid2;
                                                                                                                    break;
                                                                                                                case "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed":
                                                                                                                    uuid = uv.d;
                                                                                                                    attributeValue = null;
                                                                                                                    uuid2 = null;
                                                                                                                    attributeValue2 = uuid2;
                                                                                                                    A = uuid2;
                                                                                                                    break;
                                                                                                                case "urn:mpeg:dash:mp4protection:2011":
                                                                                                                    attributeValue = xmlPullParser.getAttributeValue(null, "value");
                                                                                                                    int attributeCount = xmlPullParser.getAttributeCount();
                                                                                                                    int i = 0;
                                                                                                                    while (true) {
                                                                                                                        if (i >= attributeCount) {
                                                                                                                            attributeValue3 = null;
                                                                                                                        } else {
                                                                                                                            String attributeName = xmlPullParser.getAttributeName(i);
                                                                                                                            int iIndexOf = attributeName.indexOf(58);
                                                                                                                            if (iIndexOf != -1) {
                                                                                                                                attributeName = attributeName.substring(iIndexOf + 1);
                                                                                                                            }
                                                                                                                            if (attributeName.equals("default_KID")) {
                                                                                                                                attributeValue3 = xmlPullParser.getAttributeValue(i);
                                                                                                                            } else {
                                                                                                                                i++;
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                    if (!TextUtils.isEmpty(attributeValue3) && !"00000000-0000-0000-0000-000000000000".equals(attributeValue3)) {
                                                                                                                        String[] strArrSplit = attributeValue3.split("\\s+");
                                                                                                                        UUID[] uuidArr = new UUID[strArrSplit.length];
                                                                                                                        for (int i2 = 0; i2 < strArrSplit.length; i2++) {
                                                                                                                            uuidArr[i2] = UUID.fromString(strArrSplit[i2]);
                                                                                                                        }
                                                                                                                        uuid = uv.b;
                                                                                                                        attributeValue2 = 0;
                                                                                                                        A = c35.a(uuid, uuidArr, null);
                                                                                                                        break;
                                                                                                                    } else {
                                                                                                                        uuid = null;
                                                                                                                        uuid2 = uuid;
                                                                                                                        attributeValue2 = uuid2;
                                                                                                                        A = uuid2;
                                                                                                                        break;
                                                                                                                    }
                                                                                                                    break;
                                                                                                                default:
                                                                                                                    attributeValue = null;
                                                                                                                    uuid = null;
                                                                                                                    uuid2 = uuid;
                                                                                                                    attributeValue2 = uuid2;
                                                                                                                    A = uuid2;
                                                                                                                    break;
                                                                                                            }
                                                                                                        } else {
                                                                                                            attributeValue = null;
                                                                                                            uuid = null;
                                                                                                            uuid2 = uuid;
                                                                                                            attributeValue2 = uuid2;
                                                                                                            A = uuid2;
                                                                                                        }
                                                                                                        do {
                                                                                                            xmlPullParser.next();
                                                                                                            if (am6.c(xmlPullParser, "clearkey:Laurl") && xmlPullParser.next() == 4) {
                                                                                                                A = A;
                                                                                                                attributeValue2 = xmlPullParser.getText();
                                                                                                            } else if (am6.c(xmlPullParser, "ms:laurl")) {
                                                                                                                A = A;
                                                                                                                attributeValue2 = xmlPullParser.getAttributeValue(null, "licenseUrl");
                                                                                                            } else if (A == 0 && xmlPullParser.getEventType() == 2) {
                                                                                                                String name = xmlPullParser.getName();
                                                                                                                int iIndexOf2 = name.indexOf(58);
                                                                                                                if (iIndexOf2 != -1) {
                                                                                                                    name = name.substring(iIndexOf2 + 1);
                                                                                                                }
                                                                                                                if (name.equals("pssh") && xmlPullParser.next() == 4) {
                                                                                                                    byte[] bArrDecode = Base64.decode(xmlPullParser.getText(), 0);
                                                                                                                    b35 b35VarA = c35.a(bArrDecode);
                                                                                                                    UUID uuid4 = b35VarA == null ? null : b35VarA.a;
                                                                                                                    if (uuid4 == null) {
                                                                                                                        sv3.d("MpdParser", "Skipping malformed cenc:pssh data");
                                                                                                                        uuid = uuid4;
                                                                                                                        A = 0;
                                                                                                                        attributeValue2 = attributeValue2;
                                                                                                                    } else {
                                                                                                                        UUID uuid5 = uuid4;
                                                                                                                        A = bArrDecode;
                                                                                                                        uuid = uuid5;
                                                                                                                        attributeValue2 = attributeValue2;
                                                                                                                    }
                                                                                                                } else if (A == 0) {
                                                                                                                    uuid3 = uv.e;
                                                                                                                    if (!uuid3.equals(uuid)) {
                                                                                                                        a(xmlPullParser);
                                                                                                                        A = A;
                                                                                                                        attributeValue2 = attributeValue2;
                                                                                                                    } else {
                                                                                                                        a(xmlPullParser);
                                                                                                                        A = A;
                                                                                                                        attributeValue2 = attributeValue2;
                                                                                                                    }
                                                                                                                } else {
                                                                                                                    a(xmlPullParser);
                                                                                                                    A = A;
                                                                                                                    attributeValue2 = attributeValue2;
                                                                                                                }
                                                                                                            } else if (A == 0) {
                                                                                                                uuid3 = uv.e;
                                                                                                                if (!uuid3.equals(uuid) && am6.c(xmlPullParser, "mspr:pro") && xmlPullParser.next() == 4) {
                                                                                                                    A = c35.a(uuid3, null, Base64.decode(xmlPullParser.getText(), 0));
                                                                                                                    attributeValue2 = attributeValue2;
                                                                                                                } else {
                                                                                                                    a(xmlPullParser);
                                                                                                                    A = A;
                                                                                                                    attributeValue2 = attributeValue2;
                                                                                                                }
                                                                                                            } else {
                                                                                                                a(xmlPullParser);
                                                                                                                A = A;
                                                                                                                attributeValue2 = attributeValue2;
                                                                                                            }
                                                                                                        } while (!am6.b(xmlPullParser, "ContentProtection"));
                                                                                                        return Pair.create(attributeValue, uuid != null ? new pl2(uuid, attributeValue2, MimeTypes.VIDEO_MP4, A) : null);
                                                                                                    }

                                                                                                    @Override // yads.it4
                                                                                                    public final Object a(Uri uri, yc0 yc0Var) throws xs4 {
                                                                                                        try {
                                                                                                            XmlPullParser xmlPullParserNewPullParser = this.a.newPullParser();
                                                                                                            xmlPullParserNewPullParser.setInput(yc0Var, null);
                                                                                                            if (xmlPullParserNewPullParser.next() == 2 && "MPD".equals(xmlPullParserNewPullParser.getName())) {
                                                                                                                return a(xmlPullParserNewPullParser, uri);
                                                                                                            }
                                                                                                            throw new xs4("inputStream does not contain a valid media presentation description", null, true, 4);
                                                                                                        } catch (XmlPullParserException e2) {
                                                                                                            throw new xs4(null, e2, true, 4);
                                                                                                        }
                                                                                                    }

                                                                                                    public static void a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
                                                                                                        if (xmlPullParser.getEventType() == 2) {
                                                                                                            int i = 1;
                                                                                                            while (i != 0) {
                                                                                                                xmlPullParser.next();
                                                                                                                if (xmlPullParser.getEventType() == 2) {
                                                                                                                    i++;
                                                                                                                } else if (xmlPullParser.getEventType() == 3) {
                                                                                                                    i--;
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }

                                                                                                    public static di5 a(XmlPullParser xmlPullParser, di5 di5Var) throws XmlPullParserException, IOException {
                                                                                                        long j = di5Var != null ? di5Var.b : 1L;
                                                                                                        String attributeValue = xmlPullParser.getAttributeValue(null, "timescale");
                                                                                                        if (attributeValue != null) {
                                                                                                            j = Long.parseLong(attributeValue);
                                                                                                        }
                                                                                                        long j2 = j;
                                                                                                        long j3 = di5Var != null ? di5Var.c : 0L;
                                                                                                        String attributeValue2 = xmlPullParser.getAttributeValue(null, "presentationTimeOffset");
                                                                                                        if (attributeValue2 != null) {
                                                                                                            j3 = Long.parseLong(attributeValue2);
                                                                                                        }
                                                                                                        long j4 = j3;
                                                                                                        long j5 = di5Var != null ? di5Var.d : 0L;
                                                                                                        long j6 = di5Var != null ? di5Var.e : 0L;
                                                                                                        String attributeValue3 = xmlPullParser.getAttributeValue(null, "indexRange");
                                                                                                        if (attributeValue3 != null) {
                                                                                                            String[] strArrSplit = attributeValue3.split("-");
                                                                                                            j5 = Long.parseLong(strArrSplit[0]);
                                                                                                            j6 = (Long.parseLong(strArrSplit[1]) - j5) + 1;
                                                                                                        }
                                                                                                        long j7 = j6;
                                                                                                        long j8 = j5;
                                                                                                        y35 y35VarA = di5Var != null ? di5Var.a : null;
                                                                                                        while (true) {
                                                                                                            xmlPullParser.next();
                                                                                                            if (am6.c(xmlPullParser, "Initialization")) {
                                                                                                                y35VarA = a(xmlPullParser, "sourceURL", "range");
                                                                                                            } else {
                                                                                                                a(xmlPullParser);
                                                                                                            }
                                                                                                            y35 y35Var = y35VarA;
                                                                                                            if (am6.b(xmlPullParser, "SegmentBase")) {
                                                                                                                return new di5(y35Var, j2, j4, j8, j7);
                                                                                                            }
                                                                                                            y35VarA = y35Var;
                                                                                                        }
                                                                                                    }

                                                                                                    public static ai5 a(XmlPullParser xmlPullParser, ai5 ai5Var, long j, long j2, long j3, long j4, long j5) throws XmlPullParserException, IOException {
                                                                                                        long j6 = ai5Var != null ? ai5Var.b : 1L;
                                                                                                        List arrayList = null;
                                                                                                        String attributeValue = xmlPullParser.getAttributeValue(null, "timescale");
                                                                                                        if (attributeValue != null) {
                                                                                                            j6 = Long.parseLong(attributeValue);
                                                                                                        }
                                                                                                        long j7 = j6;
                                                                                                        long j8 = ai5Var != null ? ai5Var.c : 0L;
                                                                                                        String attributeValue2 = xmlPullParser.getAttributeValue(null, "presentationTimeOffset");
                                                                                                        if (attributeValue2 != null) {
                                                                                                            j8 = Long.parseLong(attributeValue2);
                                                                                                        }
                                                                                                        long j9 = j8;
                                                                                                        long j10 = ai5Var != null ? ai5Var.e : -9223372036854775807L;
                                                                                                        String attributeValue3 = xmlPullParser.getAttributeValue(null, TypedValues.TransitionType.S_DURATION);
                                                                                                        if (attributeValue3 != null) {
                                                                                                            j10 = Long.parseLong(attributeValue3);
                                                                                                        }
                                                                                                        long j11 = j10;
                                                                                                        long j12 = ai5Var != null ? ai5Var.d : 1L;
                                                                                                        String attributeValue4 = xmlPullParser.getAttributeValue(null, "startNumber");
                                                                                                        if (attributeValue4 != null) {
                                                                                                            j12 = Long.parseLong(attributeValue4);
                                                                                                        }
                                                                                                        long j13 = j12;
                                                                                                        long j14 = j4 == C.TIME_UNSET ? j3 : j4;
                                                                                                        long j15 = j14 == Long.MAX_VALUE ? -9223372036854775807L : j14;
                                                                                                        y35 y35VarA = null;
                                                                                                        List listA = null;
                                                                                                        do {
                                                                                                            xmlPullParser.next();
                                                                                                            if (am6.c(xmlPullParser, "Initialization")) {
                                                                                                                y35VarA = a(xmlPullParser, "sourceURL", "range");
                                                                                                            } else if (am6.c(xmlPullParser, "SegmentTimeline")) {
                                                                                                                listA = a(xmlPullParser, j7, j2);
                                                                                                            } else if (am6.c(xmlPullParser, "SegmentURL")) {
                                                                                                                if (arrayList == null) {
                                                                                                                    arrayList = new ArrayList();
                                                                                                                }
                                                                                                                arrayList.add(a(xmlPullParser, "media", "mediaRange"));
                                                                                                            } else {
                                                                                                                a(xmlPullParser);
                                                                                                            }
                                                                                                        } while (!am6.b(xmlPullParser, "SegmentList"));
                                                                                                        if (ai5Var != null) {
                                                                                                            if (y35VarA == null) {
                                                                                                                y35VarA = ai5Var.a;
                                                                                                            }
                                                                                                            if (listA == null) {
                                                                                                                listA = ai5Var.f;
                                                                                                            }
                                                                                                            if (arrayList == null) {
                                                                                                                arrayList = ai5Var.j;
                                                                                                            }
                                                                                                        }
                                                                                                        return new ai5(y35VarA, j7, j9, j13, j11, listA, j15, arrayList, u56.a(j5), u56.a(j));
                                                                                                    }

                                                                                                    public static bi5 a(XmlPullParser xmlPullParser, bi5 bi5Var, List list, long j, long j2, long j3, long j4, long j5) throws XmlPullParserException, IOException {
                                                                                                        long j6;
                                                                                                        long j7 = bi5Var != null ? bi5Var.b : 1L;
                                                                                                        y35 y35VarA = null;
                                                                                                        String attributeValue = xmlPullParser.getAttributeValue(null, "timescale");
                                                                                                        if (attributeValue != null) {
                                                                                                            j7 = Long.parseLong(attributeValue);
                                                                                                        }
                                                                                                        long j8 = j7;
                                                                                                        long j9 = bi5Var != null ? bi5Var.c : 0L;
                                                                                                        String attributeValue2 = xmlPullParser.getAttributeValue(null, "presentationTimeOffset");
                                                                                                        if (attributeValue2 != null) {
                                                                                                            j9 = Long.parseLong(attributeValue2);
                                                                                                        }
                                                                                                        long j10 = j9;
                                                                                                        long j11 = bi5Var != null ? bi5Var.e : -9223372036854775807L;
                                                                                                        String attributeValue3 = xmlPullParser.getAttributeValue(null, TypedValues.TransitionType.S_DURATION);
                                                                                                        if (attributeValue3 != null) {
                                                                                                            j11 = Long.parseLong(attributeValue3);
                                                                                                        }
                                                                                                        long j12 = j11;
                                                                                                        long j13 = bi5Var != null ? bi5Var.d : 1L;
                                                                                                        String attributeValue4 = xmlPullParser.getAttributeValue(null, "startNumber");
                                                                                                        if (attributeValue4 != null) {
                                                                                                            j13 = Long.parseLong(attributeValue4);
                                                                                                        }
                                                                                                        long j14 = j13;
                                                                                                        int i = 0;
                                                                                                        while (true) {
                                                                                                            if (i >= list.size()) {
                                                                                                                j6 = -1;
                                                                                                                break;
                                                                                                            }
                                                                                                            kn0 kn0Var = (kn0) list.get(i);
                                                                                                            if (oj.a("http://dashif.org/guidelines/last-segment-number", kn0Var.a)) {
                                                                                                                j6 = Long.parseLong(kn0Var.b);
                                                                                                                break;
                                                                                                            }
                                                                                                            i++;
                                                                                                        }
                                                                                                        long j15 = j6;
                                                                                                        long j16 = j4 == C.TIME_UNSET ? j3 : j4;
                                                                                                        long j17 = j16 == Long.MAX_VALUE ? -9223372036854775807L : j16;
                                                                                                        y46 y46VarA = a(xmlPullParser, "media", bi5Var != null ? bi5Var.k : null);
                                                                                                        y46 y46VarA2 = a(xmlPullParser, "initialization", bi5Var != null ? bi5Var.j : null);
                                                                                                        List listA = null;
                                                                                                        do {
                                                                                                            xmlPullParser.next();
                                                                                                            if (am6.c(xmlPullParser, "Initialization")) {
                                                                                                                y35VarA = a(xmlPullParser, "sourceURL", "range");
                                                                                                            } else if (am6.c(xmlPullParser, "SegmentTimeline")) {
                                                                                                                listA = a(xmlPullParser, j8, j2);
                                                                                                            } else {
                                                                                                                a(xmlPullParser);
                                                                                                            }
                                                                                                        } while (!am6.b(xmlPullParser, "SegmentTemplate"));
                                                                                                        if (bi5Var != null) {
                                                                                                            if (y35VarA == null) {
                                                                                                                y35VarA = bi5Var.a;
                                                                                                            }
                                                                                                            if (listA == null) {
                                                                                                                listA = bi5Var.f;
                                                                                                            }
                                                                                                        }
                                                                                                        return new bi5(y35VarA, j8, j10, j14, j15, j12, listA, j17, y46VarA2, y46VarA, u56.a(j5), u56.a(j));
                                                                                                    }

                                                                                                    public static ArrayList a(XmlPullParser xmlPullParser, long j, long j2) throws XmlPullParserException, IOException {
                                                                                                        long j3;
                                                                                                        ArrayList arrayList = new ArrayList();
                                                                                                        long jA = 0;
                                                                                                        long j4 = -9223372036854775807L;
                                                                                                        boolean z = false;
                                                                                                        int i = 0;
                                                                                                        do {
                                                                                                            xmlPullParser.next();
                                                                                                            if (am6.c(xmlPullParser, ExifInterface.LATITUDE_SOUTH)) {
                                                                                                                String attributeValue = xmlPullParser.getAttributeValue(null, "t");
                                                                                                                long j5 = attributeValue == null ? -9223372036854775807L : Long.parseLong(attributeValue);
                                                                                                                if (z) {
                                                                                                                    int i2 = i;
                                                                                                                    j3 = j5;
                                                                                                                    jA = a(arrayList, jA, j4, i2, j3);
                                                                                                                } else {
                                                                                                                    j3 = j5;
                                                                                                                }
                                                                                                                if (j3 != C.TIME_UNSET) {
                                                                                                                    jA = j3;
                                                                                                                }
                                                                                                                String attributeValue2 = xmlPullParser.getAttributeValue(null, "d");
                                                                                                                j4 = attributeValue2 == null ? -9223372036854775807L : Long.parseLong(attributeValue2);
                                                                                                                String attributeValue3 = xmlPullParser.getAttributeValue(null, "r");
                                                                                                                i = attributeValue3 == null ? 0 : Integer.parseInt(attributeValue3);
                                                                                                                z = true;
                                                                                                            } else {
                                                                                                                a(xmlPullParser);
                                                                                                            }
                                                                                                        } while (!am6.b(xmlPullParser, "SegmentTimeline"));
                                                                                                        if (!z) {
                                                                                                            return arrayList;
                                                                                                        }
                                                                                                        a(arrayList, jA, j4, i, u56.a(j2, j, 1000L));
                                                                                                        return arrayList;
                                                                                                    }

                                                                                                    public static long a(ArrayList arrayList, long j, long j2, int i, long j3) {
                                                                                                        int i2;
                                                                                                        if (i >= 0) {
                                                                                                            i2 = i + 1;
                                                                                                        } else {
                                                                                                            int i3 = u56.a;
                                                                                                            i2 = (int) ((((j3 - j) + j2) - 1) / j2);
                                                                                                        }
                                                                                                        for (int i4 = 0; i4 < i2; i4++) {
                                                                                                            arrayList.add(new ci5(j, j2));
                                                                                                            j += j2;
                                                                                                        }
                                                                                                        return j;
                                                                                                    }

                                                                                                    /* JADX WARN: Failed to find 'out' block for switch in B:31:0x00cc. Please report as an issue. */
                                                                                                    public static y46 a(XmlPullParser xmlPullParser, String str, y46 y46Var) {
                                                                                                        y46 y46Var2;
                                                                                                        String strSubstring;
                                                                                                        y46 y46Var3 = null;
                                                                                                        String attributeValue = xmlPullParser.getAttributeValue(null, str);
                                                                                                        if (attributeValue == null) {
                                                                                                            return y46Var;
                                                                                                        }
                                                                                                        String[] strArr = new String[5];
                                                                                                        int[] iArr = new int[4];
                                                                                                        String[] strArr2 = new String[4];
                                                                                                        strArr[0] = "";
                                                                                                        int length = 0;
                                                                                                        int i = 0;
                                                                                                        while (length < attributeValue.length()) {
                                                                                                            int iIndexOf = attributeValue.indexOf("$", length);
                                                                                                            if (iIndexOf == -1) {
                                                                                                                strArr[i] = strArr[i] + attributeValue.substring(length);
                                                                                                                length = attributeValue.length();
                                                                                                            } else if (iIndexOf != length) {
                                                                                                                strArr[i] = strArr[i] + attributeValue.substring(length, iIndexOf);
                                                                                                                length = iIndexOf;
                                                                                                            } else if (attributeValue.startsWith("$$", length)) {
                                                                                                                strArr[i] = defpackage.me0.d(new StringBuilder(), strArr[i], "$");
                                                                                                                length += 2;
                                                                                                            } else {
                                                                                                                int i2 = length + 1;
                                                                                                                int iIndexOf2 = attributeValue.indexOf("$", i2);
                                                                                                                String strSubstring2 = attributeValue.substring(i2, iIndexOf2);
                                                                                                                if (strSubstring2.equals("RepresentationID")) {
                                                                                                                    iArr[i] = 1;
                                                                                                                    y46Var2 = y46Var3;
                                                                                                                } else {
                                                                                                                    int iIndexOf3 = strSubstring2.indexOf("%0");
                                                                                                                    if (iIndexOf3 != -1) {
                                                                                                                        strSubstring = strSubstring2.substring(iIndexOf3);
                                                                                                                        if (strSubstring.endsWith("d")) {
                                                                                                                            y46Var2 = y46Var3;
                                                                                                                        } else {
                                                                                                                            y46Var2 = y46Var3;
                                                                                                                            if (!strSubstring.endsWith("x") && !strSubstring.endsWith("X")) {
                                                                                                                                strSubstring = strSubstring.concat("d");
                                                                                                                            }
                                                                                                                        }
                                                                                                                        strSubstring2 = strSubstring2.substring(0, iIndexOf3);
                                                                                                                    } else {
                                                                                                                        y46Var2 = y46Var3;
                                                                                                                        strSubstring = "%01d";
                                                                                                                    }
                                                                                                                    switch (strSubstring2) {
                                                                                                                        case "Number":
                                                                                                                            iArr[i] = 2;
                                                                                                                            break;
                                                                                                                        case "Time":
                                                                                                                            iArr[i] = 4;
                                                                                                                            break;
                                                                                                                        case "Bandwidth":
                                                                                                                            iArr[i] = 3;
                                                                                                                            break;
                                                                                                                        default:
                                                                                                                            defpackage.fg.c("Invalid template: ".concat(attributeValue));
                                                                                                                            return y46Var2;
                                                                                                                    }
                                                                                                                    strArr2[i] = strSubstring;
                                                                                                                }
                                                                                                                i++;
                                                                                                                strArr[i] = "";
                                                                                                                length = iIndexOf2 + 1;
                                                                                                                y46Var3 = y46Var2;
                                                                                                            }
                                                                                                        }
                                                                                                        return new y46(strArr, iArr, strArr2, i);
                                                                                                    }

                                                                                                    public static y35 a(XmlPullParser xmlPullParser, String str, String str2) {
                                                                                                        long j;
                                                                                                        String attributeValue = xmlPullParser.getAttributeValue(null, str);
                                                                                                        String attributeValue2 = xmlPullParser.getAttributeValue(null, str2);
                                                                                                        long j2 = -1;
                                                                                                        if (attributeValue2 != null) {
                                                                                                            String[] strArrSplit = attributeValue2.split("-");
                                                                                                            j = Long.parseLong(strArrSplit[0]);
                                                                                                            if (strArrSplit.length == 2) {
                                                                                                                j2 = (Long.parseLong(strArrSplit[1]) - j) + 1;
                                                                                                            }
                                                                                                        } else {
                                                                                                            j = 0;
                                                                                                        }
                                                                                                        return new y35(attributeValue, j, j2);
                                                                                                    }

                                                                                                    public static ArrayList a(XmlPullParser xmlPullParser, ArrayList arrayList, boolean z) throws XmlPullParserException, IOException {
                                                                                                        int i;
                                                                                                        String attributeValue = xmlPullParser.getAttributeValue(null, "dvb:priority");
                                                                                                        if (attributeValue != null) {
                                                                                                            i = Integer.parseInt(attributeValue);
                                                                                                        } else {
                                                                                                            i = z ? 1 : Integer.MIN_VALUE;
                                                                                                        }
                                                                                                        String attributeValue2 = xmlPullParser.getAttributeValue(null, "dvb:weight");
                                                                                                        int i2 = attributeValue2 != null ? Integer.parseInt(attributeValue2) : 1;
                                                                                                        String attributeValue3 = xmlPullParser.getAttributeValue(null, "serviceLocation");
                                                                                                        String text = "";
                                                                                                        do {
                                                                                                            xmlPullParser.next();
                                                                                                            if (xmlPullParser.getEventType() == 4) {
                                                                                                                text = xmlPullParser.getText();
                                                                                                            } else {
                                                                                                                a(xmlPullParser);
                                                                                                            }
                                                                                                        } while (!am6.b(xmlPullParser, "BaseURL"));
                                                                                                        if (text != null && o46.a(text)[0] != -1) {
                                                                                                            if (attributeValue3 == null) {
                                                                                                                attributeValue3 = text;
                                                                                                            }
                                                                                                            return xt3.a(new ms(i, i2, text, attributeValue3));
                                                                                                        }
                                                                                                        ArrayList arrayList2 = new ArrayList();
                                                                                                        for (int i3 = 0; i3 < arrayList.size(); i3++) {
                                                                                                            ms msVar = (ms) arrayList.get(i3);
                                                                                                            String strA = o46.a(msVar.a, text);
                                                                                                            String str = attributeValue3 == null ? strA : attributeValue3;
                                                                                                            if (z) {
                                                                                                                i = msVar.c;
                                                                                                                i2 = msVar.d;
                                                                                                                str = msVar.b;
                                                                                                            }
                                                                                                            arrayList2.add(new ms(i, i2, strA, str));
                                                                                                        }
                                                                                                        return arrayList2;
                                                                                                    }

                                                                                                    public static long a(XmlPullParser xmlPullParser, long j) {
                                                                                                        String attributeValue = xmlPullParser.getAttributeValue(null, "availabilityTimeOffset");
                                                                                                        if (attributeValue == null) {
                                                                                                            return j;
                                                                                                        }
                                                                                                        if ("INF".equals(attributeValue)) {
                                                                                                            return Long.MAX_VALUE;
                                                                                                        }
                                                                                                        return (long) (Float.parseFloat(attributeValue) * 1000000.0f);
                                                                                                    }

                                                                                                    public static kn0 a(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
                                                                                                        String attributeValue = xmlPullParser.getAttributeValue(null, "schemeIdUri");
                                                                                                        if (attributeValue == null) {
                                                                                                            attributeValue = "";
                                                                                                        }
                                                                                                        String attributeValue2 = xmlPullParser.getAttributeValue(null, "value");
                                                                                                        if (attributeValue2 == null) {
                                                                                                            attributeValue2 = null;
                                                                                                        }
                                                                                                        String attributeValue3 = xmlPullParser.getAttributeValue(null, TtmlNode.ATTR_ID);
                                                                                                        String str2 = attributeValue3 != null ? attributeValue3 : null;
                                                                                                        do {
                                                                                                            xmlPullParser.next();
                                                                                                        } while (!am6.b(xmlPullParser, str));
                                                                                                        return new kn0(attributeValue, attributeValue2, str2);
                                                                                                    }

                                                                                                    public static long a(XmlPullParser xmlPullParser, String str, long j) {
                                                                                                        String attributeValue = xmlPullParser.getAttributeValue(null, str);
                                                                                                        if (attributeValue == null) {
                                                                                                            return j;
                                                                                                        }
                                                                                                        Matcher matcher = u56.h.matcher(attributeValue);
                                                                                                        if (matcher.matches()) {
                                                                                                            boolean zIsEmpty = TextUtils.isEmpty(matcher.group(1));
                                                                                                            String strGroup = matcher.group(3);
                                                                                                            double d2 = strGroup != null ? Double.parseDouble(strGroup) * 3.1556908E7d : 0.0d;
                                                                                                            String strGroup2 = matcher.group(5);
                                                                                                            double d3 = d2 + (strGroup2 != null ? Double.parseDouble(strGroup2) * 2629739.0d : 0.0d);
                                                                                                            String strGroup3 = matcher.group(7);
                                                                                                            double d4 = d3 + (strGroup3 != null ? Double.parseDouble(strGroup3) * 86400.0d : 0.0d);
                                                                                                            String strGroup4 = matcher.group(10);
                                                                                                            double d5 = d4 + (strGroup4 != null ? Double.parseDouble(strGroup4) * 3600.0d : 0.0d);
                                                                                                            String strGroup5 = matcher.group(12);
                                                                                                            double d6 = d5 + (strGroup5 != null ? Double.parseDouble(strGroup5) * 60.0d : 0.0d);
                                                                                                            String strGroup6 = matcher.group(14);
                                                                                                            long j2 = (long) ((d6 + (strGroup6 != null ? Double.parseDouble(strGroup6) : 0.0d)) * 1000.0d);
                                                                                                            return !zIsEmpty ? -j2 : j2;
                                                                                                        }
                                                                                                        return (long) (Double.parseDouble(attributeValue) * 3600.0d * 1000.0d);
                                                                                                    }
                                                                                                }
