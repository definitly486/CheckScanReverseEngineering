package yads;

import android.net.Uri;
import android.util.Base64;
import defpackage.rk3;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.net.URLDecoder;

/* JADX INFO: loaded from: classes6.dex */
public final class uc0 extends dq {
    public bd0 e;
    public byte[] f;
    public int g;
    public int h;

    public uc0() {
        super(false);
    }

    @Override // yads.wc0
    public final long a(bd0 bd0Var) throws xc0, xs4 {
        byte[] bArrDecode;
        h();
        this.e = bd0Var;
        Uri uri = bd0Var.a;
        String scheme = uri.getScheme();
        zj.a("Unsupported scheme: " + scheme, "data".equals(scheme));
        String schemeSpecificPart = uri.getSchemeSpecificPart();
        int i = u56.a;
        String[] strArrSplit = schemeSpecificPart.split(StringUtils.COMMA, -1);
        if (strArrSplit.length != 2) {
            throw new xs4(rk3.c(uri, "Unexpected URI format: "), null, true, 0);
        }
        String str = strArrSplit[1];
        if (strArrSplit[0].contains(";base64")) {
            try {
                bArrDecode = Base64.decode(str, 0);
                this.f = bArrDecode;
            } catch (IllegalArgumentException e) {
                throw new xs4(defpackage.bj.c("Error while parsing Base64 encoded string: ", str), e, true, 0);
            }
        } else {
            bArrDecode = u56.c(URLDecoder.decode(str, az.a.name()));
            this.f = bArrDecode;
        }
        long j = bd0Var.f;
        if (j > bArrDecode.length) {
            this.f = null;
            throw new xc0(2008);
        }
        int i2 = (int) j;
        this.g = i2;
        int length = bArrDecode.length - i2;
        this.h = length;
        long j2 = bd0Var.g;
        if (j2 != -1) {
            this.h = (int) Math.min(length, j2);
        }
        b(bd0Var);
        long j3 = bd0Var.g;
        return j3 != -1 ? j3 : this.h;
    }

    @Override // yads.tc0
    public final int c(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.h;
        if (i3 == 0) {
            return -1;
        }
        int iMin = Math.min(i2, i3);
        byte[] bArr2 = this.f;
        int i4 = u56.a;
        System.arraycopy(bArr2, this.g, bArr, i, iMin);
        this.g += iMin;
        this.h -= iMin;
        c(iMin);
        return iMin;
    }

    @Override // yads.wc0
    public final void close() {
        if (this.f != null) {
            this.f = null;
            g();
        }
        this.e = null;
    }

    @Override // yads.wc0
    public final Uri d() {
        bd0 bd0Var = this.e;
        if (bd0Var != null) {
            return bd0Var.a;
        }
        return null;
    }
}
