package yads;

import androidx.media3.datasource.cache.ContentMetadata;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class fk0 implements i60 {
    public static final fk0 c = new fk0(Collections.EMPTY_MAP);
    public int a;
    public final Map b;

    public fk0(Map map) {
        this.b = Collections.unmodifiableMap(map);
    }

    public final fk0 a(j60 j60Var) {
        byte[] bytes;
        HashMap map = new HashMap(this.b);
        List listUnmodifiableList = Collections.unmodifiableList(new ArrayList(j60Var.b));
        for (int i = 0; i < listUnmodifiableList.size(); i++) {
            map.remove(listUnmodifiableList.get(i));
        }
        HashMap map2 = new HashMap(j60Var.a);
        for (Map.Entry entry : map2.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof byte[]) {
                byte[] bArr = (byte[]) value;
                entry.setValue(Arrays.copyOf(bArr, bArr.length));
            }
        }
        for (Map.Entry entry2 : Collections.unmodifiableMap(map2).entrySet()) {
            String str = (String) entry2.getKey();
            Object value2 = entry2.getValue();
            if (value2 instanceof Long) {
                bytes = ByteBuffer.allocate(8).putLong(((Long) value2).longValue()).array();
            } else if (value2 instanceof String) {
                bytes = ((String) value2).getBytes(az.c);
            } else {
                if (!(value2 instanceof byte[])) {
                    defpackage.mi2.b();
                    return null;
                }
                bytes = (byte[]) value2;
            }
            map.put(str, bytes);
        }
        Map map3 = this.b;
        if (map3.size() == map.size()) {
            for (Map.Entry entry3 : map3.entrySet()) {
                if (!Arrays.equals((byte[]) entry3.getValue(), (byte[]) map.get(entry3.getKey()))) {
                }
            }
            return this;
        }
        return new fk0(map);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || fk0.class != obj.getClass()) {
            return false;
        }
        Map map = this.b;
        Map map2 = ((fk0) obj).b;
        if (map.size() == map2.size()) {
            for (Map.Entry entry : map.entrySet()) {
                if (!Arrays.equals((byte[]) entry.getValue(), (byte[]) map2.get(entry.getKey()))) {
                }
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.a;
        if (i != 0) {
            return i;
        }
        int iHashCode = 0;
        for (Map.Entry entry : this.b.entrySet()) {
            iHashCode += Arrays.hashCode((byte[]) entry.getValue()) ^ ((String) entry.getKey()).hashCode();
        }
        this.a = iHashCode;
        return iHashCode;
    }

    public final String a() {
        byte[] bArr = (byte[]) this.b.get(ContentMetadata.KEY_REDIRECTED_URI);
        if (bArr != null) {
            return new String(bArr, az.c);
        }
        return null;
    }
}
