package androidx.compose.foundation.text;

import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.text.CommonContextMenuAreaKt$CommonContextMenuArea$menuBuilder$1$1$1", f = "CommonContextMenuArea.kt", l = {105, 106, 107}, m = "invokeSuspend", v = 1)
public final class CommonContextMenuAreaKt$CommonContextMenuArea$menuBuilder$1$1$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ TextContextMenuItems $item;
    final /* synthetic */ TextFieldSelectionState $this_contextMenuBuilder;
    int label;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TextContextMenuItems.values().length];
            try {
                iArr[TextContextMenuItems.Cut.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TextContextMenuItems.Copy.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TextContextMenuItems.Paste.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[TextContextMenuItems.SelectAll.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[TextContextMenuItems.Autofill.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommonContextMenuAreaKt$CommonContextMenuArea$menuBuilder$1$1$1(TextContextMenuItems textContextMenuItems, TextFieldSelectionState textFieldSelectionState, e02<? super CommonContextMenuAreaKt$CommonContextMenuArea$menuBuilder$1$1$1> e02Var) {
        super(2, e02Var);
        this.$item = textContextMenuItems;
        this.$this_contextMenuBuilder = textFieldSelectionState;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new CommonContextMenuAreaKt$CommonContextMenuArea$menuBuilder$1$1$1(this.$item, this.$this_contextMenuBuilder, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((CommonContextMenuAreaKt$CommonContextMenuArea$menuBuilder$1$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x004b, code lost:
    
        if (r6.paste(r5) == r0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0057, code lost:
    
        if (r6.copy(false, r5) == r0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0062, code lost:
    
        if (r6.cut(r5) == r0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0064, code lost:
    
        return r0;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r5.label
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L1a
            if (r1 == r4) goto Lf
            if (r1 == r3) goto Lf
            if (r1 != r2) goto L13
        Lf:
            defpackage.r57.b(r6)
            goto L65
        L13:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r5)
        L18:
            r5 = 0
            return r5
        L1a:
            defpackage.r57.b(r6)
            androidx.compose.foundation.text.TextContextMenuItems r6 = r5.$item
            int[] r1 = androidx.compose.foundation.text.CommonContextMenuAreaKt$CommonContextMenuArea$menuBuilder$1$1$1.WhenMappings.$EnumSwitchMapping$0
            int r6 = r6.ordinal()
            r6 = r1[r6]
            if (r6 == r4) goto L5a
            if (r6 == r3) goto L4e
            if (r6 == r2) goto L43
            r0 = 4
            if (r6 == r0) goto L3d
            r0 = 5
            if (r6 != r0) goto L39
            androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState r5 = r5.$this_contextMenuBuilder
            r5.autofill()
            goto L65
        L39:
            defpackage.me0.e()
            goto L18
        L3d:
            androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState r5 = r5.$this_contextMenuBuilder
            r5.selectAll()
            goto L65
        L43:
            androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState r6 = r5.$this_contextMenuBuilder
            r5.label = r2
            java.lang.Object r5 = r6.paste(r5)
            if (r5 != r0) goto L65
            goto L64
        L4e:
            androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState r6 = r5.$this_contextMenuBuilder
            r5.label = r3
            r1 = 0
            java.lang.Object r5 = r6.copy(r1, r5)
            if (r5 != r0) goto L65
            goto L64
        L5a:
            androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState r6 = r5.$this_contextMenuBuilder
            r5.label = r4
            java.lang.Object r5 = r6.cut(r5)
            if (r5 != r0) goto L65
        L64:
            return r0
        L65:
            j59 r5 = defpackage.j59.a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.CommonContextMenuAreaKt$CommonContextMenuArea$menuBuilder$1$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
