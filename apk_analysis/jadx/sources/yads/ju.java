package yads;

import android.graphics.Bitmap;
import androidx.core.view.MotionEventCompat;

/* JADX INFO: loaded from: classes6.dex */
public final class ju {
    public static Bitmap a(Bitmap bitmap, double d) {
        int i;
        int i2 = 0;
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, defpackage.w65.a(((double) bitmap.getWidth()) * d), defpackage.w65.a(((double) bitmap.getHeight()) * d), false);
        Bitmap.Config config = bitmapCreateScaledBitmap.getConfig();
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        int i3 = 1;
        Bitmap bitmapCopy = bitmapCreateScaledBitmap.copy(config, true);
        int width = bitmapCopy.getWidth();
        int height = bitmapCopy.getHeight();
        int i4 = width * height;
        int[] iArr = new int[i4];
        bitmapCopy.getPixels(iArr, 0, width, 0, 0, width, height);
        int i5 = width - 1;
        int i6 = height - 1;
        int[] iArr2 = new int[i4];
        int[] iArr3 = new int[i4];
        int[] iArr4 = new int[i4];
        int[] iArr5 = new int[width < height ? height : width];
        int[] iArr6 = new int[1024];
        for (int i7 = 0; i7 < 1024; i7++) {
            iArr6[i7] = i7 / 4;
        }
        char c = 3;
        int[][] iArr7 = new int[3][];
        int i8 = 0;
        while (true) {
            i = i2;
            if (i8 >= 3) {
                break;
            }
            iArr7[i8] = new int[3];
            i8++;
            i2 = i;
        }
        int i9 = i2;
        int i10 = i9;
        while (i2 < height) {
            int i11 = i;
            int i12 = i11;
            int i13 = i12;
            int i14 = i13;
            int i15 = i14;
            int i16 = i15;
            int i17 = i16;
            int i18 = i17;
            char c2 = c;
            int i19 = -1;
            int i20 = i18;
            while (i19 <= i3) {
                int i21 = i3;
                int i22 = i19 < 0 ? i : i19;
                if (i5 <= i22) {
                    i22 = i5;
                }
                int i23 = iArr[i22 + i9];
                int i24 = i19 + 1;
                int[] iArr8 = iArr7[i24];
                iArr8[i] = (i23 & 16711680) >> 16;
                iArr8[i21] = (i23 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                iArr8[2] = i23 & 255;
                int iAbs = 2 - StrictMath.abs(i19);
                int i25 = iArr8[i];
                i20 = (i25 * iAbs) + i20;
                int i26 = iArr8[i21];
                i11 = (i26 * iAbs) + i11;
                int i27 = iArr8[2];
                i12 = (iAbs * i27) + i12;
                if (i19 > 0) {
                    i18 += i25;
                    i17 += i26;
                    i16 += i27;
                } else {
                    i15 += i25;
                    i14 += i26;
                    i13 += i27;
                }
                i3 = i21;
                i19 = i24;
            }
            int i28 = i3;
            int i29 = i;
            int i30 = i28;
            while (i29 < width) {
                iArr2[i9] = iArr6[i20];
                iArr3[i9] = iArr6[i11];
                iArr4[i9] = iArr6[i12];
                int i31 = i20 - i15;
                int i32 = i11 - i14;
                int i33 = i12 - i13;
                int[] iArr9 = iArr7[(i30 + 2) % 3];
                int i34 = i15 - iArr9[i];
                int i35 = i14 - iArr9[i28];
                int i36 = i13 - iArr9[2];
                if (i2 == 0) {
                    iArr5[i29] = Math.min(i29 + 2, i5);
                }
                int i37 = iArr[i10 + iArr5[i29]];
                int i38 = (i37 & 16711680) >> 16;
                iArr9[i] = i38;
                int i39 = (i37 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                iArr9[i28] = i39;
                int i40 = i37 & 255;
                iArr9[2] = i40;
                int i41 = i18 + i38;
                int i42 = i17 + i39;
                int i43 = i16 + i40;
                i20 = i31 + i41;
                i11 = i32 + i42;
                i12 = i33 + i43;
                i30 = (i30 + 1) % 3;
                int[] iArr10 = iArr7[i30 % 3];
                int i44 = iArr10[i];
                i15 = i34 + i44;
                int i45 = iArr10[i28];
                i14 = i35 + i45;
                int i46 = iArr10[2];
                i13 = i36 + i46;
                i18 = i41 - i44;
                i17 = i42 - i45;
                i16 = i43 - i46;
                i9++;
                i29++;
                iArr4 = iArr4;
            }
            i10 += width;
            i2++;
            c = c2;
            i3 = i28;
        }
        int[] iArr11 = iArr4;
        int i47 = i3;
        int i48 = i;
        while (i48 < width) {
            int i49 = i;
            int i50 = i49;
            int i51 = i50;
            int i52 = i51;
            int i53 = i52;
            int i54 = i53;
            int i55 = i54;
            int i56 = i55;
            int i57 = i56;
            int i58 = i48;
            int i59 = width * (-1);
            int i60 = -1;
            for (int i61 = i47; i60 <= i61; i61 = 1) {
                int i62 = i61;
                int i63 = i;
                int iMax = Math.max(i63, i59) + i58;
                int i64 = i60 + 1;
                int[] iArr12 = iArr7[i64];
                iArr12[i63] = iArr2[iMax];
                iArr12[i62] = iArr3[iMax];
                iArr12[2] = iArr11[iMax];
                int iAbs2 = 2 - StrictMath.abs(i60);
                i56 = (iArr2[iMax] * iAbs2) + i56;
                i57 = (iArr3[iMax] * iAbs2) + i57;
                i49 = (iArr11[iMax] * iAbs2) + i49;
                if (i60 > 0) {
                    i55 += iArr12[0];
                    i54 += iArr12[1];
                    i53 += iArr12[2];
                } else {
                    i52 += iArr12[0];
                    i51 += iArr12[1];
                    i50 += iArr12[2];
                }
                if (i60 < i6) {
                    i59 += width;
                }
                i60 = i64;
                i = 0;
            }
            int i65 = i56;
            int i66 = 1;
            int i67 = i58;
            for (int i68 = 0; i68 < height; i68++) {
                iArr[i67] = (iArr[i67] & (-16777216)) | (iArr6[i65] << 16) | (iArr6[i57] << 8) | iArr6[i49];
                int i69 = i65 - i52;
                int i70 = i57 - i51;
                int i71 = i49 - i50;
                int[] iArr13 = iArr7[(i66 + 2) % 3];
                int i72 = i52 - iArr13[0];
                int i73 = i51 - iArr13[1];
                int i74 = i50 - iArr13[2];
                if (i58 == 0) {
                    iArr5[i68] = Math.min(i68 + 2, i6) * width;
                }
                int i75 = i58 + iArr5[i68];
                int i76 = iArr2[i75];
                iArr13[0] = i76;
                int i77 = iArr3[i75];
                iArr13[1] = i77;
                int i78 = iArr11[i75];
                iArr13[2] = i78;
                int i79 = i55 + i76;
                int i80 = i54 + i77;
                int i81 = i53 + i78;
                i65 = i69 + i79;
                i57 = i70 + i80;
                i49 = i71 + i81;
                i66 = (i66 + 1) % 3;
                int[] iArr14 = iArr7[i66];
                int i82 = iArr14[0];
                i52 = i72 + i82;
                int i83 = iArr14[1];
                i51 = i73 + i83;
                int i84 = iArr14[2];
                i50 = i74 + i84;
                i55 = i79 - i82;
                i54 = i80 - i83;
                i53 = i81 - i84;
                i67 += width;
            }
            i48 = i58 + 1;
            i = 0;
            i47 = 1;
        }
        bitmapCopy.setPixels(iArr, 0, width, 0, 0, width, height);
        return bitmapCopy;
    }
}
