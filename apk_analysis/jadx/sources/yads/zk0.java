package yads;

import android.net.Uri;
import androidx.media3.common.MimeTypes;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class zk0 implements bt2 {
    public static final int[] a = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 16, 15, 14};
    public static final yk0 b = new yk0(new defpackage.js2());
    public static final yk0 c = new yk0(new defpackage.ln());

    public static Constructor c() {
        if (Boolean.TRUE.equals(Class.forName("com.monetization.ads.exo.ext.flac.FlacLibrary").getMethod("isAvailable", null).invoke(null, null))) {
            return Class.forName("com.monetization.ads.exo.ext.flac.FlacExtractor").asSubclass(ws2.class).getConstructor(Integer.TYPE);
        }
        return null;
    }

    public static Constructor d() {
        return Class.forName("com.monetization.ads.exo.decoder.midi.MidiExtractor").asSubclass(ws2.class).getConstructor(null);
    }

    /* JADX WARN: Code duplicated, block: B:160:0x0200 A[Catch: all -> 0x0025, TryCatch #0 {all -> 0x0025, blocks: (B:3:0x0001, B:5:0x0017, B:8:0x001e, B:160:0x0200, B:161:0x0203, B:261:0x0379, B:264:0x037f, B:267:0x0385, B:268:0x0388, B:269:0x038b, B:164:0x020b, B:166:0x0213, B:169:0x021d, B:172:0x0229, B:174:0x0231, B:177:0x023b, B:180:0x0246, B:183:0x0252, B:186:0x025e, B:188:0x0266, B:190:0x026e, B:193:0x0278, B:195:0x0286, B:198:0x0290, B:201:0x029b, B:203:0x02a3, B:205:0x02b1, B:207:0x02bf, B:210:0x02cf, B:212:0x02dd, B:215:0x02e7, B:217:0x02ef, B:219:0x02f7, B:221:0x02ff, B:224:0x0309, B:226:0x0311, B:229:0x0320, B:231:0x0328, B:234:0x0331, B:236:0x0339, B:239:0x0342, B:241:0x034a, B:244:0x0353, B:15:0x0045, B:34:0x007e, B:35:0x0082, B:141:0x01d6, B:37:0x0087, B:41:0x0095, B:45:0x00a3, B:49:0x00b1, B:53:0x00bf, B:57:0x00cd, B:61:0x00db, B:65:0x00e9, B:69:0x00f7, B:73:0x0105, B:77:0x0112, B:81:0x0120, B:85:0x012d, B:89:0x013a, B:93:0x0147, B:97:0x0154, B:101:0x0161, B:105:0x016e, B:109:0x017b, B:113:0x0186, B:117:0x0191, B:121:0x019d, B:125:0x01a9, B:129:0x01b4, B:133:0x01bf, B:137:0x01cb, B:22:0x005b, B:26:0x0067, B:30:0x0073), top: B:274:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:163:0x0209  */
    /* JADX WARN: Code duplicated, block: B:164:0x020b A[Catch: all -> 0x0025, TryCatch #0 {all -> 0x0025, blocks: (B:3:0x0001, B:5:0x0017, B:8:0x001e, B:160:0x0200, B:161:0x0203, B:261:0x0379, B:264:0x037f, B:267:0x0385, B:268:0x0388, B:269:0x038b, B:164:0x020b, B:166:0x0213, B:169:0x021d, B:172:0x0229, B:174:0x0231, B:177:0x023b, B:180:0x0246, B:183:0x0252, B:186:0x025e, B:188:0x0266, B:190:0x026e, B:193:0x0278, B:195:0x0286, B:198:0x0290, B:201:0x029b, B:203:0x02a3, B:205:0x02b1, B:207:0x02bf, B:210:0x02cf, B:212:0x02dd, B:215:0x02e7, B:217:0x02ef, B:219:0x02f7, B:221:0x02ff, B:224:0x0309, B:226:0x0311, B:229:0x0320, B:231:0x0328, B:234:0x0331, B:236:0x0339, B:239:0x0342, B:241:0x034a, B:244:0x0353, B:15:0x0045, B:34:0x007e, B:35:0x0082, B:141:0x01d6, B:37:0x0087, B:41:0x0095, B:45:0x00a3, B:49:0x00b1, B:53:0x00bf, B:57:0x00cd, B:61:0x00db, B:65:0x00e9, B:69:0x00f7, B:73:0x0105, B:77:0x0112, B:81:0x0120, B:85:0x012d, B:89:0x013a, B:93:0x0147, B:97:0x0154, B:101:0x0161, B:105:0x016e, B:109:0x017b, B:113:0x0186, B:117:0x0191, B:121:0x019d, B:125:0x01a9, B:129:0x01b4, B:133:0x01bf, B:137:0x01cb, B:22:0x005b, B:26:0x0067, B:30:0x0073), top: B:274:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:258:0x0374  */
    /* JADX WARN: Code duplicated, block: B:260:0x0377 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:264:0x037f A[Catch: all -> 0x0025, TryCatch #0 {all -> 0x0025, blocks: (B:3:0x0001, B:5:0x0017, B:8:0x001e, B:160:0x0200, B:161:0x0203, B:261:0x0379, B:264:0x037f, B:267:0x0385, B:268:0x0388, B:269:0x038b, B:164:0x020b, B:166:0x0213, B:169:0x021d, B:172:0x0229, B:174:0x0231, B:177:0x023b, B:180:0x0246, B:183:0x0252, B:186:0x025e, B:188:0x0266, B:190:0x026e, B:193:0x0278, B:195:0x0286, B:198:0x0290, B:201:0x029b, B:203:0x02a3, B:205:0x02b1, B:207:0x02bf, B:210:0x02cf, B:212:0x02dd, B:215:0x02e7, B:217:0x02ef, B:219:0x02f7, B:221:0x02ff, B:224:0x0309, B:226:0x0311, B:229:0x0320, B:231:0x0328, B:234:0x0331, B:236:0x0339, B:239:0x0342, B:241:0x034a, B:244:0x0353, B:15:0x0045, B:34:0x007e, B:35:0x0082, B:141:0x01d6, B:37:0x0087, B:41:0x0095, B:45:0x00a3, B:49:0x00b1, B:53:0x00bf, B:57:0x00cd, B:61:0x00db, B:65:0x00e9, B:69:0x00f7, B:73:0x0105, B:77:0x0112, B:81:0x0120, B:85:0x012d, B:89:0x013a, B:93:0x0147, B:97:0x0154, B:101:0x0161, B:105:0x016e, B:109:0x017b, B:113:0x0186, B:117:0x0191, B:121:0x019d, B:125:0x01a9, B:129:0x01b4, B:133:0x01bf, B:137:0x01cb, B:22:0x005b, B:26:0x0067, B:30:0x0073), top: B:274:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:266:0x0383 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:278:0x0388 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException
    	at java.base/java.util.Objects.requireNonNull(Objects.java:209)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.prepareMergedSwitchCases(SwitchOverStringVisitor.java:250)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:111)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:72)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:140)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterative(DepthRegionTraversal.java:47)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visit(SwitchOverStringVisitor.java:66)
     */
    @Override // yads.bt2
    public final synchronized ws2[] a(Uri uri, Map map) {
        ArrayList arrayList;
        int i;
        String lastPathSegment;
        int i2;
        int i3;
        int i4;
        try {
            int[] iArr = a;
            arrayList = new ArrayList(16);
            List list = (List) map.get("Content-Type");
            String str = (list == null || list.isEmpty()) ? null : (String) list.get(0);
            if (str != null) {
                ArrayList arrayList2 = z84.a;
                int iHashCode = str.hashCode();
                if (iHashCode != -1007807498) {
                    if (iHashCode != -586683234) {
                        if (iHashCode == 187090231 && str.equals("audio/mp3")) {
                            str = MimeTypes.AUDIO_MPEG;
                        }
                    } else if (str.equals("audio/x-wav")) {
                        str = MimeTypes.AUDIO_WAV;
                    }
                } else if (str.equals("audio/x-flac")) {
                    str = MimeTypes.AUDIO_FLAC;
                }
                switch (str) {
                    case "audio/eac3-joc":
                    case "audio/ac3":
                    case "audio/eac3":
                        i = 0;
                        break;
                    case "video/mp2p":
                        i = 10;
                        break;
                    case "video/mp2t":
                        i = 11;
                        break;
                    case "video/webm":
                    case "audio/x-matroska":
                    case "application/webm":
                    case "audio/webm":
                    case "video/x-matroska":
                        i = 6;
                        break;
                    case "audio/amr-wb":
                    case "audio/amr":
                    case "audio/3gpp":
                        i = 3;
                        break;
                    case "image/jpeg":
                        i = 14;
                        break;
                    case "application/mp4":
                    case "audio/mp4":
                    case "video/mp4":
                        i = 8;
                        break;
                    case "video/x-msvideo":
                        i = 16;
                        break;
                    case "text/vtt":
                        i = 13;
                        break;
                    case "video/x-flv":
                        i = 5;
                        break;
                    case "audio/ac4":
                        i = 1;
                        break;
                    case "audio/ogg":
                        i = 9;
                        break;
                    case "audio/wav":
                        i = 12;
                        break;
                    case "audio/flac":
                        i = 4;
                        break;
                    case "audio/midi":
                        i = 15;
                        break;
                    case "audio/mpeg":
                        i = 7;
                        break;
                }
                if (i != -1) {
                    a(i, arrayList);
                }
                lastPathSegment = uri.getLastPathSegment();
                if (lastPathSegment != null) {
                    if (!lastPathSegment.endsWith(".ac3") || lastPathSegment.endsWith(".ec3")) {
                        i2 = 0;
                    } else if (lastPathSegment.endsWith(".ac4")) {
                        i2 = 1;
                    } else if (lastPathSegment.endsWith(".adts") || lastPathSegment.endsWith(".aac")) {
                        i2 = 2;
                    } else if (lastPathSegment.endsWith(".amr")) {
                        i2 = 3;
                    } else if (lastPathSegment.endsWith(".flac")) {
                        i2 = 4;
                    } else if (lastPathSegment.endsWith(".flv")) {
                        i2 = 5;
                    } else if (lastPathSegment.endsWith(".mid") || lastPathSegment.endsWith(".midi") || lastPathSegment.endsWith(".smf")) {
                        i2 = 15;
                    } else if (lastPathSegment.startsWith(".mk", lastPathSegment.length() - 4) || lastPathSegment.endsWith(".webm")) {
                        i2 = 6;
                    } else if (lastPathSegment.endsWith(".mp3")) {
                        i2 = 7;
                    } else if (lastPathSegment.endsWith(".mp4") || lastPathSegment.startsWith(".m4", lastPathSegment.length() - 4) || lastPathSegment.startsWith(".mp4", lastPathSegment.length() - 5) || lastPathSegment.startsWith(".cmf", lastPathSegment.length() - 5)) {
                        i2 = 8;
                    } else if (lastPathSegment.startsWith(".og", lastPathSegment.length() - 4) || lastPathSegment.endsWith(".opus")) {
                        i2 = 9;
                    } else if (lastPathSegment.endsWith(".ps") || lastPathSegment.endsWith(".mpeg") || lastPathSegment.endsWith(".mpg") || lastPathSegment.endsWith(".m2p")) {
                        i2 = 10;
                    } else if (lastPathSegment.endsWith(".ts") || lastPathSegment.startsWith(".ts", lastPathSegment.length() - 4)) {
                        i2 = 11;
                    } else if (lastPathSegment.endsWith(".wav") || lastPathSegment.endsWith(".wave")) {
                        i2 = 12;
                    } else if (lastPathSegment.endsWith(".vtt") || lastPathSegment.endsWith(".webvtt")) {
                        i2 = 13;
                    } else if (lastPathSegment.endsWith(".jpg") || lastPathSegment.endsWith(".jpeg")) {
                        i2 = 14;
                    } else if (lastPathSegment.endsWith(".avi")) {
                        i2 = 16;
                    }
                    if (i2 != -1 && i2 != i) {
                        a(i2, arrayList);
                    }
                    for (i3 = 0; i3 < 16; i3++) {
                        i4 = iArr[i3];
                        if (i4 == i && i4 != i2) {
                            a(i4, arrayList);
                        }
                    }
                }
                i2 = -1;
                if (i2 != -1) {
                    a(i2, arrayList);
                }
                while (i3 < 16) {
                    i4 = iArr[i3];
                    if (i4 == i) {
                    }
                }
            }
            i = -1;
            if (i != -1) {
                a(i, arrayList);
            }
            lastPathSegment = uri.getLastPathSegment();
            if (lastPathSegment != null) {
                if (lastPathSegment.endsWith(".ac3")) {
                    i2 = 0;
                } else {
                    i2 = 0;
                }
                if (i2 != -1) {
                    a(i2, arrayList);
                }
                while (i3 < 16) {
                    i4 = iArr[i3];
                    if (i4 == i) {
                    }
                }
            }
            i2 = -1;
            if (i2 != -1) {
                a(i2, arrayList);
            }
            while (i3 < 16) {
                i4 = iArr[i3];
                if (i4 == i) {
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return (ws2[]) arrayList.toArray(new ws2[arrayList.size()]);
    }

    @Override // yads.bt2
    public final synchronized ws2[] b() {
        return a(Uri.EMPTY, new HashMap());
    }

    public static void a(int i, ArrayList arrayList) {
        switch (i) {
            case 0:
                arrayList.add(new d0());
                break;
            case 1:
                arrayList.add(new g0());
                break;
            case 2:
                arrayList.add(new wb());
                break;
            case 3:
                arrayList.add(new fe());
                break;
            case 4:
                ws2 ws2VarA = b.a(0);
                if (ws2VarA != null) {
                    arrayList.add(ws2VarA);
                } else {
                    arrayList.add(new cy2());
                }
                break;
            case 5:
                arrayList.add(new py2());
                break;
            case 6:
                arrayList.add(new mx3(0));
                break;
            case 7:
                arrayList.add(new ua4());
                break;
            case 8:
                arrayList.add(new f03());
                arrayList.add(new wa4());
                break;
            case 9:
                arrayList.add(new np4());
                break;
            case 10:
                arrayList.add(new z25());
                break;
            case 11:
                arrayList.add(new q26());
                break;
            case 12:
                arrayList.add(new oj6());
                break;
            case 14:
                arrayList.add(new kq3());
                break;
            case 15:
                ws2 ws2VarA2 = c.a(new Object[0]);
                if (ws2VarA2 != null) {
                    arrayList.add(ws2VarA2);
                }
                break;
            case 16:
                arrayList.add(new hn());
                break;
        }
    }
}
