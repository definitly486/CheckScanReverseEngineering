package defpackage;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public final class kn2<DataT> implements nc5<Integer, DataT> {
    public final Context a;
    public final e<DataT> b;

    public static final class a implements oc5<Integer, AssetFileDescriptor>, e<AssetFileDescriptor> {
        public final Context a;

        public a(Context context) {
            this.a = context;
        }

        @Override // kn2.e
        public final Class<AssetFileDescriptor> a() {
            return AssetFileDescriptor.class;
        }

        @Override // kn2.e
        public final void b(AssetFileDescriptor assetFileDescriptor) throws IOException {
            assetFileDescriptor.close();
        }

        @Override // kn2.e
        public final Object c(Resources resources, int i, Resources.Theme theme) {
            return resources.openRawResourceFd(i);
        }

        @Override // defpackage.oc5
        public final nc5<Integer, AssetFileDescriptor> d(if5 if5Var) {
            return new kn2(this.a, this);
        }
    }

    public static final class b implements oc5<Integer, Drawable>, e<Drawable> {
        public final Context a;

        public b(Context context) {
            this.a = context;
        }

        @Override // kn2.e
        public final Class<Drawable> a() {
            return Drawable.class;
        }

        @Override // kn2.e
        public final void b(Drawable drawable) {
        }

        @Override // kn2.e
        public final Object c(Resources resources, int i, Resources.Theme theme) {
            Context context = this.a;
            return cs2.a(context, context, i, theme);
        }

        @Override // defpackage.oc5
        public final nc5<Integer, Drawable> d(if5 if5Var) {
            return new kn2(this.a, this);
        }
    }

    public static final class c implements oc5<Integer, InputStream>, e<InputStream> {
        public final Context a;

        public c(Context context) {
            this.a = context;
        }

        @Override // kn2.e
        public final Class<InputStream> a() {
            return InputStream.class;
        }

        @Override // kn2.e
        public final void b(InputStream inputStream) throws IOException {
            inputStream.close();
        }

        @Override // kn2.e
        public final Object c(Resources resources, int i, Resources.Theme theme) {
            return resources.openRawResource(i);
        }

        @Override // defpackage.oc5
        public final nc5<Integer, InputStream> d(if5 if5Var) {
            return new kn2(this.a, this);
        }
    }

    public static final class d<DataT> implements s82<DataT> {
        public final Resources.Theme b;
        public final Resources c;
        public final e<DataT> d;
        public final int e;
        public DataT f;

        public d(Resources.Theme theme, Resources resources, e<DataT> eVar, int i) {
            this.b = theme;
            this.c = resources;
            this.d = eVar;
            this.e = i;
        }

        @Override // defpackage.s82
        public final Class<DataT> a() {
            return this.d.a();
        }

        @Override // defpackage.s82
        public final void b() {
            DataT datat = this.f;
            if (datat != null) {
                try {
                    this.d.b(datat);
                } catch (IOException unused) {
                }
            }
        }

        @Override // defpackage.s82
        public final y82 c() {
            return y82.LOCAL;
        }

        @Override // defpackage.s82
        public final void cancel() {
        }

        /* JADX WARN: Type inference failed for: r4v2, types: [DataT, java.lang.Object] */
        @Override // defpackage.s82
        public final void f(jg6 jg6Var, s82.a<? super DataT> aVar) {
            try {
                ?? r4 = (DataT) this.d.c(this.c, this.e, this.b);
                this.f = r4;
                aVar.d(r4);
            } catch (Resources.NotFoundException e) {
                aVar.e(e);
            }
        }
    }

    public interface e<DataT> {
        Class<DataT> a();

        void b(DataT datat);

        Object c(Resources resources, int i, Resources.Theme theme);
    }

    public kn2(Context context, e<DataT> eVar) {
        this.a = context.getApplicationContext();
        this.b = eVar;
    }

    @Override // defpackage.nc5
    public final nc5.a a(Integer num, int i, int i2, xz5 xz5Var) {
        Integer num2 = num;
        Resources.Theme theme = (Resources.Theme) xz5Var.c(k47.b);
        return new nc5.a(new oq5(num2), new d(theme, theme != null ? theme.getResources() : this.a.getResources(), this.b, num2.intValue()));
    }

    @Override // defpackage.nc5
    public final boolean b(Integer num) {
        return true;
    }
}
