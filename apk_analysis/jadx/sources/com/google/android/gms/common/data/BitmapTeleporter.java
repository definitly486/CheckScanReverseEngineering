package com.google.android.gms.common.data;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.ah;
import defpackage.h2;
import defpackage.o2;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
public class BitmapTeleporter extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<BitmapTeleporter> CREATOR = new zaa();
    public final int b;
    public ParcelFileDescriptor c;
    public final int d;
    public Bitmap e;
    public boolean f;
    public File g;

    public BitmapTeleporter(Bitmap bitmap) {
        this.b = 1;
        this.c = null;
        this.d = 0;
        this.e = bitmap;
        this.f = true;
    }

    public static final void a(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e) {
            Log.w("BitmapTeleporter", "Could not close stream", e);
        }
    }

    public Bitmap get() {
        if (!this.f) {
            DataInputStream dataInputStream = new DataInputStream(new ParcelFileDescriptor.AutoCloseInputStream((ParcelFileDescriptor) Preconditions.checkNotNull(this.c)));
            try {
                try {
                    byte[] bArr = new byte[dataInputStream.readInt()];
                    int i = dataInputStream.readInt();
                    int i2 = dataInputStream.readInt();
                    Bitmap.Config configValueOf = Bitmap.Config.valueOf(dataInputStream.readUTF());
                    dataInputStream.read(bArr);
                    a(dataInputStream);
                    ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, configValueOf);
                    bitmapCreateBitmap.copyPixelsFromBuffer(byteBufferWrap);
                    this.e = bitmapCreateBitmap;
                    this.f = true;
                } catch (IOException e) {
                    throw new IllegalStateException("Could not read from parcel file descriptor", e);
                }
            } catch (Throwable th) {
                a(dataInputStream);
                throw th;
            }
        }
        return this.e;
    }

    public void release() {
        if (this.f) {
            return;
        }
        try {
            ((ParcelFileDescriptor) Preconditions.checkNotNull(this.c)).close();
        } catch (IOException e) {
            Log.w("BitmapTeleporter", "Could not close PFD", e);
        }
    }

    public void setTempDir(File file) {
        if (file != null) {
            this.g = file;
        } else {
            o2.d("Cannot set null temp directory");
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        if (this.c == null) {
            Bitmap bitmap = (Bitmap) Preconditions.checkNotNull(this.e);
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bitmap.getHeight() * bitmap.getRowBytes());
            bitmap.copyPixelsToBuffer(byteBufferAllocate);
            byte[] bArrArray = byteBufferAllocate.array();
            File file = this.g;
            if (file == null) {
                ah.f("setTempDir() must be called before writing this object to a parcel");
                return;
            }
            try {
                File fileCreateTempFile = File.createTempFile("teleporter", ".tmp", file);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
                    this.c = ParcelFileDescriptor.open(fileCreateTempFile, 268435456);
                    fileCreateTempFile.delete();
                    DataOutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(fileOutputStream));
                    try {
                        try {
                            dataOutputStream.writeInt(bArrArray.length);
                            dataOutputStream.writeInt(bitmap.getWidth());
                            dataOutputStream.writeInt(bitmap.getHeight());
                            dataOutputStream.writeUTF(bitmap.getConfig().toString());
                            dataOutputStream.write(bArrArray);
                            a(dataOutputStream);
                        } catch (Throwable th) {
                            a(dataOutputStream);
                            throw th;
                        }
                    } catch (IOException e) {
                        throw new IllegalStateException("Could not write into unlinked file", e);
                    }
                } catch (FileNotFoundException unused) {
                    ah.f("Temporary file is somehow already deleted");
                    return;
                }
            } catch (IOException e2) {
                h2.e("Could not create temporary file", e2);
                return;
            }
        }
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.b);
        SafeParcelWriter.writeParcelable(parcel, 2, this.c, i | 1, false);
        SafeParcelWriter.writeInt(parcel, 3, this.d);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
        this.c = null;
    }

    public BitmapTeleporter(int i, ParcelFileDescriptor parcelFileDescriptor, int i2) {
        this.b = i;
        this.c = parcelFileDescriptor;
        this.d = i2;
        this.e = null;
        this.f = false;
    }
}
