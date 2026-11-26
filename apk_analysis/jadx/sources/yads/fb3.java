package yads;

import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public final class fb3 extends vk5 {
    public static final Pattern c = Pattern.compile("(.+?)='(.*?)';", 32);
    public final CharsetDecoder a = az.c.newDecoder();
    public final CharsetDecoder b = az.b.newDecoder();

    @Override // yads.vk5
    public final h84 a(j84 j84Var, ByteBuffer byteBuffer) {
        String string;
        String str = null;
        try {
            string = this.a.decode(byteBuffer).toString();
            this.a.reset();
            byteBuffer.rewind();
        } catch (CharacterCodingException unused) {
            this.a.reset();
            byteBuffer.rewind();
            try {
                string = this.b.decode(byteBuffer).toString();
                this.b.reset();
                byteBuffer.rewind();
            } catch (CharacterCodingException unused2) {
                this.b.reset();
                byteBuffer.rewind();
                string = null;
            } catch (Throwable th) {
                this.b.reset();
                byteBuffer.rewind();
                throw th;
            }
        } catch (Throwable th2) {
            this.a.reset();
            byteBuffer.rewind();
            throw th2;
        }
        byte[] bArr = new byte[byteBuffer.limit()];
        byteBuffer.get(bArr);
        if (string == null) {
            return new h84(new jb3(bArr, null, null));
        }
        Matcher matcher = c.matcher(string);
        String str2 = null;
        for (int iEnd = 0; matcher.find(iEnd); iEnd = matcher.end()) {
            String strGroup = matcher.group(1);
            String strGroup2 = matcher.group(2);
            if (strGroup != null) {
                String strA = oj.a(strGroup);
                strA.getClass();
                if (strA.equals("streamurl")) {
                    str2 = strGroup2;
                } else if (strA.equals("streamtitle")) {
                    str = strGroup2;
                }
            }
        }
        return new h84(new jb3(bArr, str, str2));
    }
}
