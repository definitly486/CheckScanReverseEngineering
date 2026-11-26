package yads;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import androidx.media3.common.PlaybackException;
import androidx.media3.datasource.RawResourceDataSource;
import defpackage.rk3;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes3.dex */
public final class r45 extends dq {
    public final Resources e;
    public final String f;
    public Uri g;
    public AssetFileDescriptor h;
    public FileInputStream i;
    public long j;
    public boolean k;

    public r45(Context context) {
        super(false);
        this.e = context.getResources();
        this.f = context.getPackageName();
    }

    /* JADX WARN: Code duplicated, block: B:85:0x0091 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // yads.wc0
    public final long a(bd0 bd0Var) throws q45 {
        int identifier;
        long size;
        Uri uri = bd0Var.a;
        this.g = uri;
        if (TextUtils.equals(RawResourceDataSource.RAW_RESOURCE_SCHEME, uri.getScheme())) {
            try {
                String lastPathSegment = uri.getLastPathSegment();
                lastPathSegment.getClass();
                identifier = Integer.parseInt(lastPathSegment);
            } catch (NumberFormatException unused) {
                throw new q45("Resource identifier must be an integer.", null, 1004);
            }
        } else {
            if (TextUtils.equals("android.resource", uri.getScheme()) && uri.getPathSegments().size() == 1) {
                String lastPathSegment2 = uri.getLastPathSegment();
                lastPathSegment2.getClass();
                if (lastPathSegment2.matches("\\d+")) {
                    String lastPathSegment3 = uri.getLastPathSegment();
                    lastPathSegment3.getClass();
                    identifier = Integer.parseInt(lastPathSegment3);
                }
            }
            if (!TextUtils.equals("android.resource", uri.getScheme())) {
                throw new q45("URI must either use scheme rawresource or android.resource", null, 1004);
            }
            String path = uri.getPath();
            path.getClass();
            if (path.startsWith("/")) {
                path = path.substring(1);
            }
            String host = uri.getHost();
            identifier = this.e.getIdentifier((TextUtils.isEmpty(host) ? "" : defpackage.ni0.c(host, StringUtils.PROCESS_POSTFIX_DELIMITER)).concat(path), "raw", this.f);
            if (identifier == 0) {
                throw new q45("Resource not found.", null, PlaybackException.ERROR_CODE_IO_FILE_NOT_FOUND);
            }
        }
        h();
        try {
            AssetFileDescriptor assetFileDescriptorOpenRawResourceFd = this.e.openRawResourceFd(identifier);
            this.h = assetFileDescriptorOpenRawResourceFd;
            if (assetFileDescriptorOpenRawResourceFd == null) {
                throw new q45(rk3.c(uri, "Resource is compressed: "), null, 2000);
            }
            long length = assetFileDescriptorOpenRawResourceFd.getLength();
            FileInputStream fileInputStream = new FileInputStream(assetFileDescriptorOpenRawResourceFd.getFileDescriptor());
            this.i = fileInputStream;
            if (length != -1) {
                try {
                    if (bd0Var.f > length) {
                        throw new q45(null, null, 2008);
                    }
                } catch (q45 e) {
                    throw e;
                } catch (IOException e2) {
                    throw new q45(null, e2, 2000);
                }
            }
            long startOffset = assetFileDescriptorOpenRawResourceFd.getStartOffset();
            long jSkip = fileInputStream.skip(bd0Var.f + startOffset) - startOffset;
            if (jSkip != bd0Var.f) {
                throw new q45(null, null, 2008);
            }
            if (length == -1) {
                FileChannel channel = fileInputStream.getChannel();
                if (channel.size() == 0) {
                    this.j = -1L;
                    size = -1;
                } else {
                    size = channel.size() - channel.position();
                    this.j = size;
                    if (size < 0) {
                        throw new q45(null, null, 2008);
                    }
                }
            } else {
                size = length - jSkip;
                this.j = size;
                if (size < 0) {
                    throw new xc0(2008);
                }
            }
            long jMin = bd0Var.g;
            if (jMin != -1) {
                if (size != -1) {
                    jMin = Math.min(size, jMin);
                }
                this.j = jMin;
            }
            this.k = true;
            b(bd0Var);
            long j = bd0Var.g;
            return j != -1 ? j : this.j;
        } catch (Resources.NotFoundException e3) {
            throw new q45(null, e3, PlaybackException.ERROR_CODE_IO_FILE_NOT_FOUND);
        }
    }

    @Override // yads.tc0
    public final int c(byte[] bArr, int i, int i2) throws q45 {
        if (i2 == 0) {
            return 0;
        }
        long j = this.j;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e) {
                throw new q45(null, e, 2000);
            }
        }
        FileInputStream fileInputStream = this.i;
        int i3 = u56.a;
        int i4 = fileInputStream.read(bArr, i, i2);
        long j2 = this.j;
        if (i4 == -1) {
            if (j2 == -1) {
                return -1;
            }
            throw new q45("End of stream reached having not read sufficient data.", new EOFException(), 2000);
        }
        if (j2 != -1) {
            this.j = j2 - ((long) i4);
        }
        c(i4);
        return i4;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x000e */
    /* JADX WARN: Bottom block not found for handler: all -> 0x004e */
    @Override // yads.wc0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void close() {
        /*
            r5 = this;
            r0 = 0
            r5.g = r0
            r1 = 2000(0x7d0, float:2.803E-42)
            r2 = 0
            java.io.FileInputStream r3 = r5.i     // Catch: java.lang.Throwable -> Le java.io.IOException -> L10
            if (r3 == 0) goto L12
            r3.close()     // Catch: java.lang.Throwable -> Le java.io.IOException -> L10
            goto L12
        Le:
            r3 = move-exception
            goto L44
        L10:
            r3 = move-exception
            goto L3e
        L12:
            r5.i = r0
            android.content.res.AssetFileDescriptor r3 = r5.h     // Catch: java.lang.Throwable -> L1c java.io.IOException -> L1e
            if (r3 == 0) goto L20
            r3.close()     // Catch: java.lang.Throwable -> L1c java.io.IOException -> L1e
            goto L20
        L1c:
            r1 = move-exception
            goto L32
        L1e:
            r3 = move-exception
            goto L2c
        L20:
            r5.h = r0
            boolean r0 = r5.k
            if (r0 == 0) goto L2b
            r5.k = r2
            r5.g()
        L2b:
            return
        L2c:
            yads.q45 r4 = new yads.q45     // Catch: java.lang.Throwable -> L1c
            r4.<init>(r0, r3, r1)     // Catch: java.lang.Throwable -> L1c
            throw r4     // Catch: java.lang.Throwable -> L1c
        L32:
            r5.h = r0
            boolean r0 = r5.k
            if (r0 == 0) goto L3d
            r5.k = r2
            r5.g()
        L3d:
            throw r1
        L3e:
            yads.q45 r4 = new yads.q45     // Catch: java.lang.Throwable -> Le
            r4.<init>(r0, r3, r1)     // Catch: java.lang.Throwable -> Le
            throw r4     // Catch: java.lang.Throwable -> Le
        L44:
            r5.i = r0
            android.content.res.AssetFileDescriptor r4 = r5.h     // Catch: java.lang.Throwable -> L4e java.io.IOException -> L50
            if (r4 == 0) goto L52
            r4.close()     // Catch: java.lang.Throwable -> L4e java.io.IOException -> L50
            goto L52
        L4e:
            r1 = move-exception
            goto L64
        L50:
            r3 = move-exception
            goto L5e
        L52:
            r5.h = r0
            boolean r0 = r5.k
            if (r0 == 0) goto L5d
            r5.k = r2
            r5.g()
        L5d:
            throw r3
        L5e:
            yads.q45 r4 = new yads.q45     // Catch: java.lang.Throwable -> L4e
            r4.<init>(r0, r3, r1)     // Catch: java.lang.Throwable -> L4e
            throw r4     // Catch: java.lang.Throwable -> L4e
        L64:
            r5.h = r0
            boolean r0 = r5.k
            if (r0 == 0) goto L6f
            r5.k = r2
            r5.g()
        L6f:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.r45.close():void");
    }

    @Override // yads.wc0
    public final Uri d() {
        return this.g;
    }
}
