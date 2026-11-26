package yads;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import androidx.collection.SieveCacheKt;
import androidx.media3.common.PlaybackException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public final class jk extends dq {
    public final AssetManager e;
    public Uri f;
    public InputStream g;
    public long h;
    public boolean i;

    public jk(Context context) {
        super(false);
        this.e = context.getAssets();
    }

    @Override // yads.wc0
    public final long a(bd0 bd0Var) throws ik {
        try {
            Uri uri = bd0Var.a;
            this.f = uri;
            String path = uri.getPath();
            path.getClass();
            if (path.startsWith("/android_asset/")) {
                path = path.substring(15);
            } else if (path.startsWith("/")) {
                path = path.substring(1);
            }
            h();
            InputStream inputStreamOpen = this.e.open(path, 1);
            this.g = inputStreamOpen;
            if (inputStreamOpen.skip(bd0Var.f) < bd0Var.f) {
                throw new ik(null, 2008);
            }
            long j = bd0Var.g;
            if (j != -1) {
                this.h = j;
            } else {
                long jAvailable = this.g.available();
                this.h = jAvailable;
                if (jAvailable == SieveCacheKt.NodeLinkMask) {
                    this.h = -1L;
                }
            }
            this.i = true;
            b(bd0Var);
            return this.h;
        } catch (ik e) {
            throw e;
        } catch (IOException e2) {
            throw new ik(e2, e2 instanceof FileNotFoundException ? PlaybackException.ERROR_CODE_IO_FILE_NOT_FOUND : 2000);
        }
    }

    @Override // yads.tc0
    public final int c(byte[] bArr, int i, int i2) throws ik {
        if (i2 == 0) {
            return 0;
        }
        long j = this.h;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e) {
                throw new ik(e, 2000);
            }
        }
        InputStream inputStream = this.g;
        int i3 = u56.a;
        int i4 = inputStream.read(bArr, i, i2);
        if (i4 == -1) {
            return -1;
        }
        long j2 = this.h;
        if (j2 != -1) {
            this.h = j2 - ((long) i4);
        }
        c(i4);
        return i4;
    }

    @Override // yads.wc0
    public final void close() {
        this.f = null;
        try {
            try {
                InputStream inputStream = this.g;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.g = null;
                if (this.i) {
                    this.i = false;
                    g();
                }
            } catch (IOException e) {
                throw new ik(e, 2000);
            }
        } catch (Throwable th) {
            this.g = null;
            if (this.i) {
                this.i = false;
                g();
            }
            throw th;
        }
    }

    @Override // yads.wc0
    public final Uri d() {
        return this.f;
    }
}
