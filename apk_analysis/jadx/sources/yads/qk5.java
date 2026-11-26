package yads;

import androidx.media3.common.C;
import java.io.File;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public final class qk5 extends jw {
    public static final Pattern h = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v1\\.exo$", 32);
    public static final Pattern i = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v2\\.exo$", 32);
    public static final Pattern j = Pattern.compile("^(\\d+)\\.(\\d+)\\.(\\d+)\\.v3\\.exo$", 32);

    public qk5(String str, long j2, long j3, long j4, File file) {
        super(str, j2, j3, j4, file);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0085 A[PHI: r3
      0x0085: PHI (r3v10 java.util.regex.Matcher) = (r3v4 java.util.regex.Matcher), (r3v2 java.util.regex.Matcher) binds: [B:26:0x0096, B:22:0x0083] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:34:0x00e8  */
    public static qk5 a(File file, long j2, long j3, ax axVar) {
        File file2;
        long j4;
        String strGroup;
        File file3;
        String name = file.getName();
        if (name.endsWith(".v3.exo")) {
            file2 = file;
        } else {
            String name2 = file.getName();
            Matcher matcher = i.matcher(name2);
            if (matcher.matches()) {
                strGroup = matcher.group(1);
                strGroup.getClass();
                int i2 = u56.a;
                int length = strGroup.length();
                int iEnd = 0;
                int i3 = 0;
                for (int i4 = 0; i4 < length; i4++) {
                    if (strGroup.charAt(i4) == '%') {
                        i3++;
                    }
                }
                if (i3 != 0) {
                    int i5 = length - (i3 * 2);
                    StringBuilder sb = new StringBuilder(i5);
                    Matcher matcher2 = u56.i.matcher(strGroup);
                    while (i3 > 0 && matcher2.find()) {
                        String strGroup2 = matcher2.group(1);
                        strGroup2.getClass();
                        char c = (char) Integer.parseInt(strGroup2, 16);
                        sb.append((CharSequence) strGroup, iEnd, matcher2.start());
                        sb.append(c);
                        iEnd = matcher2.end();
                        i3--;
                    }
                    if (iEnd < length) {
                        sb.append((CharSequence) strGroup, iEnd, length);
                    }
                    if (sb.length() != i5) {
                        strGroup = null;
                    } else {
                        strGroup = sb.toString();
                    }
                }
            } else {
                matcher = h.matcher(name2);
                if (matcher.matches()) {
                    strGroup = matcher.group(1);
                    strGroup.getClass();
                } else {
                    strGroup = null;
                }
            }
            if (strGroup != null) {
                File parentFile = file.getParentFile();
                if (parentFile == null) {
                    defpackage.ud.g();
                    return null;
                }
                int i6 = axVar.a(strGroup).a;
                String strGroup3 = matcher.group(2);
                strGroup3.getClass();
                long j5 = Long.parseLong(strGroup3);
                String strGroup4 = matcher.group(3);
                strGroup4.getClass();
                long j6 = Long.parseLong(strGroup4);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(i6);
                sb2.append(".");
                sb2.append(j5);
                sb2.append(".");
                file3 = new File(parentFile, defpackage.k2.b(j6, ".v3.exo", sb2));
                if (!file.renameTo(file3)) {
                    file3 = null;
                }
            } else {
                file3 = null;
            }
            if (file3 == null) {
                return null;
            }
            name = file3.getName();
            file2 = file3;
        }
        Matcher matcher3 = j.matcher(name);
        if (!matcher3.matches()) {
            return null;
        }
        String strGroup5 = matcher3.group(1);
        strGroup5.getClass();
        String str = (String) axVar.b.get(Integer.parseInt(strGroup5));
        if (str == null) {
            return null;
        }
        long length2 = j2 == -1 ? file2.length() : j2;
        if (length2 == 0) {
            return null;
        }
        String strGroup6 = matcher3.group(2);
        strGroup6.getClass();
        long j7 = Long.parseLong(strGroup6);
        if (j3 == C.TIME_UNSET) {
            String strGroup7 = matcher3.group(3);
            strGroup7.getClass();
            j4 = Long.parseLong(strGroup7);
        } else {
            j4 = j3;
        }
        return new qk5(str, j7, length2, j4, file2);
    }
}
