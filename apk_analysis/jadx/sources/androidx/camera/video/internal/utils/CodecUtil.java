package androidx.camera.video.internal.utils;

import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.util.LruCache;
import androidx.camera.video.internal.encoder.EncoderConfig;
import androidx.camera.video.internal.encoder.InvalidConfigException;
import defpackage.j59;
import defpackage.kx2;
import defpackage.nn1;
import defpackage.qn1;
import defpackage.ra8;
import defpackage.yr;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class CodecUtil {
    private static final int MAX_CODEC_INFO_CACHE_COUNT = 10;
    private static List<String> allAudioEncoderMimeTypesCache;
    private static List<MediaCodecInfo> allEncoderInfosCache;
    private static List<String> allEncoderMimeTypesCache;
    private static List<String> allVideoEncoderMimeTypesCache;
    public static final CodecUtil INSTANCE = new CodecUtil();
    private static final LruCache<String, MediaCodecInfo> codecInfoCache = new LruCache<>(10);

    private CodecUtil() {
    }

    private final MediaCodec createCodec(String str) throws InvalidConfigException {
        try {
            MediaCodec mediaCodecCreateEncoderByType = MediaCodec.createEncoderByType(str);
            mediaCodecCreateEncoderByType.getClass();
            return mediaCodecCreateEncoderByType;
        } catch (IOException e) {
            throw new InvalidConfigException(e);
        } catch (IllegalArgumentException e2) {
            throw new InvalidConfigException(e2);
        }
    }

    public static final MediaCodecInfo findCodecAndGetCodecInfo(String str) {
        MediaCodecInfo mediaCodecInfo;
        str.getClass();
        LruCache<String, MediaCodecInfo> lruCache = codecInfoCache;
        synchronized (lruCache) {
            mediaCodecInfo = lruCache.get(str);
            j59 j59Var = j59.a;
        }
        if (mediaCodecInfo != null) {
            return mediaCodecInfo;
        }
        MediaCodec mediaCodecCreateCodec = null;
        try {
            mediaCodecCreateCodec = INSTANCE.createCodec(str);
            MediaCodecInfo codecInfo = mediaCodecCreateCodec.getCodecInfo();
            synchronized (lruCache) {
                lruCache.put(str, codecInfo);
            }
            mediaCodecCreateCodec.release();
            return codecInfo;
        } catch (Throwable th) {
            if (mediaCodecCreateCodec != null) {
                mediaCodecCreateCodec.release();
            }
            throw th;
        }
    }

    private final List<String> getAllAudioEncoderMimeTypes() {
        List<String> list = allAudioEncoderMimeTypesCache;
        List<String> list2 = list;
        if (list == null) {
            List<String> allEncoderMimeTypes = getAllEncoderMimeTypes();
            ArrayList arrayList = new ArrayList();
            for (Object obj : allEncoderMimeTypes) {
                if (ra8.C((String) obj, "audio/", false)) {
                    arrayList.add(obj);
                }
            }
            allAudioEncoderMimeTypesCache = arrayList;
            list2 = arrayList;
        }
        return list2;
    }

    private final List<MediaCodecInfo> getAllEncoderInfos() {
        List<MediaCodecInfo> list = allEncoderInfosCache;
        if (list != null) {
            return list;
        }
        MediaCodecInfo[] codecInfos = new MediaCodecList(0).getCodecInfos();
        codecInfos.getClass();
        ArrayList arrayList = new ArrayList();
        for (MediaCodecInfo mediaCodecInfo : codecInfos) {
            if (mediaCodecInfo.isEncoder()) {
                arrayList.add(mediaCodecInfo);
            }
        }
        allEncoderInfosCache = arrayList;
        return arrayList;
    }

    private final List<String> getAllEncoderMimeTypes() {
        List<String> list = allEncoderMimeTypesCache;
        if (list != null) {
            return list;
        }
        List<MediaCodecInfo> allEncoderInfos = getAllEncoderInfos();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = allEncoderInfos.iterator();
        while (it.hasNext()) {
            String[] supportedTypes = ((MediaCodecInfo) it.next()).getSupportedTypes();
            nn1.s(supportedTypes != null ? yr.h0(supportedTypes) : kx2.b, arrayList);
        }
        List<String> listT0 = qn1.t0(qn1.x0(arrayList));
        allEncoderMimeTypesCache = listT0;
        return listT0;
    }

    private final List<String> getAllVideoEncoderMimeTypes() {
        List<String> list = allVideoEncoderMimeTypesCache;
        List<String> list2 = list;
        if (list == null) {
            List<String> allEncoderMimeTypes = getAllEncoderMimeTypes();
            ArrayList arrayList = new ArrayList();
            for (Object obj : allEncoderMimeTypes) {
                if (ra8.C((String) obj, "video/", false)) {
                    arrayList.add(obj);
                }
            }
            allVideoEncoderMimeTypesCache = arrayList;
            list2 = arrayList;
        }
        return list2;
    }

    public static final List<String> getAudioEncoderMimeTypes() {
        return INSTANCE.getAllAudioEncoderMimeTypes();
    }

    public static final List<String> getVideoEncoderMimeTypes() {
        return INSTANCE.getAllVideoEncoderMimeTypes();
    }

    public final void reset() {
        allEncoderInfosCache = null;
        allEncoderMimeTypesCache = null;
        allVideoEncoderMimeTypesCache = null;
        allAudioEncoderMimeTypesCache = null;
        LruCache<String, MediaCodecInfo> lruCache = codecInfoCache;
        synchronized (lruCache) {
            lruCache.evictAll();
            j59 j59Var = j59.a;
        }
    }

    public static final MediaCodec createCodec(EncoderConfig encoderConfig) {
        encoderConfig.getClass();
        CodecUtil codecUtil = INSTANCE;
        String mimeType = encoderConfig.getMimeType();
        mimeType.getClass();
        return codecUtil.createCodec(mimeType);
    }
}
