package defpackage;

import android.database.Cursor;
import android.os.ProfilingManager;
import android.util.Base64;
import androidx.camera.video.Recorder;
import androidx.camera.video.internal.muxer.Muxer;
import androidx.camera.video.internal.muxer.MuxerFactory;
import androidx.media3.muxer.ByteBufferAllocator;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import yads.bt2;
import yads.wa4;
import yads.ws2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class n2 implements ByteBufferAllocator, MuxerFactory, u97.a, bt2 {
    public static /* bridge */ /* synthetic */ ProfilingManager a(Object obj) {
        return (ProfilingManager) obj;
    }

    public static Object c(Class cls, ze7 ze7Var, ba8 ba8Var, i36 i36Var) {
        zk1 zk1VarA = x07.a(cls);
        ze7Var.getClass();
        return ze7Var.e(zk1VarA, i36Var, ba8Var);
    }

    public static String d(String str, String str2, String str3, String str4, String str5) {
        return str + str2 + str3 + str4 + str5;
    }

    public static /* synthetic */ void e(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalStateException(str + obj + obj2 + obj3);
    }

    @Override // androidx.media3.muxer.ByteBufferAllocator
    public ByteBuffer allocate(int i) {
        return ByteBuffer.allocateDirect(i);
    }

    @Override // u97.a
    public Object apply(Object obj) {
        Cursor cursor = (Cursor) obj;
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            hz.a aVarA = s29.a();
            aVarA.b(cursor.getString(1));
            aVarA.c = kg6.b(cursor.getInt(2));
            String string = cursor.getString(3);
            aVarA.b = string == null ? null : Base64.decode(string, 0);
            arrayList.add(aVarA.a());
        }
        return arrayList;
    }

    @Override // yads.bt2
    public ws2[] b() {
        return wa4.d();
    }

    @Override // androidx.camera.video.internal.muxer.MuxerFactory
    public Muxer create(int i) {
        return Recorder.lambda$static$0(i);
    }
}
