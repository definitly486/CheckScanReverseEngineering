package androidx.media3.datasource.cache;

import androidx.media3.common.C;
import androidx.media3.common.util.Util;
import defpackage.k2;
import defpackage.o8;
import java.io.File;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
final class SimpleCacheSpan extends CacheSpan {
    private static final Pattern CACHE_FILE_PATTERN_V1 = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v1\\.exo$", 32);
    private static final Pattern CACHE_FILE_PATTERN_V2 = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v2\\.exo$", 32);
    private static final Pattern CACHE_FILE_PATTERN_V3 = Pattern.compile("^(\\d+)\\.(\\d+)\\.(\\d+)\\.v3\\.exo$", 32);
    static final String COMMON_SUFFIX = ".exo";
    private static final String SUFFIX = ".v3.exo";

    private SimpleCacheSpan(String str, long j, long j2, long j3, File file) {
        super(str, j, j2, j3, file);
    }

    public static SimpleCacheSpan createCacheEntry(File file, long j, long j2, CachedContentIndex cachedContentIndex) {
        long j3;
        String name = file.getName();
        if (!name.endsWith(SUFFIX)) {
            file = upgradeFile(file, cachedContentIndex);
            if (file == null) {
                return null;
            }
            name = file.getName();
        }
        File file2 = file;
        Matcher matcher = CACHE_FILE_PATTERN_V3.matcher(name);
        if (!matcher.matches()) {
            return null;
        }
        String strGroup = matcher.group(1);
        strGroup.getClass();
        String keyForId = cachedContentIndex.getKeyForId(Integer.parseInt(strGroup));
        if (keyForId == null) {
            return null;
        }
        if (j == -1) {
            j = file2.length();
        }
        long j4 = j;
        if (j4 == 0) {
            return null;
        }
        String strGroup2 = matcher.group(2);
        strGroup2.getClass();
        long j5 = Long.parseLong(strGroup2);
        if (j2 == C.TIME_UNSET) {
            String strGroup3 = matcher.group(3);
            strGroup3.getClass();
            j3 = Long.parseLong(strGroup3);
        } else {
            j3 = j2;
        }
        return new SimpleCacheSpan(keyForId, j5, j4, j3, file2);
    }

    public static SimpleCacheSpan createHole(String str, long j, long j2) {
        return new SimpleCacheSpan(str, j, j2, C.TIME_UNSET, null);
    }

    public static SimpleCacheSpan createLookup(String str, long j) {
        return new SimpleCacheSpan(str, j, -1L, C.TIME_UNSET, null);
    }

    public static File getCacheFile(File file, int i, long j, long j2) {
        StringBuilder sb = new StringBuilder();
        sb.append(i);
        sb.append(".");
        sb.append(j);
        sb.append(".");
        return new File(file, k2.b(j2, SUFFIX, sb));
    }

    private static File upgradeFile(File file, CachedContentIndex cachedContentIndex) {
        String strGroup;
        String name = file.getName();
        Matcher matcher = CACHE_FILE_PATTERN_V2.matcher(name);
        if (matcher.matches()) {
            String strGroup2 = matcher.group(1);
            strGroup2.getClass();
            strGroup = Util.unescapeFileName(strGroup2);
        } else {
            matcher = CACHE_FILE_PATTERN_V1.matcher(name);
            if (matcher.matches()) {
                strGroup = matcher.group(1);
                strGroup.getClass();
            } else {
                strGroup = null;
            }
        }
        if (strGroup == null) {
            return null;
        }
        File parentFile = file.getParentFile();
        parentFile.getClass();
        int iAssignIdForKey = cachedContentIndex.assignIdForKey(strGroup);
        String strGroup3 = matcher.group(2);
        strGroup3.getClass();
        long j = Long.parseLong(strGroup3);
        String strGroup4 = matcher.group(3);
        strGroup4.getClass();
        File cacheFile = getCacheFile(parentFile, iAssignIdForKey, j, Long.parseLong(strGroup4));
        if (file.renameTo(cacheFile)) {
            return cacheFile;
        }
        return null;
    }

    public SimpleCacheSpan copyWithFileAndLastTouchTimestamp(File file, long j) {
        o8.r(this.isCached);
        return new SimpleCacheSpan(this.key, this.position, this.length, j, file);
    }

    public static SimpleCacheSpan createCacheEntry(File file, long j, CachedContentIndex cachedContentIndex) {
        return createCacheEntry(file, j, C.TIME_UNSET, cachedContentIndex);
    }
}
