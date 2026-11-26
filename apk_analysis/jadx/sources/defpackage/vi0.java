package defpackage;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;

/* JADX INFO: loaded from: classes3.dex */
public final class vi0<DataType> implements i47<DataType, BitmapDrawable> {
    public final i47<DataType, Bitmap> a;
    public final Resources b;

    public vi0(Resources resources, i47<DataType, Bitmap> i47Var) {
        this.b = resources;
        this.a = i47Var;
    }

    @Override // defpackage.i47
    public final e47<BitmapDrawable> a(DataType datatype, int i, int i2, xz5 xz5Var) {
        e47<Bitmap> e47VarA = this.a.a(datatype, i, i2, xz5Var);
        if (e47VarA == null) {
            return null;
        }
        return new dl4(this.b, e47VarA);
    }

    @Override // defpackage.i47
    public final boolean b(DataType datatype, xz5 xz5Var) {
        return this.a.b(datatype, xz5Var);
    }
}
