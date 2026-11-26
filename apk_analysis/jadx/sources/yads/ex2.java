package yads;

import android.net.Uri;
import android.text.TextUtils;
import androidx.media3.common.PlaybackException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

/* JADX INFO: loaded from: classes3.dex */
public final class ex2 extends dq {
    public RandomAccessFile e;
    public Uri f;
    public long g;
    public boolean h;

    public ex2() {
        super(false);
    }

    @Override // yads.wc0
    public final long a(bd0 bd0Var) throws dx2 {
        Uri uri = bd0Var.a;
        this.f = uri;
        h();
        int i = PlaybackException.ERROR_CODE_IO_NO_PERMISSION;
        try {
            String path = uri.getPath();
            path.getClass();
            RandomAccessFile randomAccessFile = new RandomAccessFile(path, "r");
            this.e = randomAccessFile;
            try {
                randomAccessFile.seek(bd0Var.f);
                long length = bd0Var.g;
                if (length == -1) {
                    length = this.e.length() - bd0Var.f;
                }
                this.g = length;
                if (length < 0) {
                    throw new dx2(null, null, 2008);
                }
                this.h = true;
                b(bd0Var);
                return this.g;
            } catch (IOException e) {
                throw new dx2(e, 2000);
            }
        } catch (FileNotFoundException e2) {
            if (TextUtils.isEmpty(uri.getQuery()) && TextUtils.isEmpty(uri.getFragment())) {
                if (u56.a < 21 || !bx2.a(e2.getCause())) {
                    i = PlaybackException.ERROR_CODE_IO_FILE_NOT_FOUND;
                }
                throw new dx2(e2, i);
            }
            String path2 = uri.getPath();
            String query = uri.getQuery();
            String fragment = uri.getFragment();
            StringBuilder sbD = defpackage.ad2.d("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=", path2, ",query=", query, ",fragment=");
            sbD.append(fragment);
            throw new dx2(sbD.toString(), e2, 1004);
        } catch (SecurityException e3) {
            throw new dx2(e3, PlaybackException.ERROR_CODE_IO_NO_PERMISSION);
        } catch (RuntimeException e4) {
            throw new dx2(e4, 2000);
        }
    }

    @Override // yads.tc0
    public final int c(byte[] bArr, int i, int i2) throws dx2 {
        if (i2 == 0) {
            return 0;
        }
        long j = this.g;
        if (j == 0) {
            return -1;
        }
        try {
            RandomAccessFile randomAccessFile = this.e;
            int i3 = u56.a;
            int i4 = randomAccessFile.read(bArr, i, (int) Math.min(j, i2));
            if (i4 > 0) {
                this.g -= (long) i4;
                c(i4);
            }
            return i4;
        } catch (IOException e) {
            throw new dx2(e, 2000);
        }
    }

    @Override // yads.wc0
    public final void close() {
        this.f = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.e;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.e = null;
                if (this.h) {
                    this.h = false;
                    g();
                }
            } catch (IOException e) {
                throw new dx2(e, 2000);
            }
        } catch (Throwable th) {
            this.e = null;
            if (this.h) {
                this.h = false;
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
