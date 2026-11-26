package yads;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import defpackage.ra8;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class dd6 {
    public static String a() {
        try {
            MediaCodecInfo[] codecInfos = new MediaCodecList(0).getCodecInfos();
            ArrayList arrayList = new ArrayList();
            for (MediaCodecInfo mediaCodecInfo : codecInfos) {
                if (!mediaCodecInfo.isEncoder()) {
                    arrayList.add(mediaCodecInfo);
                }
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : arrayList) {
                for (String str : ((MediaCodecInfo) obj).getSupportedTypes()) {
                    if (ra8.C(str, "video/", false)) {
                        arrayList2.add(obj);
                        break;
                    }
                }
            }
            ArrayList arrayList3 = new ArrayList(defpackage.kn1.q(arrayList2, 10));
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                arrayList3.add(((MediaCodecInfo) it.next()).getName());
            }
            ArrayList arrayList4 = !arrayList3.isEmpty() ? arrayList3 : null;
            if (arrayList4 != null) {
                return defpackage.qn1.a0(arrayList4, StringUtils.COMMA, null, null, 0, null, 62);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }
}
