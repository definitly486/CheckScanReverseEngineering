package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class xw0 implements i47<ByteBuffer, up3> {
    public static final a f = new a();
    public static final b g = new b();
    public final Context a;
    public final ArrayList b;
    public final sp3 e;
    public final a d = f;
    public final b c = g;

    public static class a {
    }

    public static class b {
        public final ArrayDeque a = new ArrayDeque(0);

        public final synchronized void a(cq3 cq3Var) {
            cq3Var.b = null;
            cq3Var.c = null;
            this.a.offer(cq3Var);
        }
    }

    public xw0(Context context, ArrayList arrayList, ij0 ij0Var, pr prVar) {
        this.a = context.getApplicationContext();
        this.b = arrayList;
        this.e = new sp3(ij0Var, prVar);
    }

    public static int d(bq3 bq3Var, int i, int i2) {
        int iMin = Math.min(bq3Var.g / i2, bq3Var.f / i);
        int iMax = Math.max(1, iMin == 0 ? 0 : Integer.highestOneBit(iMin));
        if (Log.isLoggable("BufferGifDecoder", 2) && iMax > 1) {
            StringBuilder sbF = bg.f(iMax, i, "Downsampling GIF, sampleSize: ", ", target dimens: [", "x");
            sbF.append(i2);
            sbF.append("], actual dimens: [");
            sbF.append(bq3Var.f);
            sbF.append("x");
            sbF.append(bq3Var.g);
            sbF.append("]");
            Log.v("BufferGifDecoder", sbF.toString());
        }
        return iMax;
    }

    @Override // defpackage.i47
    public final e47<up3> a(ByteBuffer byteBuffer, int i, int i2, xz5 xz5Var) {
        cq3 cq3Var;
        ByteBuffer byteBuffer2 = byteBuffer;
        b bVar = this.c;
        synchronized (bVar) {
            try {
                cq3 cq3Var2 = (cq3) bVar.a.poll();
                if (cq3Var2 == null) {
                    cq3Var2 = new cq3();
                }
                cq3Var = cq3Var2;
                cq3Var.b = null;
                Arrays.fill(cq3Var.a, (byte) 0);
                cq3Var.c = new bq3();
                cq3Var.d = 0;
                ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer2.asReadOnlyBuffer();
                cq3Var.b = byteBufferAsReadOnlyBuffer;
                byteBufferAsReadOnlyBuffer.position(0);
                cq3Var.b.order(ByteOrder.LITTLE_ENDIAN);
            } catch (Throwable th) {
                throw th;
            }
        }
        try {
            return c(byteBuffer2, i, i2, cq3Var, xz5Var);
        } finally {
            this.c.a(cq3Var);
        }
    }

    @Override // defpackage.i47
    public final boolean b(ByteBuffer byteBuffer, xz5 xz5Var) {
        return !((Boolean) xz5Var.c(dq3.b)).booleanValue() && com.bumptech.glide.load.a.c(this.b, byteBuffer) == ImageHeaderParser.ImageType.GIF;
    }

    /* JADX WARN: Undo finally extract visitor
    java.lang.NullPointerException: Cannot invoke "Object.hashCode()" because "this.second" is null
    	at jadx.core.utils.Pair.hashCode(Pair.java:35)
    	at java.base/java.util.HashMap.hash(HashMap.java:338)
    	at java.base/java.util.HashMap.getNode(HashMap.java:568)
    	at java.base/java.util.HashMap.containsKey(HashMap.java:594)
    	at jadx.core.dex.visitors.finaly.traverser.state.TraverserGlobalCommonState.hasBlocksBeenCached(TraverserGlobalCommonState.java:35)
    	at jadx.core.dex.visitors.finaly.traverser.handlers.MergePathActivePathTraverserHandler.handle(MergePathActivePathTraverserHandler.java:174)
    	at jadx.core.dex.visitors.finaly.traverser.handlers.AbstractActivePathTraverserHandler.process(AbstractActivePathTraverserHandler.java:19)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.processHandlerImplementations(TraverserController.java:43)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.advance(TraverserController.java:156)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.process(TraverserController.java:79)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.findCommonInsns(MarkFinallyVisitor.java:404)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.extractFinally(MarkFinallyVisitor.java:284)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.processTryBlock(MarkFinallyVisitor.java:202)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.visit(MarkFinallyVisitor.java:135)
     */
    public final wp3 c(ByteBuffer byteBuffer, int i, int i2, cq3 cq3Var, xz5 xz5Var) {
        StringBuilder sb;
        int i3 = cv4.b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            bq3 bq3VarB = cq3Var.b();
            if (bq3VarB.c > 0 && bq3VarB.b == 0) {
                Bitmap.Config config = xz5Var.c(dq3.a) == ld2.PREFER_RGB_565 ? Bitmap.Config.RGB_565 : Bitmap.Config.ARGB_8888;
                int iD = d(bq3VarB, i, i2);
                a aVar = this.d;
                sp3 sp3Var = this.e;
                aVar.getClass();
                u68 u68Var = new u68(sp3Var, bq3VarB, byteBuffer, iD);
                u68Var.d(config);
                u68Var.b();
                Bitmap bitmapA = u68Var.a();
                if (bitmapA == null) {
                    if (Log.isLoggable("BufferGifDecoder", 2)) {
                        sb = new StringBuilder("Decoded GIF from stream in ");
                        sb.append(cv4.a(jElapsedRealtimeNanos));
                        Log.v("BufferGifDecoder", sb.toString());
                        return null;
                    }
                    return null;
                }
                wp3 wp3Var = new wp3(new up3(new up3.a(new zp3(com.bumptech.glide.a.a(this.a), u68Var, i, i2, p59.b, bitmapA))));
                if (Log.isLoggable("BufferGifDecoder", 2)) {
                    Log.v("BufferGifDecoder", "Decoded GIF from stream in " + cv4.a(jElapsedRealtimeNanos));
                }
                return wp3Var;
            }
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                sb = new StringBuilder("Decoded GIF from stream in ");
                sb.append(cv4.a(jElapsedRealtimeNanos));
                Log.v("BufferGifDecoder", sb.toString());
                return null;
            }
            return null;
        } catch (Throwable th) {
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                Log.v("BufferGifDecoder", "Decoded GIF from stream in " + cv4.a(jElapsedRealtimeNanos));
            }
            throw th;
        }
    }
}
