package androidx.compose.ui.autofill;

import android.os.Build;
import android.view.ViewStructure;
import android.view.autofill.AutofillId;
import androidx.collection.MutableScatterMap;
import androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat;
import androidx.compose.ui.platform.SemanticsUtils_androidKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsInfo;
import androidx.compose.ui.semantics.SemanticsInfoKt;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.spatial.RectManager;
import androidx.compose.ui.state.ToggleableState;
import androidx.compose.ui.text.AnnotatedString;
import androidx.media3.extractor.ts.TsExtractor;
import defpackage.aa4;
import defpackage.fm3;
import defpackage.gh4;
import defpackage.j59;
import defpackage.qn1;
import defpackage.yr;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class PopulateViewStructure_androidKt {
    /* JADX WARN: Code duplicated, block: B:102:0x0277  */
    /* JADX WARN: Code duplicated, block: B:157:0x0360  */
    /* JADX WARN: Code duplicated, block: B:162:0x0369  */
    /* JADX WARN: Code duplicated, block: B:165:0x0373  */
    /* JADX WARN: Code duplicated, block: B:166:0x0375  */
    /* JADX WARN: Code duplicated, block: B:169:0x037c  */
    /* JADX WARN: Code duplicated, block: B:171:0x0389 A[LOOP:4: B:170:0x0387->B:171:0x0389, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:180:0x03ca  */
    /* JADX WARN: Code duplicated, block: B:185:0x03e2  */
    /* JADX WARN: Code duplicated, block: B:188:0x01c7 A[EDGE_INSN: B:188:0x01c7->B:72:0x01c7 BREAK  A[LOOP:0: B:9:0x0046->B:70:0x01a2], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:213:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:214:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:69:0x01a0 A[DONT_INVERT, PHI: r21 r22 r23 r24 r25 r26 r27 r28 r29 r30 r31
      0x01a0: PHI (r21v6 androidx.compose.ui.autofill.ContentDataType) = (r21v5 androidx.compose.ui.autofill.ContentDataType), (r21v7 androidx.compose.ui.autofill.ContentDataType) binds: [B:10:0x0050, B:68:0x019e] A[DONT_GENERATE, DONT_INLINE]
      0x01a0: PHI (r22v6 boolean) = (r22v5 boolean), (r22v7 boolean) binds: [B:10:0x0050, B:68:0x019e] A[DONT_GENERATE, DONT_INLINE]
      0x01a0: PHI (r23v11 androidx.compose.ui.state.ToggleableState) = (r23v10 androidx.compose.ui.state.ToggleableState), (r23v12 androidx.compose.ui.state.ToggleableState) binds: [B:10:0x0050, B:68:0x019e] A[DONT_GENERATE, DONT_INLINE]
      0x01a0: PHI (r24v6 androidx.compose.ui.text.AnnotatedString) = (r24v5 androidx.compose.ui.text.AnnotatedString), (r24v7 androidx.compose.ui.text.AnnotatedString) binds: [B:10:0x0050, B:68:0x019e] A[DONT_GENERATE, DONT_INLINE]
      0x01a0: PHI (r25v6 androidx.compose.ui.autofill.AndroidFillableData) = (r25v5 androidx.compose.ui.autofill.AndroidFillableData), (r25v7 androidx.compose.ui.autofill.AndroidFillableData) binds: [B:10:0x0050, B:68:0x019e] A[DONT_GENERATE, DONT_INLINE]
      0x01a0: PHI (r26v6 androidx.compose.ui.autofill.ContentType) = (r26v5 androidx.compose.ui.autofill.ContentType), (r26v7 androidx.compose.ui.autofill.ContentType) binds: [B:10:0x0050, B:68:0x019e] A[DONT_GENERATE, DONT_INLINE]
      0x01a0: PHI (r27v6 java.lang.Boolean) = (r27v5 java.lang.Boolean), (r27v7 java.lang.Boolean) binds: [B:10:0x0050, B:68:0x019e] A[DONT_GENERATE, DONT_INLINE]
      0x01a0: PHI (r28v6 androidx.compose.ui.semantics.Role) = (r28v5 androidx.compose.ui.semantics.Role), (r28v7 androidx.compose.ui.semantics.Role) binds: [B:10:0x0050, B:68:0x019e] A[DONT_GENERATE, DONT_INLINE]
      0x01a0: PHI (r29v6 boolean) = (r29v5 boolean), (r29v7 boolean) binds: [B:10:0x0050, B:68:0x019e] A[DONT_GENERATE, DONT_INLINE]
      0x01a0: PHI (r30v6 boolean) = (r30v5 boolean), (r30v7 boolean) binds: [B:10:0x0050, B:68:0x019e] A[DONT_GENERATE, DONT_INLINE]
      0x01a0: PHI (r31v6 java.lang.Integer) = (r31v5 java.lang.Integer), (r31v7 java.lang.Integer) binds: [B:10:0x0050, B:68:0x019e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:70:0x01a2 A[LOOP:0: B:9:0x0046->B:70:0x01a2, LOOP_END] */
    /* JADX WARN: Instruction removed from duplicated block: B:171:0x0389, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static final void populate(ViewStructure viewStructure, SemanticsInfo semanticsInfo, AutofillId autofillId, String str, RectManager rectManager) {
        int i;
        long j;
        char c;
        long j2;
        boolean zBooleanValue;
        ToggleableState toggleableState;
        ContentDataType contentDataType;
        boolean z;
        AnnotatedString annotatedString;
        AndroidFillableData androidFillableData;
        ContentType contentType;
        Boolean bool;
        Role role;
        boolean z2;
        Integer num;
        int i2;
        List list;
        Integer numValueOf;
        boolean z3;
        boolean z4;
        boolean z5;
        int i3;
        String strM8237toLegacyClassNameV4PA4sw;
        int size;
        String str2;
        int i4;
        String[] contentHints;
        String[] contentHints2;
        MutableScatterMap<SemanticsPropertyKey<?>, Object> props$ui;
        SemanticsProperties semanticsProperties;
        SemanticsProperties semanticsProperties2;
        int i5;
        MutableScatterMap<SemanticsPropertyKey<?>, Object> props$ui2;
        ToggleableState toggleableState2;
        int i6;
        AutofillApi26Helper autofillApi26Helper = AutofillApi26Helper.INSTANCE;
        SemanticsProperties semanticsProperties3 = SemanticsProperties.INSTANCE;
        SemanticsActions semanticsActions = SemanticsActions.INSTANCE;
        SemanticsConfiguration semanticsConfiguration = semanticsInfo.getSemanticsConfiguration();
        int i7 = 8;
        int i8 = 1;
        if (semanticsConfiguration == null || (props$ui2 = semanticsConfiguration.getProps$ui()) == null) {
            i = 2;
            j = 255;
            c = 7;
            j2 = -9187201950435737472L;
            zBooleanValue = true;
            toggleableState = null;
            contentDataType = null;
            z = false;
            annotatedString = null;
            androidFillableData = null;
            contentType = null;
            bool = null;
            role = null;
            z2 = false;
            num = null;
        } else {
            Object[] objArr = props$ui2.keys;
            j = 255;
            Object[] objArr2 = props$ui2.values;
            long[] jArr = props$ui2.metadata;
            int length = jArr.length - 2;
            if (length >= 0) {
                zBooleanValue = true;
                i = 2;
                int i9 = 0;
                c = 7;
                contentDataType = null;
                z = false;
                toggleableState2 = null;
                annotatedString = null;
                androidFillableData = null;
                contentType = null;
                bool = null;
                role = null;
                z2 = false;
                num = null;
                j2 = -9187201950435737472L;
                while (true) {
                    long j3 = jArr[i9];
                    if ((((~j3) << 7) & j3 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i10 = 8 - ((~(i9 - length)) >>> 31);
                        int i11 = 0;
                        while (i11 < i10) {
                            if ((j3 & 255) < 128) {
                                int i12 = (i9 << 3) + i11;
                                Object obj = objArr[i12];
                                Object obj2 = objArr2[i12];
                                SemanticsPropertyKey semanticsPropertyKey = (SemanticsPropertyKey) obj;
                                i6 = i7;
                                if (aa4.e(semanticsPropertyKey, semanticsProperties3.getContentDataType())) {
                                    obj2.getClass();
                                    contentDataType = (ContentDataType) obj2;
                                } else if (aa4.e(semanticsPropertyKey, semanticsProperties3.getContentDescription())) {
                                    obj2.getClass();
                                    CharSequence charSequence = (String) qn1.V((List) obj2);
                                    if (charSequence != null) {
                                        autofillApi26Helper.setContentDescription(viewStructure, charSequence);
                                    }
                                } else if (aa4.e(semanticsPropertyKey, semanticsProperties3.getContentType())) {
                                    obj2.getClass();
                                    contentType = (ContentType) obj2;
                                } else if (aa4.e(semanticsPropertyKey, semanticsProperties3.getFillableData())) {
                                    obj2.getClass();
                                    androidFillableData = (AndroidFillableData) obj2;
                                } else if (aa4.e(semanticsPropertyKey, semanticsProperties3.getEditableText())) {
                                    obj2.getClass();
                                    annotatedString = (AnnotatedString) obj2;
                                } else if (aa4.e(semanticsPropertyKey, semanticsProperties3.getFocused())) {
                                    obj2.getClass();
                                    autofillApi26Helper.setFocused(viewStructure, ((Boolean) obj2).booleanValue());
                                } else if (aa4.e(semanticsPropertyKey, semanticsProperties3.getMaxTextLength())) {
                                    obj2.getClass();
                                    num = (Integer) obj2;
                                } else if (aa4.e(semanticsPropertyKey, semanticsProperties3.getPassword())) {
                                    z2 = true;
                                } else if (aa4.e(semanticsPropertyKey, semanticsProperties3.getIsSensitiveData())) {
                                    obj2.getClass();
                                    zBooleanValue = ((Boolean) obj2).booleanValue();
                                } else if (aa4.e(semanticsPropertyKey, semanticsProperties3.getRole())) {
                                    obj2.getClass();
                                    role = (Role) obj2;
                                } else if (aa4.e(semanticsPropertyKey, semanticsProperties3.getSelected())) {
                                    obj2.getClass();
                                    bool = (Boolean) obj2;
                                } else if (aa4.e(semanticsPropertyKey, semanticsProperties3.getToggleableState())) {
                                    obj2.getClass();
                                    toggleableState2 = (ToggleableState) obj2;
                                } else if (aa4.e(semanticsPropertyKey, semanticsActions.getOnClick())) {
                                    autofillApi26Helper.setClickable(viewStructure, true);
                                } else if (aa4.e(semanticsPropertyKey, semanticsActions.getOnLongClick())) {
                                    autofillApi26Helper.setLongClickable(viewStructure, true);
                                } else if (aa4.e(semanticsPropertyKey, semanticsActions.getRequestFocus())) {
                                    autofillApi26Helper.setFocusable(viewStructure, true);
                                } else if (aa4.e(semanticsPropertyKey, semanticsActions.getSetText())) {
                                    z = true;
                                }
                            } else {
                                i6 = i7;
                            }
                            j3 >>= i6;
                            i11++;
                            i7 = i6;
                        }
                        if (i10 != i7) {
                            break;
                        }
                        if (i9 != length) {
                            break;
                        }
                        i9++;
                        i7 = 8;
                    } else if (i9 != length) {
                        break;
                        break;
                    } else {
                        i9++;
                        i7 = 8;
                    }
                }
            } else {
                i = 2;
                c = 7;
                j2 = -9187201950435737472L;
                zBooleanValue = true;
                contentDataType = null;
                z = false;
                toggleableState2 = null;
                annotatedString = null;
                androidFillableData = null;
                contentType = null;
                bool = null;
                role = null;
                z2 = false;
                num = null;
            }
            toggleableState = toggleableState2;
        }
        SemanticsConfiguration semanticsConfigurationMergedSemanticsConfiguration = SemanticsInfoKt.mergedSemanticsConfiguration(semanticsInfo);
        if (semanticsConfigurationMergedSemanticsConfiguration == null || (props$ui = semanticsConfigurationMergedSemanticsConfiguration.getProps$ui()) == null) {
            i2 = 1;
            list = null;
        } else {
            Object[] objArr3 = props$ui.keys;
            Object[] objArr4 = props$ui.values;
            long[] jArr2 = props$ui.metadata;
            int length2 = jArr2.length - 2;
            if (length2 >= 0) {
                int i13 = 0;
                list = null;
                while (true) {
                    long j4 = jArr2[i13];
                    if ((((~j4) << c) & j4 & j2) != j2) {
                        int i14 = 8 - ((~(i13 - length2)) >>> 31);
                        int i15 = 0;
                        while (i15 < i14) {
                            if ((j4 & j) < 128) {
                                int i16 = (i13 << 3) + i15;
                                Object obj3 = objArr3[i16];
                                Object obj4 = objArr4[i16];
                                i5 = i8;
                                SemanticsPropertyKey semanticsPropertyKey2 = (SemanticsPropertyKey) obj3;
                                semanticsProperties2 = semanticsProperties3;
                                if (aa4.e(semanticsPropertyKey2, semanticsProperties2.getDisabled())) {
                                    autofillApi26Helper.setEnabled(viewStructure, false);
                                } else if (aa4.e(semanticsPropertyKey2, semanticsProperties2.getText())) {
                                    obj4.getClass();
                                    list = (List) obj4;
                                }
                            } else {
                                semanticsProperties2 = semanticsProperties3;
                                i5 = i8;
                            }
                            j4 >>= 8;
                            i15++;
                            semanticsProperties3 = semanticsProperties2;
                            i8 = i5;
                        }
                        semanticsProperties = semanticsProperties3;
                        i2 = i8;
                        if (i14 != 8) {
                            break;
                        }
                    } else {
                        semanticsProperties = semanticsProperties3;
                        i2 = i8;
                    }
                    if (i13 == length2) {
                        break;
                    }
                    i13++;
                    semanticsProperties3 = semanticsProperties;
                    i8 = i2;
                }
            } else {
                i2 = 1;
                list = null;
            }
        }
        Integer numValueOf2 = Integer.valueOf(semanticsInfo.getSemanticsId());
        if (semanticsInfo.getParentInfo() == null) {
            numValueOf2 = null;
        }
        int iIntValue = numValueOf2 != null ? numValueOf2.intValue() : -1;
        autofillApi26Helper.setAutofillId(viewStructure, autofillId, iIntValue);
        autofillApi26Helper.setId(viewStructure, iIntValue, str, null, null);
        if (contentDataType != null) {
            numValueOf = Integer.valueOf(ContentDataType_androidKt.getDataType(contentDataType));
        } else if (z) {
            numValueOf = Integer.valueOf(i2);
        } else {
            numValueOf = toggleableState != null ? Integer.valueOf(i) : null;
        }
        if (numValueOf != null) {
            autofillApi26Helper.setAutofillType(viewStructure, numValueOf.intValue());
        }
        if (annotatedString != null) {
            autofillApi26Helper.setAutofillValue(viewStructure, autofillApi26Helper.getAutofillTextValue(annotatedString.getText()));
        }
        if (androidFillableData != null) {
            autofillApi26Helper.setAutofillValue(viewStructure, androidFillableData.getAutofillValue$ui());
        }
        if (contentType != null && (contentHints2 = ContentType_androidKt.getContentHints(contentType)) != null) {
            autofillApi26Helper.setAutofillHints(viewStructure, contentHints2);
        }
        rectManager.getRects().withRect(semanticsInfo.getSemanticsId(), new AnonymousClass7(autofillApi26Helper, viewStructure));
        if (bool != null) {
            autofillApi26Helper.setSelected(viewStructure, bool.booleanValue());
        }
        if (toggleableState != null) {
            autofillApi26Helper.setCheckable(viewStructure, i2);
            autofillApi26Helper.setChecked(viewStructure, toggleableState == ToggleableState.On);
        } else if (bool != null) {
            if (!(role == null ? false : Role.m8257equalsimpl0(role.m8260unboximpl(), Role.Companion.m8268getTabo7Vup1c()))) {
                autofillApi26Helper.setCheckable(viewStructure, true);
                autofillApi26Helper.setChecked(viewStructure, bool.booleanValue());
            }
        }
        String str3 = (String) yr.I(ContentType_androidKt.getContentHints(ContentType.Companion.getPassword()));
        if (contentType != null && (contentHints = ContentType_androidKt.getContentHints(contentType)) != null) {
            boolean zE = yr.E(contentHints, str3);
            z3 = true;
            boolean z6 = zE;
            if (!z2 || z6) {
                z4 = z3;
            } else {
                z4 = false;
            }
            if (!z4 || zBooleanValue) {
                z5 = z3;
            } else {
                z5 = false;
            }
            autofillApi26Helper.setDataIsSensitive(viewStructure, z5);
            if (semanticsInfo.isTransparent()) {
                i3 = 4;
            } else {
                i3 = 0;
            }
            autofillApi26Helper.setVisibility(viewStructure, i3);
            if (list != null) {
                size = list.size();
                str2 = "";
                for (i4 = 0; i4 < size; i4++) {
                    str2 = str2 + ((AnnotatedString) list.get(i4)).getText() + '\n';
                }
                autofillApi26Helper.setText(viewStructure, str2);
                autofillApi26Helper.setClassName(viewStructure, AndroidComposeViewAccessibilityDelegateCompat.TextClassName);
            }
            if (semanticsInfo.getChildrenInfo().isEmpty() && role != null && (strM8237toLegacyClassNameV4PA4sw = SemanticsUtils_androidKt.m8237toLegacyClassNameV4PA4sw(role.m8260unboximpl())) != null) {
                autofillApi26Helper.setClassName(viewStructure, strM8237toLegacyClassNameV4PA4sw);
            }
            if (z) {
                autofillApi26Helper.setClassName(viewStructure, AndroidComposeViewAccessibilityDelegateCompat.TextFieldClassName);
                if (Build.VERSION.SDK_INT >= 28 && num != null) {
                    AutofillApi28Helper.INSTANCE.setMaxTextLength(viewStructure, num.intValue());
                }
                if (z4) {
                    autofillApi26Helper.setInputType(viewStructure, TsExtractor.TS_STREAM_TYPE_AC3);
                }
            }
        }
        z3 = true;
        if (z2) {
            z4 = z3;
        } else {
            z4 = z3;
        }
        if (z4) {
            z5 = z3;
        } else {
            z5 = z3;
        }
        autofillApi26Helper.setDataIsSensitive(viewStructure, z5);
        if (semanticsInfo.isTransparent()) {
            i3 = 4;
        } else {
            i3 = 0;
        }
        autofillApi26Helper.setVisibility(viewStructure, i3);
        if (list != null) {
            size = list.size();
            str2 = "";
            while (i4 < size) {
                str2 = str2 + ((AnnotatedString) list.get(i4)).getText() + '\n';
            }
            autofillApi26Helper.setText(viewStructure, str2);
            autofillApi26Helper.setClassName(viewStructure, AndroidComposeViewAccessibilityDelegateCompat.TextClassName);
        }
        if (semanticsInfo.getChildrenInfo().isEmpty()) {
            autofillApi26Helper.setClassName(viewStructure, strM8237toLegacyClassNameV4PA4sw);
        }
        if (z) {
            autofillApi26Helper.setClassName(viewStructure, AndroidComposeViewAccessibilityDelegateCompat.TextFieldClassName);
            if (Build.VERSION.SDK_INT >= 28) {
                AutofillApi28Helper.INSTANCE.setMaxTextLength(viewStructure, num.intValue());
            }
            if (z4) {
                autofillApi26Helper.setInputType(viewStructure, TsExtractor.TS_STREAM_TYPE_AC3);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.autofill.PopulateViewStructure_androidKt$populate$7, reason: invalid class name */
    public static final class AnonymousClass7 extends gh4 implements fm3<Integer, Integer, Integer, Integer, j59> {
        final /* synthetic */ AutofillApi26Helper $autofillApi;
        final /* synthetic */ ViewStructure $this_populate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass7(AutofillApi26Helper autofillApi26Helper, ViewStructure viewStructure) {
            super(4);
            this.$autofillApi = autofillApi26Helper;
            this.$this_populate = viewStructure;
        }

        @Override // defpackage.fm3
        public /* bridge */ /* synthetic */ j59 invoke(Integer num, Integer num2, Integer num3, Integer num4) {
            invoke(num.intValue(), num2.intValue(), num3.intValue(), num4.intValue());
            return j59.a;
        }

        public final void invoke(int i, int i2, int i3, int i4) {
            this.$autofillApi.setDimens(this.$this_populate, i, i2, 0, 0, i3 - i, i4 - i2);
        }
    }
}
