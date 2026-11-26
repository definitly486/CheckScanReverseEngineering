package androidx.compose.foundation.text;

import androidx.compose.foundation.ComposeFoundationFlags;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.relocation.BringIntoViewRequester;
import androidx.compose.foundation.relocation.BringIntoViewRequesterKt;
import androidx.compose.foundation.text.CoreTextFieldKt;
import androidx.compose.foundation.text.handwriting.StylusHandwritingKt;
import androidx.compose.foundation.text.input.internal.CoreTextFieldSemanticsModifier;
import androidx.compose.foundation.text.input.internal.LegacyAdaptingPlatformTextInputModifierNodeKt;
import androidx.compose.foundation.text.input.internal.LegacyPlatformTextInputServiceAdapter;
import androidx.compose.foundation.text.input.internal.LegacyPlatformTextInputServiceAdapter_androidKt;
import androidx.compose.foundation.text.selection.OffsetProvider;
import androidx.compose.foundation.text.selection.PlatformSelectionBehaviors_androidKt;
import androidx.compose.foundation.text.selection.SelectedTextType;
import androidx.compose.foundation.text.selection.SelectionHandleAnchor;
import androidx.compose.foundation.text.selection.SelectionHandleInfo;
import androidx.compose.foundation.text.selection.SelectionHandlesKt;
import androidx.compose.foundation.text.selection.SimpleLayoutKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextFieldSelectionManagerKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.RecomposeScope;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.input.key.KeyEvent;
import androidx.compose.ui.input.key.KeyInputModifierKt;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.Clipboard;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.platform.TextToolbar;
import androidx.compose.ui.platform.WindowInfo;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.KeyboardType;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.PasswordVisualTransformation;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.text.input.TextInputSession;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.unit.Density;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.muxer.MuxerUtil;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.c32;
import defpackage.dm3;
import defpackage.e02;
import defpackage.gx2;
import defpackage.hm;
import defpackage.j59;
import defpackage.jf;
import defpackage.jg;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.p12;
import defpackage.pg8;
import defpackage.q12;
import defpackage.r57;
import defpackage.u12;
import defpackage.x12;
import defpackage.y22;
import defpackage.z22;

/* JADX INFO: loaded from: classes.dex */
public final class CoreTextFieldKt {
    /* JADX WARN: Code duplicated, block: B:100:0x012c  */
    /* JADX WARN: Code duplicated, block: B:104:0x0134  */
    /* JADX WARN: Code duplicated, block: B:105:0x013d  */
    /* JADX WARN: Code duplicated, block: B:107:0x0141  */
    /* JADX WARN: Code duplicated, block: B:109:0x014b  */
    /* JADX WARN: Code duplicated, block: B:110:0x014e  */
    /* JADX WARN: Code duplicated, block: B:112:0x0153  */
    /* JADX WARN: Code duplicated, block: B:115:0x015d  */
    /* JADX WARN: Code duplicated, block: B:117:0x0161  */
    /* JADX WARN: Code duplicated, block: B:120:0x016c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:124:0x0175  */
    /* JADX WARN: Code duplicated, block: B:127:0x017e  */
    /* JADX WARN: Code duplicated, block: B:128:0x0181  */
    /* JADX WARN: Code duplicated, block: B:130:0x0187  */
    /* JADX WARN: Code duplicated, block: B:132:0x018f  */
    /* JADX WARN: Code duplicated, block: B:133:0x0192  */
    /* JADX WARN: Code duplicated, block: B:135:0x0199  */
    /* JADX WARN: Code duplicated, block: B:138:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:139:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:141:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:143:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:145:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:148:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:149:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:151:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:153:0x01da  */
    /* JADX WARN: Code duplicated, block: B:155:0x01df  */
    /* JADX WARN: Code duplicated, block: B:158:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:159:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:161:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:164:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:168:0x0204  */
    /* JADX WARN: Code duplicated, block: B:169:0x0209  */
    /* JADX WARN: Code duplicated, block: B:171:0x020f  */
    /* JADX WARN: Code duplicated, block: B:173:0x0215  */
    /* JADX WARN: Code duplicated, block: B:177:0x0225  */
    /* JADX WARN: Code duplicated, block: B:181:0x0232  */
    /* JADX WARN: Code duplicated, block: B:184:0x023b  */
    /* JADX WARN: Code duplicated, block: B:186:0x0243  */
    /* JADX WARN: Code duplicated, block: B:193:0x026a A[PHI: r0 r2 r4 r7 r8 r10 r11 r12 r13 r14 r15 r17 r18 r19 r21
      0x026a: PHI (r0v98 androidx.compose.ui.Modifier) = (r0v35 androidx.compose.ui.Modifier), (r0v101 androidx.compose.ui.Modifier) binds: [B:236:0x0305, B:192:0x0253] A[DONT_GENERATE, DONT_INLINE]
      0x026a: PHI (r2v40 androidx.compose.ui.graphics.Brush) = (r2v8 androidx.compose.ui.graphics.Brush), (r2v41 androidx.compose.ui.graphics.Brush) binds: [B:236:0x0305, B:192:0x0253] A[DONT_GENERATE, DONT_INLINE]
      0x026a: PHI (r4v51 int) = (r4v9 int), (r4v52 int) binds: [B:236:0x0305, B:192:0x0253] A[DONT_GENERATE, DONT_INLINE]
      0x026a: PHI (r7v46 androidx.compose.foundation.interaction.MutableInteractionSource) = 
      (r7v3 androidx.compose.foundation.interaction.MutableInteractionSource)
      (r7v1 androidx.compose.foundation.interaction.MutableInteractionSource)
     binds: [B:236:0x0305, B:192:0x0253] A[DONT_GENERATE, DONT_INLINE]
      0x026a: PHI (r8v10 androidx.compose.ui.text.input.VisualTransformation) = (r8v4 androidx.compose.ui.text.input.VisualTransformation), (r8v11 androidx.compose.ui.text.input.VisualTransformation) binds: [B:236:0x0305, B:192:0x0253] A[DONT_GENERATE, DONT_INLINE]
      0x026a: PHI (r10v54 androidx.compose.ui.text.TextStyle) = (r10v7 androidx.compose.ui.text.TextStyle), (r10v2 androidx.compose.ui.text.TextStyle) binds: [B:236:0x0305, B:192:0x0253] A[DONT_GENERATE, DONT_INLINE]
      0x026a: PHI (r11v40 boolean) = (r11v5 boolean), (r11v41 boolean) binds: [B:236:0x0305, B:192:0x0253] A[DONT_GENERATE, DONT_INLINE]
      0x026a: PHI (r12v41 int) = (r12v4 int), (r12v42 int) binds: [B:236:0x0305, B:192:0x0253] A[DONT_GENERATE, DONT_INLINE]
      0x026a: PHI (r13v47 int) = (r13v4 int), (r13v48 int) binds: [B:236:0x0305, B:192:0x0253] A[DONT_GENERATE, DONT_INLINE]
      0x026a: PHI (r14v15 androidx.compose.ui.text.input.ImeOptions) = (r14v6 androidx.compose.ui.text.input.ImeOptions), (r14v16 androidx.compose.ui.text.input.ImeOptions) binds: [B:236:0x0305, B:192:0x0253] A[DONT_GENERATE, DONT_INLINE]
      0x026a: PHI (r15v18 boolean) = (r15v6 boolean), (r15v19 boolean) binds: [B:236:0x0305, B:192:0x0253] A[DONT_GENERATE, DONT_INLINE]
      0x026a: PHI (r17v13 nl3<? super androidx.compose.ui.text.TextLayoutResult, j59>) = 
      (r17v9 nl3<? super androidx.compose.ui.text.TextLayoutResult, j59>)
      (r17v14 nl3<? super androidx.compose.ui.text.TextLayoutResult, j59>)
     binds: [B:236:0x0305, B:192:0x0253] A[DONT_GENERATE, DONT_INLINE]
      0x026a: PHI (r18v13 androidx.compose.foundation.text.KeyboardActions) = (r18v3 androidx.compose.foundation.text.KeyboardActions), (r18v14 androidx.compose.foundation.text.KeyboardActions) binds: [B:236:0x0305, B:192:0x0253] A[DONT_GENERATE, DONT_INLINE]
      0x026a: PHI (r19v12 boolean) = (r19v7 boolean), (r19v13 boolean) binds: [B:236:0x0305, B:192:0x0253] A[DONT_GENERATE, DONT_INLINE]
      0x026a: PHI (r21v11 dm3<? super bm3<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, j59>, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, j59>) = 
      (r21v6 dm3<? super bm3<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, j59>, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, j59>)
      (r21v12 dm3<? super bm3<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, j59>, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, j59>)
     binds: [B:236:0x0305, B:192:0x0253] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:194:0x026e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:195:0x0270  */
    /* JADX WARN: Code duplicated, block: B:197:0x0275  */
    /* JADX WARN: Code duplicated, block: B:198:0x027c  */
    /* JADX WARN: Code duplicated, block: B:200:0x027f  */
    /* JADX WARN: Code duplicated, block: B:202:0x0288  */
    /* JADX WARN: Code duplicated, block: B:204:0x0294  */
    /* JADX WARN: Code duplicated, block: B:207:0x02a2  */
    /* JADX WARN: Code duplicated, block: B:209:0x02a5  */
    /* JADX WARN: Code duplicated, block: B:211:0x02b2  */
    /* JADX WARN: Code duplicated, block: B:212:0x02b4  */
    /* JADX WARN: Code duplicated, block: B:214:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:215:0x02bc  */
    /* JADX WARN: Code duplicated, block: B:217:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:218:0x02c2  */
    /* JADX WARN: Code duplicated, block: B:221:0x02c8  */
    /* JADX WARN: Code duplicated, block: B:222:0x02d1  */
    /* JADX WARN: Code duplicated, block: B:224:0x02d5  */
    /* JADX WARN: Code duplicated, block: B:225:0x02dc  */
    /* JADX WARN: Code duplicated, block: B:227:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:228:0x02e3  */
    /* JADX WARN: Code duplicated, block: B:230:0x02e7  */
    /* JADX WARN: Code duplicated, block: B:231:0x02ea  */
    /* JADX WARN: Code duplicated, block: B:233:0x02ee  */
    /* JADX WARN: Code duplicated, block: B:234:0x02f5  */
    /* JADX WARN: Code duplicated, block: B:237:0x0307  */
    /* JADX WARN: Code duplicated, block: B:240:0x0314  */
    /* JADX WARN: Code duplicated, block: B:243:0x032a  */
    /* JADX WARN: Code duplicated, block: B:246:0x0340  */
    /* JADX WARN: Code duplicated, block: B:249:0x0353  */
    /* JADX WARN: Code duplicated, block: B:252:0x03aa A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:256:0x03b5  */
    /* JADX WARN: Code duplicated, block: B:258:0x03b9  */
    /* JADX WARN: Code duplicated, block: B:260:0x03e1  */
    /* JADX WARN: Code duplicated, block: B:264:0x03ea  */
    /* JADX WARN: Code duplicated, block: B:266:0x03ff  */
    /* JADX WARN: Code duplicated, block: B:269:0x0418  */
    /* JADX WARN: Code duplicated, block: B:271:0x041e  */
    /* JADX WARN: Code duplicated, block: B:272:0x0421  */
    /* JADX WARN: Code duplicated, block: B:275:0x042d  */
    /* JADX WARN: Code duplicated, block: B:277:0x0432  */
    /* JADX WARN: Code duplicated, block: B:278:0x0434  */
    /* JADX WARN: Code duplicated, block: B:281:0x0440  */
    /* JADX WARN: Code duplicated, block: B:282:0x0442  */
    /* JADX WARN: Code duplicated, block: B:285:0x044a  */
    /* JADX WARN: Code duplicated, block: B:289:0x0454  */
    /* JADX WARN: Code duplicated, block: B:291:0x0462  */
    /* JADX WARN: Code duplicated, block: B:294:0x0471  */
    /* JADX WARN: Code duplicated, block: B:295:0x0473  */
    /* JADX WARN: Code duplicated, block: B:300:0x0496  */
    /* JADX WARN: Code duplicated, block: B:304:0x04a6  */
    /* JADX WARN: Code duplicated, block: B:307:0x050f  */
    /* JADX WARN: Code duplicated, block: B:308:0x051d  */
    /* JADX WARN: Code duplicated, block: B:311:0x053e  */
    /* JADX WARN: Code duplicated, block: B:314:0x0555  */
    /* JADX WARN: Code duplicated, block: B:317:0x056a  */
    /* JADX WARN: Code duplicated, block: B:31:0x0058  */
    /* JADX WARN: Code duplicated, block: B:320:0x05c0  */
    /* JADX WARN: Code duplicated, block: B:321:0x05dc  */
    /* JADX WARN: Code duplicated, block: B:324:0x05fa  */
    /* JADX WARN: Code duplicated, block: B:325:0x05fc  */
    /* JADX WARN: Code duplicated, block: B:328:0x0606  */
    /* JADX WARN: Code duplicated, block: B:329:0x0608  */
    /* JADX WARN: Code duplicated, block: B:332:0x0613  */
    /* JADX WARN: Code duplicated, block: B:333:0x0615  */
    /* JADX WARN: Code duplicated, block: B:336:0x0621  */
    /* JADX WARN: Code duplicated, block: B:33:0x005d  */
    /* JADX WARN: Code duplicated, block: B:340:0x062b  */
    /* JADX WARN: Code duplicated, block: B:342:0x0631 A[PHI: r52
      0x0631: PHI (r52v12 androidx.compose.ui.text.input.TextInputService) = (r52v4 androidx.compose.ui.text.input.TextInputService), (r52v13 androidx.compose.ui.text.input.TextInputService) binds: [B:341:0x062f, B:339:0x0628] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:343:0x0633  */
    /* JADX WARN: Code duplicated, block: B:346:0x0650  */
    /* JADX WARN: Code duplicated, block: B:350:0x0667  */
    /* JADX WARN: Code duplicated, block: B:353:0x06a1 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:356:0x06a8  */
    /* JADX WARN: Code duplicated, block: B:359:0x06d4  */
    /* JADX WARN: Code duplicated, block: B:35:0x0061  */
    /* JADX WARN: Code duplicated, block: B:363:0x06de  */
    /* JADX WARN: Code duplicated, block: B:365:0x06e4 A[PHI: r54
      0x06e4: PHI (r54v12 androidx.compose.ui.text.input.ImeOptions) = (r54v4 androidx.compose.ui.text.input.ImeOptions), (r54v13 androidx.compose.ui.text.input.ImeOptions) binds: [B:364:0x06e2, B:362:0x06db] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:366:0x06e6  */
    /* JADX WARN: Code duplicated, block: B:369:0x06ef  */
    /* JADX WARN: Code duplicated, block: B:373:0x06fe  */
    /* JADX WARN: Code duplicated, block: B:376:0x076b  */
    /* JADX WARN: Code duplicated, block: B:377:0x076d  */
    /* JADX WARN: Code duplicated, block: B:37:0x0069  */
    /* JADX WARN: Code duplicated, block: B:380:0x0783  */
    /* JADX WARN: Code duplicated, block: B:381:0x0785  */
    /* JADX WARN: Code duplicated, block: B:384:0x0798  */
    /* JADX WARN: Code duplicated, block: B:388:0x07a4  */
    /* JADX WARN: Code duplicated, block: B:38:0x006c  */
    /* JADX WARN: Code duplicated, block: B:391:0x07ed A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:398:0x0808  */
    /* JADX WARN: Code duplicated, block: B:401:0x0829  */
    /* JADX WARN: Code duplicated, block: B:405:0x0832  */
    /* JADX WARN: Code duplicated, block: B:408:0x084c  */
    /* JADX WARN: Code duplicated, block: B:409:0x084e  */
    /* JADX WARN: Code duplicated, block: B:412:0x0854  */
    /* JADX WARN: Code duplicated, block: B:414:0x085a  */
    /* JADX WARN: Code duplicated, block: B:420:0x0868  */
    /* JADX WARN: Code duplicated, block: B:422:0x086e  */
    /* JADX WARN: Code duplicated, block: B:425:0x0886  */
    /* JADX WARN: Code duplicated, block: B:426:0x0888  */
    /* JADX WARN: Code duplicated, block: B:429:0x08b9  */
    /* JADX WARN: Code duplicated, block: B:42:0x0076  */
    /* JADX WARN: Code duplicated, block: B:432:0x08c9  */
    /* JADX WARN: Code duplicated, block: B:435:0x08e6  */
    /* JADX WARN: Code duplicated, block: B:437:0x08ec  */
    /* JADX WARN: Code duplicated, block: B:440:0x092f  */
    /* JADX WARN: Code duplicated, block: B:444:0x0938  */
    /* JADX WARN: Code duplicated, block: B:447:0x098e  */
    /* JADX WARN: Code duplicated, block: B:44:0x007b  */
    /* JADX WARN: Code duplicated, block: B:455:0x09a3  */
    /* JADX WARN: Code duplicated, block: B:457:0x09a9  */
    /* JADX WARN: Code duplicated, block: B:460:0x09f7  */
    /* JADX WARN: Code duplicated, block: B:462:0x0a1a  */
    /* JADX WARN: Code duplicated, block: B:465:0x0a3b  */
    /* JADX WARN: Code duplicated, block: B:467:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:46:0x007f  */
    /* JADX WARN: Code duplicated, block: B:48:0x0087  */
    /* JADX WARN: Code duplicated, block: B:49:0x008a  */
    /* JADX WARN: Code duplicated, block: B:53:0x0098  */
    /* JADX WARN: Code duplicated, block: B:54:0x009d  */
    /* JADX WARN: Code duplicated, block: B:56:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:58:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:59:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:63:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:64:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:66:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:68:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:69:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:73:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:74:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:76:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:78:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:79:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:83:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:84:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:86:0x0101  */
    /* JADX WARN: Code duplicated, block: B:88:0x0107  */
    /* JADX WARN: Code duplicated, block: B:89:0x010a  */
    /* JADX WARN: Code duplicated, block: B:93:0x0114  */
    /* JADX WARN: Code duplicated, block: B:95:0x011b  */
    /* JADX WARN: Code duplicated, block: B:97:0x011f  */
    /* JADX WARN: Code duplicated, block: B:99:0x0129  */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void CoreTextField(final TextFieldValue textFieldValue, final nl3<? super TextFieldValue, j59> nl3Var, Modifier modifier, TextStyle textStyle, VisualTransformation visualTransformation, nl3<? super TextLayoutResult, j59> nl3Var2, MutableInteractionSource mutableInteractionSource, Brush brush, boolean z, int i, int i2, ImeOptions imeOptions, KeyboardActions keyboardActions, boolean z2, boolean z3, dm3<? super bm3<? super Composer, ? super Integer, j59>, ? super Composer, ? super Integer, j59> dm3Var, TextFieldScrollerPosition textFieldScrollerPosition, Composer composer, final int i3, final int i4, final int i5) {
        int i6;
        Modifier modifier2;
        int i7;
        TextStyle textStyle2;
        int i8;
        int i9;
        VisualTransformation none;
        int i10;
        int i11;
        nl3<? super TextLayoutResult, j59> nl3Var3;
        int i12;
        int i13;
        final MutableInteractionSource mutableInteractionSource2;
        int i14;
        int i15;
        final Brush solidColor;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        int i31;
        int i32;
        int i33;
        int i34;
        int i35;
        boolean z4;
        final boolean z5;
        final ImeOptions imeOptions2;
        final KeyboardActions keyboardActions2;
        final dm3<? super bm3<? super Composer, ? super Integer, j59>, ? super Composer, ? super Integer, j59> dm3Var2;
        final TextFieldScrollerPosition textFieldScrollerPosition2;
        Composer composer2;
        final TextStyle textStyle3;
        final nl3<? super TextLayoutResult, j59> nl3Var4;
        final VisualTransformation visualTransformation2;
        final Modifier modifier3;
        final int i36;
        final int i37;
        final boolean z6;
        final boolean z7;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        jh2 jh2Var;
        TextStyle textStyle4;
        boolean z8;
        int i38;
        int i39;
        ImeOptions imeOptions3;
        KeyboardActions keyboardActions3;
        boolean z9;
        boolean z10;
        dm3<? super bm3<? super Composer, ? super Integer, j59>, ? super Composer, ? super Integer, j59> lambda$559628295$foundation;
        Modifier modifier4;
        boolean z11;
        final nl3<? super TextLayoutResult, j59> nl3Var5;
        boolean z12;
        ImeOptions imeOptions4;
        Brush brush2;
        VisualTransformation visualTransformation3;
        int i40;
        TextFieldScrollerPosition textFieldScrollerPosition3;
        Object objRememberedValue;
        Brush brush3;
        Object objRememberedValue2;
        Composer.Companion companion;
        FocusRequester focusRequester;
        Object objRememberedValue3;
        int i41;
        final LegacyPlatformTextInputServiceAdapter legacyPlatformTextInputServiceAdapter;
        Object objRememberedValue4;
        TextInputService textInputService;
        final Density density;
        FontFamily.Resolver resolver;
        long jM3048getBackgroundColor0d7_KjU;
        FocusManager focusManager;
        final WindowInfo windowInfo;
        final TextStyle textStyle5;
        SoftwareKeyboardController softwareKeyboardController;
        boolean z13;
        Orientation orientation;
        TextFieldScrollerPosition textFieldScrollerPosition4;
        int i42;
        boolean z14;
        boolean z15;
        boolean z16;
        Object objRememberedValue5;
        TransformedText transformedTextFilterWithValidation;
        TextRange textRangeM8740getCompositionMzsxiRA;
        TextFieldScrollerPosition textFieldScrollerPosition5;
        TransformedText transformedTextM2604applyCompositionDecoration72CqOWE;
        AnnotatedString text;
        OffsetMapping offsetMapping;
        RecomposeScope currentRecomposeScope;
        boolean zChanged;
        Object objRememberedValue6;
        final LegacyTextFieldState legacyTextFieldState;
        Object objRememberedValue7;
        UndoManager undoManager;
        Object objRememberedValue8;
        final y22 y22Var;
        Object objRememberedValue9;
        final BringIntoViewRequester bringIntoViewRequester;
        Object objRememberedValue10;
        final TextFieldSelectionManager textFieldSelectionManager;
        Modifier.Companion companion2;
        int i43;
        int i44;
        boolean z17;
        boolean z18;
        boolean z19;
        int i45;
        final TextInputService textInputService2;
        boolean z20;
        boolean zChangedInstance;
        Object objRememberedValue11;
        final OffsetMapping offsetMapping2;
        LegacyTextFieldState legacyTextFieldState2;
        boolean z21;
        TextFieldValue textFieldValue2;
        ImeOptions imeOptions5;
        TextFieldSelectionManager textFieldSelectionManager2;
        y22 y22Var2;
        BringIntoViewRequester bringIntoViewRequester2;
        boolean z22;
        State stateRememberUpdatedState;
        ImeOptions imeOptions6;
        boolean z23;
        boolean z24;
        Object objRememberedValue12;
        LegacyTextFieldState legacyTextFieldState3;
        TextFieldSelectionManager textFieldSelectionManager3;
        ImeOptions imeOptions7;
        final ImeOptions imeOptions8;
        final boolean z25;
        final LegacyTextFieldState legacyTextFieldState4;
        final TextFieldSelectionManager textFieldSelectionManager4;
        final OffsetMapping offsetMapping3;
        boolean z26;
        boolean z27;
        boolean zChangedInstance2;
        Object objRememberedValue13;
        TextFieldSelectionManager textFieldSelectionManager5;
        final TextFieldSelectionManager textFieldSelectionManager6;
        boolean z28;
        boolean zChangedInstance3;
        Object objRememberedValue14;
        int i46;
        boolean z29;
        boolean z30;
        Object objRememberedValue15;
        final int i47;
        boolean z31;
        int iM8689getKeyboardTypePjHm6EE;
        KeyboardType.Companion companion3;
        final boolean z32;
        boolean zChanged2;
        Object objRememberedValue16;
        Brush brushM2447resolveAutofillHighlightWkMShQ;
        boolean zChangedInstance4;
        Object objRememberedValue17;
        int i48;
        Modifier modifierTextFieldMagnifier;
        String str;
        boolean zChanged3;
        Object objRememberedValue18;
        int i49;
        Composer composerStartRestartGroup = composer.startRestartGroup(31062401);
        if ((i3 & 6) == 0) {
            i6 = (composerStartRestartGroup.changed(textFieldValue) ? 4 : 2) | i3;
        } else {
            i6 = i3;
        }
        if ((i3 & 48) == 0) {
            i6 |= composerStartRestartGroup.changedInstance(nl3Var) ? 32 : 16;
        }
        int i50 = i5 & 4;
        if (i50 == 0) {
            if ((i3 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                modifier2 = modifier;
                i6 |= composerStartRestartGroup.changed(modifier2) ? 256 : 128;
            }
            i7 = i5 & 8;
            if (i7 != 0) {
                if ((i3 & 3072) == 0) {
                    textStyle2 = textStyle;
                    if (composerStartRestartGroup.changed(textStyle2)) {
                        i8 = 2048;
                    } else {
                        i8 = 1024;
                    }
                    i6 |= i8;
                }
                i9 = i5 & 16;
                if (i9 != 0) {
                    if ((i3 & 24576) == 0) {
                        none = visualTransformation;
                        if (composerStartRestartGroup.changed(none)) {
                            i10 = 16384;
                        } else {
                            i10 = 8192;
                        }
                        i6 |= i10;
                    }
                    i11 = i5 & 32;
                    if (i11 != 0) {
                        i6 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                        nl3Var3 = nl3Var2;
                    } else {
                        nl3Var3 = nl3Var2;
                        if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                            if (composerStartRestartGroup.changedInstance(nl3Var3)) {
                                i12 = 131072;
                            } else {
                                i12 = 65536;
                            }
                            i6 |= i12;
                        }
                    }
                    i13 = i5 & 64;
                    if (i13 != 0) {
                        i6 |= 1572864;
                        mutableInteractionSource2 = mutableInteractionSource;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                        if ((i3 & 1572864) == 0) {
                            if (composerStartRestartGroup.changed(mutableInteractionSource2)) {
                                i14 = 1048576;
                            } else {
                                i14 = 524288;
                            }
                            i6 |= i14;
                        }
                    }
                    i15 = i5 & 128;
                    if (i15 != 0) {
                        i6 |= 12582912;
                        solidColor = brush;
                    } else {
                        solidColor = brush;
                        if ((i3 & 12582912) == 0) {
                            if (composerStartRestartGroup.changed(solidColor)) {
                                i16 = 8388608;
                            } else {
                                i16 = 4194304;
                            }
                            i6 |= i16;
                        }
                    }
                    i17 = i5 & 256;
                    if (i17 != 0) {
                        i6 |= 100663296;
                    } else if ((i3 & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(z)) {
                            i18 = 67108864;
                        } else {
                            i18 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i6 |= i18;
                    }
                    i19 = i5 & 512;
                    if (i19 != 0) {
                        if ((i3 & 805306368) == 0) {
                            if (composerStartRestartGroup.changed(i)) {
                                i20 = 536870912;
                            } else {
                                i20 = 268435456;
                            }
                            i6 |= i20;
                        }
                        i21 = i5 & 1024;
                        if (i21 != 0) {
                            i22 = i4 | 6;
                        } else if ((i4 & 6) == 0) {
                            if (composerStartRestartGroup.changed(i2)) {
                                i23 = 4;
                            } else {
                                i23 = 2;
                            }
                            i22 = i4 | i23;
                        } else {
                            i22 = i4;
                        }
                        if ((i4 & 48) != 0) {
                            i22 |= ((i5 & 2048) == 0 || !composerStartRestartGroup.changed(imeOptions)) ? 16 : 32;
                        }
                        i24 = i22;
                        i25 = i5 & 4096;
                        if (i25 != 0) {
                            i26 = i24 | RendererCapabilities.DECODER_SUPPORT_MASK;
                        } else if ((i4 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                            if (composerStartRestartGroup.changed(keyboardActions)) {
                                i27 = 256;
                            } else {
                                i27 = 128;
                            }
                            i26 = i24 | i27;
                        } else {
                            i26 = i24;
                        }
                        i28 = i5 & 8192;
                        if (i28 != 0) {
                            i30 = i26 | 3072;
                        } else {
                            i29 = i26;
                            if ((i4 & 3072) == 0) {
                                i30 = i29 | (composerStartRestartGroup.changed(z2) ? 2048 : 1024);
                            } else {
                                i30 = i29;
                            }
                        }
                        i31 = i5 & 16384;
                        if (i31 != 0) {
                            i33 = i30 | 24576;
                        } else {
                            i32 = i30;
                            if ((i4 & 24576) == 0) {
                                i33 = i32 | (composerStartRestartGroup.changed(z3) ? 16384 : 8192);
                            } else {
                                i33 = i32;
                            }
                        }
                        i34 = i5 & 32768;
                        if (i34 != 0) {
                            i33 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                        } else if ((i4 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                            i33 |= composerStartRestartGroup.changedInstance(dm3Var) ? 131072 : 65536;
                        }
                        i35 = i5 & 65536;
                        if (i35 != 0) {
                            i33 |= 1572864;
                        } else if ((i4 & 1572864) == 0) {
                            i33 |= composerStartRestartGroup.changed(textFieldScrollerPosition) ? 1048576 : 524288;
                        }
                        if ((i6 & 306783379) == 306783378 || (i33 & 599187) != 599186) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z4, i6 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            jh2Var = null;
                            if ((i3 & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                                if (i50 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i7 != 0) {
                                    textStyle4 = TextStyle.Companion.getDefault();
                                } else {
                                    textStyle4 = textStyle2;
                                }
                                if (i9 != 0) {
                                    none = VisualTransformation.Companion.getNone();
                                }
                                if (i11 != 0) {
                                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                                        objRememberedValue = new p12(0);
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                    }
                                    nl3Var3 = (nl3) objRememberedValue;
                                }
                                if (i13 != 0) {
                                    mutableInteractionSource2 = null;
                                }
                                if (i15 != 0) {
                                    solidColor = new SolidColor(Color.Companion.m6268getUnspecified0d7_KjU(), jh2Var);
                                }
                                if (i17 != 0) {
                                    z8 = true;
                                } else {
                                    z8 = z;
                                }
                                if (i19 != 0) {
                                    i38 = Integer.MAX_VALUE;
                                } else {
                                    i38 = i;
                                }
                                if (i21 != 0) {
                                    i39 = 1;
                                } else {
                                    i39 = i2;
                                }
                                if ((i5 & 2048) != 0) {
                                    imeOptions3 = ImeOptions.Companion.getDefault();
                                    i33 &= -113;
                                } else {
                                    imeOptions3 = imeOptions;
                                }
                                if (i25 != 0) {
                                    keyboardActions3 = KeyboardActions.Companion.getDefault();
                                } else {
                                    keyboardActions3 = keyboardActions;
                                }
                                if (i28 != 0) {
                                    z9 = true;
                                } else {
                                    z9 = z2;
                                }
                                if (i31 != 0) {
                                    z10 = false;
                                } else {
                                    z10 = z3;
                                }
                                if (i34 != 0) {
                                    lambda$559628295$foundation = ComposableSingletons$CoreTextFieldKt.INSTANCE.getLambda$559628295$foundation();
                                } else {
                                    lambda$559628295$foundation = dm3Var;
                                }
                                boolean z33 = z8;
                                textStyle2 = textStyle4;
                                modifier4 = modifier2;
                                z11 = z9;
                                nl3Var5 = nl3Var3;
                                z12 = z33;
                                VisualTransformation visualTransformation4 = none;
                                imeOptions4 = imeOptions3;
                                brush2 = solidColor;
                                visualTransformation3 = visualTransformation4;
                                i40 = i33;
                                if (i35 != 0) {
                                    textFieldScrollerPosition3 = null;
                                }
                                composerStartRestartGroup.endDefaults();
                                brush3 = brush2;
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(31062401, i6, i40, "androidx.compose.foundation.text.CoreTextField (CoreTextField.kt:208)");
                                }
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                companion = Composer.Companion;
                                if (objRememberedValue2 == companion.getEmpty()) {
                                    objRememberedValue2 = new FocusRequester();
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                }
                                focusRequester = (FocusRequester) objRememberedValue2;
                                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                                i41 = i6;
                                if (objRememberedValue3 == companion.getEmpty()) {
                                    objRememberedValue3 = LegacyPlatformTextInputServiceAdapter_androidKt.createLegacyPlatformTextInputServiceAdapter();
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                                }
                                legacyPlatformTextInputServiceAdapter = (LegacyPlatformTextInputServiceAdapter) objRememberedValue3;
                                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue4 == companion.getEmpty()) {
                                    objRememberedValue4 = new TextInputService(legacyPlatformTextInputServiceAdapter);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                                }
                                textInputService = (TextInputService) objRememberedValue4;
                                density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                                resolver = (FontFamily.Resolver) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalFontFamilyResolver());
                                jM3048getBackgroundColor0d7_KjU = ((TextSelectionColors) composerStartRestartGroup.consume(TextSelectionColorsKt.getLocalTextSelectionColors())).m3048getBackgroundColor0d7_KjU();
                                focusManager = (FocusManager) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalFocusManager());
                                windowInfo = (WindowInfo) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalWindowInfo());
                                textStyle5 = textStyle2;
                                softwareKeyboardController = (SoftwareKeyboardController) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalSoftwareKeyboardController());
                                z13 = z12;
                                if (i38 == 1 || z13 || !imeOptions4.getSingleLine()) {
                                    orientation = Orientation.Vertical;
                                } else {
                                    orientation = Orientation.Horizontal;
                                }
                                if (textFieldScrollerPosition3 == null) {
                                    composerStartRestartGroup.startReplaceGroup(-213744626);
                                    Object[] objArr = {orientation};
                                    Saver<TextFieldScrollerPosition, Object> saver = TextFieldScrollerPosition.Companion.getSaver();
                                    zChanged3 = composerStartRestartGroup.changed(orientation.ordinal());
                                    objRememberedValue18 = composerStartRestartGroup.rememberedValue();
                                    if (!zChanged3 || objRememberedValue18 == companion.getEmpty()) {
                                        i49 = 0;
                                        objRememberedValue18 = new u12(orientation, i49);
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue18);
                                    } else {
                                        i49 = 0;
                                    }
                                    textFieldScrollerPosition4 = (TextFieldScrollerPosition) RememberSaveableKt.m5624rememberSaveable(objArr, (Saver) saver, (ll3) objRememberedValue18, composerStartRestartGroup, i49);
                                    composerStartRestartGroup.endReplaceGroup();
                                } else {
                                    composerStartRestartGroup.startReplaceGroup(-213745742);
                                    composerStartRestartGroup.endReplaceGroup();
                                    textFieldScrollerPosition4 = textFieldScrollerPosition3;
                                }
                                if (textFieldScrollerPosition4.getOrientation() != orientation) {
                                    if (orientation == Orientation.Vertical) {
                                        str = "only single-line, non-wrap text fields can scroll horizontally";
                                    } else {
                                        str = "single-line, non-wrap text fields can only scroll horizontally";
                                    }
                                    throw new IllegalArgumentException("Mismatching scroller orientation; ".concat(str));
                                }
                                i42 = i41 & 14;
                                if (i42 == 4) {
                                    z14 = true;
                                } else {
                                    z14 = false;
                                }
                                if ((i41 & 57344) == 16384) {
                                    z15 = true;
                                } else {
                                    z15 = false;
                                }
                                z16 = z14 | z15;
                                objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                                if (!z16 || objRememberedValue5 == companion.getEmpty()) {
                                    transformedTextFilterWithValidation = ValidatingOffsetMappingKt.filterWithValidation(visualTransformation3, textFieldValue.getAnnotatedString());
                                    textRangeM8740getCompositionMzsxiRA = textFieldValue.m8740getCompositionMzsxiRA();
                                    if (textRangeM8740getCompositionMzsxiRA != null) {
                                        textFieldScrollerPosition5 = textFieldScrollerPosition4;
                                        transformedTextM2604applyCompositionDecoration72CqOWE = TextFieldDelegate.Companion.m2604applyCompositionDecoration72CqOWE(textRangeM8740getCompositionMzsxiRA.m8495unboximpl(), transformedTextFilterWithValidation);
                                        if (transformedTextM2604applyCompositionDecoration72CqOWE != null) {
                                            objRememberedValue5 = transformedTextM2604applyCompositionDecoration72CqOWE;
                                        }
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                                    } else {
                                        textFieldScrollerPosition5 = textFieldScrollerPosition4;
                                    }
                                    objRememberedValue5 = transformedTextFilterWithValidation;
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                                } else {
                                    textFieldScrollerPosition5 = textFieldScrollerPosition4;
                                }
                                TransformedText transformedText = (TransformedText) objRememberedValue5;
                                text = transformedText.getText();
                                offsetMapping = transformedText.getOffsetMapping();
                                currentRecomposeScope = ComposablesKt.getCurrentRecomposeScope(composerStartRestartGroup, 0);
                                zChanged = composerStartRestartGroup.changed(softwareKeyboardController);
                                objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                                if (zChanged || objRememberedValue6 == companion.getEmpty()) {
                                    objRememberedValue6 = new LegacyTextFieldState(new TextDelegate(text, textStyle5, 0, 0, z13, 0, density, resolver, null, 300, null), currentRecomposeScope, softwareKeyboardController);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                                }
                                legacyTextFieldState = (LegacyTextFieldState) objRememberedValue6;
                                KeyboardActions keyboardActions4 = keyboardActions3;
                                legacyTextFieldState.m2569updatefnh65Uc(textFieldValue.getAnnotatedString(), text, textStyle5, z13, r55, resolver, nl3Var, keyboardActions4, focusManager, jM3048getBackgroundColor0d7_KjU);
                                legacyTextFieldState.getProcessor().reset(textFieldValue, legacyTextFieldState.getInputSession());
                                objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue7 == companion.getEmpty()) {
                                    objRememberedValue7 = new UndoManager(0, 1, null);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                                }
                                undoManager = (UndoManager) objRememberedValue7;
                                UndoManager.snapshotIfNeeded$default(undoManager, textFieldValue, 0L, 2, null);
                                objRememberedValue8 = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue8 == companion.getEmpty()) {
                                    objRememberedValue8 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
                                }
                                y22Var = (y22) objRememberedValue8;
                                objRememberedValue9 = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue9 == companion.getEmpty()) {
                                    objRememberedValue9 = BringIntoViewRequesterKt.BringIntoViewRequester();
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue9);
                                }
                                bringIntoViewRequester = (BringIntoViewRequester) objRememberedValue9;
                                objRememberedValue10 = composerStartRestartGroup.rememberedValue();
                                MutableInteractionSource mutableInteractionSource3 = mutableInteractionSource2;
                                if (objRememberedValue10 == companion.getEmpty()) {
                                    objRememberedValue10 = new TextFieldSelectionManager(undoManager);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue10);
                                }
                                textFieldSelectionManager = (TextFieldSelectionManager) objRememberedValue10;
                                textFieldSelectionManager.setOffsetMapping$foundation(offsetMapping);
                                textFieldSelectionManager.setVisualTransformation$foundation(visualTransformation3);
                                textFieldSelectionManager.setOnValueChange$foundation(legacyTextFieldState.getOnValueChange());
                                textFieldSelectionManager.setState$foundation(legacyTextFieldState);
                                textFieldSelectionManager.setValue$foundation(textFieldValue);
                                textFieldSelectionManager.setClipboard$foundation((Clipboard) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalClipboard()));
                                textFieldSelectionManager.setCoroutineScope$foundation(y22Var);
                                textFieldSelectionManager.setTextToolbar((TextToolbar) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalTextToolbar()));
                                textFieldSelectionManager.setHapticFeedBack((HapticFeedback) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalHapticFeedback()));
                                textFieldSelectionManager.setFocusRequester(focusRequester);
                                boolean z34 = !z10;
                                textFieldSelectionManager.setEditable(z34);
                                textFieldSelectionManager.setEnabled(z11);
                                if (ComposeFoundationFlags.isSmartSelectionEnabled) {
                                    composerStartRestartGroup.startReplaceGroup(1966756105);
                                    textFieldSelectionManager.setPlatformSelectionBehaviors$foundation(PlatformSelectionBehaviors_androidKt.rememberPlatformSelectionBehaviors(SelectedTextType.EditableText, textStyle5.getLocaleList(), composerStartRestartGroup, 6));
                                    composerStartRestartGroup.endReplaceGroup();
                                } else {
                                    composerStartRestartGroup.startReplaceGroup(1966902177);
                                    composerStartRestartGroup.endReplaceGroup();
                                }
                                legacyTextFieldState.getHasFocus();
                                companion2 = Modifier.Companion;
                                boolean zChangedInstance5 = composerStartRestartGroup.changedInstance(legacyTextFieldState);
                                i43 = i40 & 7168;
                                i44 = i40;
                                if (i43 == 2048) {
                                    z17 = true;
                                } else {
                                    z17 = false;
                                }
                                boolean z35 = z17 | zChangedInstance5;
                                if ((i44 & 57344) == 16384) {
                                    z18 = true;
                                } else {
                                    z18 = false;
                                }
                                boolean zChangedInstance6 = z35 | z18 | composerStartRestartGroup.changedInstance(textInputService);
                                if (i42 == 4) {
                                    z19 = true;
                                } else {
                                    z19 = false;
                                }
                                boolean z36 = zChangedInstance6 | z19;
                                i45 = (i44 & 112) ^ 48;
                                if (i45 > 32 || !composerStartRestartGroup.changed(imeOptions4)) {
                                    textInputService2 = textInputService;
                                    if ((i44 & 48) != 32) {
                                        z20 = false;
                                    }
                                    zChangedInstance = z36 | z20 | composerStartRestartGroup.changedInstance(offsetMapping) | composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(bringIntoViewRequester) | composerStartRestartGroup.changedInstance(textFieldSelectionManager);
                                    objRememberedValue11 = composerStartRestartGroup.rememberedValue();
                                    if (!zChangedInstance || objRememberedValue11 == companion.getEmpty()) {
                                        offsetMapping2 = offsetMapping;
                                        final ImeOptions imeOptions9 = imeOptions4;
                                        final boolean z37 = z11;
                                        final boolean z38 = z10;
                                        objRememberedValue11 = new nl3() { // from class: v12
                                            @Override // defpackage.nl3
                                            public final Object invoke(Object obj) {
                                                return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z37, z38, textInputService2, textFieldValue, imeOptions9, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                                            }
                                        };
                                        legacyTextFieldState2 = legacyTextFieldState;
                                        z21 = z37;
                                        textFieldValue2 = textFieldValue;
                                        imeOptions5 = imeOptions9;
                                        textFieldSelectionManager2 = textFieldSelectionManager;
                                        y22Var2 = y22Var;
                                        bringIntoViewRequester2 = bringIntoViewRequester;
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                                    } else {
                                        textFieldSelectionManager2 = textFieldSelectionManager;
                                        z21 = z11;
                                        bringIntoViewRequester2 = bringIntoViewRequester;
                                        legacyTextFieldState2 = legacyTextFieldState;
                                        offsetMapping2 = offsetMapping;
                                        imeOptions5 = imeOptions4;
                                        y22Var2 = y22Var;
                                        textFieldValue2 = textFieldValue;
                                    }
                                    final BringIntoViewRequester bringIntoViewRequester3 = bringIntoViewRequester2;
                                    Modifier modifierTextFieldFocusModifier = TextFieldGestureModifiersKt.textFieldFocusModifier(companion2, z21, focusRequester, mutableInteractionSource3, (nl3) objRememberedValue11);
                                    if (z21 || z10) {
                                        z22 = false;
                                    } else {
                                        z22 = true;
                                    }
                                    stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Boolean.valueOf(z22), composerStartRestartGroup, 0);
                                    j59 j59Var = j59.a;
                                    boolean zChanged4 = composerStartRestartGroup.changed(stateRememberUpdatedState) | composerStartRestartGroup.changedInstance(legacyTextFieldState2) | composerStartRestartGroup.changedInstance(textInputService2) | composerStartRestartGroup.changedInstance(textFieldSelectionManager2);
                                    if (i45 > 32 || !composerStartRestartGroup.changed(imeOptions5)) {
                                        imeOptions6 = imeOptions5;
                                        if ((i44 & 48) != 32) {
                                            z23 = false;
                                        }
                                        z24 = zChanged4 | z23;
                                        objRememberedValue12 = composerStartRestartGroup.rememberedValue();
                                        if (!z24 || objRememberedValue12 == companion.getEmpty()) {
                                            ImeOptions imeOptions10 = imeOptions6;
                                            TextInputService textInputService3 = textInputService2;
                                            TextFieldSelectionManager textFieldSelectionManager7 = textFieldSelectionManager2;
                                            LegacyTextFieldState legacyTextFieldState5 = legacyTextFieldState2;
                                            objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState5, stateRememberUpdatedState, textInputService3, textFieldSelectionManager7, imeOptions10, null);
                                            legacyTextFieldState3 = legacyTextFieldState5;
                                            textFieldSelectionManager3 = textFieldSelectionManager7;
                                            imeOptions7 = imeOptions10;
                                            composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                                        } else {
                                            LegacyTextFieldState legacyTextFieldState6 = legacyTextFieldState2;
                                            textFieldSelectionManager3 = textFieldSelectionManager2;
                                            legacyTextFieldState3 = legacyTextFieldState6;
                                            imeOptions7 = imeOptions6;
                                        }
                                        imeOptions8 = imeOptions7;
                                        EffectsKt.LaunchedEffect(j59Var, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue12, composerStartRestartGroup, 6);
                                        int i51 = i44 >> 3;
                                        z25 = z21;
                                        legacyTextFieldState4 = legacyTextFieldState3;
                                        textFieldSelectionManager4 = textFieldSelectionManager3;
                                        Modifier modifierTextFieldPointer = TextFieldPointerModifier_androidKt.textFieldPointer(companion2, textFieldSelectionManager4, z25, mutableInteractionSource3, legacyTextFieldState4, focusRequester, z10, offsetMapping2, composerStartRestartGroup, (i51 & 896) | 196614 | ((i41 >> 9) & 7168) | ((i44 << 6) & 3670016));
                                        offsetMapping3 = offsetMapping2;
                                        final Modifier modifierTextFieldDraw = CoreTextField_androidKt.textFieldDraw(companion2, legacyTextFieldState4, textFieldValue2, offsetMapping3);
                                        boolean zChangedInstance7 = composerStartRestartGroup.changedInstance(legacyTextFieldState4);
                                        if (i43 == 2048) {
                                            z26 = true;
                                        } else {
                                            z26 = false;
                                        }
                                        boolean zChanged5 = zChangedInstance7 | z26 | composerStartRestartGroup.changed(windowInfo) | composerStartRestartGroup.changedInstance(textFieldSelectionManager4);
                                        if (i42 == 4) {
                                            z27 = true;
                                        } else {
                                            z27 = false;
                                        }
                                        zChangedInstance2 = zChanged5 | z27 | composerStartRestartGroup.changedInstance(offsetMapping3);
                                        objRememberedValue13 = composerStartRestartGroup.rememberedValue();
                                        if (!zChangedInstance2 || objRememberedValue13 == companion.getEmpty()) {
                                            objRememberedValue13 = new nl3() { // from class: w12
                                                @Override // defpackage.nl3
                                                public final Object invoke(Object obj) {
                                                    return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                                                }
                                            };
                                            textFieldSelectionManager5 = textFieldSelectionManager4;
                                            composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                                        } else {
                                            textFieldSelectionManager5 = textFieldSelectionManager4;
                                        }
                                        final Modifier modifierOnGloballyPositioned = OnGloballyPositionedModifierKt.onGloballyPositioned(companion2, (nl3) objRememberedValue13);
                                        textFieldSelectionManager6 = textFieldSelectionManager5;
                                        CoreTextFieldSemanticsModifier coreTextFieldSemanticsModifier = new CoreTextFieldSemanticsModifier(transformedText, textFieldValue, legacyTextFieldState4, z10, z25, visualTransformation3 instanceof PasswordVisualTransformation, offsetMapping3, textFieldSelectionManager6, imeOptions8, focusRequester);
                                        final VisualTransformation visualTransformation5 = visualTransformation3;
                                        if (z25 != 0 || z10 || !windowInfo.isWindowFocused() || legacyTextFieldState4.hasHighlight()) {
                                            z28 = false;
                                        } else {
                                            z28 = true;
                                        }
                                        final Modifier modifierTextFieldCursor = CoreTextField_androidKt.textFieldCursor(companion2, legacyTextFieldState4, textFieldValue, offsetMapping3, brush3, z28);
                                        zChangedInstance3 = composerStartRestartGroup.changedInstance(textFieldSelectionManager6);
                                        objRememberedValue14 = composerStartRestartGroup.rememberedValue();
                                        if (!zChangedInstance3 || objRememberedValue14 == companion.getEmpty()) {
                                            i46 = 0;
                                            objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                                            composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                                        } else {
                                            i46 = 0;
                                        }
                                        EffectsKt.DisposableEffect(textFieldSelectionManager6, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue14, composerStartRestartGroup, i46);
                                        boolean zChangedInstance8 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changedInstance(textInputService2);
                                        if (i42 == 4) {
                                            z29 = true;
                                        } else {
                                            z29 = false;
                                        }
                                        z30 = z29 | zChangedInstance8 | ((i45 <= 32 && composerStartRestartGroup.changed(imeOptions8)) || (i44 & 48) == 32);
                                        objRememberedValue15 = composerStartRestartGroup.rememberedValue();
                                        if (z30 || objRememberedValue15 == companion.getEmpty()) {
                                            objRememberedValue15 = new nl3() { // from class: h12
                                                @Override // defpackage.nl3
                                                public final Object invoke(Object obj) {
                                                    return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                                                }
                                            };
                                            composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                                        }
                                        EffectsKt.DisposableEffect(imeOptions8, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue15, composerStartRestartGroup, i51 & 14);
                                        nl3<TextFieldValue, j59> onValueChange = legacyTextFieldState4.getOnValueChange();
                                        i47 = i38;
                                        if (i47 == 1) {
                                            z31 = true;
                                        } else {
                                            z31 = false;
                                        }
                                        Modifier modifierM2614textFieldKeyInput2WJ9YEU = TextFieldKeyInputKt.m2614textFieldKeyInput2WJ9YEU(companion2, legacyTextFieldState4, textFieldSelectionManager6, textFieldValue, onValueChange, z34, z31, offsetMapping3, undoManager, imeOptions8.m8688getImeActioneUduSuo());
                                        iM8689getKeyboardTypePjHm6EE = imeOptions8.m8689getKeyboardTypePjHm6EE();
                                        companion3 = KeyboardType.Companion;
                                        if (!KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion3.m8731getPasswordPjHm6EE()) || KeyboardType.m8712equalsimpl0(imeOptions8.m8689getKeyboardTypePjHm6EE(), companion3.m8730getNumberPasswordPjHm6EE())) {
                                            z32 = false;
                                        } else {
                                            z32 = true;
                                        }
                                        boolean zCoreTextField$lambda$14 = CoreTextField$lambda$14(stateRememberUpdatedState);
                                        zChanged2 = composerStartRestartGroup.changed(z32) | composerStartRestartGroup.changedInstance(legacyPlatformTextInputServiceAdapter);
                                        objRememberedValue16 = composerStartRestartGroup.rememberedValue();
                                        if (zChanged2 || objRememberedValue16 == companion.getEmpty()) {
                                            objRememberedValue16 = new ll3() { // from class: i12
                                                @Override // defpackage.ll3
                                                public final Object invoke() {
                                                    return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                                                }
                                            };
                                            composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                                        }
                                        Modifier modifierStylusHandwriting = StylusHandwritingKt.stylusHandwriting(companion2, zCoreTextField$lambda$14, z32, (ll3) objRememberedValue16);
                                        y22 y22Var3 = y22Var2;
                                        brushM2447resolveAutofillHighlightWkMShQ = AutofillHighlightKt.m2447resolveAutofillHighlightWkMShQ((Brush) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightBrush()), ((Color) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightColor())).m6242unboximpl(), AutofillHighlight_androidKt.autofillHighlightColor());
                                        zChangedInstance4 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changed(brushM2447resolveAutofillHighlightWkMShQ);
                                        objRememberedValue17 = composerStartRestartGroup.rememberedValue();
                                        if (!zChangedInstance4 || objRememberedValue17 == companion.getEmpty()) {
                                            i48 = 0;
                                            objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                                            composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                                        } else {
                                            i48 = 0;
                                        }
                                        Modifier modifierDrawWithContent = DrawModifierKt.drawWithContent(companion2, (nl3) objRememberedValue17);
                                        OverscrollEffect overscrollEffectRememberTextFieldOverscrollEffect = TextFieldScroll_androidKt.rememberTextFieldOverscrollEffect(composerStartRestartGroup, i48);
                                        Modifier modifier5 = modifier4;
                                        Modifier modifierThen = previewKeyEventToDeselectOnBack(TextFieldFocusModifier_androidKt.interceptDPadAndMoveFocus(LegacyAdaptingPlatformTextInputModifierNodeKt.legacyTextInputAdapter(modifier5.then(modifierDrawWithContent), legacyPlatformTextInputServiceAdapter, legacyTextFieldState4, textFieldSelectionManager6).then(modifierStylusHandwriting).then(modifierTextFieldFocusModifier), legacyTextFieldState4, focusManager), legacyTextFieldState4, textFieldSelectionManager6).then(modifierM2614textFieldKeyInput2WJ9YEU);
                                        final TextFieldScrollerPosition textFieldScrollerPosition6 = textFieldScrollerPosition5;
                                        Modifier modifierAddContextMenuComponents = addContextMenuComponents(OnGloballyPositionedModifierKt.onGloballyPositioned(TextFieldScrollKt.textFieldScrollable(modifierThen, textFieldScrollerPosition6, mutableInteractionSource3, z25, overscrollEffectRememberTextFieldOverscrollEffect).then(modifierTextFieldPointer).then(coreTextFieldSemanticsModifier), new nl3() { // from class: r12
                                            @Override // defpackage.nl3
                                            public final Object invoke(Object obj) {
                                                return CoreTextFieldKt.CoreTextField$lambda$21(legacyTextFieldState4, (LayoutCoordinates) obj);
                                            }
                                        }), textFieldSelectionManager6, y22Var3);
                                        if (z25 && legacyTextFieldState4.getHasFocus() && legacyTextFieldState4.isInTouchMode() && windowInfo.isWindowFocused()) {
                                            i48 = 1;
                                        }
                                        if (i48 != 0) {
                                            modifierTextFieldMagnifier = TextFieldSelectionManager_androidKt.textFieldMagnifier(companion2, textFieldSelectionManager6);
                                        } else {
                                            modifierTextFieldMagnifier = companion2;
                                        }
                                        final Modifier modifier6 = modifierTextFieldMagnifier;
                                        final boolean z39 = z10;
                                        final dm3<? super bm3<? super Composer, ? super Integer, j59>, ? super Composer, ? super Integer, j59> dm3Var3 = lambda$559628295$foundation;
                                        final int i52 = i39;
                                        final boolean z40 = i48;
                                        CoreTextFieldRootBox(modifierAddContextMenuComponents, textFieldSelectionManager6, ComposableLambdaKt.rememberComposableLambda(-814563849, true, new bm3() { // from class: s12
                                            @Override // defpackage.bm3
                                            public final Object invoke(Object obj, Object obj2) {
                                                int iIntValue = ((Integer) obj2).intValue();
                                                return CoreTextFieldKt.CoreTextField$lambda$22(dm3Var3, legacyTextFieldState4, textStyle5, i52, i47, textFieldScrollerPosition6, textFieldValue, visualTransformation5, modifierTextFieldCursor, modifierTextFieldDraw, modifierOnGloballyPositioned, modifier6, bringIntoViewRequester3, textFieldSelectionManager6, z40, z39, nl3Var5, offsetMapping3, density, (Composer) obj, iIntValue);
                                            }
                                        }, composerStartRestartGroup, 54), composerStartRestartGroup, RendererCapabilities.DECODER_SUPPORT_MASK);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                        dm3Var2 = dm3Var3;
                                        i37 = i52;
                                        composer2 = composerStartRestartGroup;
                                        nl3Var4 = nl3Var5;
                                        z7 = z39;
                                        textFieldScrollerPosition2 = textFieldScrollerPosition3;
                                        imeOptions2 = imeOptions8;
                                        z6 = z25;
                                        mutableInteractionSource2 = mutableInteractionSource3;
                                        z5 = z13;
                                        keyboardActions2 = keyboardActions4;
                                        modifier3 = modifier5;
                                        i36 = i47;
                                        visualTransformation2 = visualTransformation5;
                                        solidColor = brush3;
                                        textStyle3 = textStyle5;
                                    } else {
                                        imeOptions6 = imeOptions5;
                                    }
                                    z23 = true;
                                    z24 = zChanged4 | z23;
                                    objRememberedValue12 = composerStartRestartGroup.rememberedValue();
                                    if (z24) {
                                        ImeOptions imeOptions11 = imeOptions6;
                                        TextInputService textInputService4 = textInputService2;
                                        TextFieldSelectionManager textFieldSelectionManager8 = textFieldSelectionManager2;
                                        LegacyTextFieldState legacyTextFieldState7 = legacyTextFieldState2;
                                        objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState7, stateRememberUpdatedState, textInputService4, textFieldSelectionManager8, imeOptions11, null);
                                        legacyTextFieldState3 = legacyTextFieldState7;
                                        textFieldSelectionManager3 = textFieldSelectionManager8;
                                        imeOptions7 = imeOptions11;
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                                    } else {
                                        ImeOptions imeOptions12 = imeOptions6;
                                        TextInputService textInputService5 = textInputService2;
                                        TextFieldSelectionManager textFieldSelectionManager9 = textFieldSelectionManager2;
                                        LegacyTextFieldState legacyTextFieldState8 = legacyTextFieldState2;
                                        objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState8, stateRememberUpdatedState, textInputService5, textFieldSelectionManager9, imeOptions12, null);
                                        legacyTextFieldState3 = legacyTextFieldState8;
                                        textFieldSelectionManager3 = textFieldSelectionManager9;
                                        imeOptions7 = imeOptions12;
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                                    }
                                    imeOptions8 = imeOptions7;
                                    EffectsKt.LaunchedEffect(j59Var, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue12, composerStartRestartGroup, 6);
                                    int i53 = i44 >> 3;
                                    z25 = z21;
                                    legacyTextFieldState4 = legacyTextFieldState3;
                                    textFieldSelectionManager4 = textFieldSelectionManager3;
                                    Modifier modifierTextFieldPointer2 = TextFieldPointerModifier_androidKt.textFieldPointer(companion2, textFieldSelectionManager4, z25, mutableInteractionSource3, legacyTextFieldState4, focusRequester, z10, offsetMapping2, composerStartRestartGroup, (i53 & 896) | 196614 | ((i41 >> 9) & 7168) | ((i44 << 6) & 3670016));
                                    offsetMapping3 = offsetMapping2;
                                    final Modifier modifierTextFieldDraw2 = CoreTextField_androidKt.textFieldDraw(companion2, legacyTextFieldState4, textFieldValue2, offsetMapping3);
                                    boolean zChangedInstance9 = composerStartRestartGroup.changedInstance(legacyTextFieldState4);
                                    if (i43 == 2048) {
                                        z26 = true;
                                    } else {
                                        z26 = false;
                                    }
                                    boolean zChanged6 = zChangedInstance9 | z26 | composerStartRestartGroup.changed(windowInfo) | composerStartRestartGroup.changedInstance(textFieldSelectionManager4);
                                    if (i42 == 4) {
                                        z27 = true;
                                    } else {
                                        z27 = false;
                                    }
                                    zChangedInstance2 = zChanged6 | z27 | composerStartRestartGroup.changedInstance(offsetMapping3);
                                    objRememberedValue13 = composerStartRestartGroup.rememberedValue();
                                    if (zChangedInstance2) {
                                        objRememberedValue13 = new nl3() { // from class: w12
                                            @Override // defpackage.nl3
                                            public final Object invoke(Object obj) {
                                                return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                                            }
                                        };
                                        textFieldSelectionManager5 = textFieldSelectionManager4;
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                                    } else {
                                        objRememberedValue13 = new nl3() { // from class: w12
                                            @Override // defpackage.nl3
                                            public final Object invoke(Object obj) {
                                                return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                                            }
                                        };
                                        textFieldSelectionManager5 = textFieldSelectionManager4;
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                                    }
                                    final Modifier modifierOnGloballyPositioned2 = OnGloballyPositionedModifierKt.onGloballyPositioned(companion2, (nl3) objRememberedValue13);
                                    textFieldSelectionManager6 = textFieldSelectionManager5;
                                    CoreTextFieldSemanticsModifier coreTextFieldSemanticsModifier2 = new CoreTextFieldSemanticsModifier(transformedText, textFieldValue, legacyTextFieldState4, z10, z25, visualTransformation3 instanceof PasswordVisualTransformation, offsetMapping3, textFieldSelectionManager6, imeOptions8, focusRequester);
                                    final VisualTransformation visualTransformation6 = visualTransformation3;
                                    if (z25 != 0) {
                                        z28 = false;
                                    } else {
                                        z28 = false;
                                    }
                                    final Modifier modifierTextFieldCursor2 = CoreTextField_androidKt.textFieldCursor(companion2, legacyTextFieldState4, textFieldValue, offsetMapping3, brush3, z28);
                                    zChangedInstance3 = composerStartRestartGroup.changedInstance(textFieldSelectionManager6);
                                    objRememberedValue14 = composerStartRestartGroup.rememberedValue();
                                    if (zChangedInstance3) {
                                        i46 = 0;
                                        objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                                    } else {
                                        i46 = 0;
                                        objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                                    }
                                    EffectsKt.DisposableEffect(textFieldSelectionManager6, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue14, composerStartRestartGroup, i46);
                                    boolean zChangedInstance10 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changedInstance(textInputService2);
                                    if (i42 == 4) {
                                        z29 = true;
                                    } else {
                                        z29 = false;
                                    }
                                    z30 = z29 | zChangedInstance10 | ((i45 <= 32 && composerStartRestartGroup.changed(imeOptions8)) || (i44 & 48) == 32);
                                    objRememberedValue15 = composerStartRestartGroup.rememberedValue();
                                    if (z30) {
                                        objRememberedValue15 = new nl3() { // from class: h12
                                            @Override // defpackage.nl3
                                            public final Object invoke(Object obj) {
                                                return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                                            }
                                        };
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                                    } else {
                                        objRememberedValue15 = new nl3() { // from class: h12
                                            @Override // defpackage.nl3
                                            public final Object invoke(Object obj) {
                                                return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                                            }
                                        };
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                                    }
                                    EffectsKt.DisposableEffect(imeOptions8, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue15, composerStartRestartGroup, i53 & 14);
                                    nl3<TextFieldValue, j59> onValueChange2 = legacyTextFieldState4.getOnValueChange();
                                    i47 = i38;
                                    if (i47 == 1) {
                                        z31 = true;
                                    } else {
                                        z31 = false;
                                    }
                                    Modifier modifierM2614textFieldKeyInput2WJ9YEU2 = TextFieldKeyInputKt.m2614textFieldKeyInput2WJ9YEU(companion2, legacyTextFieldState4, textFieldSelectionManager6, textFieldValue, onValueChange2, z34, z31, offsetMapping3, undoManager, imeOptions8.m8688getImeActioneUduSuo());
                                    iM8689getKeyboardTypePjHm6EE = imeOptions8.m8689getKeyboardTypePjHm6EE();
                                    companion3 = KeyboardType.Companion;
                                    if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion3.m8731getPasswordPjHm6EE())) {
                                        z32 = false;
                                    } else {
                                        z32 = false;
                                    }
                                    boolean zCoreTextField$lambda$15 = CoreTextField$lambda$14(stateRememberUpdatedState);
                                    zChanged2 = composerStartRestartGroup.changed(z32) | composerStartRestartGroup.changedInstance(legacyPlatformTextInputServiceAdapter);
                                    objRememberedValue16 = composerStartRestartGroup.rememberedValue();
                                    if (zChanged2) {
                                        objRememberedValue16 = new ll3() { // from class: i12
                                            @Override // defpackage.ll3
                                            public final Object invoke() {
                                                return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                                            }
                                        };
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                                    } else {
                                        objRememberedValue16 = new ll3() { // from class: i12
                                            @Override // defpackage.ll3
                                            public final Object invoke() {
                                                return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                                            }
                                        };
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                                    }
                                    Modifier modifierStylusHandwriting2 = StylusHandwritingKt.stylusHandwriting(companion2, zCoreTextField$lambda$15, z32, (ll3) objRememberedValue16);
                                    y22 y22Var4 = y22Var2;
                                    brushM2447resolveAutofillHighlightWkMShQ = AutofillHighlightKt.m2447resolveAutofillHighlightWkMShQ((Brush) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightBrush()), ((Color) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightColor())).m6242unboximpl(), AutofillHighlight_androidKt.autofillHighlightColor());
                                    zChangedInstance4 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changed(brushM2447resolveAutofillHighlightWkMShQ);
                                    objRememberedValue17 = composerStartRestartGroup.rememberedValue();
                                    if (zChangedInstance4) {
                                        i48 = 0;
                                        objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                                    } else {
                                        i48 = 0;
                                        objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                                    }
                                    Modifier modifierDrawWithContent2 = DrawModifierKt.drawWithContent(companion2, (nl3) objRememberedValue17);
                                    OverscrollEffect overscrollEffectRememberTextFieldOverscrollEffect2 = TextFieldScroll_androidKt.rememberTextFieldOverscrollEffect(composerStartRestartGroup, i48);
                                    Modifier modifier7 = modifier4;
                                    Modifier modifierThen2 = previewKeyEventToDeselectOnBack(TextFieldFocusModifier_androidKt.interceptDPadAndMoveFocus(LegacyAdaptingPlatformTextInputModifierNodeKt.legacyTextInputAdapter(modifier7.then(modifierDrawWithContent2), legacyPlatformTextInputServiceAdapter, legacyTextFieldState4, textFieldSelectionManager6).then(modifierStylusHandwriting2).then(modifierTextFieldFocusModifier), legacyTextFieldState4, focusManager), legacyTextFieldState4, textFieldSelectionManager6).then(modifierM2614textFieldKeyInput2WJ9YEU2);
                                    final TextFieldScrollerPosition textFieldScrollerPosition7 = textFieldScrollerPosition5;
                                    Modifier modifierAddContextMenuComponents2 = addContextMenuComponents(OnGloballyPositionedModifierKt.onGloballyPositioned(TextFieldScrollKt.textFieldScrollable(modifierThen2, textFieldScrollerPosition7, mutableInteractionSource3, z25, overscrollEffectRememberTextFieldOverscrollEffect2).then(modifierTextFieldPointer2).then(coreTextFieldSemanticsModifier2), new nl3() { // from class: r12
                                        @Override // defpackage.nl3
                                        public final Object invoke(Object obj) {
                                            return CoreTextFieldKt.CoreTextField$lambda$21(legacyTextFieldState4, (LayoutCoordinates) obj);
                                        }
                                    }), textFieldSelectionManager6, y22Var4);
                                    if (z25) {
                                        i48 = 1;
                                    }
                                    if (i48 != 0) {
                                        modifierTextFieldMagnifier = TextFieldSelectionManager_androidKt.textFieldMagnifier(companion2, textFieldSelectionManager6);
                                    } else {
                                        modifierTextFieldMagnifier = companion2;
                                    }
                                    final Modifier modifier8 = modifierTextFieldMagnifier;
                                    final boolean z310 = z10;
                                    final dm3 dm3Var4 = lambda$559628295$foundation;
                                    final int i54 = i39;
                                    final boolean z41 = i48;
                                    CoreTextFieldRootBox(modifierAddContextMenuComponents2, textFieldSelectionManager6, ComposableLambdaKt.rememberComposableLambda(-814563849, true, new bm3() { // from class: s12
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            int iIntValue = ((Integer) obj2).intValue();
                                            return CoreTextFieldKt.CoreTextField$lambda$22(dm3Var4, legacyTextFieldState4, textStyle5, i54, i47, textFieldScrollerPosition7, textFieldValue, visualTransformation6, modifierTextFieldCursor2, modifierTextFieldDraw2, modifierOnGloballyPositioned2, modifier8, bringIntoViewRequester3, textFieldSelectionManager6, z41, z310, nl3Var5, offsetMapping3, density, (Composer) obj, iIntValue);
                                        }
                                    }, composerStartRestartGroup, 54), composerStartRestartGroup, RendererCapabilities.DECODER_SUPPORT_MASK);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    dm3Var2 = dm3Var4;
                                    i37 = i54;
                                    composer2 = composerStartRestartGroup;
                                    nl3Var4 = nl3Var5;
                                    z7 = z310;
                                    textFieldScrollerPosition2 = textFieldScrollerPosition3;
                                    imeOptions2 = imeOptions8;
                                    z6 = z25;
                                    mutableInteractionSource2 = mutableInteractionSource3;
                                    z5 = z13;
                                    keyboardActions2 = keyboardActions4;
                                    modifier3 = modifier7;
                                    i36 = i47;
                                    visualTransformation2 = visualTransformation6;
                                    solidColor = brush3;
                                    textStyle3 = textStyle5;
                                } else {
                                    textInputService2 = textInputService;
                                }
                                z20 = true;
                                zChangedInstance = z36 | z20 | composerStartRestartGroup.changedInstance(offsetMapping) | composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(bringIntoViewRequester) | composerStartRestartGroup.changedInstance(textFieldSelectionManager);
                                objRememberedValue11 = composerStartRestartGroup.rememberedValue();
                                if (zChangedInstance) {
                                    offsetMapping2 = offsetMapping;
                                    final ImeOptions imeOptions13 = imeOptions4;
                                    final boolean z311 = z11;
                                    final boolean z312 = z10;
                                    objRememberedValue11 = new nl3() { // from class: v12
                                        @Override // defpackage.nl3
                                        public final Object invoke(Object obj) {
                                            return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z311, z312, textInputService2, textFieldValue, imeOptions13, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                                        }
                                    };
                                    legacyTextFieldState2 = legacyTextFieldState;
                                    z21 = z311;
                                    textFieldValue2 = textFieldValue;
                                    imeOptions5 = imeOptions13;
                                    textFieldSelectionManager2 = textFieldSelectionManager;
                                    y22Var2 = y22Var;
                                    bringIntoViewRequester2 = bringIntoViewRequester;
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                                } else {
                                    offsetMapping2 = offsetMapping;
                                    final ImeOptions imeOptions14 = imeOptions4;
                                    final boolean z313 = z11;
                                    final boolean z314 = z10;
                                    objRememberedValue11 = new nl3() { // from class: v12
                                        @Override // defpackage.nl3
                                        public final Object invoke(Object obj) {
                                            return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z313, z314, textInputService2, textFieldValue, imeOptions14, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                                        }
                                    };
                                    legacyTextFieldState2 = legacyTextFieldState;
                                    z21 = z313;
                                    textFieldValue2 = textFieldValue;
                                    imeOptions5 = imeOptions14;
                                    textFieldSelectionManager2 = textFieldSelectionManager;
                                    y22Var2 = y22Var;
                                    bringIntoViewRequester2 = bringIntoViewRequester;
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                                }
                                final BringIntoViewRequester bringIntoViewRequester4 = bringIntoViewRequester2;
                                Modifier modifierTextFieldFocusModifier2 = TextFieldGestureModifiersKt.textFieldFocusModifier(companion2, z21, focusRequester, mutableInteractionSource3, (nl3) objRememberedValue11);
                                if (z21) {
                                    z22 = false;
                                } else {
                                    z22 = false;
                                }
                                stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Boolean.valueOf(z22), composerStartRestartGroup, 0);
                                j59 j59Var2 = j59.a;
                                boolean zChanged7 = composerStartRestartGroup.changed(stateRememberUpdatedState) | composerStartRestartGroup.changedInstance(legacyTextFieldState2) | composerStartRestartGroup.changedInstance(textInputService2) | composerStartRestartGroup.changedInstance(textFieldSelectionManager2);
                                if (i45 > 32) {
                                    imeOptions6 = imeOptions5;
                                    if ((i44 & 48) != 32) {
                                        z23 = true;
                                    } else {
                                        z23 = false;
                                    }
                                } else {
                                    imeOptions6 = imeOptions5;
                                    if ((i44 & 48) != 32) {
                                        z23 = true;
                                    } else {
                                        z23 = false;
                                    }
                                }
                                z24 = zChanged7 | z23;
                                objRememberedValue12 = composerStartRestartGroup.rememberedValue();
                                if (z24) {
                                    ImeOptions imeOptions15 = imeOptions6;
                                    TextInputService textInputService6 = textInputService2;
                                    TextFieldSelectionManager textFieldSelectionManager10 = textFieldSelectionManager2;
                                    LegacyTextFieldState legacyTextFieldState9 = legacyTextFieldState2;
                                    objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState9, stateRememberUpdatedState, textInputService6, textFieldSelectionManager10, imeOptions15, null);
                                    legacyTextFieldState3 = legacyTextFieldState9;
                                    textFieldSelectionManager3 = textFieldSelectionManager10;
                                    imeOptions7 = imeOptions15;
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                                } else {
                                    ImeOptions imeOptions16 = imeOptions6;
                                    TextInputService textInputService7 = textInputService2;
                                    TextFieldSelectionManager textFieldSelectionManager11 = textFieldSelectionManager2;
                                    LegacyTextFieldState legacyTextFieldState10 = legacyTextFieldState2;
                                    objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState10, stateRememberUpdatedState, textInputService7, textFieldSelectionManager11, imeOptions16, null);
                                    legacyTextFieldState3 = legacyTextFieldState10;
                                    textFieldSelectionManager3 = textFieldSelectionManager11;
                                    imeOptions7 = imeOptions16;
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                                }
                                imeOptions8 = imeOptions7;
                                EffectsKt.LaunchedEffect(j59Var2, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue12, composerStartRestartGroup, 6);
                                int i55 = i44 >> 3;
                                z25 = z21;
                                legacyTextFieldState4 = legacyTextFieldState3;
                                textFieldSelectionManager4 = textFieldSelectionManager3;
                                Modifier modifierTextFieldPointer3 = TextFieldPointerModifier_androidKt.textFieldPointer(companion2, textFieldSelectionManager4, z25, mutableInteractionSource3, legacyTextFieldState4, focusRequester, z10, offsetMapping2, composerStartRestartGroup, (i55 & 896) | 196614 | ((i41 >> 9) & 7168) | ((i44 << 6) & 3670016));
                                offsetMapping3 = offsetMapping2;
                                final Modifier modifierTextFieldDraw3 = CoreTextField_androidKt.textFieldDraw(companion2, legacyTextFieldState4, textFieldValue2, offsetMapping3);
                                boolean zChangedInstance11 = composerStartRestartGroup.changedInstance(legacyTextFieldState4);
                                if (i43 == 2048) {
                                    z26 = true;
                                } else {
                                    z26 = false;
                                }
                                boolean zChanged8 = zChangedInstance11 | z26 | composerStartRestartGroup.changed(windowInfo) | composerStartRestartGroup.changedInstance(textFieldSelectionManager4);
                                if (i42 == 4) {
                                    z27 = true;
                                } else {
                                    z27 = false;
                                }
                                zChangedInstance2 = zChanged8 | z27 | composerStartRestartGroup.changedInstance(offsetMapping3);
                                objRememberedValue13 = composerStartRestartGroup.rememberedValue();
                                if (zChangedInstance2) {
                                    objRememberedValue13 = new nl3() { // from class: w12
                                        @Override // defpackage.nl3
                                        public final Object invoke(Object obj) {
                                            return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                                        }
                                    };
                                    textFieldSelectionManager5 = textFieldSelectionManager4;
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                                } else {
                                    objRememberedValue13 = new nl3() { // from class: w12
                                        @Override // defpackage.nl3
                                        public final Object invoke(Object obj) {
                                            return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                                        }
                                    };
                                    textFieldSelectionManager5 = textFieldSelectionManager4;
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                                }
                                final Modifier modifierOnGloballyPositioned3 = OnGloballyPositionedModifierKt.onGloballyPositioned(companion2, (nl3) objRememberedValue13);
                                textFieldSelectionManager6 = textFieldSelectionManager5;
                                CoreTextFieldSemanticsModifier coreTextFieldSemanticsModifier3 = new CoreTextFieldSemanticsModifier(transformedText, textFieldValue, legacyTextFieldState4, z10, z25, visualTransformation3 instanceof PasswordVisualTransformation, offsetMapping3, textFieldSelectionManager6, imeOptions8, focusRequester);
                                final VisualTransformation visualTransformation7 = visualTransformation3;
                                if (z25 != 0) {
                                    z28 = false;
                                } else {
                                    z28 = false;
                                }
                                final Modifier modifierTextFieldCursor3 = CoreTextField_androidKt.textFieldCursor(companion2, legacyTextFieldState4, textFieldValue, offsetMapping3, brush3, z28);
                                zChangedInstance3 = composerStartRestartGroup.changedInstance(textFieldSelectionManager6);
                                objRememberedValue14 = composerStartRestartGroup.rememberedValue();
                                if (zChangedInstance3) {
                                    i46 = 0;
                                    objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                                } else {
                                    i46 = 0;
                                    objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                                }
                                EffectsKt.DisposableEffect(textFieldSelectionManager6, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue14, composerStartRestartGroup, i46);
                                boolean zChangedInstance12 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changedInstance(textInputService2);
                                if (i42 == 4) {
                                    z29 = true;
                                } else {
                                    z29 = false;
                                }
                                z30 = z29 | zChangedInstance12 | ((i45 <= 32 && composerStartRestartGroup.changed(imeOptions8)) || (i44 & 48) == 32);
                                objRememberedValue15 = composerStartRestartGroup.rememberedValue();
                                if (z30) {
                                    objRememberedValue15 = new nl3() { // from class: h12
                                        @Override // defpackage.nl3
                                        public final Object invoke(Object obj) {
                                            return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                                } else {
                                    objRememberedValue15 = new nl3() { // from class: h12
                                        @Override // defpackage.nl3
                                        public final Object invoke(Object obj) {
                                            return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                                }
                                EffectsKt.DisposableEffect(imeOptions8, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue15, composerStartRestartGroup, i55 & 14);
                                nl3<TextFieldValue, j59> onValueChange3 = legacyTextFieldState4.getOnValueChange();
                                i47 = i38;
                                if (i47 == 1) {
                                    z31 = true;
                                } else {
                                    z31 = false;
                                }
                                Modifier modifierM2614textFieldKeyInput2WJ9YEU3 = TextFieldKeyInputKt.m2614textFieldKeyInput2WJ9YEU(companion2, legacyTextFieldState4, textFieldSelectionManager6, textFieldValue, onValueChange3, z34, z31, offsetMapping3, undoManager, imeOptions8.m8688getImeActioneUduSuo());
                                iM8689getKeyboardTypePjHm6EE = imeOptions8.m8689getKeyboardTypePjHm6EE();
                                companion3 = KeyboardType.Companion;
                                if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion3.m8731getPasswordPjHm6EE())) {
                                    z32 = false;
                                } else {
                                    z32 = false;
                                }
                                boolean zCoreTextField$lambda$16 = CoreTextField$lambda$14(stateRememberUpdatedState);
                                zChanged2 = composerStartRestartGroup.changed(z32) | composerStartRestartGroup.changedInstance(legacyPlatformTextInputServiceAdapter);
                                objRememberedValue16 = composerStartRestartGroup.rememberedValue();
                                if (zChanged2) {
                                    objRememberedValue16 = new ll3() { // from class: i12
                                        @Override // defpackage.ll3
                                        public final Object invoke() {
                                            return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                                } else {
                                    objRememberedValue16 = new ll3() { // from class: i12
                                        @Override // defpackage.ll3
                                        public final Object invoke() {
                                            return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                                }
                                Modifier modifierStylusHandwriting3 = StylusHandwritingKt.stylusHandwriting(companion2, zCoreTextField$lambda$16, z32, (ll3) objRememberedValue16);
                                y22 y22Var5 = y22Var2;
                                brushM2447resolveAutofillHighlightWkMShQ = AutofillHighlightKt.m2447resolveAutofillHighlightWkMShQ((Brush) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightBrush()), ((Color) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightColor())).m6242unboximpl(), AutofillHighlight_androidKt.autofillHighlightColor());
                                zChangedInstance4 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changed(brushM2447resolveAutofillHighlightWkMShQ);
                                objRememberedValue17 = composerStartRestartGroup.rememberedValue();
                                if (zChangedInstance4) {
                                    i48 = 0;
                                    objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                                } else {
                                    i48 = 0;
                                    objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                                }
                                Modifier modifierDrawWithContent3 = DrawModifierKt.drawWithContent(companion2, (nl3) objRememberedValue17);
                                OverscrollEffect overscrollEffectRememberTextFieldOverscrollEffect3 = TextFieldScroll_androidKt.rememberTextFieldOverscrollEffect(composerStartRestartGroup, i48);
                                Modifier modifier9 = modifier4;
                                Modifier modifierThen3 = previewKeyEventToDeselectOnBack(TextFieldFocusModifier_androidKt.interceptDPadAndMoveFocus(LegacyAdaptingPlatformTextInputModifierNodeKt.legacyTextInputAdapter(modifier9.then(modifierDrawWithContent3), legacyPlatformTextInputServiceAdapter, legacyTextFieldState4, textFieldSelectionManager6).then(modifierStylusHandwriting3).then(modifierTextFieldFocusModifier2), legacyTextFieldState4, focusManager), legacyTextFieldState4, textFieldSelectionManager6).then(modifierM2614textFieldKeyInput2WJ9YEU3);
                                final TextFieldScrollerPosition textFieldScrollerPosition8 = textFieldScrollerPosition5;
                                Modifier modifierAddContextMenuComponents3 = addContextMenuComponents(OnGloballyPositionedModifierKt.onGloballyPositioned(TextFieldScrollKt.textFieldScrollable(modifierThen3, textFieldScrollerPosition8, mutableInteractionSource3, z25, overscrollEffectRememberTextFieldOverscrollEffect3).then(modifierTextFieldPointer3).then(coreTextFieldSemanticsModifier3), new nl3() { // from class: r12
                                    @Override // defpackage.nl3
                                    public final Object invoke(Object obj) {
                                        return CoreTextFieldKt.CoreTextField$lambda$21(legacyTextFieldState4, (LayoutCoordinates) obj);
                                    }
                                }), textFieldSelectionManager6, y22Var5);
                                if (z25) {
                                    i48 = 1;
                                }
                                if (i48 != 0) {
                                    modifierTextFieldMagnifier = TextFieldSelectionManager_androidKt.textFieldMagnifier(companion2, textFieldSelectionManager6);
                                } else {
                                    modifierTextFieldMagnifier = companion2;
                                }
                                final Modifier modifier10 = modifierTextFieldMagnifier;
                                final boolean z315 = z10;
                                final dm3 dm3Var5 = lambda$559628295$foundation;
                                final int i56 = i39;
                                final boolean z42 = i48;
                                CoreTextFieldRootBox(modifierAddContextMenuComponents3, textFieldSelectionManager6, ComposableLambdaKt.rememberComposableLambda(-814563849, true, new bm3() { // from class: s12
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        int iIntValue = ((Integer) obj2).intValue();
                                        return CoreTextFieldKt.CoreTextField$lambda$22(dm3Var5, legacyTextFieldState4, textStyle5, i56, i47, textFieldScrollerPosition8, textFieldValue, visualTransformation7, modifierTextFieldCursor3, modifierTextFieldDraw3, modifierOnGloballyPositioned3, modifier10, bringIntoViewRequester4, textFieldSelectionManager6, z42, z315, nl3Var5, offsetMapping3, density, (Composer) obj, iIntValue);
                                    }
                                }, composerStartRestartGroup, 54), composerStartRestartGroup, RendererCapabilities.DECODER_SUPPORT_MASK);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                dm3Var2 = dm3Var5;
                                i37 = i56;
                                composer2 = composerStartRestartGroup;
                                nl3Var4 = nl3Var5;
                                z7 = z315;
                                textFieldScrollerPosition2 = textFieldScrollerPosition3;
                                imeOptions2 = imeOptions8;
                                z6 = z25;
                                mutableInteractionSource2 = mutableInteractionSource3;
                                z5 = z13;
                                keyboardActions2 = keyboardActions4;
                                modifier3 = modifier9;
                                i36 = i47;
                                visualTransformation2 = visualTransformation7;
                                solidColor = brush3;
                                textStyle3 = textStyle5;
                            } else {
                                composerStartRestartGroup.skipToGroupEnd();
                                if ((i5 & 2048) != 0) {
                                    i33 &= -113;
                                }
                                i38 = i;
                                i39 = i2;
                                keyboardActions3 = keyboardActions;
                                z10 = z3;
                                lambda$559628295$foundation = dm3Var;
                                brush2 = solidColor;
                                nl3Var5 = nl3Var3;
                                visualTransformation3 = none;
                                modifier4 = modifier2;
                                i40 = i33;
                                z12 = z;
                                imeOptions4 = imeOptions;
                                z11 = z2;
                            }
                            textFieldScrollerPosition3 = textFieldScrollerPosition;
                            composerStartRestartGroup.endDefaults();
                            brush3 = brush2;
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(31062401, i6, i40, "androidx.compose.foundation.text.CoreTextField (CoreTextField.kt:208)");
                            }
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            companion = Composer.Companion;
                            if (objRememberedValue2 == companion.getEmpty()) {
                                objRememberedValue2 = new FocusRequester();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            focusRequester = (FocusRequester) objRememberedValue2;
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            i41 = i6;
                            if (objRememberedValue3 == companion.getEmpty()) {
                                objRememberedValue3 = LegacyPlatformTextInputServiceAdapter_androidKt.createLegacyPlatformTextInputServiceAdapter();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            legacyPlatformTextInputServiceAdapter = (LegacyPlatformTextInputServiceAdapter) objRememberedValue3;
                            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue4 == companion.getEmpty()) {
                                objRememberedValue4 = new TextInputService(legacyPlatformTextInputServiceAdapter);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            }
                            textInputService = (TextInputService) objRememberedValue4;
                            density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                            resolver = (FontFamily.Resolver) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalFontFamilyResolver());
                            jM3048getBackgroundColor0d7_KjU = ((TextSelectionColors) composerStartRestartGroup.consume(TextSelectionColorsKt.getLocalTextSelectionColors())).m3048getBackgroundColor0d7_KjU();
                            focusManager = (FocusManager) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalFocusManager());
                            windowInfo = (WindowInfo) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalWindowInfo());
                            textStyle5 = textStyle2;
                            softwareKeyboardController = (SoftwareKeyboardController) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalSoftwareKeyboardController());
                            z13 = z12;
                            if (i38 == 1) {
                                orientation = Orientation.Vertical;
                            } else {
                                orientation = Orientation.Vertical;
                            }
                            if (textFieldScrollerPosition3 == null) {
                                composerStartRestartGroup.startReplaceGroup(-213744626);
                                Object[] objArr2 = {orientation};
                                Saver<TextFieldScrollerPosition, Object> saver2 = TextFieldScrollerPosition.Companion.getSaver();
                                zChanged3 = composerStartRestartGroup.changed(orientation.ordinal());
                                objRememberedValue18 = composerStartRestartGroup.rememberedValue();
                                if (zChanged3) {
                                    i49 = 0;
                                    objRememberedValue18 = new u12(orientation, i49);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue18);
                                } else {
                                    i49 = 0;
                                    objRememberedValue18 = new u12(orientation, i49);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue18);
                                }
                                textFieldScrollerPosition4 = (TextFieldScrollerPosition) RememberSaveableKt.m5624rememberSaveable(objArr2, (Saver) saver2, (ll3) objRememberedValue18, composerStartRestartGroup, i49);
                                composerStartRestartGroup.endReplaceGroup();
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-213745742);
                                composerStartRestartGroup.endReplaceGroup();
                                textFieldScrollerPosition4 = textFieldScrollerPosition3;
                            }
                            if (textFieldScrollerPosition4.getOrientation() != orientation) {
                                if (orientation == Orientation.Vertical) {
                                    str = "only single-line, non-wrap text fields can scroll horizontally";
                                } else {
                                    str = "single-line, non-wrap text fields can only scroll horizontally";
                                }
                                throw new IllegalArgumentException("Mismatching scroller orientation; ".concat(str));
                            }
                            i42 = i41 & 14;
                            if (i42 == 4) {
                                z14 = true;
                            } else {
                                z14 = false;
                            }
                            if ((i41 & 57344) == 16384) {
                                z15 = true;
                            } else {
                                z15 = false;
                            }
                            z16 = z14 | z15;
                            objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                            if (z16) {
                                transformedTextFilterWithValidation = ValidatingOffsetMappingKt.filterWithValidation(visualTransformation3, textFieldValue.getAnnotatedString());
                                textRangeM8740getCompositionMzsxiRA = textFieldValue.m8740getCompositionMzsxiRA();
                                if (textRangeM8740getCompositionMzsxiRA != null) {
                                    textFieldScrollerPosition5 = textFieldScrollerPosition4;
                                    transformedTextM2604applyCompositionDecoration72CqOWE = TextFieldDelegate.Companion.m2604applyCompositionDecoration72CqOWE(textRangeM8740getCompositionMzsxiRA.m8495unboximpl(), transformedTextFilterWithValidation);
                                    if (transformedTextM2604applyCompositionDecoration72CqOWE != null) {
                                        objRememberedValue5 = transformedTextM2604applyCompositionDecoration72CqOWE;
                                    }
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                                } else {
                                    textFieldScrollerPosition5 = textFieldScrollerPosition4;
                                }
                                objRememberedValue5 = transformedTextFilterWithValidation;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            } else {
                                transformedTextFilterWithValidation = ValidatingOffsetMappingKt.filterWithValidation(visualTransformation3, textFieldValue.getAnnotatedString());
                                textRangeM8740getCompositionMzsxiRA = textFieldValue.m8740getCompositionMzsxiRA();
                                if (textRangeM8740getCompositionMzsxiRA != null) {
                                    textFieldScrollerPosition5 = textFieldScrollerPosition4;
                                    transformedTextM2604applyCompositionDecoration72CqOWE = TextFieldDelegate.Companion.m2604applyCompositionDecoration72CqOWE(textRangeM8740getCompositionMzsxiRA.m8495unboximpl(), transformedTextFilterWithValidation);
                                    if (transformedTextM2604applyCompositionDecoration72CqOWE != null) {
                                        objRememberedValue5 = transformedTextM2604applyCompositionDecoration72CqOWE;
                                    }
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                                } else {
                                    textFieldScrollerPosition5 = textFieldScrollerPosition4;
                                }
                                objRememberedValue5 = transformedTextFilterWithValidation;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            }
                            TransformedText transformedText2 = (TransformedText) objRememberedValue5;
                            text = transformedText2.getText();
                            offsetMapping = transformedText2.getOffsetMapping();
                            currentRecomposeScope = ComposablesKt.getCurrentRecomposeScope(composerStartRestartGroup, 0);
                            zChanged = composerStartRestartGroup.changed(softwareKeyboardController);
                            objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                            if (zChanged) {
                                objRememberedValue6 = new LegacyTextFieldState(new TextDelegate(text, textStyle5, 0, 0, z13, 0, density, resolver, null, 300, null), currentRecomposeScope, softwareKeyboardController);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                            } else {
                                objRememberedValue6 = new LegacyTextFieldState(new TextDelegate(text, textStyle5, 0, 0, z13, 0, density, resolver, null, 300, null), currentRecomposeScope, softwareKeyboardController);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                            }
                            legacyTextFieldState = (LegacyTextFieldState) objRememberedValue6;
                            KeyboardActions keyboardActions5 = keyboardActions3;
                            legacyTextFieldState.m2569updatefnh65Uc(textFieldValue.getAnnotatedString(), text, textStyle5, z13, r55, resolver, nl3Var, keyboardActions5, focusManager, jM3048getBackgroundColor0d7_KjU);
                            legacyTextFieldState.getProcessor().reset(textFieldValue, legacyTextFieldState.getInputSession());
                            objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue7 == companion.getEmpty()) {
                                objRememberedValue7 = new UndoManager(0, 1, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                            }
                            undoManager = (UndoManager) objRememberedValue7;
                            UndoManager.snapshotIfNeeded$default(undoManager, textFieldValue, 0L, 2, null);
                            objRememberedValue8 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue8 == companion.getEmpty()) {
                                objRememberedValue8 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
                            }
                            y22Var = (y22) objRememberedValue8;
                            objRememberedValue9 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue9 == companion.getEmpty()) {
                                objRememberedValue9 = BringIntoViewRequesterKt.BringIntoViewRequester();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue9);
                            }
                            bringIntoViewRequester = (BringIntoViewRequester) objRememberedValue9;
                            objRememberedValue10 = composerStartRestartGroup.rememberedValue();
                            MutableInteractionSource mutableInteractionSource4 = mutableInteractionSource2;
                            if (objRememberedValue10 == companion.getEmpty()) {
                                objRememberedValue10 = new TextFieldSelectionManager(undoManager);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue10);
                            }
                            textFieldSelectionManager = (TextFieldSelectionManager) objRememberedValue10;
                            textFieldSelectionManager.setOffsetMapping$foundation(offsetMapping);
                            textFieldSelectionManager.setVisualTransformation$foundation(visualTransformation3);
                            textFieldSelectionManager.setOnValueChange$foundation(legacyTextFieldState.getOnValueChange());
                            textFieldSelectionManager.setState$foundation(legacyTextFieldState);
                            textFieldSelectionManager.setValue$foundation(textFieldValue);
                            textFieldSelectionManager.setClipboard$foundation((Clipboard) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalClipboard()));
                            textFieldSelectionManager.setCoroutineScope$foundation(y22Var);
                            textFieldSelectionManager.setTextToolbar((TextToolbar) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalTextToolbar()));
                            textFieldSelectionManager.setHapticFeedBack((HapticFeedback) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalHapticFeedback()));
                            textFieldSelectionManager.setFocusRequester(focusRequester);
                            boolean z316 = !z10;
                            textFieldSelectionManager.setEditable(z316);
                            textFieldSelectionManager.setEnabled(z11);
                            if (ComposeFoundationFlags.isSmartSelectionEnabled) {
                                composerStartRestartGroup.startReplaceGroup(1966756105);
                                textFieldSelectionManager.setPlatformSelectionBehaviors$foundation(PlatformSelectionBehaviors_androidKt.rememberPlatformSelectionBehaviors(SelectedTextType.EditableText, textStyle5.getLocaleList(), composerStartRestartGroup, 6));
                                composerStartRestartGroup.endReplaceGroup();
                            } else {
                                composerStartRestartGroup.startReplaceGroup(1966902177);
                                composerStartRestartGroup.endReplaceGroup();
                            }
                            legacyTextFieldState.getHasFocus();
                            companion2 = Modifier.Companion;
                            boolean zChangedInstance13 = composerStartRestartGroup.changedInstance(legacyTextFieldState);
                            i43 = i40 & 7168;
                            i44 = i40;
                            if (i43 == 2048) {
                                z17 = true;
                            } else {
                                z17 = false;
                            }
                            boolean z317 = z17 | zChangedInstance13;
                            if ((i44 & 57344) == 16384) {
                                z18 = true;
                            } else {
                                z18 = false;
                            }
                            boolean zChangedInstance14 = z317 | z18 | composerStartRestartGroup.changedInstance(textInputService);
                            if (i42 == 4) {
                                z19 = true;
                            } else {
                                z19 = false;
                            }
                            boolean z318 = zChangedInstance14 | z19;
                            i45 = (i44 & 112) ^ 48;
                            if (i45 > 32) {
                                textInputService2 = textInputService;
                                if ((i44 & 48) != 32) {
                                    z20 = true;
                                } else {
                                    z20 = false;
                                }
                            } else {
                                textInputService2 = textInputService;
                                if ((i44 & 48) != 32) {
                                    z20 = true;
                                } else {
                                    z20 = false;
                                }
                            }
                            zChangedInstance = z318 | z20 | composerStartRestartGroup.changedInstance(offsetMapping) | composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(bringIntoViewRequester) | composerStartRestartGroup.changedInstance(textFieldSelectionManager);
                            objRememberedValue11 = composerStartRestartGroup.rememberedValue();
                            if (zChangedInstance) {
                                offsetMapping2 = offsetMapping;
                                final ImeOptions imeOptions17 = imeOptions4;
                                final boolean z319 = z11;
                                final boolean z3110 = z10;
                                objRememberedValue11 = new nl3() { // from class: v12
                                    @Override // defpackage.nl3
                                    public final Object invoke(Object obj) {
                                        return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z319, z3110, textInputService2, textFieldValue, imeOptions17, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                                    }
                                };
                                legacyTextFieldState2 = legacyTextFieldState;
                                z21 = z319;
                                textFieldValue2 = textFieldValue;
                                imeOptions5 = imeOptions17;
                                textFieldSelectionManager2 = textFieldSelectionManager;
                                y22Var2 = y22Var;
                                bringIntoViewRequester2 = bringIntoViewRequester;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                            } else {
                                offsetMapping2 = offsetMapping;
                                final ImeOptions imeOptions18 = imeOptions4;
                                final boolean z3111 = z11;
                                final boolean z3112 = z10;
                                objRememberedValue11 = new nl3() { // from class: v12
                                    @Override // defpackage.nl3
                                    public final Object invoke(Object obj) {
                                        return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z3111, z3112, textInputService2, textFieldValue, imeOptions18, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                                    }
                                };
                                legacyTextFieldState2 = legacyTextFieldState;
                                z21 = z3111;
                                textFieldValue2 = textFieldValue;
                                imeOptions5 = imeOptions18;
                                textFieldSelectionManager2 = textFieldSelectionManager;
                                y22Var2 = y22Var;
                                bringIntoViewRequester2 = bringIntoViewRequester;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                            }
                            final BringIntoViewRequester bringIntoViewRequester5 = bringIntoViewRequester2;
                            Modifier modifierTextFieldFocusModifier3 = TextFieldGestureModifiersKt.textFieldFocusModifier(companion2, z21, focusRequester, mutableInteractionSource4, (nl3) objRememberedValue11);
                            if (z21) {
                                z22 = false;
                            } else {
                                z22 = false;
                            }
                            stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Boolean.valueOf(z22), composerStartRestartGroup, 0);
                            j59 j59Var3 = j59.a;
                            boolean zChanged9 = composerStartRestartGroup.changed(stateRememberUpdatedState) | composerStartRestartGroup.changedInstance(legacyTextFieldState2) | composerStartRestartGroup.changedInstance(textInputService2) | composerStartRestartGroup.changedInstance(textFieldSelectionManager2);
                            if (i45 > 32) {
                                imeOptions6 = imeOptions5;
                                if ((i44 & 48) != 32) {
                                    z23 = true;
                                } else {
                                    z23 = false;
                                }
                            } else {
                                imeOptions6 = imeOptions5;
                                if ((i44 & 48) != 32) {
                                    z23 = true;
                                } else {
                                    z23 = false;
                                }
                            }
                            z24 = zChanged9 | z23;
                            objRememberedValue12 = composerStartRestartGroup.rememberedValue();
                            if (z24) {
                                ImeOptions imeOptions19 = imeOptions6;
                                TextInputService textInputService8 = textInputService2;
                                TextFieldSelectionManager textFieldSelectionManager12 = textFieldSelectionManager2;
                                LegacyTextFieldState legacyTextFieldState11 = legacyTextFieldState2;
                                objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState11, stateRememberUpdatedState, textInputService8, textFieldSelectionManager12, imeOptions19, null);
                                legacyTextFieldState3 = legacyTextFieldState11;
                                textFieldSelectionManager3 = textFieldSelectionManager12;
                                imeOptions7 = imeOptions19;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                            } else {
                                ImeOptions imeOptions110 = imeOptions6;
                                TextInputService textInputService9 = textInputService2;
                                TextFieldSelectionManager textFieldSelectionManager13 = textFieldSelectionManager2;
                                LegacyTextFieldState legacyTextFieldState12 = legacyTextFieldState2;
                                objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState12, stateRememberUpdatedState, textInputService9, textFieldSelectionManager13, imeOptions110, null);
                                legacyTextFieldState3 = legacyTextFieldState12;
                                textFieldSelectionManager3 = textFieldSelectionManager13;
                                imeOptions7 = imeOptions110;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                            }
                            imeOptions8 = imeOptions7;
                            EffectsKt.LaunchedEffect(j59Var3, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue12, composerStartRestartGroup, 6);
                            int i57 = i44 >> 3;
                            z25 = z21;
                            legacyTextFieldState4 = legacyTextFieldState3;
                            textFieldSelectionManager4 = textFieldSelectionManager3;
                            Modifier modifierTextFieldPointer4 = TextFieldPointerModifier_androidKt.textFieldPointer(companion2, textFieldSelectionManager4, z25, mutableInteractionSource4, legacyTextFieldState4, focusRequester, z10, offsetMapping2, composerStartRestartGroup, (i57 & 896) | 196614 | ((i41 >> 9) & 7168) | ((i44 << 6) & 3670016));
                            offsetMapping3 = offsetMapping2;
                            final Modifier modifierTextFieldDraw4 = CoreTextField_androidKt.textFieldDraw(companion2, legacyTextFieldState4, textFieldValue2, offsetMapping3);
                            boolean zChangedInstance15 = composerStartRestartGroup.changedInstance(legacyTextFieldState4);
                            if (i43 == 2048) {
                                z26 = true;
                            } else {
                                z26 = false;
                            }
                            boolean zChanged10 = zChangedInstance15 | z26 | composerStartRestartGroup.changed(windowInfo) | composerStartRestartGroup.changedInstance(textFieldSelectionManager4);
                            if (i42 == 4) {
                                z27 = true;
                            } else {
                                z27 = false;
                            }
                            zChangedInstance2 = zChanged10 | z27 | composerStartRestartGroup.changedInstance(offsetMapping3);
                            objRememberedValue13 = composerStartRestartGroup.rememberedValue();
                            if (zChangedInstance2) {
                                objRememberedValue13 = new nl3() { // from class: w12
                                    @Override // defpackage.nl3
                                    public final Object invoke(Object obj) {
                                        return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                                    }
                                };
                                textFieldSelectionManager5 = textFieldSelectionManager4;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                            } else {
                                objRememberedValue13 = new nl3() { // from class: w12
                                    @Override // defpackage.nl3
                                    public final Object invoke(Object obj) {
                                        return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                                    }
                                };
                                textFieldSelectionManager5 = textFieldSelectionManager4;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                            }
                            final Modifier modifierOnGloballyPositioned4 = OnGloballyPositionedModifierKt.onGloballyPositioned(companion2, (nl3) objRememberedValue13);
                            textFieldSelectionManager6 = textFieldSelectionManager5;
                            CoreTextFieldSemanticsModifier coreTextFieldSemanticsModifier4 = new CoreTextFieldSemanticsModifier(transformedText2, textFieldValue, legacyTextFieldState4, z10, z25, visualTransformation3 instanceof PasswordVisualTransformation, offsetMapping3, textFieldSelectionManager6, imeOptions8, focusRequester);
                            final VisualTransformation visualTransformation8 = visualTransformation3;
                            if (z25 != 0) {
                                z28 = false;
                            } else {
                                z28 = false;
                            }
                            final Modifier modifierTextFieldCursor4 = CoreTextField_androidKt.textFieldCursor(companion2, legacyTextFieldState4, textFieldValue, offsetMapping3, brush3, z28);
                            zChangedInstance3 = composerStartRestartGroup.changedInstance(textFieldSelectionManager6);
                            objRememberedValue14 = composerStartRestartGroup.rememberedValue();
                            if (zChangedInstance3) {
                                i46 = 0;
                                objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                            } else {
                                i46 = 0;
                                objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                            }
                            EffectsKt.DisposableEffect(textFieldSelectionManager6, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue14, composerStartRestartGroup, i46);
                            boolean zChangedInstance16 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changedInstance(textInputService2);
                            if (i42 == 4) {
                                z29 = true;
                            } else {
                                z29 = false;
                            }
                            z30 = z29 | zChangedInstance16 | ((i45 <= 32 && composerStartRestartGroup.changed(imeOptions8)) || (i44 & 48) == 32);
                            objRememberedValue15 = composerStartRestartGroup.rememberedValue();
                            if (z30) {
                                objRememberedValue15 = new nl3() { // from class: h12
                                    @Override // defpackage.nl3
                                    public final Object invoke(Object obj) {
                                        return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                            } else {
                                objRememberedValue15 = new nl3() { // from class: h12
                                    @Override // defpackage.nl3
                                    public final Object invoke(Object obj) {
                                        return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                            }
                            EffectsKt.DisposableEffect(imeOptions8, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue15, composerStartRestartGroup, i57 & 14);
                            nl3<TextFieldValue, j59> onValueChange4 = legacyTextFieldState4.getOnValueChange();
                            i47 = i38;
                            if (i47 == 1) {
                                z31 = true;
                            } else {
                                z31 = false;
                            }
                            Modifier modifierM2614textFieldKeyInput2WJ9YEU4 = TextFieldKeyInputKt.m2614textFieldKeyInput2WJ9YEU(companion2, legacyTextFieldState4, textFieldSelectionManager6, textFieldValue, onValueChange4, z316, z31, offsetMapping3, undoManager, imeOptions8.m8688getImeActioneUduSuo());
                            iM8689getKeyboardTypePjHm6EE = imeOptions8.m8689getKeyboardTypePjHm6EE();
                            companion3 = KeyboardType.Companion;
                            if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion3.m8731getPasswordPjHm6EE())) {
                                z32 = false;
                            } else {
                                z32 = false;
                            }
                            boolean zCoreTextField$lambda$17 = CoreTextField$lambda$14(stateRememberUpdatedState);
                            zChanged2 = composerStartRestartGroup.changed(z32) | composerStartRestartGroup.changedInstance(legacyPlatformTextInputServiceAdapter);
                            objRememberedValue16 = composerStartRestartGroup.rememberedValue();
                            if (zChanged2) {
                                objRememberedValue16 = new ll3() { // from class: i12
                                    @Override // defpackage.ll3
                                    public final Object invoke() {
                                        return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                            } else {
                                objRememberedValue16 = new ll3() { // from class: i12
                                    @Override // defpackage.ll3
                                    public final Object invoke() {
                                        return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                            }
                            Modifier modifierStylusHandwriting4 = StylusHandwritingKt.stylusHandwriting(companion2, zCoreTextField$lambda$17, z32, (ll3) objRememberedValue16);
                            y22 y22Var6 = y22Var2;
                            brushM2447resolveAutofillHighlightWkMShQ = AutofillHighlightKt.m2447resolveAutofillHighlightWkMShQ((Brush) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightBrush()), ((Color) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightColor())).m6242unboximpl(), AutofillHighlight_androidKt.autofillHighlightColor());
                            zChangedInstance4 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changed(brushM2447resolveAutofillHighlightWkMShQ);
                            objRememberedValue17 = composerStartRestartGroup.rememberedValue();
                            if (zChangedInstance4) {
                                i48 = 0;
                                objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                            } else {
                                i48 = 0;
                                objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                            }
                            Modifier modifierDrawWithContent4 = DrawModifierKt.drawWithContent(companion2, (nl3) objRememberedValue17);
                            OverscrollEffect overscrollEffectRememberTextFieldOverscrollEffect4 = TextFieldScroll_androidKt.rememberTextFieldOverscrollEffect(composerStartRestartGroup, i48);
                            Modifier modifier11 = modifier4;
                            Modifier modifierThen4 = previewKeyEventToDeselectOnBack(TextFieldFocusModifier_androidKt.interceptDPadAndMoveFocus(LegacyAdaptingPlatformTextInputModifierNodeKt.legacyTextInputAdapter(modifier11.then(modifierDrawWithContent4), legacyPlatformTextInputServiceAdapter, legacyTextFieldState4, textFieldSelectionManager6).then(modifierStylusHandwriting4).then(modifierTextFieldFocusModifier3), legacyTextFieldState4, focusManager), legacyTextFieldState4, textFieldSelectionManager6).then(modifierM2614textFieldKeyInput2WJ9YEU4);
                            final TextFieldScrollerPosition textFieldScrollerPosition9 = textFieldScrollerPosition5;
                            Modifier modifierAddContextMenuComponents4 = addContextMenuComponents(OnGloballyPositionedModifierKt.onGloballyPositioned(TextFieldScrollKt.textFieldScrollable(modifierThen4, textFieldScrollerPosition9, mutableInteractionSource4, z25, overscrollEffectRememberTextFieldOverscrollEffect4).then(modifierTextFieldPointer4).then(coreTextFieldSemanticsModifier4), new nl3() { // from class: r12
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return CoreTextFieldKt.CoreTextField$lambda$21(legacyTextFieldState4, (LayoutCoordinates) obj);
                                }
                            }), textFieldSelectionManager6, y22Var6);
                            if (z25) {
                                i48 = 1;
                            }
                            if (i48 != 0) {
                                modifierTextFieldMagnifier = TextFieldSelectionManager_androidKt.textFieldMagnifier(companion2, textFieldSelectionManager6);
                            } else {
                                modifierTextFieldMagnifier = companion2;
                            }
                            final Modifier modifier12 = modifierTextFieldMagnifier;
                            final boolean z3113 = z10;
                            final dm3 dm3Var6 = lambda$559628295$foundation;
                            final int i58 = i39;
                            final boolean z43 = i48;
                            CoreTextFieldRootBox(modifierAddContextMenuComponents4, textFieldSelectionManager6, ComposableLambdaKt.rememberComposableLambda(-814563849, true, new bm3() { // from class: s12
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return CoreTextFieldKt.CoreTextField$lambda$22(dm3Var6, legacyTextFieldState4, textStyle5, i58, i47, textFieldScrollerPosition9, textFieldValue, visualTransformation8, modifierTextFieldCursor4, modifierTextFieldDraw4, modifierOnGloballyPositioned4, modifier12, bringIntoViewRequester5, textFieldSelectionManager6, z43, z3113, nl3Var5, offsetMapping3, density, (Composer) obj, iIntValue);
                                }
                            }, composerStartRestartGroup, 54), composerStartRestartGroup, RendererCapabilities.DECODER_SUPPORT_MASK);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            dm3Var2 = dm3Var6;
                            i37 = i58;
                            composer2 = composerStartRestartGroup;
                            nl3Var4 = nl3Var5;
                            z7 = z3113;
                            textFieldScrollerPosition2 = textFieldScrollerPosition3;
                            imeOptions2 = imeOptions8;
                            z6 = z25;
                            mutableInteractionSource2 = mutableInteractionSource4;
                            z5 = z13;
                            keyboardActions2 = keyboardActions5;
                            modifier3 = modifier11;
                            i36 = i47;
                            visualTransformation2 = visualTransformation8;
                            solidColor = brush3;
                            textStyle3 = textStyle5;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            z5 = z;
                            imeOptions2 = imeOptions;
                            keyboardActions2 = keyboardActions;
                            dm3Var2 = dm3Var;
                            textFieldScrollerPosition2 = textFieldScrollerPosition;
                            composer2 = composerStartRestartGroup;
                            textStyle3 = textStyle2;
                            nl3Var4 = nl3Var3;
                            visualTransformation2 = none;
                            modifier3 = modifier2;
                            i36 = i;
                            i37 = i2;
                            z6 = z2;
                            z7 = z3;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: t12
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return CoreTextFieldKt.CoreTextField$lambda$23(textFieldValue, nl3Var, modifier3, textStyle3, visualTransformation2, nl3Var4, mutableInteractionSource2, solidColor, z5, i36, i37, imeOptions2, keyboardActions2, z6, z7, dm3Var2, textFieldScrollerPosition2, i3, i4, i5, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i6 |= 805306368;
                    i21 = i5 & 1024;
                    if (i21 != 0) {
                        i22 = i4 | 6;
                    } else if ((i4 & 6) == 0) {
                        if (composerStartRestartGroup.changed(i2)) {
                            i23 = 4;
                        } else {
                            i23 = 2;
                        }
                        i22 = i4 | i23;
                    } else {
                        i22 = i4;
                    }
                    if ((i4 & 48) != 0) {
                        i22 |= ((i5 & 2048) == 0 || !composerStartRestartGroup.changed(imeOptions)) ? 16 : 32;
                    }
                    i24 = i22;
                    i25 = i5 & 4096;
                    if (i25 != 0) {
                        i26 = i24 | RendererCapabilities.DECODER_SUPPORT_MASK;
                    } else if ((i4 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                        if (composerStartRestartGroup.changed(keyboardActions)) {
                            i27 = 256;
                        } else {
                            i27 = 128;
                        }
                        i26 = i24 | i27;
                    } else {
                        i26 = i24;
                    }
                    i28 = i5 & 8192;
                    if (i28 != 0) {
                        i30 = i26 | 3072;
                    } else {
                        i29 = i26;
                        if ((i4 & 3072) == 0) {
                            i30 = i29 | (composerStartRestartGroup.changed(z2) ? 2048 : 1024);
                        } else {
                            i30 = i29;
                        }
                    }
                    i31 = i5 & 16384;
                    if (i31 != 0) {
                        i33 = i30 | 24576;
                    } else {
                        i32 = i30;
                        if ((i4 & 24576) == 0) {
                            i33 = i32 | (composerStartRestartGroup.changed(z3) ? 16384 : 8192);
                        } else {
                            i33 = i32;
                        }
                    }
                    i34 = i5 & 32768;
                    if (i34 != 0) {
                        i33 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    } else if ((i4 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        i33 |= composerStartRestartGroup.changedInstance(dm3Var) ? 131072 : 65536;
                    }
                    i35 = i5 & 65536;
                    if (i35 != 0) {
                        i33 |= 1572864;
                    } else if ((i4 & 1572864) == 0) {
                        i33 |= composerStartRestartGroup.changed(textFieldScrollerPosition) ? 1048576 : 524288;
                    }
                    if ((i6 & 306783379) == 306783378) {
                        z4 = true;
                    } else {
                        z4 = true;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i6 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        jh2Var = null;
                        if ((i3 & 1) != 0) {
                            if (i50 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i7 != 0) {
                                textStyle4 = TextStyle.Companion.getDefault();
                            } else {
                                textStyle4 = textStyle2;
                            }
                            if (i9 != 0) {
                                none = VisualTransformation.Companion.getNone();
                            }
                            if (i11 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new p12(0);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                nl3Var3 = (nl3) objRememberedValue;
                            }
                            if (i13 != 0) {
                                mutableInteractionSource2 = null;
                            }
                            if (i15 != 0) {
                                solidColor = new SolidColor(Color.Companion.m6268getUnspecified0d7_KjU(), jh2Var);
                            }
                            if (i17 != 0) {
                                z8 = true;
                            } else {
                                z8 = z;
                            }
                            if (i19 != 0) {
                                i38 = Integer.MAX_VALUE;
                            } else {
                                i38 = i;
                            }
                            if (i21 != 0) {
                                i39 = 1;
                            } else {
                                i39 = i2;
                            }
                            if ((i5 & 2048) != 0) {
                                imeOptions3 = ImeOptions.Companion.getDefault();
                                i33 &= -113;
                            } else {
                                imeOptions3 = imeOptions;
                            }
                            if (i25 != 0) {
                                keyboardActions3 = KeyboardActions.Companion.getDefault();
                            } else {
                                keyboardActions3 = keyboardActions;
                            }
                            if (i28 != 0) {
                                z9 = true;
                            } else {
                                z9 = z2;
                            }
                            if (i31 != 0) {
                                z10 = false;
                            } else {
                                z10 = z3;
                            }
                            if (i34 != 0) {
                                lambda$559628295$foundation = ComposableSingletons$CoreTextFieldKt.INSTANCE.getLambda$559628295$foundation();
                            } else {
                                lambda$559628295$foundation = dm3Var;
                            }
                            boolean z320 = z8;
                            textStyle2 = textStyle4;
                            modifier4 = modifier2;
                            z11 = z9;
                            nl3Var5 = nl3Var3;
                            z12 = z320;
                            VisualTransformation visualTransformation9 = none;
                            imeOptions4 = imeOptions3;
                            brush2 = solidColor;
                            visualTransformation3 = visualTransformation9;
                            i40 = i33;
                            if (i35 != 0) {
                                textFieldScrollerPosition3 = null;
                            } else {
                                textFieldScrollerPosition3 = textFieldScrollerPosition;
                            }
                        } else {
                            if (i50 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i7 != 0) {
                                textStyle4 = TextStyle.Companion.getDefault();
                            } else {
                                textStyle4 = textStyle2;
                            }
                            if (i9 != 0) {
                                none = VisualTransformation.Companion.getNone();
                            }
                            if (i11 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new p12(0);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                nl3Var3 = (nl3) objRememberedValue;
                            }
                            if (i13 != 0) {
                                mutableInteractionSource2 = null;
                            }
                            if (i15 != 0) {
                                solidColor = new SolidColor(Color.Companion.m6268getUnspecified0d7_KjU(), jh2Var);
                            }
                            if (i17 != 0) {
                                z8 = true;
                            } else {
                                z8 = z;
                            }
                            if (i19 != 0) {
                                i38 = Integer.MAX_VALUE;
                            } else {
                                i38 = i;
                            }
                            if (i21 != 0) {
                                i39 = 1;
                            } else {
                                i39 = i2;
                            }
                            if ((i5 & 2048) != 0) {
                                imeOptions3 = ImeOptions.Companion.getDefault();
                                i33 &= -113;
                            } else {
                                imeOptions3 = imeOptions;
                            }
                            if (i25 != 0) {
                                keyboardActions3 = KeyboardActions.Companion.getDefault();
                            } else {
                                keyboardActions3 = keyboardActions;
                            }
                            if (i28 != 0) {
                                z9 = true;
                            } else {
                                z9 = z2;
                            }
                            if (i31 != 0) {
                                z10 = false;
                            } else {
                                z10 = z3;
                            }
                            if (i34 != 0) {
                                lambda$559628295$foundation = ComposableSingletons$CoreTextFieldKt.INSTANCE.getLambda$559628295$foundation();
                            } else {
                                lambda$559628295$foundation = dm3Var;
                            }
                            boolean z321 = z8;
                            textStyle2 = textStyle4;
                            modifier4 = modifier2;
                            z11 = z9;
                            nl3Var5 = nl3Var3;
                            z12 = z321;
                            VisualTransformation visualTransformation10 = none;
                            imeOptions4 = imeOptions3;
                            brush2 = solidColor;
                            visualTransformation3 = visualTransformation10;
                            i40 = i33;
                            if (i35 != 0) {
                                textFieldScrollerPosition3 = null;
                            } else {
                                textFieldScrollerPosition3 = textFieldScrollerPosition;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        brush3 = brush2;
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(31062401, i6, i40, "androidx.compose.foundation.text.CoreTextField (CoreTextField.kt:208)");
                        }
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue2 == companion.getEmpty()) {
                            objRememberedValue2 = new FocusRequester();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        focusRequester = (FocusRequester) objRememberedValue2;
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        i41 = i6;
                        if (objRememberedValue3 == companion.getEmpty()) {
                            objRememberedValue3 = LegacyPlatformTextInputServiceAdapter_androidKt.createLegacyPlatformTextInputServiceAdapter();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        legacyPlatformTextInputServiceAdapter = (LegacyPlatformTextInputServiceAdapter) objRememberedValue3;
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue4 == companion.getEmpty()) {
                            objRememberedValue4 = new TextInputService(legacyPlatformTextInputServiceAdapter);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        textInputService = (TextInputService) objRememberedValue4;
                        density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        resolver = (FontFamily.Resolver) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalFontFamilyResolver());
                        jM3048getBackgroundColor0d7_KjU = ((TextSelectionColors) composerStartRestartGroup.consume(TextSelectionColorsKt.getLocalTextSelectionColors())).m3048getBackgroundColor0d7_KjU();
                        focusManager = (FocusManager) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalFocusManager());
                        windowInfo = (WindowInfo) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalWindowInfo());
                        textStyle5 = textStyle2;
                        softwareKeyboardController = (SoftwareKeyboardController) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalSoftwareKeyboardController());
                        z13 = z12;
                        if (i38 == 1) {
                            orientation = Orientation.Vertical;
                        } else {
                            orientation = Orientation.Vertical;
                        }
                        if (textFieldScrollerPosition3 == null) {
                            composerStartRestartGroup.startReplaceGroup(-213744626);
                            Object[] objArr3 = {orientation};
                            Saver<TextFieldScrollerPosition, Object> saver3 = TextFieldScrollerPosition.Companion.getSaver();
                            zChanged3 = composerStartRestartGroup.changed(orientation.ordinal());
                            objRememberedValue18 = composerStartRestartGroup.rememberedValue();
                            if (zChanged3) {
                                i49 = 0;
                                objRememberedValue18 = new u12(orientation, i49);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue18);
                            } else {
                                i49 = 0;
                                objRememberedValue18 = new u12(orientation, i49);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue18);
                            }
                            textFieldScrollerPosition4 = (TextFieldScrollerPosition) RememberSaveableKt.m5624rememberSaveable(objArr3, (Saver) saver3, (ll3) objRememberedValue18, composerStartRestartGroup, i49);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-213745742);
                            composerStartRestartGroup.endReplaceGroup();
                            textFieldScrollerPosition4 = textFieldScrollerPosition3;
                        }
                        if (textFieldScrollerPosition4.getOrientation() != orientation) {
                            if (orientation == Orientation.Vertical) {
                                str = "only single-line, non-wrap text fields can scroll horizontally";
                            } else {
                                str = "single-line, non-wrap text fields can only scroll horizontally";
                            }
                            throw new IllegalArgumentException("Mismatching scroller orientation; ".concat(str));
                        }
                        i42 = i41 & 14;
                        if (i42 == 4) {
                            z14 = true;
                        } else {
                            z14 = false;
                        }
                        if ((i41 & 57344) == 16384) {
                            z15 = true;
                        } else {
                            z15 = false;
                        }
                        z16 = z14 | z15;
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (z16) {
                            transformedTextFilterWithValidation = ValidatingOffsetMappingKt.filterWithValidation(visualTransformation3, textFieldValue.getAnnotatedString());
                            textRangeM8740getCompositionMzsxiRA = textFieldValue.m8740getCompositionMzsxiRA();
                            if (textRangeM8740getCompositionMzsxiRA != null) {
                                textFieldScrollerPosition5 = textFieldScrollerPosition4;
                                transformedTextM2604applyCompositionDecoration72CqOWE = TextFieldDelegate.Companion.m2604applyCompositionDecoration72CqOWE(textRangeM8740getCompositionMzsxiRA.m8495unboximpl(), transformedTextFilterWithValidation);
                                if (transformedTextM2604applyCompositionDecoration72CqOWE != null) {
                                    objRememberedValue5 = transformedTextM2604applyCompositionDecoration72CqOWE;
                                }
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            } else {
                                textFieldScrollerPosition5 = textFieldScrollerPosition4;
                            }
                            objRememberedValue5 = transformedTextFilterWithValidation;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            transformedTextFilterWithValidation = ValidatingOffsetMappingKt.filterWithValidation(visualTransformation3, textFieldValue.getAnnotatedString());
                            textRangeM8740getCompositionMzsxiRA = textFieldValue.m8740getCompositionMzsxiRA();
                            if (textRangeM8740getCompositionMzsxiRA != null) {
                                textFieldScrollerPosition5 = textFieldScrollerPosition4;
                                transformedTextM2604applyCompositionDecoration72CqOWE = TextFieldDelegate.Companion.m2604applyCompositionDecoration72CqOWE(textRangeM8740getCompositionMzsxiRA.m8495unboximpl(), transformedTextFilterWithValidation);
                                if (transformedTextM2604applyCompositionDecoration72CqOWE != null) {
                                    objRememberedValue5 = transformedTextM2604applyCompositionDecoration72CqOWE;
                                }
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            } else {
                                textFieldScrollerPosition5 = textFieldScrollerPosition4;
                            }
                            objRememberedValue5 = transformedTextFilterWithValidation;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        TransformedText transformedText3 = (TransformedText) objRememberedValue5;
                        text = transformedText3.getText();
                        offsetMapping = transformedText3.getOffsetMapping();
                        currentRecomposeScope = ComposablesKt.getCurrentRecomposeScope(composerStartRestartGroup, 0);
                        zChanged = composerStartRestartGroup.changed(softwareKeyboardController);
                        objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue6 = new LegacyTextFieldState(new TextDelegate(text, textStyle5, 0, 0, z13, 0, density, resolver, null, 300, null), currentRecomposeScope, softwareKeyboardController);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        } else {
                            objRememberedValue6 = new LegacyTextFieldState(new TextDelegate(text, textStyle5, 0, 0, z13, 0, density, resolver, null, 300, null), currentRecomposeScope, softwareKeyboardController);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        }
                        legacyTextFieldState = (LegacyTextFieldState) objRememberedValue6;
                        KeyboardActions keyboardActions6 = keyboardActions3;
                        legacyTextFieldState.m2569updatefnh65Uc(textFieldValue.getAnnotatedString(), text, textStyle5, z13, r55, resolver, nl3Var, keyboardActions6, focusManager, jM3048getBackgroundColor0d7_KjU);
                        legacyTextFieldState.getProcessor().reset(textFieldValue, legacyTextFieldState.getInputSession());
                        objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue7 == companion.getEmpty()) {
                            objRememberedValue7 = new UndoManager(0, 1, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                        }
                        undoManager = (UndoManager) objRememberedValue7;
                        UndoManager.snapshotIfNeeded$default(undoManager, textFieldValue, 0L, 2, null);
                        objRememberedValue8 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue8 == companion.getEmpty()) {
                            objRememberedValue8 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
                        }
                        y22Var = (y22) objRememberedValue8;
                        objRememberedValue9 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue9 == companion.getEmpty()) {
                            objRememberedValue9 = BringIntoViewRequesterKt.BringIntoViewRequester();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue9);
                        }
                        bringIntoViewRequester = (BringIntoViewRequester) objRememberedValue9;
                        objRememberedValue10 = composerStartRestartGroup.rememberedValue();
                        MutableInteractionSource mutableInteractionSource5 = mutableInteractionSource2;
                        if (objRememberedValue10 == companion.getEmpty()) {
                            objRememberedValue10 = new TextFieldSelectionManager(undoManager);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue10);
                        }
                        textFieldSelectionManager = (TextFieldSelectionManager) objRememberedValue10;
                        textFieldSelectionManager.setOffsetMapping$foundation(offsetMapping);
                        textFieldSelectionManager.setVisualTransformation$foundation(visualTransformation3);
                        textFieldSelectionManager.setOnValueChange$foundation(legacyTextFieldState.getOnValueChange());
                        textFieldSelectionManager.setState$foundation(legacyTextFieldState);
                        textFieldSelectionManager.setValue$foundation(textFieldValue);
                        textFieldSelectionManager.setClipboard$foundation((Clipboard) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalClipboard()));
                        textFieldSelectionManager.setCoroutineScope$foundation(y22Var);
                        textFieldSelectionManager.setTextToolbar((TextToolbar) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalTextToolbar()));
                        textFieldSelectionManager.setHapticFeedBack((HapticFeedback) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalHapticFeedback()));
                        textFieldSelectionManager.setFocusRequester(focusRequester);
                        boolean z3114 = !z10;
                        textFieldSelectionManager.setEditable(z3114);
                        textFieldSelectionManager.setEnabled(z11);
                        if (ComposeFoundationFlags.isSmartSelectionEnabled) {
                            composerStartRestartGroup.startReplaceGroup(1966756105);
                            textFieldSelectionManager.setPlatformSelectionBehaviors$foundation(PlatformSelectionBehaviors_androidKt.rememberPlatformSelectionBehaviors(SelectedTextType.EditableText, textStyle5.getLocaleList(), composerStartRestartGroup, 6));
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1966902177);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        legacyTextFieldState.getHasFocus();
                        companion2 = Modifier.Companion;
                        boolean zChangedInstance17 = composerStartRestartGroup.changedInstance(legacyTextFieldState);
                        i43 = i40 & 7168;
                        i44 = i40;
                        if (i43 == 2048) {
                            z17 = true;
                        } else {
                            z17 = false;
                        }
                        boolean z3115 = z17 | zChangedInstance17;
                        if ((i44 & 57344) == 16384) {
                            z18 = true;
                        } else {
                            z18 = false;
                        }
                        boolean zChangedInstance18 = z3115 | z18 | composerStartRestartGroup.changedInstance(textInputService);
                        if (i42 == 4) {
                            z19 = true;
                        } else {
                            z19 = false;
                        }
                        boolean z3116 = zChangedInstance18 | z19;
                        i45 = (i44 & 112) ^ 48;
                        if (i45 > 32) {
                            textInputService2 = textInputService;
                            if ((i44 & 48) != 32) {
                                z20 = true;
                            } else {
                                z20 = false;
                            }
                        } else {
                            textInputService2 = textInputService;
                            if ((i44 & 48) != 32) {
                                z20 = true;
                            } else {
                                z20 = false;
                            }
                        }
                        zChangedInstance = z3116 | z20 | composerStartRestartGroup.changedInstance(offsetMapping) | composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(bringIntoViewRequester) | composerStartRestartGroup.changedInstance(textFieldSelectionManager);
                        objRememberedValue11 = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance) {
                            offsetMapping2 = offsetMapping;
                            final ImeOptions imeOptions111 = imeOptions4;
                            final boolean z3117 = z11;
                            final boolean z3118 = z10;
                            objRememberedValue11 = new nl3() { // from class: v12
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z3117, z3118, textInputService2, textFieldValue, imeOptions111, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                                }
                            };
                            legacyTextFieldState2 = legacyTextFieldState;
                            z21 = z3117;
                            textFieldValue2 = textFieldValue;
                            imeOptions5 = imeOptions111;
                            textFieldSelectionManager2 = textFieldSelectionManager;
                            y22Var2 = y22Var;
                            bringIntoViewRequester2 = bringIntoViewRequester;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                        } else {
                            offsetMapping2 = offsetMapping;
                            final ImeOptions imeOptions112 = imeOptions4;
                            final boolean z3119 = z11;
                            final boolean z31110 = z10;
                            objRememberedValue11 = new nl3() { // from class: v12
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z3119, z31110, textInputService2, textFieldValue, imeOptions112, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                                }
                            };
                            legacyTextFieldState2 = legacyTextFieldState;
                            z21 = z3119;
                            textFieldValue2 = textFieldValue;
                            imeOptions5 = imeOptions112;
                            textFieldSelectionManager2 = textFieldSelectionManager;
                            y22Var2 = y22Var;
                            bringIntoViewRequester2 = bringIntoViewRequester;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                        }
                        final BringIntoViewRequester bringIntoViewRequester6 = bringIntoViewRequester2;
                        Modifier modifierTextFieldFocusModifier4 = TextFieldGestureModifiersKt.textFieldFocusModifier(companion2, z21, focusRequester, mutableInteractionSource5, (nl3) objRememberedValue11);
                        if (z21) {
                            z22 = false;
                        } else {
                            z22 = false;
                        }
                        stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Boolean.valueOf(z22), composerStartRestartGroup, 0);
                        j59 j59Var4 = j59.a;
                        boolean zChanged11 = composerStartRestartGroup.changed(stateRememberUpdatedState) | composerStartRestartGroup.changedInstance(legacyTextFieldState2) | composerStartRestartGroup.changedInstance(textInputService2) | composerStartRestartGroup.changedInstance(textFieldSelectionManager2);
                        if (i45 > 32) {
                            imeOptions6 = imeOptions5;
                            if ((i44 & 48) != 32) {
                                z23 = true;
                            } else {
                                z23 = false;
                            }
                        } else {
                            imeOptions6 = imeOptions5;
                            if ((i44 & 48) != 32) {
                                z23 = true;
                            } else {
                                z23 = false;
                            }
                        }
                        z24 = zChanged11 | z23;
                        objRememberedValue12 = composerStartRestartGroup.rememberedValue();
                        if (z24) {
                            ImeOptions imeOptions113 = imeOptions6;
                            TextInputService textInputService10 = textInputService2;
                            TextFieldSelectionManager textFieldSelectionManager14 = textFieldSelectionManager2;
                            LegacyTextFieldState legacyTextFieldState13 = legacyTextFieldState2;
                            objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState13, stateRememberUpdatedState, textInputService10, textFieldSelectionManager14, imeOptions113, null);
                            legacyTextFieldState3 = legacyTextFieldState13;
                            textFieldSelectionManager3 = textFieldSelectionManager14;
                            imeOptions7 = imeOptions113;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                        } else {
                            ImeOptions imeOptions114 = imeOptions6;
                            TextInputService textInputService11 = textInputService2;
                            TextFieldSelectionManager textFieldSelectionManager15 = textFieldSelectionManager2;
                            LegacyTextFieldState legacyTextFieldState14 = legacyTextFieldState2;
                            objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState14, stateRememberUpdatedState, textInputService11, textFieldSelectionManager15, imeOptions114, null);
                            legacyTextFieldState3 = legacyTextFieldState14;
                            textFieldSelectionManager3 = textFieldSelectionManager15;
                            imeOptions7 = imeOptions114;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                        }
                        imeOptions8 = imeOptions7;
                        EffectsKt.LaunchedEffect(j59Var4, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue12, composerStartRestartGroup, 6);
                        int i59 = i44 >> 3;
                        z25 = z21;
                        legacyTextFieldState4 = legacyTextFieldState3;
                        textFieldSelectionManager4 = textFieldSelectionManager3;
                        Modifier modifierTextFieldPointer5 = TextFieldPointerModifier_androidKt.textFieldPointer(companion2, textFieldSelectionManager4, z25, mutableInteractionSource5, legacyTextFieldState4, focusRequester, z10, offsetMapping2, composerStartRestartGroup, (i59 & 896) | 196614 | ((i41 >> 9) & 7168) | ((i44 << 6) & 3670016));
                        offsetMapping3 = offsetMapping2;
                        final Modifier modifierTextFieldDraw5 = CoreTextField_androidKt.textFieldDraw(companion2, legacyTextFieldState4, textFieldValue2, offsetMapping3);
                        boolean zChangedInstance19 = composerStartRestartGroup.changedInstance(legacyTextFieldState4);
                        if (i43 == 2048) {
                            z26 = true;
                        } else {
                            z26 = false;
                        }
                        boolean zChanged12 = zChangedInstance19 | z26 | composerStartRestartGroup.changed(windowInfo) | composerStartRestartGroup.changedInstance(textFieldSelectionManager4);
                        if (i42 == 4) {
                            z27 = true;
                        } else {
                            z27 = false;
                        }
                        zChangedInstance2 = zChanged12 | z27 | composerStartRestartGroup.changedInstance(offsetMapping3);
                        objRememberedValue13 = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance2) {
                            objRememberedValue13 = new nl3() { // from class: w12
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                                }
                            };
                            textFieldSelectionManager5 = textFieldSelectionManager4;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                        } else {
                            objRememberedValue13 = new nl3() { // from class: w12
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                                }
                            };
                            textFieldSelectionManager5 = textFieldSelectionManager4;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                        }
                        final Modifier modifierOnGloballyPositioned5 = OnGloballyPositionedModifierKt.onGloballyPositioned(companion2, (nl3) objRememberedValue13);
                        textFieldSelectionManager6 = textFieldSelectionManager5;
                        CoreTextFieldSemanticsModifier coreTextFieldSemanticsModifier5 = new CoreTextFieldSemanticsModifier(transformedText3, textFieldValue, legacyTextFieldState4, z10, z25, visualTransformation3 instanceof PasswordVisualTransformation, offsetMapping3, textFieldSelectionManager6, imeOptions8, focusRequester);
                        final VisualTransformation visualTransformation11 = visualTransformation3;
                        if (z25 != 0) {
                            z28 = false;
                        } else {
                            z28 = false;
                        }
                        final Modifier modifierTextFieldCursor5 = CoreTextField_androidKt.textFieldCursor(companion2, legacyTextFieldState4, textFieldValue, offsetMapping3, brush3, z28);
                        zChangedInstance3 = composerStartRestartGroup.changedInstance(textFieldSelectionManager6);
                        objRememberedValue14 = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance3) {
                            i46 = 0;
                            objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                        } else {
                            i46 = 0;
                            objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                        }
                        EffectsKt.DisposableEffect(textFieldSelectionManager6, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue14, composerStartRestartGroup, i46);
                        boolean zChangedInstance110 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changedInstance(textInputService2);
                        if (i42 == 4) {
                            z29 = true;
                        } else {
                            z29 = false;
                        }
                        z30 = z29 | zChangedInstance110 | ((i45 <= 32 && composerStartRestartGroup.changed(imeOptions8)) || (i44 & 48) == 32);
                        objRememberedValue15 = composerStartRestartGroup.rememberedValue();
                        if (z30) {
                            objRememberedValue15 = new nl3() { // from class: h12
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                        } else {
                            objRememberedValue15 = new nl3() { // from class: h12
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                        }
                        EffectsKt.DisposableEffect(imeOptions8, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue15, composerStartRestartGroup, i59 & 14);
                        nl3<TextFieldValue, j59> onValueChange5 = legacyTextFieldState4.getOnValueChange();
                        i47 = i38;
                        if (i47 == 1) {
                            z31 = true;
                        } else {
                            z31 = false;
                        }
                        Modifier modifierM2614textFieldKeyInput2WJ9YEU5 = TextFieldKeyInputKt.m2614textFieldKeyInput2WJ9YEU(companion2, legacyTextFieldState4, textFieldSelectionManager6, textFieldValue, onValueChange5, z3114, z31, offsetMapping3, undoManager, imeOptions8.m8688getImeActioneUduSuo());
                        iM8689getKeyboardTypePjHm6EE = imeOptions8.m8689getKeyboardTypePjHm6EE();
                        companion3 = KeyboardType.Companion;
                        if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion3.m8731getPasswordPjHm6EE())) {
                            z32 = false;
                        } else {
                            z32 = false;
                        }
                        boolean zCoreTextField$lambda$18 = CoreTextField$lambda$14(stateRememberUpdatedState);
                        zChanged2 = composerStartRestartGroup.changed(z32) | composerStartRestartGroup.changedInstance(legacyPlatformTextInputServiceAdapter);
                        objRememberedValue16 = composerStartRestartGroup.rememberedValue();
                        if (zChanged2) {
                            objRememberedValue16 = new ll3() { // from class: i12
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                        } else {
                            objRememberedValue16 = new ll3() { // from class: i12
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                        }
                        Modifier modifierStylusHandwriting5 = StylusHandwritingKt.stylusHandwriting(companion2, zCoreTextField$lambda$18, z32, (ll3) objRememberedValue16);
                        y22 y22Var7 = y22Var2;
                        brushM2447resolveAutofillHighlightWkMShQ = AutofillHighlightKt.m2447resolveAutofillHighlightWkMShQ((Brush) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightBrush()), ((Color) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightColor())).m6242unboximpl(), AutofillHighlight_androidKt.autofillHighlightColor());
                        zChangedInstance4 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changed(brushM2447resolveAutofillHighlightWkMShQ);
                        objRememberedValue17 = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance4) {
                            i48 = 0;
                            objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                        } else {
                            i48 = 0;
                            objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                        }
                        Modifier modifierDrawWithContent5 = DrawModifierKt.drawWithContent(companion2, (nl3) objRememberedValue17);
                        OverscrollEffect overscrollEffectRememberTextFieldOverscrollEffect5 = TextFieldScroll_androidKt.rememberTextFieldOverscrollEffect(composerStartRestartGroup, i48);
                        Modifier modifier13 = modifier4;
                        Modifier modifierThen5 = previewKeyEventToDeselectOnBack(TextFieldFocusModifier_androidKt.interceptDPadAndMoveFocus(LegacyAdaptingPlatformTextInputModifierNodeKt.legacyTextInputAdapter(modifier13.then(modifierDrawWithContent5), legacyPlatformTextInputServiceAdapter, legacyTextFieldState4, textFieldSelectionManager6).then(modifierStylusHandwriting5).then(modifierTextFieldFocusModifier4), legacyTextFieldState4, focusManager), legacyTextFieldState4, textFieldSelectionManager6).then(modifierM2614textFieldKeyInput2WJ9YEU5);
                        final TextFieldScrollerPosition textFieldScrollerPosition10 = textFieldScrollerPosition5;
                        Modifier modifierAddContextMenuComponents5 = addContextMenuComponents(OnGloballyPositionedModifierKt.onGloballyPositioned(TextFieldScrollKt.textFieldScrollable(modifierThen5, textFieldScrollerPosition10, mutableInteractionSource5, z25, overscrollEffectRememberTextFieldOverscrollEffect5).then(modifierTextFieldPointer5).then(coreTextFieldSemanticsModifier5), new nl3() { // from class: r12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$21(legacyTextFieldState4, (LayoutCoordinates) obj);
                            }
                        }), textFieldSelectionManager6, y22Var7);
                        if (z25) {
                            i48 = 1;
                        }
                        if (i48 != 0) {
                            modifierTextFieldMagnifier = TextFieldSelectionManager_androidKt.textFieldMagnifier(companion2, textFieldSelectionManager6);
                        } else {
                            modifierTextFieldMagnifier = companion2;
                        }
                        final Modifier modifier14 = modifierTextFieldMagnifier;
                        final boolean z31111 = z10;
                        final dm3 dm3Var7 = lambda$559628295$foundation;
                        final int i510 = i39;
                        final boolean z44 = i48;
                        CoreTextFieldRootBox(modifierAddContextMenuComponents5, textFieldSelectionManager6, ComposableLambdaKt.rememberComposableLambda(-814563849, true, new bm3() { // from class: s12
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return CoreTextFieldKt.CoreTextField$lambda$22(dm3Var7, legacyTextFieldState4, textStyle5, i510, i47, textFieldScrollerPosition10, textFieldValue, visualTransformation11, modifierTextFieldCursor5, modifierTextFieldDraw5, modifierOnGloballyPositioned5, modifier14, bringIntoViewRequester6, textFieldSelectionManager6, z44, z31111, nl3Var5, offsetMapping3, density, (Composer) obj, iIntValue);
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, RendererCapabilities.DECODER_SUPPORT_MASK);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        dm3Var2 = dm3Var7;
                        i37 = i510;
                        composer2 = composerStartRestartGroup;
                        nl3Var4 = nl3Var5;
                        z7 = z31111;
                        textFieldScrollerPosition2 = textFieldScrollerPosition3;
                        imeOptions2 = imeOptions8;
                        z6 = z25;
                        mutableInteractionSource2 = mutableInteractionSource5;
                        z5 = z13;
                        keyboardActions2 = keyboardActions6;
                        modifier3 = modifier13;
                        i36 = i47;
                        visualTransformation2 = visualTransformation11;
                        solidColor = brush3;
                        textStyle3 = textStyle5;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        z5 = z;
                        imeOptions2 = imeOptions;
                        keyboardActions2 = keyboardActions;
                        dm3Var2 = dm3Var;
                        textFieldScrollerPosition2 = textFieldScrollerPosition;
                        composer2 = composerStartRestartGroup;
                        textStyle3 = textStyle2;
                        nl3Var4 = nl3Var3;
                        visualTransformation2 = none;
                        modifier3 = modifier2;
                        i36 = i;
                        i37 = i2;
                        z6 = z2;
                        z7 = z3;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: t12
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return CoreTextFieldKt.CoreTextField$lambda$23(textFieldValue, nl3Var, modifier3, textStyle3, visualTransformation2, nl3Var4, mutableInteractionSource2, solidColor, z5, i36, i37, imeOptions2, keyboardActions2, z6, z7, dm3Var2, textFieldScrollerPosition2, i3, i4, i5, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i6 |= 24576;
                none = visualTransformation;
                i11 = i5 & 32;
                if (i11 != 0) {
                    i6 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    nl3Var3 = nl3Var2;
                } else {
                    nl3Var3 = nl3Var2;
                    if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var3)) {
                            i12 = 131072;
                        } else {
                            i12 = 65536;
                        }
                        i6 |= i12;
                    }
                }
                i13 = i5 & 64;
                if (i13 != 0) {
                    i6 |= 1572864;
                    mutableInteractionSource2 = mutableInteractionSource;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                    if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource2)) {
                            i14 = 1048576;
                        } else {
                            i14 = 524288;
                        }
                        i6 |= i14;
                    }
                }
                i15 = i5 & 128;
                if (i15 != 0) {
                    i6 |= 12582912;
                    solidColor = brush;
                } else {
                    solidColor = brush;
                    if ((i3 & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(solidColor)) {
                            i16 = 8388608;
                        } else {
                            i16 = 4194304;
                        }
                        i6 |= i16;
                    }
                }
                i17 = i5 & 256;
                if (i17 != 0) {
                    i6 |= 100663296;
                } else if ((i3 & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(z)) {
                        i18 = 67108864;
                    } else {
                        i18 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i6 |= i18;
                }
                i19 = i5 & 512;
                if (i19 != 0) {
                    if ((i3 & 805306368) == 0) {
                        if (composerStartRestartGroup.changed(i)) {
                            i20 = 536870912;
                        } else {
                            i20 = 268435456;
                        }
                        i6 |= i20;
                    }
                    i21 = i5 & 1024;
                    if (i21 != 0) {
                        i22 = i4 | 6;
                    } else if ((i4 & 6) == 0) {
                        if (composerStartRestartGroup.changed(i2)) {
                            i23 = 4;
                        } else {
                            i23 = 2;
                        }
                        i22 = i4 | i23;
                    } else {
                        i22 = i4;
                    }
                    if ((i4 & 48) != 0) {
                        i22 |= ((i5 & 2048) == 0 || !composerStartRestartGroup.changed(imeOptions)) ? 16 : 32;
                    }
                    i24 = i22;
                    i25 = i5 & 4096;
                    if (i25 != 0) {
                        i26 = i24 | RendererCapabilities.DECODER_SUPPORT_MASK;
                    } else if ((i4 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                        if (composerStartRestartGroup.changed(keyboardActions)) {
                            i27 = 256;
                        } else {
                            i27 = 128;
                        }
                        i26 = i24 | i27;
                    } else {
                        i26 = i24;
                    }
                    i28 = i5 & 8192;
                    if (i28 != 0) {
                        i30 = i26 | 3072;
                    } else {
                        i29 = i26;
                        if ((i4 & 3072) == 0) {
                            i30 = i29 | (composerStartRestartGroup.changed(z2) ? 2048 : 1024);
                        } else {
                            i30 = i29;
                        }
                    }
                    i31 = i5 & 16384;
                    if (i31 != 0) {
                        i33 = i30 | 24576;
                    } else {
                        i32 = i30;
                        if ((i4 & 24576) == 0) {
                            i33 = i32 | (composerStartRestartGroup.changed(z3) ? 16384 : 8192);
                        } else {
                            i33 = i32;
                        }
                    }
                    i34 = i5 & 32768;
                    if (i34 != 0) {
                        i33 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    } else if ((i4 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        i33 |= composerStartRestartGroup.changedInstance(dm3Var) ? 131072 : 65536;
                    }
                    i35 = i5 & 65536;
                    if (i35 != 0) {
                        i33 |= 1572864;
                    } else if ((i4 & 1572864) == 0) {
                        i33 |= composerStartRestartGroup.changed(textFieldScrollerPosition) ? 1048576 : 524288;
                    }
                    if ((i6 & 306783379) == 306783378) {
                        z4 = true;
                    } else {
                        z4 = true;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i6 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        jh2Var = null;
                        if ((i3 & 1) != 0) {
                            if (i50 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i7 != 0) {
                                textStyle4 = TextStyle.Companion.getDefault();
                            } else {
                                textStyle4 = textStyle2;
                            }
                            if (i9 != 0) {
                                none = VisualTransformation.Companion.getNone();
                            }
                            if (i11 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new p12(0);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                nl3Var3 = (nl3) objRememberedValue;
                            }
                            if (i13 != 0) {
                                mutableInteractionSource2 = null;
                            }
                            if (i15 != 0) {
                                solidColor = new SolidColor(Color.Companion.m6268getUnspecified0d7_KjU(), jh2Var);
                            }
                            if (i17 != 0) {
                                z8 = true;
                            } else {
                                z8 = z;
                            }
                            if (i19 != 0) {
                                i38 = Integer.MAX_VALUE;
                            } else {
                                i38 = i;
                            }
                            if (i21 != 0) {
                                i39 = 1;
                            } else {
                                i39 = i2;
                            }
                            if ((i5 & 2048) != 0) {
                                imeOptions3 = ImeOptions.Companion.getDefault();
                                i33 &= -113;
                            } else {
                                imeOptions3 = imeOptions;
                            }
                            if (i25 != 0) {
                                keyboardActions3 = KeyboardActions.Companion.getDefault();
                            } else {
                                keyboardActions3 = keyboardActions;
                            }
                            if (i28 != 0) {
                                z9 = true;
                            } else {
                                z9 = z2;
                            }
                            if (i31 != 0) {
                                z10 = false;
                            } else {
                                z10 = z3;
                            }
                            if (i34 != 0) {
                                lambda$559628295$foundation = ComposableSingletons$CoreTextFieldKt.INSTANCE.getLambda$559628295$foundation();
                            } else {
                                lambda$559628295$foundation = dm3Var;
                            }
                            boolean z322 = z8;
                            textStyle2 = textStyle4;
                            modifier4 = modifier2;
                            z11 = z9;
                            nl3Var5 = nl3Var3;
                            z12 = z322;
                            VisualTransformation visualTransformation12 = none;
                            imeOptions4 = imeOptions3;
                            brush2 = solidColor;
                            visualTransformation3 = visualTransformation12;
                            i40 = i33;
                            if (i35 != 0) {
                                textFieldScrollerPosition3 = null;
                            } else {
                                textFieldScrollerPosition3 = textFieldScrollerPosition;
                            }
                        } else {
                            if (i50 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i7 != 0) {
                                textStyle4 = TextStyle.Companion.getDefault();
                            } else {
                                textStyle4 = textStyle2;
                            }
                            if (i9 != 0) {
                                none = VisualTransformation.Companion.getNone();
                            }
                            if (i11 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new p12(0);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                nl3Var3 = (nl3) objRememberedValue;
                            }
                            if (i13 != 0) {
                                mutableInteractionSource2 = null;
                            }
                            if (i15 != 0) {
                                solidColor = new SolidColor(Color.Companion.m6268getUnspecified0d7_KjU(), jh2Var);
                            }
                            if (i17 != 0) {
                                z8 = true;
                            } else {
                                z8 = z;
                            }
                            if (i19 != 0) {
                                i38 = Integer.MAX_VALUE;
                            } else {
                                i38 = i;
                            }
                            if (i21 != 0) {
                                i39 = 1;
                            } else {
                                i39 = i2;
                            }
                            if ((i5 & 2048) != 0) {
                                imeOptions3 = ImeOptions.Companion.getDefault();
                                i33 &= -113;
                            } else {
                                imeOptions3 = imeOptions;
                            }
                            if (i25 != 0) {
                                keyboardActions3 = KeyboardActions.Companion.getDefault();
                            } else {
                                keyboardActions3 = keyboardActions;
                            }
                            if (i28 != 0) {
                                z9 = true;
                            } else {
                                z9 = z2;
                            }
                            if (i31 != 0) {
                                z10 = false;
                            } else {
                                z10 = z3;
                            }
                            if (i34 != 0) {
                                lambda$559628295$foundation = ComposableSingletons$CoreTextFieldKt.INSTANCE.getLambda$559628295$foundation();
                            } else {
                                lambda$559628295$foundation = dm3Var;
                            }
                            boolean z323 = z8;
                            textStyle2 = textStyle4;
                            modifier4 = modifier2;
                            z11 = z9;
                            nl3Var5 = nl3Var3;
                            z12 = z323;
                            VisualTransformation visualTransformation13 = none;
                            imeOptions4 = imeOptions3;
                            brush2 = solidColor;
                            visualTransformation3 = visualTransformation13;
                            i40 = i33;
                            if (i35 != 0) {
                                textFieldScrollerPosition3 = null;
                            } else {
                                textFieldScrollerPosition3 = textFieldScrollerPosition;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        brush3 = brush2;
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(31062401, i6, i40, "androidx.compose.foundation.text.CoreTextField (CoreTextField.kt:208)");
                        }
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue2 == companion.getEmpty()) {
                            objRememberedValue2 = new FocusRequester();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        focusRequester = (FocusRequester) objRememberedValue2;
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        i41 = i6;
                        if (objRememberedValue3 == companion.getEmpty()) {
                            objRememberedValue3 = LegacyPlatformTextInputServiceAdapter_androidKt.createLegacyPlatformTextInputServiceAdapter();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        legacyPlatformTextInputServiceAdapter = (LegacyPlatformTextInputServiceAdapter) objRememberedValue3;
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue4 == companion.getEmpty()) {
                            objRememberedValue4 = new TextInputService(legacyPlatformTextInputServiceAdapter);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        textInputService = (TextInputService) objRememberedValue4;
                        density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        resolver = (FontFamily.Resolver) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalFontFamilyResolver());
                        jM3048getBackgroundColor0d7_KjU = ((TextSelectionColors) composerStartRestartGroup.consume(TextSelectionColorsKt.getLocalTextSelectionColors())).m3048getBackgroundColor0d7_KjU();
                        focusManager = (FocusManager) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalFocusManager());
                        windowInfo = (WindowInfo) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalWindowInfo());
                        textStyle5 = textStyle2;
                        softwareKeyboardController = (SoftwareKeyboardController) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalSoftwareKeyboardController());
                        z13 = z12;
                        if (i38 == 1) {
                            orientation = Orientation.Vertical;
                        } else {
                            orientation = Orientation.Vertical;
                        }
                        if (textFieldScrollerPosition3 == null) {
                            composerStartRestartGroup.startReplaceGroup(-213744626);
                            Object[] objArr4 = {orientation};
                            Saver<TextFieldScrollerPosition, Object> saver4 = TextFieldScrollerPosition.Companion.getSaver();
                            zChanged3 = composerStartRestartGroup.changed(orientation.ordinal());
                            objRememberedValue18 = composerStartRestartGroup.rememberedValue();
                            if (zChanged3) {
                                i49 = 0;
                                objRememberedValue18 = new u12(orientation, i49);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue18);
                            } else {
                                i49 = 0;
                                objRememberedValue18 = new u12(orientation, i49);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue18);
                            }
                            textFieldScrollerPosition4 = (TextFieldScrollerPosition) RememberSaveableKt.m5624rememberSaveable(objArr4, (Saver) saver4, (ll3) objRememberedValue18, composerStartRestartGroup, i49);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-213745742);
                            composerStartRestartGroup.endReplaceGroup();
                            textFieldScrollerPosition4 = textFieldScrollerPosition3;
                        }
                        if (textFieldScrollerPosition4.getOrientation() != orientation) {
                            if (orientation == Orientation.Vertical) {
                                str = "only single-line, non-wrap text fields can scroll horizontally";
                            } else {
                                str = "single-line, non-wrap text fields can only scroll horizontally";
                            }
                            throw new IllegalArgumentException("Mismatching scroller orientation; ".concat(str));
                        }
                        i42 = i41 & 14;
                        if (i42 == 4) {
                            z14 = true;
                        } else {
                            z14 = false;
                        }
                        if ((i41 & 57344) == 16384) {
                            z15 = true;
                        } else {
                            z15 = false;
                        }
                        z16 = z14 | z15;
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (z16) {
                            transformedTextFilterWithValidation = ValidatingOffsetMappingKt.filterWithValidation(visualTransformation3, textFieldValue.getAnnotatedString());
                            textRangeM8740getCompositionMzsxiRA = textFieldValue.m8740getCompositionMzsxiRA();
                            if (textRangeM8740getCompositionMzsxiRA != null) {
                                textFieldScrollerPosition5 = textFieldScrollerPosition4;
                                transformedTextM2604applyCompositionDecoration72CqOWE = TextFieldDelegate.Companion.m2604applyCompositionDecoration72CqOWE(textRangeM8740getCompositionMzsxiRA.m8495unboximpl(), transformedTextFilterWithValidation);
                                if (transformedTextM2604applyCompositionDecoration72CqOWE != null) {
                                    objRememberedValue5 = transformedTextM2604applyCompositionDecoration72CqOWE;
                                }
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            } else {
                                textFieldScrollerPosition5 = textFieldScrollerPosition4;
                            }
                            objRememberedValue5 = transformedTextFilterWithValidation;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            transformedTextFilterWithValidation = ValidatingOffsetMappingKt.filterWithValidation(visualTransformation3, textFieldValue.getAnnotatedString());
                            textRangeM8740getCompositionMzsxiRA = textFieldValue.m8740getCompositionMzsxiRA();
                            if (textRangeM8740getCompositionMzsxiRA != null) {
                                textFieldScrollerPosition5 = textFieldScrollerPosition4;
                                transformedTextM2604applyCompositionDecoration72CqOWE = TextFieldDelegate.Companion.m2604applyCompositionDecoration72CqOWE(textRangeM8740getCompositionMzsxiRA.m8495unboximpl(), transformedTextFilterWithValidation);
                                if (transformedTextM2604applyCompositionDecoration72CqOWE != null) {
                                    objRememberedValue5 = transformedTextM2604applyCompositionDecoration72CqOWE;
                                }
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            } else {
                                textFieldScrollerPosition5 = textFieldScrollerPosition4;
                            }
                            objRememberedValue5 = transformedTextFilterWithValidation;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        TransformedText transformedText4 = (TransformedText) objRememberedValue5;
                        text = transformedText4.getText();
                        offsetMapping = transformedText4.getOffsetMapping();
                        currentRecomposeScope = ComposablesKt.getCurrentRecomposeScope(composerStartRestartGroup, 0);
                        zChanged = composerStartRestartGroup.changed(softwareKeyboardController);
                        objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue6 = new LegacyTextFieldState(new TextDelegate(text, textStyle5, 0, 0, z13, 0, density, resolver, null, 300, null), currentRecomposeScope, softwareKeyboardController);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        } else {
                            objRememberedValue6 = new LegacyTextFieldState(new TextDelegate(text, textStyle5, 0, 0, z13, 0, density, resolver, null, 300, null), currentRecomposeScope, softwareKeyboardController);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        }
                        legacyTextFieldState = (LegacyTextFieldState) objRememberedValue6;
                        KeyboardActions keyboardActions7 = keyboardActions3;
                        legacyTextFieldState.m2569updatefnh65Uc(textFieldValue.getAnnotatedString(), text, textStyle5, z13, r55, resolver, nl3Var, keyboardActions7, focusManager, jM3048getBackgroundColor0d7_KjU);
                        legacyTextFieldState.getProcessor().reset(textFieldValue, legacyTextFieldState.getInputSession());
                        objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue7 == companion.getEmpty()) {
                            objRememberedValue7 = new UndoManager(0, 1, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                        }
                        undoManager = (UndoManager) objRememberedValue7;
                        UndoManager.snapshotIfNeeded$default(undoManager, textFieldValue, 0L, 2, null);
                        objRememberedValue8 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue8 == companion.getEmpty()) {
                            objRememberedValue8 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
                        }
                        y22Var = (y22) objRememberedValue8;
                        objRememberedValue9 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue9 == companion.getEmpty()) {
                            objRememberedValue9 = BringIntoViewRequesterKt.BringIntoViewRequester();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue9);
                        }
                        bringIntoViewRequester = (BringIntoViewRequester) objRememberedValue9;
                        objRememberedValue10 = composerStartRestartGroup.rememberedValue();
                        MutableInteractionSource mutableInteractionSource6 = mutableInteractionSource2;
                        if (objRememberedValue10 == companion.getEmpty()) {
                            objRememberedValue10 = new TextFieldSelectionManager(undoManager);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue10);
                        }
                        textFieldSelectionManager = (TextFieldSelectionManager) objRememberedValue10;
                        textFieldSelectionManager.setOffsetMapping$foundation(offsetMapping);
                        textFieldSelectionManager.setVisualTransformation$foundation(visualTransformation3);
                        textFieldSelectionManager.setOnValueChange$foundation(legacyTextFieldState.getOnValueChange());
                        textFieldSelectionManager.setState$foundation(legacyTextFieldState);
                        textFieldSelectionManager.setValue$foundation(textFieldValue);
                        textFieldSelectionManager.setClipboard$foundation((Clipboard) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalClipboard()));
                        textFieldSelectionManager.setCoroutineScope$foundation(y22Var);
                        textFieldSelectionManager.setTextToolbar((TextToolbar) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalTextToolbar()));
                        textFieldSelectionManager.setHapticFeedBack((HapticFeedback) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalHapticFeedback()));
                        textFieldSelectionManager.setFocusRequester(focusRequester);
                        boolean z31112 = !z10;
                        textFieldSelectionManager.setEditable(z31112);
                        textFieldSelectionManager.setEnabled(z11);
                        if (ComposeFoundationFlags.isSmartSelectionEnabled) {
                            composerStartRestartGroup.startReplaceGroup(1966756105);
                            textFieldSelectionManager.setPlatformSelectionBehaviors$foundation(PlatformSelectionBehaviors_androidKt.rememberPlatformSelectionBehaviors(SelectedTextType.EditableText, textStyle5.getLocaleList(), composerStartRestartGroup, 6));
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1966902177);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        legacyTextFieldState.getHasFocus();
                        companion2 = Modifier.Companion;
                        boolean zChangedInstance111 = composerStartRestartGroup.changedInstance(legacyTextFieldState);
                        i43 = i40 & 7168;
                        i44 = i40;
                        if (i43 == 2048) {
                            z17 = true;
                        } else {
                            z17 = false;
                        }
                        boolean z31113 = z17 | zChangedInstance111;
                        if ((i44 & 57344) == 16384) {
                            z18 = true;
                        } else {
                            z18 = false;
                        }
                        boolean zChangedInstance112 = z31113 | z18 | composerStartRestartGroup.changedInstance(textInputService);
                        if (i42 == 4) {
                            z19 = true;
                        } else {
                            z19 = false;
                        }
                        boolean z31114 = zChangedInstance112 | z19;
                        i45 = (i44 & 112) ^ 48;
                        if (i45 > 32) {
                            textInputService2 = textInputService;
                            if ((i44 & 48) != 32) {
                                z20 = true;
                            } else {
                                z20 = false;
                            }
                        } else {
                            textInputService2 = textInputService;
                            if ((i44 & 48) != 32) {
                                z20 = true;
                            } else {
                                z20 = false;
                            }
                        }
                        zChangedInstance = z31114 | z20 | composerStartRestartGroup.changedInstance(offsetMapping) | composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(bringIntoViewRequester) | composerStartRestartGroup.changedInstance(textFieldSelectionManager);
                        objRememberedValue11 = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance) {
                            offsetMapping2 = offsetMapping;
                            final ImeOptions imeOptions115 = imeOptions4;
                            final boolean z31115 = z11;
                            final boolean z31116 = z10;
                            objRememberedValue11 = new nl3() { // from class: v12
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z31115, z31116, textInputService2, textFieldValue, imeOptions115, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                                }
                            };
                            legacyTextFieldState2 = legacyTextFieldState;
                            z21 = z31115;
                            textFieldValue2 = textFieldValue;
                            imeOptions5 = imeOptions115;
                            textFieldSelectionManager2 = textFieldSelectionManager;
                            y22Var2 = y22Var;
                            bringIntoViewRequester2 = bringIntoViewRequester;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                        } else {
                            offsetMapping2 = offsetMapping;
                            final ImeOptions imeOptions116 = imeOptions4;
                            final boolean z31117 = z11;
                            final boolean z31118 = z10;
                            objRememberedValue11 = new nl3() { // from class: v12
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z31117, z31118, textInputService2, textFieldValue, imeOptions116, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                                }
                            };
                            legacyTextFieldState2 = legacyTextFieldState;
                            z21 = z31117;
                            textFieldValue2 = textFieldValue;
                            imeOptions5 = imeOptions116;
                            textFieldSelectionManager2 = textFieldSelectionManager;
                            y22Var2 = y22Var;
                            bringIntoViewRequester2 = bringIntoViewRequester;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                        }
                        final BringIntoViewRequester bringIntoViewRequester7 = bringIntoViewRequester2;
                        Modifier modifierTextFieldFocusModifier5 = TextFieldGestureModifiersKt.textFieldFocusModifier(companion2, z21, focusRequester, mutableInteractionSource6, (nl3) objRememberedValue11);
                        if (z21) {
                            z22 = false;
                        } else {
                            z22 = false;
                        }
                        stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Boolean.valueOf(z22), composerStartRestartGroup, 0);
                        j59 j59Var5 = j59.a;
                        boolean zChanged13 = composerStartRestartGroup.changed(stateRememberUpdatedState) | composerStartRestartGroup.changedInstance(legacyTextFieldState2) | composerStartRestartGroup.changedInstance(textInputService2) | composerStartRestartGroup.changedInstance(textFieldSelectionManager2);
                        if (i45 > 32) {
                            imeOptions6 = imeOptions5;
                            if ((i44 & 48) != 32) {
                                z23 = true;
                            } else {
                                z23 = false;
                            }
                        } else {
                            imeOptions6 = imeOptions5;
                            if ((i44 & 48) != 32) {
                                z23 = true;
                            } else {
                                z23 = false;
                            }
                        }
                        z24 = zChanged13 | z23;
                        objRememberedValue12 = composerStartRestartGroup.rememberedValue();
                        if (z24) {
                            ImeOptions imeOptions117 = imeOptions6;
                            TextInputService textInputService12 = textInputService2;
                            TextFieldSelectionManager textFieldSelectionManager16 = textFieldSelectionManager2;
                            LegacyTextFieldState legacyTextFieldState15 = legacyTextFieldState2;
                            objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState15, stateRememberUpdatedState, textInputService12, textFieldSelectionManager16, imeOptions117, null);
                            legacyTextFieldState3 = legacyTextFieldState15;
                            textFieldSelectionManager3 = textFieldSelectionManager16;
                            imeOptions7 = imeOptions117;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                        } else {
                            ImeOptions imeOptions118 = imeOptions6;
                            TextInputService textInputService13 = textInputService2;
                            TextFieldSelectionManager textFieldSelectionManager17 = textFieldSelectionManager2;
                            LegacyTextFieldState legacyTextFieldState16 = legacyTextFieldState2;
                            objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState16, stateRememberUpdatedState, textInputService13, textFieldSelectionManager17, imeOptions118, null);
                            legacyTextFieldState3 = legacyTextFieldState16;
                            textFieldSelectionManager3 = textFieldSelectionManager17;
                            imeOptions7 = imeOptions118;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                        }
                        imeOptions8 = imeOptions7;
                        EffectsKt.LaunchedEffect(j59Var5, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue12, composerStartRestartGroup, 6);
                        int i511 = i44 >> 3;
                        z25 = z21;
                        legacyTextFieldState4 = legacyTextFieldState3;
                        textFieldSelectionManager4 = textFieldSelectionManager3;
                        Modifier modifierTextFieldPointer6 = TextFieldPointerModifier_androidKt.textFieldPointer(companion2, textFieldSelectionManager4, z25, mutableInteractionSource6, legacyTextFieldState4, focusRequester, z10, offsetMapping2, composerStartRestartGroup, (i511 & 896) | 196614 | ((i41 >> 9) & 7168) | ((i44 << 6) & 3670016));
                        offsetMapping3 = offsetMapping2;
                        final Modifier modifierTextFieldDraw6 = CoreTextField_androidKt.textFieldDraw(companion2, legacyTextFieldState4, textFieldValue2, offsetMapping3);
                        boolean zChangedInstance113 = composerStartRestartGroup.changedInstance(legacyTextFieldState4);
                        if (i43 == 2048) {
                            z26 = true;
                        } else {
                            z26 = false;
                        }
                        boolean zChanged14 = zChangedInstance113 | z26 | composerStartRestartGroup.changed(windowInfo) | composerStartRestartGroup.changedInstance(textFieldSelectionManager4);
                        if (i42 == 4) {
                            z27 = true;
                        } else {
                            z27 = false;
                        }
                        zChangedInstance2 = zChanged14 | z27 | composerStartRestartGroup.changedInstance(offsetMapping3);
                        objRememberedValue13 = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance2) {
                            objRememberedValue13 = new nl3() { // from class: w12
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                                }
                            };
                            textFieldSelectionManager5 = textFieldSelectionManager4;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                        } else {
                            objRememberedValue13 = new nl3() { // from class: w12
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                                }
                            };
                            textFieldSelectionManager5 = textFieldSelectionManager4;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                        }
                        final Modifier modifierOnGloballyPositioned6 = OnGloballyPositionedModifierKt.onGloballyPositioned(companion2, (nl3) objRememberedValue13);
                        textFieldSelectionManager6 = textFieldSelectionManager5;
                        CoreTextFieldSemanticsModifier coreTextFieldSemanticsModifier6 = new CoreTextFieldSemanticsModifier(transformedText4, textFieldValue, legacyTextFieldState4, z10, z25, visualTransformation3 instanceof PasswordVisualTransformation, offsetMapping3, textFieldSelectionManager6, imeOptions8, focusRequester);
                        final VisualTransformation visualTransformation14 = visualTransformation3;
                        if (z25 != 0) {
                            z28 = false;
                        } else {
                            z28 = false;
                        }
                        final Modifier modifierTextFieldCursor6 = CoreTextField_androidKt.textFieldCursor(companion2, legacyTextFieldState4, textFieldValue, offsetMapping3, brush3, z28);
                        zChangedInstance3 = composerStartRestartGroup.changedInstance(textFieldSelectionManager6);
                        objRememberedValue14 = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance3) {
                            i46 = 0;
                            objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                        } else {
                            i46 = 0;
                            objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                        }
                        EffectsKt.DisposableEffect(textFieldSelectionManager6, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue14, composerStartRestartGroup, i46);
                        boolean zChangedInstance114 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changedInstance(textInputService2);
                        if (i42 == 4) {
                            z29 = true;
                        } else {
                            z29 = false;
                        }
                        z30 = z29 | zChangedInstance114 | ((i45 <= 32 && composerStartRestartGroup.changed(imeOptions8)) || (i44 & 48) == 32);
                        objRememberedValue15 = composerStartRestartGroup.rememberedValue();
                        if (z30) {
                            objRememberedValue15 = new nl3() { // from class: h12
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                        } else {
                            objRememberedValue15 = new nl3() { // from class: h12
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                        }
                        EffectsKt.DisposableEffect(imeOptions8, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue15, composerStartRestartGroup, i511 & 14);
                        nl3<TextFieldValue, j59> onValueChange6 = legacyTextFieldState4.getOnValueChange();
                        i47 = i38;
                        if (i47 == 1) {
                            z31 = true;
                        } else {
                            z31 = false;
                        }
                        Modifier modifierM2614textFieldKeyInput2WJ9YEU6 = TextFieldKeyInputKt.m2614textFieldKeyInput2WJ9YEU(companion2, legacyTextFieldState4, textFieldSelectionManager6, textFieldValue, onValueChange6, z31112, z31, offsetMapping3, undoManager, imeOptions8.m8688getImeActioneUduSuo());
                        iM8689getKeyboardTypePjHm6EE = imeOptions8.m8689getKeyboardTypePjHm6EE();
                        companion3 = KeyboardType.Companion;
                        if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion3.m8731getPasswordPjHm6EE())) {
                            z32 = false;
                        } else {
                            z32 = false;
                        }
                        boolean zCoreTextField$lambda$19 = CoreTextField$lambda$14(stateRememberUpdatedState);
                        zChanged2 = composerStartRestartGroup.changed(z32) | composerStartRestartGroup.changedInstance(legacyPlatformTextInputServiceAdapter);
                        objRememberedValue16 = composerStartRestartGroup.rememberedValue();
                        if (zChanged2) {
                            objRememberedValue16 = new ll3() { // from class: i12
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                        } else {
                            objRememberedValue16 = new ll3() { // from class: i12
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                        }
                        Modifier modifierStylusHandwriting6 = StylusHandwritingKt.stylusHandwriting(companion2, zCoreTextField$lambda$19, z32, (ll3) objRememberedValue16);
                        y22 y22Var8 = y22Var2;
                        brushM2447resolveAutofillHighlightWkMShQ = AutofillHighlightKt.m2447resolveAutofillHighlightWkMShQ((Brush) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightBrush()), ((Color) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightColor())).m6242unboximpl(), AutofillHighlight_androidKt.autofillHighlightColor());
                        zChangedInstance4 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changed(brushM2447resolveAutofillHighlightWkMShQ);
                        objRememberedValue17 = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance4) {
                            i48 = 0;
                            objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                        } else {
                            i48 = 0;
                            objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                        }
                        Modifier modifierDrawWithContent6 = DrawModifierKt.drawWithContent(companion2, (nl3) objRememberedValue17);
                        OverscrollEffect overscrollEffectRememberTextFieldOverscrollEffect6 = TextFieldScroll_androidKt.rememberTextFieldOverscrollEffect(composerStartRestartGroup, i48);
                        Modifier modifier15 = modifier4;
                        Modifier modifierThen6 = previewKeyEventToDeselectOnBack(TextFieldFocusModifier_androidKt.interceptDPadAndMoveFocus(LegacyAdaptingPlatformTextInputModifierNodeKt.legacyTextInputAdapter(modifier15.then(modifierDrawWithContent6), legacyPlatformTextInputServiceAdapter, legacyTextFieldState4, textFieldSelectionManager6).then(modifierStylusHandwriting6).then(modifierTextFieldFocusModifier5), legacyTextFieldState4, focusManager), legacyTextFieldState4, textFieldSelectionManager6).then(modifierM2614textFieldKeyInput2WJ9YEU6);
                        final TextFieldScrollerPosition textFieldScrollerPosition11 = textFieldScrollerPosition5;
                        Modifier modifierAddContextMenuComponents6 = addContextMenuComponents(OnGloballyPositionedModifierKt.onGloballyPositioned(TextFieldScrollKt.textFieldScrollable(modifierThen6, textFieldScrollerPosition11, mutableInteractionSource6, z25, overscrollEffectRememberTextFieldOverscrollEffect6).then(modifierTextFieldPointer6).then(coreTextFieldSemanticsModifier6), new nl3() { // from class: r12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$21(legacyTextFieldState4, (LayoutCoordinates) obj);
                            }
                        }), textFieldSelectionManager6, y22Var8);
                        if (z25) {
                            i48 = 1;
                        }
                        if (i48 != 0) {
                            modifierTextFieldMagnifier = TextFieldSelectionManager_androidKt.textFieldMagnifier(companion2, textFieldSelectionManager6);
                        } else {
                            modifierTextFieldMagnifier = companion2;
                        }
                        final Modifier modifier16 = modifierTextFieldMagnifier;
                        final boolean z31119 = z10;
                        final dm3 dm3Var8 = lambda$559628295$foundation;
                        final int i512 = i39;
                        final boolean z45 = i48;
                        CoreTextFieldRootBox(modifierAddContextMenuComponents6, textFieldSelectionManager6, ComposableLambdaKt.rememberComposableLambda(-814563849, true, new bm3() { // from class: s12
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return CoreTextFieldKt.CoreTextField$lambda$22(dm3Var8, legacyTextFieldState4, textStyle5, i512, i47, textFieldScrollerPosition11, textFieldValue, visualTransformation14, modifierTextFieldCursor6, modifierTextFieldDraw6, modifierOnGloballyPositioned6, modifier16, bringIntoViewRequester7, textFieldSelectionManager6, z45, z31119, nl3Var5, offsetMapping3, density, (Composer) obj, iIntValue);
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, RendererCapabilities.DECODER_SUPPORT_MASK);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        dm3Var2 = dm3Var8;
                        i37 = i512;
                        composer2 = composerStartRestartGroup;
                        nl3Var4 = nl3Var5;
                        z7 = z31119;
                        textFieldScrollerPosition2 = textFieldScrollerPosition3;
                        imeOptions2 = imeOptions8;
                        z6 = z25;
                        mutableInteractionSource2 = mutableInteractionSource6;
                        z5 = z13;
                        keyboardActions2 = keyboardActions7;
                        modifier3 = modifier15;
                        i36 = i47;
                        visualTransformation2 = visualTransformation14;
                        solidColor = brush3;
                        textStyle3 = textStyle5;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        z5 = z;
                        imeOptions2 = imeOptions;
                        keyboardActions2 = keyboardActions;
                        dm3Var2 = dm3Var;
                        textFieldScrollerPosition2 = textFieldScrollerPosition;
                        composer2 = composerStartRestartGroup;
                        textStyle3 = textStyle2;
                        nl3Var4 = nl3Var3;
                        visualTransformation2 = none;
                        modifier3 = modifier2;
                        i36 = i;
                        i37 = i2;
                        z6 = z2;
                        z7 = z3;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: t12
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return CoreTextFieldKt.CoreTextField$lambda$23(textFieldValue, nl3Var, modifier3, textStyle3, visualTransformation2, nl3Var4, mutableInteractionSource2, solidColor, z5, i36, i37, imeOptions2, keyboardActions2, z6, z7, dm3Var2, textFieldScrollerPosition2, i3, i4, i5, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i6 |= 805306368;
                i21 = i5 & 1024;
                if (i21 != 0) {
                    i22 = i4 | 6;
                } else if ((i4 & 6) == 0) {
                    if (composerStartRestartGroup.changed(i2)) {
                        i23 = 4;
                    } else {
                        i23 = 2;
                    }
                    i22 = i4 | i23;
                } else {
                    i22 = i4;
                }
                if ((i4 & 48) != 0) {
                    i22 |= ((i5 & 2048) == 0 || !composerStartRestartGroup.changed(imeOptions)) ? 16 : 32;
                }
                i24 = i22;
                i25 = i5 & 4096;
                if (i25 != 0) {
                    i26 = i24 | RendererCapabilities.DECODER_SUPPORT_MASK;
                } else if ((i4 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    if (composerStartRestartGroup.changed(keyboardActions)) {
                        i27 = 256;
                    } else {
                        i27 = 128;
                    }
                    i26 = i24 | i27;
                } else {
                    i26 = i24;
                }
                i28 = i5 & 8192;
                if (i28 != 0) {
                    i30 = i26 | 3072;
                } else {
                    i29 = i26;
                    if ((i4 & 3072) == 0) {
                        i30 = i29 | (composerStartRestartGroup.changed(z2) ? 2048 : 1024);
                    } else {
                        i30 = i29;
                    }
                }
                i31 = i5 & 16384;
                if (i31 != 0) {
                    i33 = i30 | 24576;
                } else {
                    i32 = i30;
                    if ((i4 & 24576) == 0) {
                        i33 = i32 | (composerStartRestartGroup.changed(z3) ? 16384 : 8192);
                    } else {
                        i33 = i32;
                    }
                }
                i34 = i5 & 32768;
                if (i34 != 0) {
                    i33 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i4 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    i33 |= composerStartRestartGroup.changedInstance(dm3Var) ? 131072 : 65536;
                }
                i35 = i5 & 65536;
                if (i35 != 0) {
                    i33 |= 1572864;
                } else if ((i4 & 1572864) == 0) {
                    i33 |= composerStartRestartGroup.changed(textFieldScrollerPosition) ? 1048576 : 524288;
                }
                if ((i6 & 306783379) == 306783378) {
                    z4 = true;
                } else {
                    z4 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i6 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    jh2Var = null;
                    if ((i3 & 1) != 0) {
                        if (i50 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i7 != 0) {
                            textStyle4 = TextStyle.Companion.getDefault();
                        } else {
                            textStyle4 = textStyle2;
                        }
                        if (i9 != 0) {
                            none = VisualTransformation.Companion.getNone();
                        }
                        if (i11 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new p12(0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            nl3Var3 = (nl3) objRememberedValue;
                        }
                        if (i13 != 0) {
                            mutableInteractionSource2 = null;
                        }
                        if (i15 != 0) {
                            solidColor = new SolidColor(Color.Companion.m6268getUnspecified0d7_KjU(), jh2Var);
                        }
                        if (i17 != 0) {
                            z8 = true;
                        } else {
                            z8 = z;
                        }
                        if (i19 != 0) {
                            i38 = Integer.MAX_VALUE;
                        } else {
                            i38 = i;
                        }
                        if (i21 != 0) {
                            i39 = 1;
                        } else {
                            i39 = i2;
                        }
                        if ((i5 & 2048) != 0) {
                            imeOptions3 = ImeOptions.Companion.getDefault();
                            i33 &= -113;
                        } else {
                            imeOptions3 = imeOptions;
                        }
                        if (i25 != 0) {
                            keyboardActions3 = KeyboardActions.Companion.getDefault();
                        } else {
                            keyboardActions3 = keyboardActions;
                        }
                        if (i28 != 0) {
                            z9 = true;
                        } else {
                            z9 = z2;
                        }
                        if (i31 != 0) {
                            z10 = false;
                        } else {
                            z10 = z3;
                        }
                        if (i34 != 0) {
                            lambda$559628295$foundation = ComposableSingletons$CoreTextFieldKt.INSTANCE.getLambda$559628295$foundation();
                        } else {
                            lambda$559628295$foundation = dm3Var;
                        }
                        boolean z324 = z8;
                        textStyle2 = textStyle4;
                        modifier4 = modifier2;
                        z11 = z9;
                        nl3Var5 = nl3Var3;
                        z12 = z324;
                        VisualTransformation visualTransformation15 = none;
                        imeOptions4 = imeOptions3;
                        brush2 = solidColor;
                        visualTransformation3 = visualTransformation15;
                        i40 = i33;
                        if (i35 != 0) {
                            textFieldScrollerPosition3 = null;
                        } else {
                            textFieldScrollerPosition3 = textFieldScrollerPosition;
                        }
                    } else {
                        if (i50 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i7 != 0) {
                            textStyle4 = TextStyle.Companion.getDefault();
                        } else {
                            textStyle4 = textStyle2;
                        }
                        if (i9 != 0) {
                            none = VisualTransformation.Companion.getNone();
                        }
                        if (i11 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new p12(0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            nl3Var3 = (nl3) objRememberedValue;
                        }
                        if (i13 != 0) {
                            mutableInteractionSource2 = null;
                        }
                        if (i15 != 0) {
                            solidColor = new SolidColor(Color.Companion.m6268getUnspecified0d7_KjU(), jh2Var);
                        }
                        if (i17 != 0) {
                            z8 = true;
                        } else {
                            z8 = z;
                        }
                        if (i19 != 0) {
                            i38 = Integer.MAX_VALUE;
                        } else {
                            i38 = i;
                        }
                        if (i21 != 0) {
                            i39 = 1;
                        } else {
                            i39 = i2;
                        }
                        if ((i5 & 2048) != 0) {
                            imeOptions3 = ImeOptions.Companion.getDefault();
                            i33 &= -113;
                        } else {
                            imeOptions3 = imeOptions;
                        }
                        if (i25 != 0) {
                            keyboardActions3 = KeyboardActions.Companion.getDefault();
                        } else {
                            keyboardActions3 = keyboardActions;
                        }
                        if (i28 != 0) {
                            z9 = true;
                        } else {
                            z9 = z2;
                        }
                        if (i31 != 0) {
                            z10 = false;
                        } else {
                            z10 = z3;
                        }
                        if (i34 != 0) {
                            lambda$559628295$foundation = ComposableSingletons$CoreTextFieldKt.INSTANCE.getLambda$559628295$foundation();
                        } else {
                            lambda$559628295$foundation = dm3Var;
                        }
                        boolean z325 = z8;
                        textStyle2 = textStyle4;
                        modifier4 = modifier2;
                        z11 = z9;
                        nl3Var5 = nl3Var3;
                        z12 = z325;
                        VisualTransformation visualTransformation16 = none;
                        imeOptions4 = imeOptions3;
                        brush2 = solidColor;
                        visualTransformation3 = visualTransformation16;
                        i40 = i33;
                        if (i35 != 0) {
                            textFieldScrollerPosition3 = null;
                        } else {
                            textFieldScrollerPosition3 = textFieldScrollerPosition;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    brush3 = brush2;
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(31062401, i6, i40, "androidx.compose.foundation.text.CoreTextField (CoreTextField.kt:208)");
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = new FocusRequester();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    focusRequester = (FocusRequester) objRememberedValue2;
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    i41 = i6;
                    if (objRememberedValue3 == companion.getEmpty()) {
                        objRememberedValue3 = LegacyPlatformTextInputServiceAdapter_androidKt.createLegacyPlatformTextInputServiceAdapter();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    legacyPlatformTextInputServiceAdapter = (LegacyPlatformTextInputServiceAdapter) objRememberedValue3;
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue4 == companion.getEmpty()) {
                        objRememberedValue4 = new TextInputService(legacyPlatformTextInputServiceAdapter);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    textInputService = (TextInputService) objRememberedValue4;
                    density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    resolver = (FontFamily.Resolver) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalFontFamilyResolver());
                    jM3048getBackgroundColor0d7_KjU = ((TextSelectionColors) composerStartRestartGroup.consume(TextSelectionColorsKt.getLocalTextSelectionColors())).m3048getBackgroundColor0d7_KjU();
                    focusManager = (FocusManager) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalFocusManager());
                    windowInfo = (WindowInfo) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalWindowInfo());
                    textStyle5 = textStyle2;
                    softwareKeyboardController = (SoftwareKeyboardController) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalSoftwareKeyboardController());
                    z13 = z12;
                    if (i38 == 1) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Vertical;
                    }
                    if (textFieldScrollerPosition3 == null) {
                        composerStartRestartGroup.startReplaceGroup(-213744626);
                        Object[] objArr5 = {orientation};
                        Saver<TextFieldScrollerPosition, Object> saver5 = TextFieldScrollerPosition.Companion.getSaver();
                        zChanged3 = composerStartRestartGroup.changed(orientation.ordinal());
                        objRememberedValue18 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            i49 = 0;
                            objRememberedValue18 = new u12(orientation, i49);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue18);
                        } else {
                            i49 = 0;
                            objRememberedValue18 = new u12(orientation, i49);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue18);
                        }
                        textFieldScrollerPosition4 = (TextFieldScrollerPosition) RememberSaveableKt.m5624rememberSaveable(objArr5, (Saver) saver5, (ll3) objRememberedValue18, composerStartRestartGroup, i49);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-213745742);
                        composerStartRestartGroup.endReplaceGroup();
                        textFieldScrollerPosition4 = textFieldScrollerPosition3;
                    }
                    if (textFieldScrollerPosition4.getOrientation() != orientation) {
                        if (orientation == Orientation.Vertical) {
                            str = "only single-line, non-wrap text fields can scroll horizontally";
                        } else {
                            str = "single-line, non-wrap text fields can only scroll horizontally";
                        }
                        throw new IllegalArgumentException("Mismatching scroller orientation; ".concat(str));
                    }
                    i42 = i41 & 14;
                    if (i42 == 4) {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    if ((i41 & 57344) == 16384) {
                        z15 = true;
                    } else {
                        z15 = false;
                    }
                    z16 = z14 | z15;
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (z16) {
                        transformedTextFilterWithValidation = ValidatingOffsetMappingKt.filterWithValidation(visualTransformation3, textFieldValue.getAnnotatedString());
                        textRangeM8740getCompositionMzsxiRA = textFieldValue.m8740getCompositionMzsxiRA();
                        if (textRangeM8740getCompositionMzsxiRA != null) {
                            textFieldScrollerPosition5 = textFieldScrollerPosition4;
                            transformedTextM2604applyCompositionDecoration72CqOWE = TextFieldDelegate.Companion.m2604applyCompositionDecoration72CqOWE(textRangeM8740getCompositionMzsxiRA.m8495unboximpl(), transformedTextFilterWithValidation);
                            if (transformedTextM2604applyCompositionDecoration72CqOWE != null) {
                                objRememberedValue5 = transformedTextM2604applyCompositionDecoration72CqOWE;
                            }
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            textFieldScrollerPosition5 = textFieldScrollerPosition4;
                        }
                        objRememberedValue5 = transformedTextFilterWithValidation;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    } else {
                        transformedTextFilterWithValidation = ValidatingOffsetMappingKt.filterWithValidation(visualTransformation3, textFieldValue.getAnnotatedString());
                        textRangeM8740getCompositionMzsxiRA = textFieldValue.m8740getCompositionMzsxiRA();
                        if (textRangeM8740getCompositionMzsxiRA != null) {
                            textFieldScrollerPosition5 = textFieldScrollerPosition4;
                            transformedTextM2604applyCompositionDecoration72CqOWE = TextFieldDelegate.Companion.m2604applyCompositionDecoration72CqOWE(textRangeM8740getCompositionMzsxiRA.m8495unboximpl(), transformedTextFilterWithValidation);
                            if (transformedTextM2604applyCompositionDecoration72CqOWE != null) {
                                objRememberedValue5 = transformedTextM2604applyCompositionDecoration72CqOWE;
                            }
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            textFieldScrollerPosition5 = textFieldScrollerPosition4;
                        }
                        objRememberedValue5 = transformedTextFilterWithValidation;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    TransformedText transformedText5 = (TransformedText) objRememberedValue5;
                    text = transformedText5.getText();
                    offsetMapping = transformedText5.getOffsetMapping();
                    currentRecomposeScope = ComposablesKt.getCurrentRecomposeScope(composerStartRestartGroup, 0);
                    zChanged = composerStartRestartGroup.changed(softwareKeyboardController);
                    objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue6 = new LegacyTextFieldState(new TextDelegate(text, textStyle5, 0, 0, z13, 0, density, resolver, null, 300, null), currentRecomposeScope, softwareKeyboardController);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    } else {
                        objRememberedValue6 = new LegacyTextFieldState(new TextDelegate(text, textStyle5, 0, 0, z13, 0, density, resolver, null, 300, null), currentRecomposeScope, softwareKeyboardController);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    }
                    legacyTextFieldState = (LegacyTextFieldState) objRememberedValue6;
                    KeyboardActions keyboardActions8 = keyboardActions3;
                    legacyTextFieldState.m2569updatefnh65Uc(textFieldValue.getAnnotatedString(), text, textStyle5, z13, r55, resolver, nl3Var, keyboardActions8, focusManager, jM3048getBackgroundColor0d7_KjU);
                    legacyTextFieldState.getProcessor().reset(textFieldValue, legacyTextFieldState.getInputSession());
                    objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue7 == companion.getEmpty()) {
                        objRememberedValue7 = new UndoManager(0, 1, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                    }
                    undoManager = (UndoManager) objRememberedValue7;
                    UndoManager.snapshotIfNeeded$default(undoManager, textFieldValue, 0L, 2, null);
                    objRememberedValue8 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue8 == companion.getEmpty()) {
                        objRememberedValue8 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
                    }
                    y22Var = (y22) objRememberedValue8;
                    objRememberedValue9 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue9 == companion.getEmpty()) {
                        objRememberedValue9 = BringIntoViewRequesterKt.BringIntoViewRequester();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue9);
                    }
                    bringIntoViewRequester = (BringIntoViewRequester) objRememberedValue9;
                    objRememberedValue10 = composerStartRestartGroup.rememberedValue();
                    MutableInteractionSource mutableInteractionSource7 = mutableInteractionSource2;
                    if (objRememberedValue10 == companion.getEmpty()) {
                        objRememberedValue10 = new TextFieldSelectionManager(undoManager);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue10);
                    }
                    textFieldSelectionManager = (TextFieldSelectionManager) objRememberedValue10;
                    textFieldSelectionManager.setOffsetMapping$foundation(offsetMapping);
                    textFieldSelectionManager.setVisualTransformation$foundation(visualTransformation3);
                    textFieldSelectionManager.setOnValueChange$foundation(legacyTextFieldState.getOnValueChange());
                    textFieldSelectionManager.setState$foundation(legacyTextFieldState);
                    textFieldSelectionManager.setValue$foundation(textFieldValue);
                    textFieldSelectionManager.setClipboard$foundation((Clipboard) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalClipboard()));
                    textFieldSelectionManager.setCoroutineScope$foundation(y22Var);
                    textFieldSelectionManager.setTextToolbar((TextToolbar) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalTextToolbar()));
                    textFieldSelectionManager.setHapticFeedBack((HapticFeedback) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalHapticFeedback()));
                    textFieldSelectionManager.setFocusRequester(focusRequester);
                    boolean z311110 = !z10;
                    textFieldSelectionManager.setEditable(z311110);
                    textFieldSelectionManager.setEnabled(z11);
                    if (ComposeFoundationFlags.isSmartSelectionEnabled) {
                        composerStartRestartGroup.startReplaceGroup(1966756105);
                        textFieldSelectionManager.setPlatformSelectionBehaviors$foundation(PlatformSelectionBehaviors_androidKt.rememberPlatformSelectionBehaviors(SelectedTextType.EditableText, textStyle5.getLocaleList(), composerStartRestartGroup, 6));
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1966902177);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    legacyTextFieldState.getHasFocus();
                    companion2 = Modifier.Companion;
                    boolean zChangedInstance115 = composerStartRestartGroup.changedInstance(legacyTextFieldState);
                    i43 = i40 & 7168;
                    i44 = i40;
                    if (i43 == 2048) {
                        z17 = true;
                    } else {
                        z17 = false;
                    }
                    boolean z311111 = z17 | zChangedInstance115;
                    if ((i44 & 57344) == 16384) {
                        z18 = true;
                    } else {
                        z18 = false;
                    }
                    boolean zChangedInstance116 = z311111 | z18 | composerStartRestartGroup.changedInstance(textInputService);
                    if (i42 == 4) {
                        z19 = true;
                    } else {
                        z19 = false;
                    }
                    boolean z311112 = zChangedInstance116 | z19;
                    i45 = (i44 & 112) ^ 48;
                    if (i45 > 32) {
                        textInputService2 = textInputService;
                        if ((i44 & 48) != 32) {
                            z20 = true;
                        } else {
                            z20 = false;
                        }
                    } else {
                        textInputService2 = textInputService;
                        if ((i44 & 48) != 32) {
                            z20 = true;
                        } else {
                            z20 = false;
                        }
                    }
                    zChangedInstance = z311112 | z20 | composerStartRestartGroup.changedInstance(offsetMapping) | composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(bringIntoViewRequester) | composerStartRestartGroup.changedInstance(textFieldSelectionManager);
                    objRememberedValue11 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance) {
                        offsetMapping2 = offsetMapping;
                        final ImeOptions imeOptions119 = imeOptions4;
                        final boolean z311113 = z11;
                        final boolean z311114 = z10;
                        objRememberedValue11 = new nl3() { // from class: v12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z311113, z311114, textInputService2, textFieldValue, imeOptions119, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                            }
                        };
                        legacyTextFieldState2 = legacyTextFieldState;
                        z21 = z311113;
                        textFieldValue2 = textFieldValue;
                        imeOptions5 = imeOptions119;
                        textFieldSelectionManager2 = textFieldSelectionManager;
                        y22Var2 = y22Var;
                        bringIntoViewRequester2 = bringIntoViewRequester;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                    } else {
                        offsetMapping2 = offsetMapping;
                        final ImeOptions imeOptions1110 = imeOptions4;
                        final boolean z311115 = z11;
                        final boolean z311116 = z10;
                        objRememberedValue11 = new nl3() { // from class: v12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z311115, z311116, textInputService2, textFieldValue, imeOptions1110, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                            }
                        };
                        legacyTextFieldState2 = legacyTextFieldState;
                        z21 = z311115;
                        textFieldValue2 = textFieldValue;
                        imeOptions5 = imeOptions1110;
                        textFieldSelectionManager2 = textFieldSelectionManager;
                        y22Var2 = y22Var;
                        bringIntoViewRequester2 = bringIntoViewRequester;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                    }
                    final BringIntoViewRequester bringIntoViewRequester8 = bringIntoViewRequester2;
                    Modifier modifierTextFieldFocusModifier6 = TextFieldGestureModifiersKt.textFieldFocusModifier(companion2, z21, focusRequester, mutableInteractionSource7, (nl3) objRememberedValue11);
                    if (z21) {
                        z22 = false;
                    } else {
                        z22 = false;
                    }
                    stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Boolean.valueOf(z22), composerStartRestartGroup, 0);
                    j59 j59Var6 = j59.a;
                    boolean zChanged15 = composerStartRestartGroup.changed(stateRememberUpdatedState) | composerStartRestartGroup.changedInstance(legacyTextFieldState2) | composerStartRestartGroup.changedInstance(textInputService2) | composerStartRestartGroup.changedInstance(textFieldSelectionManager2);
                    if (i45 > 32) {
                        imeOptions6 = imeOptions5;
                        if ((i44 & 48) != 32) {
                            z23 = true;
                        } else {
                            z23 = false;
                        }
                    } else {
                        imeOptions6 = imeOptions5;
                        if ((i44 & 48) != 32) {
                            z23 = true;
                        } else {
                            z23 = false;
                        }
                    }
                    z24 = zChanged15 | z23;
                    objRememberedValue12 = composerStartRestartGroup.rememberedValue();
                    if (z24) {
                        ImeOptions imeOptions1111 = imeOptions6;
                        TextInputService textInputService14 = textInputService2;
                        TextFieldSelectionManager textFieldSelectionManager18 = textFieldSelectionManager2;
                        LegacyTextFieldState legacyTextFieldState17 = legacyTextFieldState2;
                        objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState17, stateRememberUpdatedState, textInputService14, textFieldSelectionManager18, imeOptions1111, null);
                        legacyTextFieldState3 = legacyTextFieldState17;
                        textFieldSelectionManager3 = textFieldSelectionManager18;
                        imeOptions7 = imeOptions1111;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                    } else {
                        ImeOptions imeOptions1112 = imeOptions6;
                        TextInputService textInputService15 = textInputService2;
                        TextFieldSelectionManager textFieldSelectionManager19 = textFieldSelectionManager2;
                        LegacyTextFieldState legacyTextFieldState18 = legacyTextFieldState2;
                        objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState18, stateRememberUpdatedState, textInputService15, textFieldSelectionManager19, imeOptions1112, null);
                        legacyTextFieldState3 = legacyTextFieldState18;
                        textFieldSelectionManager3 = textFieldSelectionManager19;
                        imeOptions7 = imeOptions1112;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                    }
                    imeOptions8 = imeOptions7;
                    EffectsKt.LaunchedEffect(j59Var6, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue12, composerStartRestartGroup, 6);
                    int i513 = i44 >> 3;
                    z25 = z21;
                    legacyTextFieldState4 = legacyTextFieldState3;
                    textFieldSelectionManager4 = textFieldSelectionManager3;
                    Modifier modifierTextFieldPointer7 = TextFieldPointerModifier_androidKt.textFieldPointer(companion2, textFieldSelectionManager4, z25, mutableInteractionSource7, legacyTextFieldState4, focusRequester, z10, offsetMapping2, composerStartRestartGroup, (i513 & 896) | 196614 | ((i41 >> 9) & 7168) | ((i44 << 6) & 3670016));
                    offsetMapping3 = offsetMapping2;
                    final Modifier modifierTextFieldDraw7 = CoreTextField_androidKt.textFieldDraw(companion2, legacyTextFieldState4, textFieldValue2, offsetMapping3);
                    boolean zChangedInstance117 = composerStartRestartGroup.changedInstance(legacyTextFieldState4);
                    if (i43 == 2048) {
                        z26 = true;
                    } else {
                        z26 = false;
                    }
                    boolean zChanged16 = zChangedInstance117 | z26 | composerStartRestartGroup.changed(windowInfo) | composerStartRestartGroup.changedInstance(textFieldSelectionManager4);
                    if (i42 == 4) {
                        z27 = true;
                    } else {
                        z27 = false;
                    }
                    zChangedInstance2 = zChanged16 | z27 | composerStartRestartGroup.changedInstance(offsetMapping3);
                    objRememberedValue13 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance2) {
                        objRememberedValue13 = new nl3() { // from class: w12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                            }
                        };
                        textFieldSelectionManager5 = textFieldSelectionManager4;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                    } else {
                        objRememberedValue13 = new nl3() { // from class: w12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                            }
                        };
                        textFieldSelectionManager5 = textFieldSelectionManager4;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                    }
                    final Modifier modifierOnGloballyPositioned7 = OnGloballyPositionedModifierKt.onGloballyPositioned(companion2, (nl3) objRememberedValue13);
                    textFieldSelectionManager6 = textFieldSelectionManager5;
                    CoreTextFieldSemanticsModifier coreTextFieldSemanticsModifier7 = new CoreTextFieldSemanticsModifier(transformedText5, textFieldValue, legacyTextFieldState4, z10, z25, visualTransformation3 instanceof PasswordVisualTransformation, offsetMapping3, textFieldSelectionManager6, imeOptions8, focusRequester);
                    final VisualTransformation visualTransformation17 = visualTransformation3;
                    if (z25 != 0) {
                        z28 = false;
                    } else {
                        z28 = false;
                    }
                    final Modifier modifierTextFieldCursor7 = CoreTextField_androidKt.textFieldCursor(companion2, legacyTextFieldState4, textFieldValue, offsetMapping3, brush3, z28);
                    zChangedInstance3 = composerStartRestartGroup.changedInstance(textFieldSelectionManager6);
                    objRememberedValue14 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance3) {
                        i46 = 0;
                        objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                    } else {
                        i46 = 0;
                        objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                    }
                    EffectsKt.DisposableEffect(textFieldSelectionManager6, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue14, composerStartRestartGroup, i46);
                    boolean zChangedInstance118 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changedInstance(textInputService2);
                    if (i42 == 4) {
                        z29 = true;
                    } else {
                        z29 = false;
                    }
                    z30 = z29 | zChangedInstance118 | ((i45 <= 32 && composerStartRestartGroup.changed(imeOptions8)) || (i44 & 48) == 32);
                    objRememberedValue15 = composerStartRestartGroup.rememberedValue();
                    if (z30) {
                        objRememberedValue15 = new nl3() { // from class: h12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                    } else {
                        objRememberedValue15 = new nl3() { // from class: h12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                    }
                    EffectsKt.DisposableEffect(imeOptions8, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue15, composerStartRestartGroup, i513 & 14);
                    nl3<TextFieldValue, j59> onValueChange7 = legacyTextFieldState4.getOnValueChange();
                    i47 = i38;
                    if (i47 == 1) {
                        z31 = true;
                    } else {
                        z31 = false;
                    }
                    Modifier modifierM2614textFieldKeyInput2WJ9YEU7 = TextFieldKeyInputKt.m2614textFieldKeyInput2WJ9YEU(companion2, legacyTextFieldState4, textFieldSelectionManager6, textFieldValue, onValueChange7, z311110, z31, offsetMapping3, undoManager, imeOptions8.m8688getImeActioneUduSuo());
                    iM8689getKeyboardTypePjHm6EE = imeOptions8.m8689getKeyboardTypePjHm6EE();
                    companion3 = KeyboardType.Companion;
                    if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion3.m8731getPasswordPjHm6EE())) {
                        z32 = false;
                    } else {
                        z32 = false;
                    }
                    boolean zCoreTextField$lambda$110 = CoreTextField$lambda$14(stateRememberUpdatedState);
                    zChanged2 = composerStartRestartGroup.changed(z32) | composerStartRestartGroup.changedInstance(legacyPlatformTextInputServiceAdapter);
                    objRememberedValue16 = composerStartRestartGroup.rememberedValue();
                    if (zChanged2) {
                        objRememberedValue16 = new ll3() { // from class: i12
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                    } else {
                        objRememberedValue16 = new ll3() { // from class: i12
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                    }
                    Modifier modifierStylusHandwriting7 = StylusHandwritingKt.stylusHandwriting(companion2, zCoreTextField$lambda$110, z32, (ll3) objRememberedValue16);
                    y22 y22Var9 = y22Var2;
                    brushM2447resolveAutofillHighlightWkMShQ = AutofillHighlightKt.m2447resolveAutofillHighlightWkMShQ((Brush) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightBrush()), ((Color) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightColor())).m6242unboximpl(), AutofillHighlight_androidKt.autofillHighlightColor());
                    zChangedInstance4 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changed(brushM2447resolveAutofillHighlightWkMShQ);
                    objRememberedValue17 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance4) {
                        i48 = 0;
                        objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                    } else {
                        i48 = 0;
                        objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                    }
                    Modifier modifierDrawWithContent7 = DrawModifierKt.drawWithContent(companion2, (nl3) objRememberedValue17);
                    OverscrollEffect overscrollEffectRememberTextFieldOverscrollEffect7 = TextFieldScroll_androidKt.rememberTextFieldOverscrollEffect(composerStartRestartGroup, i48);
                    Modifier modifier17 = modifier4;
                    Modifier modifierThen7 = previewKeyEventToDeselectOnBack(TextFieldFocusModifier_androidKt.interceptDPadAndMoveFocus(LegacyAdaptingPlatformTextInputModifierNodeKt.legacyTextInputAdapter(modifier17.then(modifierDrawWithContent7), legacyPlatformTextInputServiceAdapter, legacyTextFieldState4, textFieldSelectionManager6).then(modifierStylusHandwriting7).then(modifierTextFieldFocusModifier6), legacyTextFieldState4, focusManager), legacyTextFieldState4, textFieldSelectionManager6).then(modifierM2614textFieldKeyInput2WJ9YEU7);
                    final TextFieldScrollerPosition textFieldScrollerPosition12 = textFieldScrollerPosition5;
                    Modifier modifierAddContextMenuComponents7 = addContextMenuComponents(OnGloballyPositionedModifierKt.onGloballyPositioned(TextFieldScrollKt.textFieldScrollable(modifierThen7, textFieldScrollerPosition12, mutableInteractionSource7, z25, overscrollEffectRememberTextFieldOverscrollEffect7).then(modifierTextFieldPointer7).then(coreTextFieldSemanticsModifier7), new nl3() { // from class: r12
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return CoreTextFieldKt.CoreTextField$lambda$21(legacyTextFieldState4, (LayoutCoordinates) obj);
                        }
                    }), textFieldSelectionManager6, y22Var9);
                    if (z25) {
                        i48 = 1;
                    }
                    if (i48 != 0) {
                        modifierTextFieldMagnifier = TextFieldSelectionManager_androidKt.textFieldMagnifier(companion2, textFieldSelectionManager6);
                    } else {
                        modifierTextFieldMagnifier = companion2;
                    }
                    final Modifier modifier18 = modifierTextFieldMagnifier;
                    final boolean z311117 = z10;
                    final dm3 dm3Var9 = lambda$559628295$foundation;
                    final int i514 = i39;
                    final boolean z46 = i48;
                    CoreTextFieldRootBox(modifierAddContextMenuComponents7, textFieldSelectionManager6, ComposableLambdaKt.rememberComposableLambda(-814563849, true, new bm3() { // from class: s12
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return CoreTextFieldKt.CoreTextField$lambda$22(dm3Var9, legacyTextFieldState4, textStyle5, i514, i47, textFieldScrollerPosition12, textFieldValue, visualTransformation17, modifierTextFieldCursor7, modifierTextFieldDraw7, modifierOnGloballyPositioned7, modifier18, bringIntoViewRequester8, textFieldSelectionManager6, z46, z311117, nl3Var5, offsetMapping3, density, (Composer) obj, iIntValue);
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, RendererCapabilities.DECODER_SUPPORT_MASK);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    dm3Var2 = dm3Var9;
                    i37 = i514;
                    composer2 = composerStartRestartGroup;
                    nl3Var4 = nl3Var5;
                    z7 = z311117;
                    textFieldScrollerPosition2 = textFieldScrollerPosition3;
                    imeOptions2 = imeOptions8;
                    z6 = z25;
                    mutableInteractionSource2 = mutableInteractionSource7;
                    z5 = z13;
                    keyboardActions2 = keyboardActions8;
                    modifier3 = modifier17;
                    i36 = i47;
                    visualTransformation2 = visualTransformation17;
                    solidColor = brush3;
                    textStyle3 = textStyle5;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    z5 = z;
                    imeOptions2 = imeOptions;
                    keyboardActions2 = keyboardActions;
                    dm3Var2 = dm3Var;
                    textFieldScrollerPosition2 = textFieldScrollerPosition;
                    composer2 = composerStartRestartGroup;
                    textStyle3 = textStyle2;
                    nl3Var4 = nl3Var3;
                    visualTransformation2 = none;
                    modifier3 = modifier2;
                    i36 = i;
                    i37 = i2;
                    z6 = z2;
                    z7 = z3;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: t12
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return CoreTextFieldKt.CoreTextField$lambda$23(textFieldValue, nl3Var, modifier3, textStyle3, visualTransformation2, nl3Var4, mutableInteractionSource2, solidColor, z5, i36, i37, imeOptions2, keyboardActions2, z6, z7, dm3Var2, textFieldScrollerPosition2, i3, i4, i5, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i6 |= 3072;
            textStyle2 = textStyle;
            i9 = i5 & 16;
            if (i9 != 0) {
                if ((i3 & 24576) == 0) {
                    none = visualTransformation;
                    if (composerStartRestartGroup.changed(none)) {
                        i10 = 16384;
                    } else {
                        i10 = 8192;
                    }
                    i6 |= i10;
                }
                i11 = i5 & 32;
                if (i11 != 0) {
                    i6 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    nl3Var3 = nl3Var2;
                } else {
                    nl3Var3 = nl3Var2;
                    if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var3)) {
                            i12 = 131072;
                        } else {
                            i12 = 65536;
                        }
                        i6 |= i12;
                    }
                }
                i13 = i5 & 64;
                if (i13 != 0) {
                    i6 |= 1572864;
                    mutableInteractionSource2 = mutableInteractionSource;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                    if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource2)) {
                            i14 = 1048576;
                        } else {
                            i14 = 524288;
                        }
                        i6 |= i14;
                    }
                }
                i15 = i5 & 128;
                if (i15 != 0) {
                    i6 |= 12582912;
                    solidColor = brush;
                } else {
                    solidColor = brush;
                    if ((i3 & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(solidColor)) {
                            i16 = 8388608;
                        } else {
                            i16 = 4194304;
                        }
                        i6 |= i16;
                    }
                }
                i17 = i5 & 256;
                if (i17 != 0) {
                    i6 |= 100663296;
                } else if ((i3 & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(z)) {
                        i18 = 67108864;
                    } else {
                        i18 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i6 |= i18;
                }
                i19 = i5 & 512;
                if (i19 != 0) {
                    if ((i3 & 805306368) == 0) {
                        if (composerStartRestartGroup.changed(i)) {
                            i20 = 536870912;
                        } else {
                            i20 = 268435456;
                        }
                        i6 |= i20;
                    }
                    i21 = i5 & 1024;
                    if (i21 != 0) {
                        i22 = i4 | 6;
                    } else if ((i4 & 6) == 0) {
                        if (composerStartRestartGroup.changed(i2)) {
                            i23 = 4;
                        } else {
                            i23 = 2;
                        }
                        i22 = i4 | i23;
                    } else {
                        i22 = i4;
                    }
                    if ((i4 & 48) != 0) {
                        i22 |= ((i5 & 2048) == 0 || !composerStartRestartGroup.changed(imeOptions)) ? 16 : 32;
                    }
                    i24 = i22;
                    i25 = i5 & 4096;
                    if (i25 != 0) {
                        i26 = i24 | RendererCapabilities.DECODER_SUPPORT_MASK;
                    } else if ((i4 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                        if (composerStartRestartGroup.changed(keyboardActions)) {
                            i27 = 256;
                        } else {
                            i27 = 128;
                        }
                        i26 = i24 | i27;
                    } else {
                        i26 = i24;
                    }
                    i28 = i5 & 8192;
                    if (i28 != 0) {
                        i30 = i26 | 3072;
                    } else {
                        i29 = i26;
                        if ((i4 & 3072) == 0) {
                            i30 = i29 | (composerStartRestartGroup.changed(z2) ? 2048 : 1024);
                        } else {
                            i30 = i29;
                        }
                    }
                    i31 = i5 & 16384;
                    if (i31 != 0) {
                        i33 = i30 | 24576;
                    } else {
                        i32 = i30;
                        if ((i4 & 24576) == 0) {
                            i33 = i32 | (composerStartRestartGroup.changed(z3) ? 16384 : 8192);
                        } else {
                            i33 = i32;
                        }
                    }
                    i34 = i5 & 32768;
                    if (i34 != 0) {
                        i33 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    } else if ((i4 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        i33 |= composerStartRestartGroup.changedInstance(dm3Var) ? 131072 : 65536;
                    }
                    i35 = i5 & 65536;
                    if (i35 != 0) {
                        i33 |= 1572864;
                    } else if ((i4 & 1572864) == 0) {
                        i33 |= composerStartRestartGroup.changed(textFieldScrollerPosition) ? 1048576 : 524288;
                    }
                    if ((i6 & 306783379) == 306783378) {
                        z4 = true;
                    } else {
                        z4 = true;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i6 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        jh2Var = null;
                        if ((i3 & 1) != 0) {
                            if (i50 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i7 != 0) {
                                textStyle4 = TextStyle.Companion.getDefault();
                            } else {
                                textStyle4 = textStyle2;
                            }
                            if (i9 != 0) {
                                none = VisualTransformation.Companion.getNone();
                            }
                            if (i11 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new p12(0);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                nl3Var3 = (nl3) objRememberedValue;
                            }
                            if (i13 != 0) {
                                mutableInteractionSource2 = null;
                            }
                            if (i15 != 0) {
                                solidColor = new SolidColor(Color.Companion.m6268getUnspecified0d7_KjU(), jh2Var);
                            }
                            if (i17 != 0) {
                                z8 = true;
                            } else {
                                z8 = z;
                            }
                            if (i19 != 0) {
                                i38 = Integer.MAX_VALUE;
                            } else {
                                i38 = i;
                            }
                            if (i21 != 0) {
                                i39 = 1;
                            } else {
                                i39 = i2;
                            }
                            if ((i5 & 2048) != 0) {
                                imeOptions3 = ImeOptions.Companion.getDefault();
                                i33 &= -113;
                            } else {
                                imeOptions3 = imeOptions;
                            }
                            if (i25 != 0) {
                                keyboardActions3 = KeyboardActions.Companion.getDefault();
                            } else {
                                keyboardActions3 = keyboardActions;
                            }
                            if (i28 != 0) {
                                z9 = true;
                            } else {
                                z9 = z2;
                            }
                            if (i31 != 0) {
                                z10 = false;
                            } else {
                                z10 = z3;
                            }
                            if (i34 != 0) {
                                lambda$559628295$foundation = ComposableSingletons$CoreTextFieldKt.INSTANCE.getLambda$559628295$foundation();
                            } else {
                                lambda$559628295$foundation = dm3Var;
                            }
                            boolean z326 = z8;
                            textStyle2 = textStyle4;
                            modifier4 = modifier2;
                            z11 = z9;
                            nl3Var5 = nl3Var3;
                            z12 = z326;
                            VisualTransformation visualTransformation18 = none;
                            imeOptions4 = imeOptions3;
                            brush2 = solidColor;
                            visualTransformation3 = visualTransformation18;
                            i40 = i33;
                            if (i35 != 0) {
                                textFieldScrollerPosition3 = null;
                            } else {
                                textFieldScrollerPosition3 = textFieldScrollerPosition;
                            }
                        } else {
                            if (i50 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i7 != 0) {
                                textStyle4 = TextStyle.Companion.getDefault();
                            } else {
                                textStyle4 = textStyle2;
                            }
                            if (i9 != 0) {
                                none = VisualTransformation.Companion.getNone();
                            }
                            if (i11 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new p12(0);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                nl3Var3 = (nl3) objRememberedValue;
                            }
                            if (i13 != 0) {
                                mutableInteractionSource2 = null;
                            }
                            if (i15 != 0) {
                                solidColor = new SolidColor(Color.Companion.m6268getUnspecified0d7_KjU(), jh2Var);
                            }
                            if (i17 != 0) {
                                z8 = true;
                            } else {
                                z8 = z;
                            }
                            if (i19 != 0) {
                                i38 = Integer.MAX_VALUE;
                            } else {
                                i38 = i;
                            }
                            if (i21 != 0) {
                                i39 = 1;
                            } else {
                                i39 = i2;
                            }
                            if ((i5 & 2048) != 0) {
                                imeOptions3 = ImeOptions.Companion.getDefault();
                                i33 &= -113;
                            } else {
                                imeOptions3 = imeOptions;
                            }
                            if (i25 != 0) {
                                keyboardActions3 = KeyboardActions.Companion.getDefault();
                            } else {
                                keyboardActions3 = keyboardActions;
                            }
                            if (i28 != 0) {
                                z9 = true;
                            } else {
                                z9 = z2;
                            }
                            if (i31 != 0) {
                                z10 = false;
                            } else {
                                z10 = z3;
                            }
                            if (i34 != 0) {
                                lambda$559628295$foundation = ComposableSingletons$CoreTextFieldKt.INSTANCE.getLambda$559628295$foundation();
                            } else {
                                lambda$559628295$foundation = dm3Var;
                            }
                            boolean z327 = z8;
                            textStyle2 = textStyle4;
                            modifier4 = modifier2;
                            z11 = z9;
                            nl3Var5 = nl3Var3;
                            z12 = z327;
                            VisualTransformation visualTransformation19 = none;
                            imeOptions4 = imeOptions3;
                            brush2 = solidColor;
                            visualTransformation3 = visualTransformation19;
                            i40 = i33;
                            if (i35 != 0) {
                                textFieldScrollerPosition3 = null;
                            } else {
                                textFieldScrollerPosition3 = textFieldScrollerPosition;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        brush3 = brush2;
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(31062401, i6, i40, "androidx.compose.foundation.text.CoreTextField (CoreTextField.kt:208)");
                        }
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue2 == companion.getEmpty()) {
                            objRememberedValue2 = new FocusRequester();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        focusRequester = (FocusRequester) objRememberedValue2;
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        i41 = i6;
                        if (objRememberedValue3 == companion.getEmpty()) {
                            objRememberedValue3 = LegacyPlatformTextInputServiceAdapter_androidKt.createLegacyPlatformTextInputServiceAdapter();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        legacyPlatformTextInputServiceAdapter = (LegacyPlatformTextInputServiceAdapter) objRememberedValue3;
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue4 == companion.getEmpty()) {
                            objRememberedValue4 = new TextInputService(legacyPlatformTextInputServiceAdapter);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        textInputService = (TextInputService) objRememberedValue4;
                        density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        resolver = (FontFamily.Resolver) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalFontFamilyResolver());
                        jM3048getBackgroundColor0d7_KjU = ((TextSelectionColors) composerStartRestartGroup.consume(TextSelectionColorsKt.getLocalTextSelectionColors())).m3048getBackgroundColor0d7_KjU();
                        focusManager = (FocusManager) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalFocusManager());
                        windowInfo = (WindowInfo) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalWindowInfo());
                        textStyle5 = textStyle2;
                        softwareKeyboardController = (SoftwareKeyboardController) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalSoftwareKeyboardController());
                        z13 = z12;
                        if (i38 == 1) {
                            orientation = Orientation.Vertical;
                        } else {
                            orientation = Orientation.Vertical;
                        }
                        if (textFieldScrollerPosition3 == null) {
                            composerStartRestartGroup.startReplaceGroup(-213744626);
                            Object[] objArr6 = {orientation};
                            Saver<TextFieldScrollerPosition, Object> saver6 = TextFieldScrollerPosition.Companion.getSaver();
                            zChanged3 = composerStartRestartGroup.changed(orientation.ordinal());
                            objRememberedValue18 = composerStartRestartGroup.rememberedValue();
                            if (zChanged3) {
                                i49 = 0;
                                objRememberedValue18 = new u12(orientation, i49);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue18);
                            } else {
                                i49 = 0;
                                objRememberedValue18 = new u12(orientation, i49);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue18);
                            }
                            textFieldScrollerPosition4 = (TextFieldScrollerPosition) RememberSaveableKt.m5624rememberSaveable(objArr6, (Saver) saver6, (ll3) objRememberedValue18, composerStartRestartGroup, i49);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-213745742);
                            composerStartRestartGroup.endReplaceGroup();
                            textFieldScrollerPosition4 = textFieldScrollerPosition3;
                        }
                        if (textFieldScrollerPosition4.getOrientation() != orientation) {
                            if (orientation == Orientation.Vertical) {
                                str = "only single-line, non-wrap text fields can scroll horizontally";
                            } else {
                                str = "single-line, non-wrap text fields can only scroll horizontally";
                            }
                            throw new IllegalArgumentException("Mismatching scroller orientation; ".concat(str));
                        }
                        i42 = i41 & 14;
                        if (i42 == 4) {
                            z14 = true;
                        } else {
                            z14 = false;
                        }
                        if ((i41 & 57344) == 16384) {
                            z15 = true;
                        } else {
                            z15 = false;
                        }
                        z16 = z14 | z15;
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (z16) {
                            transformedTextFilterWithValidation = ValidatingOffsetMappingKt.filterWithValidation(visualTransformation3, textFieldValue.getAnnotatedString());
                            textRangeM8740getCompositionMzsxiRA = textFieldValue.m8740getCompositionMzsxiRA();
                            if (textRangeM8740getCompositionMzsxiRA != null) {
                                textFieldScrollerPosition5 = textFieldScrollerPosition4;
                                transformedTextM2604applyCompositionDecoration72CqOWE = TextFieldDelegate.Companion.m2604applyCompositionDecoration72CqOWE(textRangeM8740getCompositionMzsxiRA.m8495unboximpl(), transformedTextFilterWithValidation);
                                if (transformedTextM2604applyCompositionDecoration72CqOWE != null) {
                                    objRememberedValue5 = transformedTextM2604applyCompositionDecoration72CqOWE;
                                }
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            } else {
                                textFieldScrollerPosition5 = textFieldScrollerPosition4;
                            }
                            objRememberedValue5 = transformedTextFilterWithValidation;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            transformedTextFilterWithValidation = ValidatingOffsetMappingKt.filterWithValidation(visualTransformation3, textFieldValue.getAnnotatedString());
                            textRangeM8740getCompositionMzsxiRA = textFieldValue.m8740getCompositionMzsxiRA();
                            if (textRangeM8740getCompositionMzsxiRA != null) {
                                textFieldScrollerPosition5 = textFieldScrollerPosition4;
                                transformedTextM2604applyCompositionDecoration72CqOWE = TextFieldDelegate.Companion.m2604applyCompositionDecoration72CqOWE(textRangeM8740getCompositionMzsxiRA.m8495unboximpl(), transformedTextFilterWithValidation);
                                if (transformedTextM2604applyCompositionDecoration72CqOWE != null) {
                                    objRememberedValue5 = transformedTextM2604applyCompositionDecoration72CqOWE;
                                }
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            } else {
                                textFieldScrollerPosition5 = textFieldScrollerPosition4;
                            }
                            objRememberedValue5 = transformedTextFilterWithValidation;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        TransformedText transformedText6 = (TransformedText) objRememberedValue5;
                        text = transformedText6.getText();
                        offsetMapping = transformedText6.getOffsetMapping();
                        currentRecomposeScope = ComposablesKt.getCurrentRecomposeScope(composerStartRestartGroup, 0);
                        zChanged = composerStartRestartGroup.changed(softwareKeyboardController);
                        objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue6 = new LegacyTextFieldState(new TextDelegate(text, textStyle5, 0, 0, z13, 0, density, resolver, null, 300, null), currentRecomposeScope, softwareKeyboardController);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        } else {
                            objRememberedValue6 = new LegacyTextFieldState(new TextDelegate(text, textStyle5, 0, 0, z13, 0, density, resolver, null, 300, null), currentRecomposeScope, softwareKeyboardController);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        }
                        legacyTextFieldState = (LegacyTextFieldState) objRememberedValue6;
                        KeyboardActions keyboardActions9 = keyboardActions3;
                        legacyTextFieldState.m2569updatefnh65Uc(textFieldValue.getAnnotatedString(), text, textStyle5, z13, r55, resolver, nl3Var, keyboardActions9, focusManager, jM3048getBackgroundColor0d7_KjU);
                        legacyTextFieldState.getProcessor().reset(textFieldValue, legacyTextFieldState.getInputSession());
                        objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue7 == companion.getEmpty()) {
                            objRememberedValue7 = new UndoManager(0, 1, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                        }
                        undoManager = (UndoManager) objRememberedValue7;
                        UndoManager.snapshotIfNeeded$default(undoManager, textFieldValue, 0L, 2, null);
                        objRememberedValue8 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue8 == companion.getEmpty()) {
                            objRememberedValue8 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
                        }
                        y22Var = (y22) objRememberedValue8;
                        objRememberedValue9 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue9 == companion.getEmpty()) {
                            objRememberedValue9 = BringIntoViewRequesterKt.BringIntoViewRequester();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue9);
                        }
                        bringIntoViewRequester = (BringIntoViewRequester) objRememberedValue9;
                        objRememberedValue10 = composerStartRestartGroup.rememberedValue();
                        MutableInteractionSource mutableInteractionSource8 = mutableInteractionSource2;
                        if (objRememberedValue10 == companion.getEmpty()) {
                            objRememberedValue10 = new TextFieldSelectionManager(undoManager);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue10);
                        }
                        textFieldSelectionManager = (TextFieldSelectionManager) objRememberedValue10;
                        textFieldSelectionManager.setOffsetMapping$foundation(offsetMapping);
                        textFieldSelectionManager.setVisualTransformation$foundation(visualTransformation3);
                        textFieldSelectionManager.setOnValueChange$foundation(legacyTextFieldState.getOnValueChange());
                        textFieldSelectionManager.setState$foundation(legacyTextFieldState);
                        textFieldSelectionManager.setValue$foundation(textFieldValue);
                        textFieldSelectionManager.setClipboard$foundation((Clipboard) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalClipboard()));
                        textFieldSelectionManager.setCoroutineScope$foundation(y22Var);
                        textFieldSelectionManager.setTextToolbar((TextToolbar) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalTextToolbar()));
                        textFieldSelectionManager.setHapticFeedBack((HapticFeedback) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalHapticFeedback()));
                        textFieldSelectionManager.setFocusRequester(focusRequester);
                        boolean z311118 = !z10;
                        textFieldSelectionManager.setEditable(z311118);
                        textFieldSelectionManager.setEnabled(z11);
                        if (ComposeFoundationFlags.isSmartSelectionEnabled) {
                            composerStartRestartGroup.startReplaceGroup(1966756105);
                            textFieldSelectionManager.setPlatformSelectionBehaviors$foundation(PlatformSelectionBehaviors_androidKt.rememberPlatformSelectionBehaviors(SelectedTextType.EditableText, textStyle5.getLocaleList(), composerStartRestartGroup, 6));
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1966902177);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        legacyTextFieldState.getHasFocus();
                        companion2 = Modifier.Companion;
                        boolean zChangedInstance119 = composerStartRestartGroup.changedInstance(legacyTextFieldState);
                        i43 = i40 & 7168;
                        i44 = i40;
                        if (i43 == 2048) {
                            z17 = true;
                        } else {
                            z17 = false;
                        }
                        boolean z311119 = z17 | zChangedInstance119;
                        if ((i44 & 57344) == 16384) {
                            z18 = true;
                        } else {
                            z18 = false;
                        }
                        boolean zChangedInstance1110 = z311119 | z18 | composerStartRestartGroup.changedInstance(textInputService);
                        if (i42 == 4) {
                            z19 = true;
                        } else {
                            z19 = false;
                        }
                        boolean z3111110 = zChangedInstance1110 | z19;
                        i45 = (i44 & 112) ^ 48;
                        if (i45 > 32) {
                            textInputService2 = textInputService;
                            if ((i44 & 48) != 32) {
                                z20 = true;
                            } else {
                                z20 = false;
                            }
                        } else {
                            textInputService2 = textInputService;
                            if ((i44 & 48) != 32) {
                                z20 = true;
                            } else {
                                z20 = false;
                            }
                        }
                        zChangedInstance = z3111110 | z20 | composerStartRestartGroup.changedInstance(offsetMapping) | composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(bringIntoViewRequester) | composerStartRestartGroup.changedInstance(textFieldSelectionManager);
                        objRememberedValue11 = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance) {
                            offsetMapping2 = offsetMapping;
                            final ImeOptions imeOptions1113 = imeOptions4;
                            final boolean z3111111 = z11;
                            final boolean z3111112 = z10;
                            objRememberedValue11 = new nl3() { // from class: v12
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z3111111, z3111112, textInputService2, textFieldValue, imeOptions1113, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                                }
                            };
                            legacyTextFieldState2 = legacyTextFieldState;
                            z21 = z3111111;
                            textFieldValue2 = textFieldValue;
                            imeOptions5 = imeOptions1113;
                            textFieldSelectionManager2 = textFieldSelectionManager;
                            y22Var2 = y22Var;
                            bringIntoViewRequester2 = bringIntoViewRequester;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                        } else {
                            offsetMapping2 = offsetMapping;
                            final ImeOptions imeOptions1114 = imeOptions4;
                            final boolean z3111113 = z11;
                            final boolean z3111114 = z10;
                            objRememberedValue11 = new nl3() { // from class: v12
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z3111113, z3111114, textInputService2, textFieldValue, imeOptions1114, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                                }
                            };
                            legacyTextFieldState2 = legacyTextFieldState;
                            z21 = z3111113;
                            textFieldValue2 = textFieldValue;
                            imeOptions5 = imeOptions1114;
                            textFieldSelectionManager2 = textFieldSelectionManager;
                            y22Var2 = y22Var;
                            bringIntoViewRequester2 = bringIntoViewRequester;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                        }
                        final BringIntoViewRequester bringIntoViewRequester9 = bringIntoViewRequester2;
                        Modifier modifierTextFieldFocusModifier7 = TextFieldGestureModifiersKt.textFieldFocusModifier(companion2, z21, focusRequester, mutableInteractionSource8, (nl3) objRememberedValue11);
                        if (z21) {
                            z22 = false;
                        } else {
                            z22 = false;
                        }
                        stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Boolean.valueOf(z22), composerStartRestartGroup, 0);
                        j59 j59Var7 = j59.a;
                        boolean zChanged17 = composerStartRestartGroup.changed(stateRememberUpdatedState) | composerStartRestartGroup.changedInstance(legacyTextFieldState2) | composerStartRestartGroup.changedInstance(textInputService2) | composerStartRestartGroup.changedInstance(textFieldSelectionManager2);
                        if (i45 > 32) {
                            imeOptions6 = imeOptions5;
                            if ((i44 & 48) != 32) {
                                z23 = true;
                            } else {
                                z23 = false;
                            }
                        } else {
                            imeOptions6 = imeOptions5;
                            if ((i44 & 48) != 32) {
                                z23 = true;
                            } else {
                                z23 = false;
                            }
                        }
                        z24 = zChanged17 | z23;
                        objRememberedValue12 = composerStartRestartGroup.rememberedValue();
                        if (z24) {
                            ImeOptions imeOptions1115 = imeOptions6;
                            TextInputService textInputService16 = textInputService2;
                            TextFieldSelectionManager textFieldSelectionManager110 = textFieldSelectionManager2;
                            LegacyTextFieldState legacyTextFieldState19 = legacyTextFieldState2;
                            objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState19, stateRememberUpdatedState, textInputService16, textFieldSelectionManager110, imeOptions1115, null);
                            legacyTextFieldState3 = legacyTextFieldState19;
                            textFieldSelectionManager3 = textFieldSelectionManager110;
                            imeOptions7 = imeOptions1115;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                        } else {
                            ImeOptions imeOptions1116 = imeOptions6;
                            TextInputService textInputService17 = textInputService2;
                            TextFieldSelectionManager textFieldSelectionManager111 = textFieldSelectionManager2;
                            LegacyTextFieldState legacyTextFieldState110 = legacyTextFieldState2;
                            objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState110, stateRememberUpdatedState, textInputService17, textFieldSelectionManager111, imeOptions1116, null);
                            legacyTextFieldState3 = legacyTextFieldState110;
                            textFieldSelectionManager3 = textFieldSelectionManager111;
                            imeOptions7 = imeOptions1116;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                        }
                        imeOptions8 = imeOptions7;
                        EffectsKt.LaunchedEffect(j59Var7, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue12, composerStartRestartGroup, 6);
                        int i515 = i44 >> 3;
                        z25 = z21;
                        legacyTextFieldState4 = legacyTextFieldState3;
                        textFieldSelectionManager4 = textFieldSelectionManager3;
                        Modifier modifierTextFieldPointer8 = TextFieldPointerModifier_androidKt.textFieldPointer(companion2, textFieldSelectionManager4, z25, mutableInteractionSource8, legacyTextFieldState4, focusRequester, z10, offsetMapping2, composerStartRestartGroup, (i515 & 896) | 196614 | ((i41 >> 9) & 7168) | ((i44 << 6) & 3670016));
                        offsetMapping3 = offsetMapping2;
                        final Modifier modifierTextFieldDraw8 = CoreTextField_androidKt.textFieldDraw(companion2, legacyTextFieldState4, textFieldValue2, offsetMapping3);
                        boolean zChangedInstance1111 = composerStartRestartGroup.changedInstance(legacyTextFieldState4);
                        if (i43 == 2048) {
                            z26 = true;
                        } else {
                            z26 = false;
                        }
                        boolean zChanged18 = zChangedInstance1111 | z26 | composerStartRestartGroup.changed(windowInfo) | composerStartRestartGroup.changedInstance(textFieldSelectionManager4);
                        if (i42 == 4) {
                            z27 = true;
                        } else {
                            z27 = false;
                        }
                        zChangedInstance2 = zChanged18 | z27 | composerStartRestartGroup.changedInstance(offsetMapping3);
                        objRememberedValue13 = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance2) {
                            objRememberedValue13 = new nl3() { // from class: w12
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                                }
                            };
                            textFieldSelectionManager5 = textFieldSelectionManager4;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                        } else {
                            objRememberedValue13 = new nl3() { // from class: w12
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                                }
                            };
                            textFieldSelectionManager5 = textFieldSelectionManager4;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                        }
                        final Modifier modifierOnGloballyPositioned8 = OnGloballyPositionedModifierKt.onGloballyPositioned(companion2, (nl3) objRememberedValue13);
                        textFieldSelectionManager6 = textFieldSelectionManager5;
                        CoreTextFieldSemanticsModifier coreTextFieldSemanticsModifier8 = new CoreTextFieldSemanticsModifier(transformedText6, textFieldValue, legacyTextFieldState4, z10, z25, visualTransformation3 instanceof PasswordVisualTransformation, offsetMapping3, textFieldSelectionManager6, imeOptions8, focusRequester);
                        final VisualTransformation visualTransformation110 = visualTransformation3;
                        if (z25 != 0) {
                            z28 = false;
                        } else {
                            z28 = false;
                        }
                        final Modifier modifierTextFieldCursor8 = CoreTextField_androidKt.textFieldCursor(companion2, legacyTextFieldState4, textFieldValue, offsetMapping3, brush3, z28);
                        zChangedInstance3 = composerStartRestartGroup.changedInstance(textFieldSelectionManager6);
                        objRememberedValue14 = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance3) {
                            i46 = 0;
                            objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                        } else {
                            i46 = 0;
                            objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                        }
                        EffectsKt.DisposableEffect(textFieldSelectionManager6, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue14, composerStartRestartGroup, i46);
                        boolean zChangedInstance1112 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changedInstance(textInputService2);
                        if (i42 == 4) {
                            z29 = true;
                        } else {
                            z29 = false;
                        }
                        z30 = z29 | zChangedInstance1112 | ((i45 <= 32 && composerStartRestartGroup.changed(imeOptions8)) || (i44 & 48) == 32);
                        objRememberedValue15 = composerStartRestartGroup.rememberedValue();
                        if (z30) {
                            objRememberedValue15 = new nl3() { // from class: h12
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                        } else {
                            objRememberedValue15 = new nl3() { // from class: h12
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                        }
                        EffectsKt.DisposableEffect(imeOptions8, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue15, composerStartRestartGroup, i515 & 14);
                        nl3<TextFieldValue, j59> onValueChange8 = legacyTextFieldState4.getOnValueChange();
                        i47 = i38;
                        if (i47 == 1) {
                            z31 = true;
                        } else {
                            z31 = false;
                        }
                        Modifier modifierM2614textFieldKeyInput2WJ9YEU8 = TextFieldKeyInputKt.m2614textFieldKeyInput2WJ9YEU(companion2, legacyTextFieldState4, textFieldSelectionManager6, textFieldValue, onValueChange8, z311118, z31, offsetMapping3, undoManager, imeOptions8.m8688getImeActioneUduSuo());
                        iM8689getKeyboardTypePjHm6EE = imeOptions8.m8689getKeyboardTypePjHm6EE();
                        companion3 = KeyboardType.Companion;
                        if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion3.m8731getPasswordPjHm6EE())) {
                            z32 = false;
                        } else {
                            z32 = false;
                        }
                        boolean zCoreTextField$lambda$111 = CoreTextField$lambda$14(stateRememberUpdatedState);
                        zChanged2 = composerStartRestartGroup.changed(z32) | composerStartRestartGroup.changedInstance(legacyPlatformTextInputServiceAdapter);
                        objRememberedValue16 = composerStartRestartGroup.rememberedValue();
                        if (zChanged2) {
                            objRememberedValue16 = new ll3() { // from class: i12
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                        } else {
                            objRememberedValue16 = new ll3() { // from class: i12
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                        }
                        Modifier modifierStylusHandwriting8 = StylusHandwritingKt.stylusHandwriting(companion2, zCoreTextField$lambda$111, z32, (ll3) objRememberedValue16);
                        y22 y22Var10 = y22Var2;
                        brushM2447resolveAutofillHighlightWkMShQ = AutofillHighlightKt.m2447resolveAutofillHighlightWkMShQ((Brush) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightBrush()), ((Color) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightColor())).m6242unboximpl(), AutofillHighlight_androidKt.autofillHighlightColor());
                        zChangedInstance4 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changed(brushM2447resolveAutofillHighlightWkMShQ);
                        objRememberedValue17 = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance4) {
                            i48 = 0;
                            objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                        } else {
                            i48 = 0;
                            objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                        }
                        Modifier modifierDrawWithContent8 = DrawModifierKt.drawWithContent(companion2, (nl3) objRememberedValue17);
                        OverscrollEffect overscrollEffectRememberTextFieldOverscrollEffect8 = TextFieldScroll_androidKt.rememberTextFieldOverscrollEffect(composerStartRestartGroup, i48);
                        Modifier modifier19 = modifier4;
                        Modifier modifierThen8 = previewKeyEventToDeselectOnBack(TextFieldFocusModifier_androidKt.interceptDPadAndMoveFocus(LegacyAdaptingPlatformTextInputModifierNodeKt.legacyTextInputAdapter(modifier19.then(modifierDrawWithContent8), legacyPlatformTextInputServiceAdapter, legacyTextFieldState4, textFieldSelectionManager6).then(modifierStylusHandwriting8).then(modifierTextFieldFocusModifier7), legacyTextFieldState4, focusManager), legacyTextFieldState4, textFieldSelectionManager6).then(modifierM2614textFieldKeyInput2WJ9YEU8);
                        final TextFieldScrollerPosition textFieldScrollerPosition13 = textFieldScrollerPosition5;
                        Modifier modifierAddContextMenuComponents8 = addContextMenuComponents(OnGloballyPositionedModifierKt.onGloballyPositioned(TextFieldScrollKt.textFieldScrollable(modifierThen8, textFieldScrollerPosition13, mutableInteractionSource8, z25, overscrollEffectRememberTextFieldOverscrollEffect8).then(modifierTextFieldPointer8).then(coreTextFieldSemanticsModifier8), new nl3() { // from class: r12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$21(legacyTextFieldState4, (LayoutCoordinates) obj);
                            }
                        }), textFieldSelectionManager6, y22Var10);
                        if (z25) {
                            i48 = 1;
                        }
                        if (i48 != 0) {
                            modifierTextFieldMagnifier = TextFieldSelectionManager_androidKt.textFieldMagnifier(companion2, textFieldSelectionManager6);
                        } else {
                            modifierTextFieldMagnifier = companion2;
                        }
                        final Modifier modifier110 = modifierTextFieldMagnifier;
                        final boolean z3111115 = z10;
                        final dm3 dm3Var10 = lambda$559628295$foundation;
                        final int i516 = i39;
                        final boolean z47 = i48;
                        CoreTextFieldRootBox(modifierAddContextMenuComponents8, textFieldSelectionManager6, ComposableLambdaKt.rememberComposableLambda(-814563849, true, new bm3() { // from class: s12
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return CoreTextFieldKt.CoreTextField$lambda$22(dm3Var10, legacyTextFieldState4, textStyle5, i516, i47, textFieldScrollerPosition13, textFieldValue, visualTransformation110, modifierTextFieldCursor8, modifierTextFieldDraw8, modifierOnGloballyPositioned8, modifier110, bringIntoViewRequester9, textFieldSelectionManager6, z47, z3111115, nl3Var5, offsetMapping3, density, (Composer) obj, iIntValue);
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, RendererCapabilities.DECODER_SUPPORT_MASK);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        dm3Var2 = dm3Var10;
                        i37 = i516;
                        composer2 = composerStartRestartGroup;
                        nl3Var4 = nl3Var5;
                        z7 = z3111115;
                        textFieldScrollerPosition2 = textFieldScrollerPosition3;
                        imeOptions2 = imeOptions8;
                        z6 = z25;
                        mutableInteractionSource2 = mutableInteractionSource8;
                        z5 = z13;
                        keyboardActions2 = keyboardActions9;
                        modifier3 = modifier19;
                        i36 = i47;
                        visualTransformation2 = visualTransformation110;
                        solidColor = brush3;
                        textStyle3 = textStyle5;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        z5 = z;
                        imeOptions2 = imeOptions;
                        keyboardActions2 = keyboardActions;
                        dm3Var2 = dm3Var;
                        textFieldScrollerPosition2 = textFieldScrollerPosition;
                        composer2 = composerStartRestartGroup;
                        textStyle3 = textStyle2;
                        nl3Var4 = nl3Var3;
                        visualTransformation2 = none;
                        modifier3 = modifier2;
                        i36 = i;
                        i37 = i2;
                        z6 = z2;
                        z7 = z3;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: t12
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return CoreTextFieldKt.CoreTextField$lambda$23(textFieldValue, nl3Var, modifier3, textStyle3, visualTransformation2, nl3Var4, mutableInteractionSource2, solidColor, z5, i36, i37, imeOptions2, keyboardActions2, z6, z7, dm3Var2, textFieldScrollerPosition2, i3, i4, i5, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i6 |= 805306368;
                i21 = i5 & 1024;
                if (i21 != 0) {
                    i22 = i4 | 6;
                } else if ((i4 & 6) == 0) {
                    if (composerStartRestartGroup.changed(i2)) {
                        i23 = 4;
                    } else {
                        i23 = 2;
                    }
                    i22 = i4 | i23;
                } else {
                    i22 = i4;
                }
                if ((i4 & 48) != 0) {
                    i22 |= ((i5 & 2048) == 0 || !composerStartRestartGroup.changed(imeOptions)) ? 16 : 32;
                }
                i24 = i22;
                i25 = i5 & 4096;
                if (i25 != 0) {
                    i26 = i24 | RendererCapabilities.DECODER_SUPPORT_MASK;
                } else if ((i4 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    if (composerStartRestartGroup.changed(keyboardActions)) {
                        i27 = 256;
                    } else {
                        i27 = 128;
                    }
                    i26 = i24 | i27;
                } else {
                    i26 = i24;
                }
                i28 = i5 & 8192;
                if (i28 != 0) {
                    i30 = i26 | 3072;
                } else {
                    i29 = i26;
                    if ((i4 & 3072) == 0) {
                        i30 = i29 | (composerStartRestartGroup.changed(z2) ? 2048 : 1024);
                    } else {
                        i30 = i29;
                    }
                }
                i31 = i5 & 16384;
                if (i31 != 0) {
                    i33 = i30 | 24576;
                } else {
                    i32 = i30;
                    if ((i4 & 24576) == 0) {
                        i33 = i32 | (composerStartRestartGroup.changed(z3) ? 16384 : 8192);
                    } else {
                        i33 = i32;
                    }
                }
                i34 = i5 & 32768;
                if (i34 != 0) {
                    i33 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i4 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    i33 |= composerStartRestartGroup.changedInstance(dm3Var) ? 131072 : 65536;
                }
                i35 = i5 & 65536;
                if (i35 != 0) {
                    i33 |= 1572864;
                } else if ((i4 & 1572864) == 0) {
                    i33 |= composerStartRestartGroup.changed(textFieldScrollerPosition) ? 1048576 : 524288;
                }
                if ((i6 & 306783379) == 306783378) {
                    z4 = true;
                } else {
                    z4 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i6 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    jh2Var = null;
                    if ((i3 & 1) != 0) {
                        if (i50 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i7 != 0) {
                            textStyle4 = TextStyle.Companion.getDefault();
                        } else {
                            textStyle4 = textStyle2;
                        }
                        if (i9 != 0) {
                            none = VisualTransformation.Companion.getNone();
                        }
                        if (i11 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new p12(0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            nl3Var3 = (nl3) objRememberedValue;
                        }
                        if (i13 != 0) {
                            mutableInteractionSource2 = null;
                        }
                        if (i15 != 0) {
                            solidColor = new SolidColor(Color.Companion.m6268getUnspecified0d7_KjU(), jh2Var);
                        }
                        if (i17 != 0) {
                            z8 = true;
                        } else {
                            z8 = z;
                        }
                        if (i19 != 0) {
                            i38 = Integer.MAX_VALUE;
                        } else {
                            i38 = i;
                        }
                        if (i21 != 0) {
                            i39 = 1;
                        } else {
                            i39 = i2;
                        }
                        if ((i5 & 2048) != 0) {
                            imeOptions3 = ImeOptions.Companion.getDefault();
                            i33 &= -113;
                        } else {
                            imeOptions3 = imeOptions;
                        }
                        if (i25 != 0) {
                            keyboardActions3 = KeyboardActions.Companion.getDefault();
                        } else {
                            keyboardActions3 = keyboardActions;
                        }
                        if (i28 != 0) {
                            z9 = true;
                        } else {
                            z9 = z2;
                        }
                        if (i31 != 0) {
                            z10 = false;
                        } else {
                            z10 = z3;
                        }
                        if (i34 != 0) {
                            lambda$559628295$foundation = ComposableSingletons$CoreTextFieldKt.INSTANCE.getLambda$559628295$foundation();
                        } else {
                            lambda$559628295$foundation = dm3Var;
                        }
                        boolean z328 = z8;
                        textStyle2 = textStyle4;
                        modifier4 = modifier2;
                        z11 = z9;
                        nl3Var5 = nl3Var3;
                        z12 = z328;
                        VisualTransformation visualTransformation111 = none;
                        imeOptions4 = imeOptions3;
                        brush2 = solidColor;
                        visualTransformation3 = visualTransformation111;
                        i40 = i33;
                        if (i35 != 0) {
                            textFieldScrollerPosition3 = null;
                        } else {
                            textFieldScrollerPosition3 = textFieldScrollerPosition;
                        }
                    } else {
                        if (i50 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i7 != 0) {
                            textStyle4 = TextStyle.Companion.getDefault();
                        } else {
                            textStyle4 = textStyle2;
                        }
                        if (i9 != 0) {
                            none = VisualTransformation.Companion.getNone();
                        }
                        if (i11 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new p12(0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            nl3Var3 = (nl3) objRememberedValue;
                        }
                        if (i13 != 0) {
                            mutableInteractionSource2 = null;
                        }
                        if (i15 != 0) {
                            solidColor = new SolidColor(Color.Companion.m6268getUnspecified0d7_KjU(), jh2Var);
                        }
                        if (i17 != 0) {
                            z8 = true;
                        } else {
                            z8 = z;
                        }
                        if (i19 != 0) {
                            i38 = Integer.MAX_VALUE;
                        } else {
                            i38 = i;
                        }
                        if (i21 != 0) {
                            i39 = 1;
                        } else {
                            i39 = i2;
                        }
                        if ((i5 & 2048) != 0) {
                            imeOptions3 = ImeOptions.Companion.getDefault();
                            i33 &= -113;
                        } else {
                            imeOptions3 = imeOptions;
                        }
                        if (i25 != 0) {
                            keyboardActions3 = KeyboardActions.Companion.getDefault();
                        } else {
                            keyboardActions3 = keyboardActions;
                        }
                        if (i28 != 0) {
                            z9 = true;
                        } else {
                            z9 = z2;
                        }
                        if (i31 != 0) {
                            z10 = false;
                        } else {
                            z10 = z3;
                        }
                        if (i34 != 0) {
                            lambda$559628295$foundation = ComposableSingletons$CoreTextFieldKt.INSTANCE.getLambda$559628295$foundation();
                        } else {
                            lambda$559628295$foundation = dm3Var;
                        }
                        boolean z329 = z8;
                        textStyle2 = textStyle4;
                        modifier4 = modifier2;
                        z11 = z9;
                        nl3Var5 = nl3Var3;
                        z12 = z329;
                        VisualTransformation visualTransformation112 = none;
                        imeOptions4 = imeOptions3;
                        brush2 = solidColor;
                        visualTransformation3 = visualTransformation112;
                        i40 = i33;
                        if (i35 != 0) {
                            textFieldScrollerPosition3 = null;
                        } else {
                            textFieldScrollerPosition3 = textFieldScrollerPosition;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    brush3 = brush2;
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(31062401, i6, i40, "androidx.compose.foundation.text.CoreTextField (CoreTextField.kt:208)");
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = new FocusRequester();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    focusRequester = (FocusRequester) objRememberedValue2;
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    i41 = i6;
                    if (objRememberedValue3 == companion.getEmpty()) {
                        objRememberedValue3 = LegacyPlatformTextInputServiceAdapter_androidKt.createLegacyPlatformTextInputServiceAdapter();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    legacyPlatformTextInputServiceAdapter = (LegacyPlatformTextInputServiceAdapter) objRememberedValue3;
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue4 == companion.getEmpty()) {
                        objRememberedValue4 = new TextInputService(legacyPlatformTextInputServiceAdapter);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    textInputService = (TextInputService) objRememberedValue4;
                    density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    resolver = (FontFamily.Resolver) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalFontFamilyResolver());
                    jM3048getBackgroundColor0d7_KjU = ((TextSelectionColors) composerStartRestartGroup.consume(TextSelectionColorsKt.getLocalTextSelectionColors())).m3048getBackgroundColor0d7_KjU();
                    focusManager = (FocusManager) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalFocusManager());
                    windowInfo = (WindowInfo) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalWindowInfo());
                    textStyle5 = textStyle2;
                    softwareKeyboardController = (SoftwareKeyboardController) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalSoftwareKeyboardController());
                    z13 = z12;
                    if (i38 == 1) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Vertical;
                    }
                    if (textFieldScrollerPosition3 == null) {
                        composerStartRestartGroup.startReplaceGroup(-213744626);
                        Object[] objArr7 = {orientation};
                        Saver<TextFieldScrollerPosition, Object> saver7 = TextFieldScrollerPosition.Companion.getSaver();
                        zChanged3 = composerStartRestartGroup.changed(orientation.ordinal());
                        objRememberedValue18 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            i49 = 0;
                            objRememberedValue18 = new u12(orientation, i49);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue18);
                        } else {
                            i49 = 0;
                            objRememberedValue18 = new u12(orientation, i49);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue18);
                        }
                        textFieldScrollerPosition4 = (TextFieldScrollerPosition) RememberSaveableKt.m5624rememberSaveable(objArr7, (Saver) saver7, (ll3) objRememberedValue18, composerStartRestartGroup, i49);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-213745742);
                        composerStartRestartGroup.endReplaceGroup();
                        textFieldScrollerPosition4 = textFieldScrollerPosition3;
                    }
                    if (textFieldScrollerPosition4.getOrientation() != orientation) {
                        if (orientation == Orientation.Vertical) {
                            str = "only single-line, non-wrap text fields can scroll horizontally";
                        } else {
                            str = "single-line, non-wrap text fields can only scroll horizontally";
                        }
                        throw new IllegalArgumentException("Mismatching scroller orientation; ".concat(str));
                    }
                    i42 = i41 & 14;
                    if (i42 == 4) {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    if ((i41 & 57344) == 16384) {
                        z15 = true;
                    } else {
                        z15 = false;
                    }
                    z16 = z14 | z15;
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (z16) {
                        transformedTextFilterWithValidation = ValidatingOffsetMappingKt.filterWithValidation(visualTransformation3, textFieldValue.getAnnotatedString());
                        textRangeM8740getCompositionMzsxiRA = textFieldValue.m8740getCompositionMzsxiRA();
                        if (textRangeM8740getCompositionMzsxiRA != null) {
                            textFieldScrollerPosition5 = textFieldScrollerPosition4;
                            transformedTextM2604applyCompositionDecoration72CqOWE = TextFieldDelegate.Companion.m2604applyCompositionDecoration72CqOWE(textRangeM8740getCompositionMzsxiRA.m8495unboximpl(), transformedTextFilterWithValidation);
                            if (transformedTextM2604applyCompositionDecoration72CqOWE != null) {
                                objRememberedValue5 = transformedTextM2604applyCompositionDecoration72CqOWE;
                            }
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            textFieldScrollerPosition5 = textFieldScrollerPosition4;
                        }
                        objRememberedValue5 = transformedTextFilterWithValidation;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    } else {
                        transformedTextFilterWithValidation = ValidatingOffsetMappingKt.filterWithValidation(visualTransformation3, textFieldValue.getAnnotatedString());
                        textRangeM8740getCompositionMzsxiRA = textFieldValue.m8740getCompositionMzsxiRA();
                        if (textRangeM8740getCompositionMzsxiRA != null) {
                            textFieldScrollerPosition5 = textFieldScrollerPosition4;
                            transformedTextM2604applyCompositionDecoration72CqOWE = TextFieldDelegate.Companion.m2604applyCompositionDecoration72CqOWE(textRangeM8740getCompositionMzsxiRA.m8495unboximpl(), transformedTextFilterWithValidation);
                            if (transformedTextM2604applyCompositionDecoration72CqOWE != null) {
                                objRememberedValue5 = transformedTextM2604applyCompositionDecoration72CqOWE;
                            }
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            textFieldScrollerPosition5 = textFieldScrollerPosition4;
                        }
                        objRememberedValue5 = transformedTextFilterWithValidation;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    TransformedText transformedText7 = (TransformedText) objRememberedValue5;
                    text = transformedText7.getText();
                    offsetMapping = transformedText7.getOffsetMapping();
                    currentRecomposeScope = ComposablesKt.getCurrentRecomposeScope(composerStartRestartGroup, 0);
                    zChanged = composerStartRestartGroup.changed(softwareKeyboardController);
                    objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue6 = new LegacyTextFieldState(new TextDelegate(text, textStyle5, 0, 0, z13, 0, density, resolver, null, 300, null), currentRecomposeScope, softwareKeyboardController);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    } else {
                        objRememberedValue6 = new LegacyTextFieldState(new TextDelegate(text, textStyle5, 0, 0, z13, 0, density, resolver, null, 300, null), currentRecomposeScope, softwareKeyboardController);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    }
                    legacyTextFieldState = (LegacyTextFieldState) objRememberedValue6;
                    KeyboardActions keyboardActions10 = keyboardActions3;
                    legacyTextFieldState.m2569updatefnh65Uc(textFieldValue.getAnnotatedString(), text, textStyle5, z13, r55, resolver, nl3Var, keyboardActions10, focusManager, jM3048getBackgroundColor0d7_KjU);
                    legacyTextFieldState.getProcessor().reset(textFieldValue, legacyTextFieldState.getInputSession());
                    objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue7 == companion.getEmpty()) {
                        objRememberedValue7 = new UndoManager(0, 1, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                    }
                    undoManager = (UndoManager) objRememberedValue7;
                    UndoManager.snapshotIfNeeded$default(undoManager, textFieldValue, 0L, 2, null);
                    objRememberedValue8 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue8 == companion.getEmpty()) {
                        objRememberedValue8 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
                    }
                    y22Var = (y22) objRememberedValue8;
                    objRememberedValue9 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue9 == companion.getEmpty()) {
                        objRememberedValue9 = BringIntoViewRequesterKt.BringIntoViewRequester();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue9);
                    }
                    bringIntoViewRequester = (BringIntoViewRequester) objRememberedValue9;
                    objRememberedValue10 = composerStartRestartGroup.rememberedValue();
                    MutableInteractionSource mutableInteractionSource9 = mutableInteractionSource2;
                    if (objRememberedValue10 == companion.getEmpty()) {
                        objRememberedValue10 = new TextFieldSelectionManager(undoManager);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue10);
                    }
                    textFieldSelectionManager = (TextFieldSelectionManager) objRememberedValue10;
                    textFieldSelectionManager.setOffsetMapping$foundation(offsetMapping);
                    textFieldSelectionManager.setVisualTransformation$foundation(visualTransformation3);
                    textFieldSelectionManager.setOnValueChange$foundation(legacyTextFieldState.getOnValueChange());
                    textFieldSelectionManager.setState$foundation(legacyTextFieldState);
                    textFieldSelectionManager.setValue$foundation(textFieldValue);
                    textFieldSelectionManager.setClipboard$foundation((Clipboard) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalClipboard()));
                    textFieldSelectionManager.setCoroutineScope$foundation(y22Var);
                    textFieldSelectionManager.setTextToolbar((TextToolbar) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalTextToolbar()));
                    textFieldSelectionManager.setHapticFeedBack((HapticFeedback) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalHapticFeedback()));
                    textFieldSelectionManager.setFocusRequester(focusRequester);
                    boolean z3111116 = !z10;
                    textFieldSelectionManager.setEditable(z3111116);
                    textFieldSelectionManager.setEnabled(z11);
                    if (ComposeFoundationFlags.isSmartSelectionEnabled) {
                        composerStartRestartGroup.startReplaceGroup(1966756105);
                        textFieldSelectionManager.setPlatformSelectionBehaviors$foundation(PlatformSelectionBehaviors_androidKt.rememberPlatformSelectionBehaviors(SelectedTextType.EditableText, textStyle5.getLocaleList(), composerStartRestartGroup, 6));
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1966902177);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    legacyTextFieldState.getHasFocus();
                    companion2 = Modifier.Companion;
                    boolean zChangedInstance1113 = composerStartRestartGroup.changedInstance(legacyTextFieldState);
                    i43 = i40 & 7168;
                    i44 = i40;
                    if (i43 == 2048) {
                        z17 = true;
                    } else {
                        z17 = false;
                    }
                    boolean z3111117 = z17 | zChangedInstance1113;
                    if ((i44 & 57344) == 16384) {
                        z18 = true;
                    } else {
                        z18 = false;
                    }
                    boolean zChangedInstance1114 = z3111117 | z18 | composerStartRestartGroup.changedInstance(textInputService);
                    if (i42 == 4) {
                        z19 = true;
                    } else {
                        z19 = false;
                    }
                    boolean z3111118 = zChangedInstance1114 | z19;
                    i45 = (i44 & 112) ^ 48;
                    if (i45 > 32) {
                        textInputService2 = textInputService;
                        if ((i44 & 48) != 32) {
                            z20 = true;
                        } else {
                            z20 = false;
                        }
                    } else {
                        textInputService2 = textInputService;
                        if ((i44 & 48) != 32) {
                            z20 = true;
                        } else {
                            z20 = false;
                        }
                    }
                    zChangedInstance = z3111118 | z20 | composerStartRestartGroup.changedInstance(offsetMapping) | composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(bringIntoViewRequester) | composerStartRestartGroup.changedInstance(textFieldSelectionManager);
                    objRememberedValue11 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance) {
                        offsetMapping2 = offsetMapping;
                        final ImeOptions imeOptions1117 = imeOptions4;
                        final boolean z3111119 = z11;
                        final boolean z31111110 = z10;
                        objRememberedValue11 = new nl3() { // from class: v12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z3111119, z31111110, textInputService2, textFieldValue, imeOptions1117, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                            }
                        };
                        legacyTextFieldState2 = legacyTextFieldState;
                        z21 = z3111119;
                        textFieldValue2 = textFieldValue;
                        imeOptions5 = imeOptions1117;
                        textFieldSelectionManager2 = textFieldSelectionManager;
                        y22Var2 = y22Var;
                        bringIntoViewRequester2 = bringIntoViewRequester;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                    } else {
                        offsetMapping2 = offsetMapping;
                        final ImeOptions imeOptions1118 = imeOptions4;
                        final boolean z31111111 = z11;
                        final boolean z31111112 = z10;
                        objRememberedValue11 = new nl3() { // from class: v12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z31111111, z31111112, textInputService2, textFieldValue, imeOptions1118, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                            }
                        };
                        legacyTextFieldState2 = legacyTextFieldState;
                        z21 = z31111111;
                        textFieldValue2 = textFieldValue;
                        imeOptions5 = imeOptions1118;
                        textFieldSelectionManager2 = textFieldSelectionManager;
                        y22Var2 = y22Var;
                        bringIntoViewRequester2 = bringIntoViewRequester;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                    }
                    final BringIntoViewRequester bringIntoViewRequester10 = bringIntoViewRequester2;
                    Modifier modifierTextFieldFocusModifier8 = TextFieldGestureModifiersKt.textFieldFocusModifier(companion2, z21, focusRequester, mutableInteractionSource9, (nl3) objRememberedValue11);
                    if (z21) {
                        z22 = false;
                    } else {
                        z22 = false;
                    }
                    stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Boolean.valueOf(z22), composerStartRestartGroup, 0);
                    j59 j59Var8 = j59.a;
                    boolean zChanged19 = composerStartRestartGroup.changed(stateRememberUpdatedState) | composerStartRestartGroup.changedInstance(legacyTextFieldState2) | composerStartRestartGroup.changedInstance(textInputService2) | composerStartRestartGroup.changedInstance(textFieldSelectionManager2);
                    if (i45 > 32) {
                        imeOptions6 = imeOptions5;
                        if ((i44 & 48) != 32) {
                            z23 = true;
                        } else {
                            z23 = false;
                        }
                    } else {
                        imeOptions6 = imeOptions5;
                        if ((i44 & 48) != 32) {
                            z23 = true;
                        } else {
                            z23 = false;
                        }
                    }
                    z24 = zChanged19 | z23;
                    objRememberedValue12 = composerStartRestartGroup.rememberedValue();
                    if (z24) {
                        ImeOptions imeOptions1119 = imeOptions6;
                        TextInputService textInputService18 = textInputService2;
                        TextFieldSelectionManager textFieldSelectionManager112 = textFieldSelectionManager2;
                        LegacyTextFieldState legacyTextFieldState111 = legacyTextFieldState2;
                        objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState111, stateRememberUpdatedState, textInputService18, textFieldSelectionManager112, imeOptions1119, null);
                        legacyTextFieldState3 = legacyTextFieldState111;
                        textFieldSelectionManager3 = textFieldSelectionManager112;
                        imeOptions7 = imeOptions1119;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                    } else {
                        ImeOptions imeOptions11110 = imeOptions6;
                        TextInputService textInputService19 = textInputService2;
                        TextFieldSelectionManager textFieldSelectionManager113 = textFieldSelectionManager2;
                        LegacyTextFieldState legacyTextFieldState112 = legacyTextFieldState2;
                        objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState112, stateRememberUpdatedState, textInputService19, textFieldSelectionManager113, imeOptions11110, null);
                        legacyTextFieldState3 = legacyTextFieldState112;
                        textFieldSelectionManager3 = textFieldSelectionManager113;
                        imeOptions7 = imeOptions11110;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                    }
                    imeOptions8 = imeOptions7;
                    EffectsKt.LaunchedEffect(j59Var8, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue12, composerStartRestartGroup, 6);
                    int i517 = i44 >> 3;
                    z25 = z21;
                    legacyTextFieldState4 = legacyTextFieldState3;
                    textFieldSelectionManager4 = textFieldSelectionManager3;
                    Modifier modifierTextFieldPointer9 = TextFieldPointerModifier_androidKt.textFieldPointer(companion2, textFieldSelectionManager4, z25, mutableInteractionSource9, legacyTextFieldState4, focusRequester, z10, offsetMapping2, composerStartRestartGroup, (i517 & 896) | 196614 | ((i41 >> 9) & 7168) | ((i44 << 6) & 3670016));
                    offsetMapping3 = offsetMapping2;
                    final Modifier modifierTextFieldDraw9 = CoreTextField_androidKt.textFieldDraw(companion2, legacyTextFieldState4, textFieldValue2, offsetMapping3);
                    boolean zChangedInstance1115 = composerStartRestartGroup.changedInstance(legacyTextFieldState4);
                    if (i43 == 2048) {
                        z26 = true;
                    } else {
                        z26 = false;
                    }
                    boolean zChanged110 = zChangedInstance1115 | z26 | composerStartRestartGroup.changed(windowInfo) | composerStartRestartGroup.changedInstance(textFieldSelectionManager4);
                    if (i42 == 4) {
                        z27 = true;
                    } else {
                        z27 = false;
                    }
                    zChangedInstance2 = zChanged110 | z27 | composerStartRestartGroup.changedInstance(offsetMapping3);
                    objRememberedValue13 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance2) {
                        objRememberedValue13 = new nl3() { // from class: w12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                            }
                        };
                        textFieldSelectionManager5 = textFieldSelectionManager4;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                    } else {
                        objRememberedValue13 = new nl3() { // from class: w12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                            }
                        };
                        textFieldSelectionManager5 = textFieldSelectionManager4;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                    }
                    final Modifier modifierOnGloballyPositioned9 = OnGloballyPositionedModifierKt.onGloballyPositioned(companion2, (nl3) objRememberedValue13);
                    textFieldSelectionManager6 = textFieldSelectionManager5;
                    CoreTextFieldSemanticsModifier coreTextFieldSemanticsModifier9 = new CoreTextFieldSemanticsModifier(transformedText7, textFieldValue, legacyTextFieldState4, z10, z25, visualTransformation3 instanceof PasswordVisualTransformation, offsetMapping3, textFieldSelectionManager6, imeOptions8, focusRequester);
                    final VisualTransformation visualTransformation113 = visualTransformation3;
                    if (z25 != 0) {
                        z28 = false;
                    } else {
                        z28 = false;
                    }
                    final Modifier modifierTextFieldCursor9 = CoreTextField_androidKt.textFieldCursor(companion2, legacyTextFieldState4, textFieldValue, offsetMapping3, brush3, z28);
                    zChangedInstance3 = composerStartRestartGroup.changedInstance(textFieldSelectionManager6);
                    objRememberedValue14 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance3) {
                        i46 = 0;
                        objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                    } else {
                        i46 = 0;
                        objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                    }
                    EffectsKt.DisposableEffect(textFieldSelectionManager6, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue14, composerStartRestartGroup, i46);
                    boolean zChangedInstance1116 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changedInstance(textInputService2);
                    if (i42 == 4) {
                        z29 = true;
                    } else {
                        z29 = false;
                    }
                    z30 = z29 | zChangedInstance1116 | ((i45 <= 32 && composerStartRestartGroup.changed(imeOptions8)) || (i44 & 48) == 32);
                    objRememberedValue15 = composerStartRestartGroup.rememberedValue();
                    if (z30) {
                        objRememberedValue15 = new nl3() { // from class: h12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                    } else {
                        objRememberedValue15 = new nl3() { // from class: h12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                    }
                    EffectsKt.DisposableEffect(imeOptions8, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue15, composerStartRestartGroup, i517 & 14);
                    nl3<TextFieldValue, j59> onValueChange9 = legacyTextFieldState4.getOnValueChange();
                    i47 = i38;
                    if (i47 == 1) {
                        z31 = true;
                    } else {
                        z31 = false;
                    }
                    Modifier modifierM2614textFieldKeyInput2WJ9YEU9 = TextFieldKeyInputKt.m2614textFieldKeyInput2WJ9YEU(companion2, legacyTextFieldState4, textFieldSelectionManager6, textFieldValue, onValueChange9, z3111116, z31, offsetMapping3, undoManager, imeOptions8.m8688getImeActioneUduSuo());
                    iM8689getKeyboardTypePjHm6EE = imeOptions8.m8689getKeyboardTypePjHm6EE();
                    companion3 = KeyboardType.Companion;
                    if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion3.m8731getPasswordPjHm6EE())) {
                        z32 = false;
                    } else {
                        z32 = false;
                    }
                    boolean zCoreTextField$lambda$112 = CoreTextField$lambda$14(stateRememberUpdatedState);
                    zChanged2 = composerStartRestartGroup.changed(z32) | composerStartRestartGroup.changedInstance(legacyPlatformTextInputServiceAdapter);
                    objRememberedValue16 = composerStartRestartGroup.rememberedValue();
                    if (zChanged2) {
                        objRememberedValue16 = new ll3() { // from class: i12
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                    } else {
                        objRememberedValue16 = new ll3() { // from class: i12
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                    }
                    Modifier modifierStylusHandwriting9 = StylusHandwritingKt.stylusHandwriting(companion2, zCoreTextField$lambda$112, z32, (ll3) objRememberedValue16);
                    y22 y22Var11 = y22Var2;
                    brushM2447resolveAutofillHighlightWkMShQ = AutofillHighlightKt.m2447resolveAutofillHighlightWkMShQ((Brush) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightBrush()), ((Color) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightColor())).m6242unboximpl(), AutofillHighlight_androidKt.autofillHighlightColor());
                    zChangedInstance4 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changed(brushM2447resolveAutofillHighlightWkMShQ);
                    objRememberedValue17 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance4) {
                        i48 = 0;
                        objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                    } else {
                        i48 = 0;
                        objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                    }
                    Modifier modifierDrawWithContent9 = DrawModifierKt.drawWithContent(companion2, (nl3) objRememberedValue17);
                    OverscrollEffect overscrollEffectRememberTextFieldOverscrollEffect9 = TextFieldScroll_androidKt.rememberTextFieldOverscrollEffect(composerStartRestartGroup, i48);
                    Modifier modifier111 = modifier4;
                    Modifier modifierThen9 = previewKeyEventToDeselectOnBack(TextFieldFocusModifier_androidKt.interceptDPadAndMoveFocus(LegacyAdaptingPlatformTextInputModifierNodeKt.legacyTextInputAdapter(modifier111.then(modifierDrawWithContent9), legacyPlatformTextInputServiceAdapter, legacyTextFieldState4, textFieldSelectionManager6).then(modifierStylusHandwriting9).then(modifierTextFieldFocusModifier8), legacyTextFieldState4, focusManager), legacyTextFieldState4, textFieldSelectionManager6).then(modifierM2614textFieldKeyInput2WJ9YEU9);
                    final TextFieldScrollerPosition textFieldScrollerPosition14 = textFieldScrollerPosition5;
                    Modifier modifierAddContextMenuComponents9 = addContextMenuComponents(OnGloballyPositionedModifierKt.onGloballyPositioned(TextFieldScrollKt.textFieldScrollable(modifierThen9, textFieldScrollerPosition14, mutableInteractionSource9, z25, overscrollEffectRememberTextFieldOverscrollEffect9).then(modifierTextFieldPointer9).then(coreTextFieldSemanticsModifier9), new nl3() { // from class: r12
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return CoreTextFieldKt.CoreTextField$lambda$21(legacyTextFieldState4, (LayoutCoordinates) obj);
                        }
                    }), textFieldSelectionManager6, y22Var11);
                    if (z25) {
                        i48 = 1;
                    }
                    if (i48 != 0) {
                        modifierTextFieldMagnifier = TextFieldSelectionManager_androidKt.textFieldMagnifier(companion2, textFieldSelectionManager6);
                    } else {
                        modifierTextFieldMagnifier = companion2;
                    }
                    final Modifier modifier112 = modifierTextFieldMagnifier;
                    final boolean z31111113 = z10;
                    final dm3 dm3Var11 = lambda$559628295$foundation;
                    final int i518 = i39;
                    final boolean z48 = i48;
                    CoreTextFieldRootBox(modifierAddContextMenuComponents9, textFieldSelectionManager6, ComposableLambdaKt.rememberComposableLambda(-814563849, true, new bm3() { // from class: s12
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return CoreTextFieldKt.CoreTextField$lambda$22(dm3Var11, legacyTextFieldState4, textStyle5, i518, i47, textFieldScrollerPosition14, textFieldValue, visualTransformation113, modifierTextFieldCursor9, modifierTextFieldDraw9, modifierOnGloballyPositioned9, modifier112, bringIntoViewRequester10, textFieldSelectionManager6, z48, z31111113, nl3Var5, offsetMapping3, density, (Composer) obj, iIntValue);
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, RendererCapabilities.DECODER_SUPPORT_MASK);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    dm3Var2 = dm3Var11;
                    i37 = i518;
                    composer2 = composerStartRestartGroup;
                    nl3Var4 = nl3Var5;
                    z7 = z31111113;
                    textFieldScrollerPosition2 = textFieldScrollerPosition3;
                    imeOptions2 = imeOptions8;
                    z6 = z25;
                    mutableInteractionSource2 = mutableInteractionSource9;
                    z5 = z13;
                    keyboardActions2 = keyboardActions10;
                    modifier3 = modifier111;
                    i36 = i47;
                    visualTransformation2 = visualTransformation113;
                    solidColor = brush3;
                    textStyle3 = textStyle5;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    z5 = z;
                    imeOptions2 = imeOptions;
                    keyboardActions2 = keyboardActions;
                    dm3Var2 = dm3Var;
                    textFieldScrollerPosition2 = textFieldScrollerPosition;
                    composer2 = composerStartRestartGroup;
                    textStyle3 = textStyle2;
                    nl3Var4 = nl3Var3;
                    visualTransformation2 = none;
                    modifier3 = modifier2;
                    i36 = i;
                    i37 = i2;
                    z6 = z2;
                    z7 = z3;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: t12
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return CoreTextFieldKt.CoreTextField$lambda$23(textFieldValue, nl3Var, modifier3, textStyle3, visualTransformation2, nl3Var4, mutableInteractionSource2, solidColor, z5, i36, i37, imeOptions2, keyboardActions2, z6, z7, dm3Var2, textFieldScrollerPosition2, i3, i4, i5, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i6 |= 24576;
            none = visualTransformation;
            i11 = i5 & 32;
            if (i11 != 0) {
                i6 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                nl3Var3 = nl3Var2;
            } else {
                nl3Var3 = nl3Var2;
                if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var3)) {
                        i12 = 131072;
                    } else {
                        i12 = 65536;
                    }
                    i6 |= i12;
                }
            }
            i13 = i5 & 64;
            if (i13 != 0) {
                i6 |= 1572864;
                mutableInteractionSource2 = mutableInteractionSource;
            } else {
                mutableInteractionSource2 = mutableInteractionSource;
                if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(mutableInteractionSource2)) {
                        i14 = 1048576;
                    } else {
                        i14 = 524288;
                    }
                    i6 |= i14;
                }
            }
            i15 = i5 & 128;
            if (i15 != 0) {
                i6 |= 12582912;
                solidColor = brush;
            } else {
                solidColor = brush;
                if ((i3 & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(solidColor)) {
                        i16 = 8388608;
                    } else {
                        i16 = 4194304;
                    }
                    i6 |= i16;
                }
            }
            i17 = i5 & 256;
            if (i17 != 0) {
                i6 |= 100663296;
            } else if ((i3 & 100663296) == 0) {
                if (composerStartRestartGroup.changed(z)) {
                    i18 = 67108864;
                } else {
                    i18 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i6 |= i18;
            }
            i19 = i5 & 512;
            if (i19 != 0) {
                if ((i3 & 805306368) == 0) {
                    if (composerStartRestartGroup.changed(i)) {
                        i20 = 536870912;
                    } else {
                        i20 = 268435456;
                    }
                    i6 |= i20;
                }
                i21 = i5 & 1024;
                if (i21 != 0) {
                    i22 = i4 | 6;
                } else if ((i4 & 6) == 0) {
                    if (composerStartRestartGroup.changed(i2)) {
                        i23 = 4;
                    } else {
                        i23 = 2;
                    }
                    i22 = i4 | i23;
                } else {
                    i22 = i4;
                }
                if ((i4 & 48) != 0) {
                    i22 |= ((i5 & 2048) == 0 || !composerStartRestartGroup.changed(imeOptions)) ? 16 : 32;
                }
                i24 = i22;
                i25 = i5 & 4096;
                if (i25 != 0) {
                    i26 = i24 | RendererCapabilities.DECODER_SUPPORT_MASK;
                } else if ((i4 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    if (composerStartRestartGroup.changed(keyboardActions)) {
                        i27 = 256;
                    } else {
                        i27 = 128;
                    }
                    i26 = i24 | i27;
                } else {
                    i26 = i24;
                }
                i28 = i5 & 8192;
                if (i28 != 0) {
                    i30 = i26 | 3072;
                } else {
                    i29 = i26;
                    if ((i4 & 3072) == 0) {
                        i30 = i29 | (composerStartRestartGroup.changed(z2) ? 2048 : 1024);
                    } else {
                        i30 = i29;
                    }
                }
                i31 = i5 & 16384;
                if (i31 != 0) {
                    i33 = i30 | 24576;
                } else {
                    i32 = i30;
                    if ((i4 & 24576) == 0) {
                        i33 = i32 | (composerStartRestartGroup.changed(z3) ? 16384 : 8192);
                    } else {
                        i33 = i32;
                    }
                }
                i34 = i5 & 32768;
                if (i34 != 0) {
                    i33 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i4 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    i33 |= composerStartRestartGroup.changedInstance(dm3Var) ? 131072 : 65536;
                }
                i35 = i5 & 65536;
                if (i35 != 0) {
                    i33 |= 1572864;
                } else if ((i4 & 1572864) == 0) {
                    i33 |= composerStartRestartGroup.changed(textFieldScrollerPosition) ? 1048576 : 524288;
                }
                if ((i6 & 306783379) == 306783378) {
                    z4 = true;
                } else {
                    z4 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i6 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    jh2Var = null;
                    if ((i3 & 1) != 0) {
                        if (i50 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i7 != 0) {
                            textStyle4 = TextStyle.Companion.getDefault();
                        } else {
                            textStyle4 = textStyle2;
                        }
                        if (i9 != 0) {
                            none = VisualTransformation.Companion.getNone();
                        }
                        if (i11 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new p12(0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            nl3Var3 = (nl3) objRememberedValue;
                        }
                        if (i13 != 0) {
                            mutableInteractionSource2 = null;
                        }
                        if (i15 != 0) {
                            solidColor = new SolidColor(Color.Companion.m6268getUnspecified0d7_KjU(), jh2Var);
                        }
                        if (i17 != 0) {
                            z8 = true;
                        } else {
                            z8 = z;
                        }
                        if (i19 != 0) {
                            i38 = Integer.MAX_VALUE;
                        } else {
                            i38 = i;
                        }
                        if (i21 != 0) {
                            i39 = 1;
                        } else {
                            i39 = i2;
                        }
                        if ((i5 & 2048) != 0) {
                            imeOptions3 = ImeOptions.Companion.getDefault();
                            i33 &= -113;
                        } else {
                            imeOptions3 = imeOptions;
                        }
                        if (i25 != 0) {
                            keyboardActions3 = KeyboardActions.Companion.getDefault();
                        } else {
                            keyboardActions3 = keyboardActions;
                        }
                        if (i28 != 0) {
                            z9 = true;
                        } else {
                            z9 = z2;
                        }
                        if (i31 != 0) {
                            z10 = false;
                        } else {
                            z10 = z3;
                        }
                        if (i34 != 0) {
                            lambda$559628295$foundation = ComposableSingletons$CoreTextFieldKt.INSTANCE.getLambda$559628295$foundation();
                        } else {
                            lambda$559628295$foundation = dm3Var;
                        }
                        boolean z3210 = z8;
                        textStyle2 = textStyle4;
                        modifier4 = modifier2;
                        z11 = z9;
                        nl3Var5 = nl3Var3;
                        z12 = z3210;
                        VisualTransformation visualTransformation114 = none;
                        imeOptions4 = imeOptions3;
                        brush2 = solidColor;
                        visualTransformation3 = visualTransformation114;
                        i40 = i33;
                        if (i35 != 0) {
                            textFieldScrollerPosition3 = null;
                        } else {
                            textFieldScrollerPosition3 = textFieldScrollerPosition;
                        }
                    } else {
                        if (i50 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i7 != 0) {
                            textStyle4 = TextStyle.Companion.getDefault();
                        } else {
                            textStyle4 = textStyle2;
                        }
                        if (i9 != 0) {
                            none = VisualTransformation.Companion.getNone();
                        }
                        if (i11 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new p12(0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            nl3Var3 = (nl3) objRememberedValue;
                        }
                        if (i13 != 0) {
                            mutableInteractionSource2 = null;
                        }
                        if (i15 != 0) {
                            solidColor = new SolidColor(Color.Companion.m6268getUnspecified0d7_KjU(), jh2Var);
                        }
                        if (i17 != 0) {
                            z8 = true;
                        } else {
                            z8 = z;
                        }
                        if (i19 != 0) {
                            i38 = Integer.MAX_VALUE;
                        } else {
                            i38 = i;
                        }
                        if (i21 != 0) {
                            i39 = 1;
                        } else {
                            i39 = i2;
                        }
                        if ((i5 & 2048) != 0) {
                            imeOptions3 = ImeOptions.Companion.getDefault();
                            i33 &= -113;
                        } else {
                            imeOptions3 = imeOptions;
                        }
                        if (i25 != 0) {
                            keyboardActions3 = KeyboardActions.Companion.getDefault();
                        } else {
                            keyboardActions3 = keyboardActions;
                        }
                        if (i28 != 0) {
                            z9 = true;
                        } else {
                            z9 = z2;
                        }
                        if (i31 != 0) {
                            z10 = false;
                        } else {
                            z10 = z3;
                        }
                        if (i34 != 0) {
                            lambda$559628295$foundation = ComposableSingletons$CoreTextFieldKt.INSTANCE.getLambda$559628295$foundation();
                        } else {
                            lambda$559628295$foundation = dm3Var;
                        }
                        boolean z3211 = z8;
                        textStyle2 = textStyle4;
                        modifier4 = modifier2;
                        z11 = z9;
                        nl3Var5 = nl3Var3;
                        z12 = z3211;
                        VisualTransformation visualTransformation115 = none;
                        imeOptions4 = imeOptions3;
                        brush2 = solidColor;
                        visualTransformation3 = visualTransformation115;
                        i40 = i33;
                        if (i35 != 0) {
                            textFieldScrollerPosition3 = null;
                        } else {
                            textFieldScrollerPosition3 = textFieldScrollerPosition;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    brush3 = brush2;
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(31062401, i6, i40, "androidx.compose.foundation.text.CoreTextField (CoreTextField.kt:208)");
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = new FocusRequester();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    focusRequester = (FocusRequester) objRememberedValue2;
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    i41 = i6;
                    if (objRememberedValue3 == companion.getEmpty()) {
                        objRememberedValue3 = LegacyPlatformTextInputServiceAdapter_androidKt.createLegacyPlatformTextInputServiceAdapter();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    legacyPlatformTextInputServiceAdapter = (LegacyPlatformTextInputServiceAdapter) objRememberedValue3;
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue4 == companion.getEmpty()) {
                        objRememberedValue4 = new TextInputService(legacyPlatformTextInputServiceAdapter);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    textInputService = (TextInputService) objRememberedValue4;
                    density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    resolver = (FontFamily.Resolver) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalFontFamilyResolver());
                    jM3048getBackgroundColor0d7_KjU = ((TextSelectionColors) composerStartRestartGroup.consume(TextSelectionColorsKt.getLocalTextSelectionColors())).m3048getBackgroundColor0d7_KjU();
                    focusManager = (FocusManager) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalFocusManager());
                    windowInfo = (WindowInfo) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalWindowInfo());
                    textStyle5 = textStyle2;
                    softwareKeyboardController = (SoftwareKeyboardController) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalSoftwareKeyboardController());
                    z13 = z12;
                    if (i38 == 1) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Vertical;
                    }
                    if (textFieldScrollerPosition3 == null) {
                        composerStartRestartGroup.startReplaceGroup(-213744626);
                        Object[] objArr8 = {orientation};
                        Saver<TextFieldScrollerPosition, Object> saver8 = TextFieldScrollerPosition.Companion.getSaver();
                        zChanged3 = composerStartRestartGroup.changed(orientation.ordinal());
                        objRememberedValue18 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            i49 = 0;
                            objRememberedValue18 = new u12(orientation, i49);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue18);
                        } else {
                            i49 = 0;
                            objRememberedValue18 = new u12(orientation, i49);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue18);
                        }
                        textFieldScrollerPosition4 = (TextFieldScrollerPosition) RememberSaveableKt.m5624rememberSaveable(objArr8, (Saver) saver8, (ll3) objRememberedValue18, composerStartRestartGroup, i49);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-213745742);
                        composerStartRestartGroup.endReplaceGroup();
                        textFieldScrollerPosition4 = textFieldScrollerPosition3;
                    }
                    if (textFieldScrollerPosition4.getOrientation() != orientation) {
                        if (orientation == Orientation.Vertical) {
                            str = "only single-line, non-wrap text fields can scroll horizontally";
                        } else {
                            str = "single-line, non-wrap text fields can only scroll horizontally";
                        }
                        throw new IllegalArgumentException("Mismatching scroller orientation; ".concat(str));
                    }
                    i42 = i41 & 14;
                    if (i42 == 4) {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    if ((i41 & 57344) == 16384) {
                        z15 = true;
                    } else {
                        z15 = false;
                    }
                    z16 = z14 | z15;
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (z16) {
                        transformedTextFilterWithValidation = ValidatingOffsetMappingKt.filterWithValidation(visualTransformation3, textFieldValue.getAnnotatedString());
                        textRangeM8740getCompositionMzsxiRA = textFieldValue.m8740getCompositionMzsxiRA();
                        if (textRangeM8740getCompositionMzsxiRA != null) {
                            textFieldScrollerPosition5 = textFieldScrollerPosition4;
                            transformedTextM2604applyCompositionDecoration72CqOWE = TextFieldDelegate.Companion.m2604applyCompositionDecoration72CqOWE(textRangeM8740getCompositionMzsxiRA.m8495unboximpl(), transformedTextFilterWithValidation);
                            if (transformedTextM2604applyCompositionDecoration72CqOWE != null) {
                                objRememberedValue5 = transformedTextM2604applyCompositionDecoration72CqOWE;
                            }
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            textFieldScrollerPosition5 = textFieldScrollerPosition4;
                        }
                        objRememberedValue5 = transformedTextFilterWithValidation;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    } else {
                        transformedTextFilterWithValidation = ValidatingOffsetMappingKt.filterWithValidation(visualTransformation3, textFieldValue.getAnnotatedString());
                        textRangeM8740getCompositionMzsxiRA = textFieldValue.m8740getCompositionMzsxiRA();
                        if (textRangeM8740getCompositionMzsxiRA != null) {
                            textFieldScrollerPosition5 = textFieldScrollerPosition4;
                            transformedTextM2604applyCompositionDecoration72CqOWE = TextFieldDelegate.Companion.m2604applyCompositionDecoration72CqOWE(textRangeM8740getCompositionMzsxiRA.m8495unboximpl(), transformedTextFilterWithValidation);
                            if (transformedTextM2604applyCompositionDecoration72CqOWE != null) {
                                objRememberedValue5 = transformedTextM2604applyCompositionDecoration72CqOWE;
                            }
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            textFieldScrollerPosition5 = textFieldScrollerPosition4;
                        }
                        objRememberedValue5 = transformedTextFilterWithValidation;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    TransformedText transformedText8 = (TransformedText) objRememberedValue5;
                    text = transformedText8.getText();
                    offsetMapping = transformedText8.getOffsetMapping();
                    currentRecomposeScope = ComposablesKt.getCurrentRecomposeScope(composerStartRestartGroup, 0);
                    zChanged = composerStartRestartGroup.changed(softwareKeyboardController);
                    objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue6 = new LegacyTextFieldState(new TextDelegate(text, textStyle5, 0, 0, z13, 0, density, resolver, null, 300, null), currentRecomposeScope, softwareKeyboardController);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    } else {
                        objRememberedValue6 = new LegacyTextFieldState(new TextDelegate(text, textStyle5, 0, 0, z13, 0, density, resolver, null, 300, null), currentRecomposeScope, softwareKeyboardController);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    }
                    legacyTextFieldState = (LegacyTextFieldState) objRememberedValue6;
                    KeyboardActions keyboardActions11 = keyboardActions3;
                    legacyTextFieldState.m2569updatefnh65Uc(textFieldValue.getAnnotatedString(), text, textStyle5, z13, r55, resolver, nl3Var, keyboardActions11, focusManager, jM3048getBackgroundColor0d7_KjU);
                    legacyTextFieldState.getProcessor().reset(textFieldValue, legacyTextFieldState.getInputSession());
                    objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue7 == companion.getEmpty()) {
                        objRememberedValue7 = new UndoManager(0, 1, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                    }
                    undoManager = (UndoManager) objRememberedValue7;
                    UndoManager.snapshotIfNeeded$default(undoManager, textFieldValue, 0L, 2, null);
                    objRememberedValue8 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue8 == companion.getEmpty()) {
                        objRememberedValue8 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
                    }
                    y22Var = (y22) objRememberedValue8;
                    objRememberedValue9 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue9 == companion.getEmpty()) {
                        objRememberedValue9 = BringIntoViewRequesterKt.BringIntoViewRequester();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue9);
                    }
                    bringIntoViewRequester = (BringIntoViewRequester) objRememberedValue9;
                    objRememberedValue10 = composerStartRestartGroup.rememberedValue();
                    MutableInteractionSource mutableInteractionSource10 = mutableInteractionSource2;
                    if (objRememberedValue10 == companion.getEmpty()) {
                        objRememberedValue10 = new TextFieldSelectionManager(undoManager);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue10);
                    }
                    textFieldSelectionManager = (TextFieldSelectionManager) objRememberedValue10;
                    textFieldSelectionManager.setOffsetMapping$foundation(offsetMapping);
                    textFieldSelectionManager.setVisualTransformation$foundation(visualTransformation3);
                    textFieldSelectionManager.setOnValueChange$foundation(legacyTextFieldState.getOnValueChange());
                    textFieldSelectionManager.setState$foundation(legacyTextFieldState);
                    textFieldSelectionManager.setValue$foundation(textFieldValue);
                    textFieldSelectionManager.setClipboard$foundation((Clipboard) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalClipboard()));
                    textFieldSelectionManager.setCoroutineScope$foundation(y22Var);
                    textFieldSelectionManager.setTextToolbar((TextToolbar) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalTextToolbar()));
                    textFieldSelectionManager.setHapticFeedBack((HapticFeedback) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalHapticFeedback()));
                    textFieldSelectionManager.setFocusRequester(focusRequester);
                    boolean z31111114 = !z10;
                    textFieldSelectionManager.setEditable(z31111114);
                    textFieldSelectionManager.setEnabled(z11);
                    if (ComposeFoundationFlags.isSmartSelectionEnabled) {
                        composerStartRestartGroup.startReplaceGroup(1966756105);
                        textFieldSelectionManager.setPlatformSelectionBehaviors$foundation(PlatformSelectionBehaviors_androidKt.rememberPlatformSelectionBehaviors(SelectedTextType.EditableText, textStyle5.getLocaleList(), composerStartRestartGroup, 6));
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1966902177);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    legacyTextFieldState.getHasFocus();
                    companion2 = Modifier.Companion;
                    boolean zChangedInstance1117 = composerStartRestartGroup.changedInstance(legacyTextFieldState);
                    i43 = i40 & 7168;
                    i44 = i40;
                    if (i43 == 2048) {
                        z17 = true;
                    } else {
                        z17 = false;
                    }
                    boolean z31111115 = z17 | zChangedInstance1117;
                    if ((i44 & 57344) == 16384) {
                        z18 = true;
                    } else {
                        z18 = false;
                    }
                    boolean zChangedInstance1118 = z31111115 | z18 | composerStartRestartGroup.changedInstance(textInputService);
                    if (i42 == 4) {
                        z19 = true;
                    } else {
                        z19 = false;
                    }
                    boolean z31111116 = zChangedInstance1118 | z19;
                    i45 = (i44 & 112) ^ 48;
                    if (i45 > 32) {
                        textInputService2 = textInputService;
                        if ((i44 & 48) != 32) {
                            z20 = true;
                        } else {
                            z20 = false;
                        }
                    } else {
                        textInputService2 = textInputService;
                        if ((i44 & 48) != 32) {
                            z20 = true;
                        } else {
                            z20 = false;
                        }
                    }
                    zChangedInstance = z31111116 | z20 | composerStartRestartGroup.changedInstance(offsetMapping) | composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(bringIntoViewRequester) | composerStartRestartGroup.changedInstance(textFieldSelectionManager);
                    objRememberedValue11 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance) {
                        offsetMapping2 = offsetMapping;
                        final ImeOptions imeOptions11111 = imeOptions4;
                        final boolean z31111117 = z11;
                        final boolean z31111118 = z10;
                        objRememberedValue11 = new nl3() { // from class: v12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z31111117, z31111118, textInputService2, textFieldValue, imeOptions11111, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                            }
                        };
                        legacyTextFieldState2 = legacyTextFieldState;
                        z21 = z31111117;
                        textFieldValue2 = textFieldValue;
                        imeOptions5 = imeOptions11111;
                        textFieldSelectionManager2 = textFieldSelectionManager;
                        y22Var2 = y22Var;
                        bringIntoViewRequester2 = bringIntoViewRequester;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                    } else {
                        offsetMapping2 = offsetMapping;
                        final ImeOptions imeOptions11112 = imeOptions4;
                        final boolean z31111119 = z11;
                        final boolean z311111110 = z10;
                        objRememberedValue11 = new nl3() { // from class: v12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z31111119, z311111110, textInputService2, textFieldValue, imeOptions11112, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                            }
                        };
                        legacyTextFieldState2 = legacyTextFieldState;
                        z21 = z31111119;
                        textFieldValue2 = textFieldValue;
                        imeOptions5 = imeOptions11112;
                        textFieldSelectionManager2 = textFieldSelectionManager;
                        y22Var2 = y22Var;
                        bringIntoViewRequester2 = bringIntoViewRequester;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                    }
                    final BringIntoViewRequester bringIntoViewRequester11 = bringIntoViewRequester2;
                    Modifier modifierTextFieldFocusModifier9 = TextFieldGestureModifiersKt.textFieldFocusModifier(companion2, z21, focusRequester, mutableInteractionSource10, (nl3) objRememberedValue11);
                    if (z21) {
                        z22 = false;
                    } else {
                        z22 = false;
                    }
                    stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Boolean.valueOf(z22), composerStartRestartGroup, 0);
                    j59 j59Var9 = j59.a;
                    boolean zChanged111 = composerStartRestartGroup.changed(stateRememberUpdatedState) | composerStartRestartGroup.changedInstance(legacyTextFieldState2) | composerStartRestartGroup.changedInstance(textInputService2) | composerStartRestartGroup.changedInstance(textFieldSelectionManager2);
                    if (i45 > 32) {
                        imeOptions6 = imeOptions5;
                        if ((i44 & 48) != 32) {
                            z23 = true;
                        } else {
                            z23 = false;
                        }
                    } else {
                        imeOptions6 = imeOptions5;
                        if ((i44 & 48) != 32) {
                            z23 = true;
                        } else {
                            z23 = false;
                        }
                    }
                    z24 = zChanged111 | z23;
                    objRememberedValue12 = composerStartRestartGroup.rememberedValue();
                    if (z24) {
                        ImeOptions imeOptions11113 = imeOptions6;
                        TextInputService textInputService110 = textInputService2;
                        TextFieldSelectionManager textFieldSelectionManager114 = textFieldSelectionManager2;
                        LegacyTextFieldState legacyTextFieldState113 = legacyTextFieldState2;
                        objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState113, stateRememberUpdatedState, textInputService110, textFieldSelectionManager114, imeOptions11113, null);
                        legacyTextFieldState3 = legacyTextFieldState113;
                        textFieldSelectionManager3 = textFieldSelectionManager114;
                        imeOptions7 = imeOptions11113;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                    } else {
                        ImeOptions imeOptions11114 = imeOptions6;
                        TextInputService textInputService111 = textInputService2;
                        TextFieldSelectionManager textFieldSelectionManager115 = textFieldSelectionManager2;
                        LegacyTextFieldState legacyTextFieldState114 = legacyTextFieldState2;
                        objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState114, stateRememberUpdatedState, textInputService111, textFieldSelectionManager115, imeOptions11114, null);
                        legacyTextFieldState3 = legacyTextFieldState114;
                        textFieldSelectionManager3 = textFieldSelectionManager115;
                        imeOptions7 = imeOptions11114;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                    }
                    imeOptions8 = imeOptions7;
                    EffectsKt.LaunchedEffect(j59Var9, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue12, composerStartRestartGroup, 6);
                    int i519 = i44 >> 3;
                    z25 = z21;
                    legacyTextFieldState4 = legacyTextFieldState3;
                    textFieldSelectionManager4 = textFieldSelectionManager3;
                    Modifier modifierTextFieldPointer10 = TextFieldPointerModifier_androidKt.textFieldPointer(companion2, textFieldSelectionManager4, z25, mutableInteractionSource10, legacyTextFieldState4, focusRequester, z10, offsetMapping2, composerStartRestartGroup, (i519 & 896) | 196614 | ((i41 >> 9) & 7168) | ((i44 << 6) & 3670016));
                    offsetMapping3 = offsetMapping2;
                    final Modifier modifierTextFieldDraw10 = CoreTextField_androidKt.textFieldDraw(companion2, legacyTextFieldState4, textFieldValue2, offsetMapping3);
                    boolean zChangedInstance1119 = composerStartRestartGroup.changedInstance(legacyTextFieldState4);
                    if (i43 == 2048) {
                        z26 = true;
                    } else {
                        z26 = false;
                    }
                    boolean zChanged112 = zChangedInstance1119 | z26 | composerStartRestartGroup.changed(windowInfo) | composerStartRestartGroup.changedInstance(textFieldSelectionManager4);
                    if (i42 == 4) {
                        z27 = true;
                    } else {
                        z27 = false;
                    }
                    zChangedInstance2 = zChanged112 | z27 | composerStartRestartGroup.changedInstance(offsetMapping3);
                    objRememberedValue13 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance2) {
                        objRememberedValue13 = new nl3() { // from class: w12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                            }
                        };
                        textFieldSelectionManager5 = textFieldSelectionManager4;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                    } else {
                        objRememberedValue13 = new nl3() { // from class: w12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                            }
                        };
                        textFieldSelectionManager5 = textFieldSelectionManager4;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                    }
                    final Modifier modifierOnGloballyPositioned10 = OnGloballyPositionedModifierKt.onGloballyPositioned(companion2, (nl3) objRememberedValue13);
                    textFieldSelectionManager6 = textFieldSelectionManager5;
                    CoreTextFieldSemanticsModifier coreTextFieldSemanticsModifier10 = new CoreTextFieldSemanticsModifier(transformedText8, textFieldValue, legacyTextFieldState4, z10, z25, visualTransformation3 instanceof PasswordVisualTransformation, offsetMapping3, textFieldSelectionManager6, imeOptions8, focusRequester);
                    final VisualTransformation visualTransformation116 = visualTransformation3;
                    if (z25 != 0) {
                        z28 = false;
                    } else {
                        z28 = false;
                    }
                    final Modifier modifierTextFieldCursor10 = CoreTextField_androidKt.textFieldCursor(companion2, legacyTextFieldState4, textFieldValue, offsetMapping3, brush3, z28);
                    zChangedInstance3 = composerStartRestartGroup.changedInstance(textFieldSelectionManager6);
                    objRememberedValue14 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance3) {
                        i46 = 0;
                        objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                    } else {
                        i46 = 0;
                        objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                    }
                    EffectsKt.DisposableEffect(textFieldSelectionManager6, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue14, composerStartRestartGroup, i46);
                    boolean zChangedInstance11110 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changedInstance(textInputService2);
                    if (i42 == 4) {
                        z29 = true;
                    } else {
                        z29 = false;
                    }
                    z30 = z29 | zChangedInstance11110 | ((i45 <= 32 && composerStartRestartGroup.changed(imeOptions8)) || (i44 & 48) == 32);
                    objRememberedValue15 = composerStartRestartGroup.rememberedValue();
                    if (z30) {
                        objRememberedValue15 = new nl3() { // from class: h12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                    } else {
                        objRememberedValue15 = new nl3() { // from class: h12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                    }
                    EffectsKt.DisposableEffect(imeOptions8, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue15, composerStartRestartGroup, i519 & 14);
                    nl3<TextFieldValue, j59> onValueChange10 = legacyTextFieldState4.getOnValueChange();
                    i47 = i38;
                    if (i47 == 1) {
                        z31 = true;
                    } else {
                        z31 = false;
                    }
                    Modifier modifierM2614textFieldKeyInput2WJ9YEU10 = TextFieldKeyInputKt.m2614textFieldKeyInput2WJ9YEU(companion2, legacyTextFieldState4, textFieldSelectionManager6, textFieldValue, onValueChange10, z31111114, z31, offsetMapping3, undoManager, imeOptions8.m8688getImeActioneUduSuo());
                    iM8689getKeyboardTypePjHm6EE = imeOptions8.m8689getKeyboardTypePjHm6EE();
                    companion3 = KeyboardType.Companion;
                    if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion3.m8731getPasswordPjHm6EE())) {
                        z32 = false;
                    } else {
                        z32 = false;
                    }
                    boolean zCoreTextField$lambda$113 = CoreTextField$lambda$14(stateRememberUpdatedState);
                    zChanged2 = composerStartRestartGroup.changed(z32) | composerStartRestartGroup.changedInstance(legacyPlatformTextInputServiceAdapter);
                    objRememberedValue16 = composerStartRestartGroup.rememberedValue();
                    if (zChanged2) {
                        objRememberedValue16 = new ll3() { // from class: i12
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                    } else {
                        objRememberedValue16 = new ll3() { // from class: i12
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                    }
                    Modifier modifierStylusHandwriting10 = StylusHandwritingKt.stylusHandwriting(companion2, zCoreTextField$lambda$113, z32, (ll3) objRememberedValue16);
                    y22 y22Var12 = y22Var2;
                    brushM2447resolveAutofillHighlightWkMShQ = AutofillHighlightKt.m2447resolveAutofillHighlightWkMShQ((Brush) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightBrush()), ((Color) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightColor())).m6242unboximpl(), AutofillHighlight_androidKt.autofillHighlightColor());
                    zChangedInstance4 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changed(brushM2447resolveAutofillHighlightWkMShQ);
                    objRememberedValue17 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance4) {
                        i48 = 0;
                        objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                    } else {
                        i48 = 0;
                        objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                    }
                    Modifier modifierDrawWithContent10 = DrawModifierKt.drawWithContent(companion2, (nl3) objRememberedValue17);
                    OverscrollEffect overscrollEffectRememberTextFieldOverscrollEffect10 = TextFieldScroll_androidKt.rememberTextFieldOverscrollEffect(composerStartRestartGroup, i48);
                    Modifier modifier113 = modifier4;
                    Modifier modifierThen10 = previewKeyEventToDeselectOnBack(TextFieldFocusModifier_androidKt.interceptDPadAndMoveFocus(LegacyAdaptingPlatformTextInputModifierNodeKt.legacyTextInputAdapter(modifier113.then(modifierDrawWithContent10), legacyPlatformTextInputServiceAdapter, legacyTextFieldState4, textFieldSelectionManager6).then(modifierStylusHandwriting10).then(modifierTextFieldFocusModifier9), legacyTextFieldState4, focusManager), legacyTextFieldState4, textFieldSelectionManager6).then(modifierM2614textFieldKeyInput2WJ9YEU10);
                    final TextFieldScrollerPosition textFieldScrollerPosition15 = textFieldScrollerPosition5;
                    Modifier modifierAddContextMenuComponents10 = addContextMenuComponents(OnGloballyPositionedModifierKt.onGloballyPositioned(TextFieldScrollKt.textFieldScrollable(modifierThen10, textFieldScrollerPosition15, mutableInteractionSource10, z25, overscrollEffectRememberTextFieldOverscrollEffect10).then(modifierTextFieldPointer10).then(coreTextFieldSemanticsModifier10), new nl3() { // from class: r12
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return CoreTextFieldKt.CoreTextField$lambda$21(legacyTextFieldState4, (LayoutCoordinates) obj);
                        }
                    }), textFieldSelectionManager6, y22Var12);
                    if (z25) {
                        i48 = 1;
                    }
                    if (i48 != 0) {
                        modifierTextFieldMagnifier = TextFieldSelectionManager_androidKt.textFieldMagnifier(companion2, textFieldSelectionManager6);
                    } else {
                        modifierTextFieldMagnifier = companion2;
                    }
                    final Modifier modifier114 = modifierTextFieldMagnifier;
                    final boolean z311111111 = z10;
                    final dm3 dm3Var12 = lambda$559628295$foundation;
                    final int i5110 = i39;
                    final boolean z49 = i48;
                    CoreTextFieldRootBox(modifierAddContextMenuComponents10, textFieldSelectionManager6, ComposableLambdaKt.rememberComposableLambda(-814563849, true, new bm3() { // from class: s12
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return CoreTextFieldKt.CoreTextField$lambda$22(dm3Var12, legacyTextFieldState4, textStyle5, i5110, i47, textFieldScrollerPosition15, textFieldValue, visualTransformation116, modifierTextFieldCursor10, modifierTextFieldDraw10, modifierOnGloballyPositioned10, modifier114, bringIntoViewRequester11, textFieldSelectionManager6, z49, z311111111, nl3Var5, offsetMapping3, density, (Composer) obj, iIntValue);
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, RendererCapabilities.DECODER_SUPPORT_MASK);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    dm3Var2 = dm3Var12;
                    i37 = i5110;
                    composer2 = composerStartRestartGroup;
                    nl3Var4 = nl3Var5;
                    z7 = z311111111;
                    textFieldScrollerPosition2 = textFieldScrollerPosition3;
                    imeOptions2 = imeOptions8;
                    z6 = z25;
                    mutableInteractionSource2 = mutableInteractionSource10;
                    z5 = z13;
                    keyboardActions2 = keyboardActions11;
                    modifier3 = modifier113;
                    i36 = i47;
                    visualTransformation2 = visualTransformation116;
                    solidColor = brush3;
                    textStyle3 = textStyle5;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    z5 = z;
                    imeOptions2 = imeOptions;
                    keyboardActions2 = keyboardActions;
                    dm3Var2 = dm3Var;
                    textFieldScrollerPosition2 = textFieldScrollerPosition;
                    composer2 = composerStartRestartGroup;
                    textStyle3 = textStyle2;
                    nl3Var4 = nl3Var3;
                    visualTransformation2 = none;
                    modifier3 = modifier2;
                    i36 = i;
                    i37 = i2;
                    z6 = z2;
                    z7 = z3;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: t12
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return CoreTextFieldKt.CoreTextField$lambda$23(textFieldValue, nl3Var, modifier3, textStyle3, visualTransformation2, nl3Var4, mutableInteractionSource2, solidColor, z5, i36, i37, imeOptions2, keyboardActions2, z6, z7, dm3Var2, textFieldScrollerPosition2, i3, i4, i5, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i6 |= 805306368;
            i21 = i5 & 1024;
            if (i21 != 0) {
                i22 = i4 | 6;
            } else if ((i4 & 6) == 0) {
                if (composerStartRestartGroup.changed(i2)) {
                    i23 = 4;
                } else {
                    i23 = 2;
                }
                i22 = i4 | i23;
            } else {
                i22 = i4;
            }
            if ((i4 & 48) != 0) {
                i22 |= ((i5 & 2048) == 0 || !composerStartRestartGroup.changed(imeOptions)) ? 16 : 32;
            }
            i24 = i22;
            i25 = i5 & 4096;
            if (i25 != 0) {
                i26 = i24 | RendererCapabilities.DECODER_SUPPORT_MASK;
            } else if ((i4 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if (composerStartRestartGroup.changed(keyboardActions)) {
                    i27 = 256;
                } else {
                    i27 = 128;
                }
                i26 = i24 | i27;
            } else {
                i26 = i24;
            }
            i28 = i5 & 8192;
            if (i28 != 0) {
                i30 = i26 | 3072;
            } else {
                i29 = i26;
                if ((i4 & 3072) == 0) {
                    i30 = i29 | (composerStartRestartGroup.changed(z2) ? 2048 : 1024);
                } else {
                    i30 = i29;
                }
            }
            i31 = i5 & 16384;
            if (i31 != 0) {
                i33 = i30 | 24576;
            } else {
                i32 = i30;
                if ((i4 & 24576) == 0) {
                    i33 = i32 | (composerStartRestartGroup.changed(z3) ? 16384 : 8192);
                } else {
                    i33 = i32;
                }
            }
            i34 = i5 & 32768;
            if (i34 != 0) {
                i33 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i4 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                i33 |= composerStartRestartGroup.changedInstance(dm3Var) ? 131072 : 65536;
            }
            i35 = i5 & 65536;
            if (i35 != 0) {
                i33 |= 1572864;
            } else if ((i4 & 1572864) == 0) {
                i33 |= composerStartRestartGroup.changed(textFieldScrollerPosition) ? 1048576 : 524288;
            }
            if ((i6 & 306783379) == 306783378) {
                z4 = true;
            } else {
                z4 = true;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i6 & 1)) {
                composerStartRestartGroup.startDefaults();
                jh2Var = null;
                if ((i3 & 1) != 0) {
                    if (i50 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i7 != 0) {
                        textStyle4 = TextStyle.Companion.getDefault();
                    } else {
                        textStyle4 = textStyle2;
                    }
                    if (i9 != 0) {
                        none = VisualTransformation.Companion.getNone();
                    }
                    if (i11 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new p12(0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        nl3Var3 = (nl3) objRememberedValue;
                    }
                    if (i13 != 0) {
                        mutableInteractionSource2 = null;
                    }
                    if (i15 != 0) {
                        solidColor = new SolidColor(Color.Companion.m6268getUnspecified0d7_KjU(), jh2Var);
                    }
                    if (i17 != 0) {
                        z8 = true;
                    } else {
                        z8 = z;
                    }
                    if (i19 != 0) {
                        i38 = Integer.MAX_VALUE;
                    } else {
                        i38 = i;
                    }
                    if (i21 != 0) {
                        i39 = 1;
                    } else {
                        i39 = i2;
                    }
                    if ((i5 & 2048) != 0) {
                        imeOptions3 = ImeOptions.Companion.getDefault();
                        i33 &= -113;
                    } else {
                        imeOptions3 = imeOptions;
                    }
                    if (i25 != 0) {
                        keyboardActions3 = KeyboardActions.Companion.getDefault();
                    } else {
                        keyboardActions3 = keyboardActions;
                    }
                    if (i28 != 0) {
                        z9 = true;
                    } else {
                        z9 = z2;
                    }
                    if (i31 != 0) {
                        z10 = false;
                    } else {
                        z10 = z3;
                    }
                    if (i34 != 0) {
                        lambda$559628295$foundation = ComposableSingletons$CoreTextFieldKt.INSTANCE.getLambda$559628295$foundation();
                    } else {
                        lambda$559628295$foundation = dm3Var;
                    }
                    boolean z3212 = z8;
                    textStyle2 = textStyle4;
                    modifier4 = modifier2;
                    z11 = z9;
                    nl3Var5 = nl3Var3;
                    z12 = z3212;
                    VisualTransformation visualTransformation117 = none;
                    imeOptions4 = imeOptions3;
                    brush2 = solidColor;
                    visualTransformation3 = visualTransformation117;
                    i40 = i33;
                    if (i35 != 0) {
                        textFieldScrollerPosition3 = null;
                    } else {
                        textFieldScrollerPosition3 = textFieldScrollerPosition;
                    }
                } else {
                    if (i50 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i7 != 0) {
                        textStyle4 = TextStyle.Companion.getDefault();
                    } else {
                        textStyle4 = textStyle2;
                    }
                    if (i9 != 0) {
                        none = VisualTransformation.Companion.getNone();
                    }
                    if (i11 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new p12(0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        nl3Var3 = (nl3) objRememberedValue;
                    }
                    if (i13 != 0) {
                        mutableInteractionSource2 = null;
                    }
                    if (i15 != 0) {
                        solidColor = new SolidColor(Color.Companion.m6268getUnspecified0d7_KjU(), jh2Var);
                    }
                    if (i17 != 0) {
                        z8 = true;
                    } else {
                        z8 = z;
                    }
                    if (i19 != 0) {
                        i38 = Integer.MAX_VALUE;
                    } else {
                        i38 = i;
                    }
                    if (i21 != 0) {
                        i39 = 1;
                    } else {
                        i39 = i2;
                    }
                    if ((i5 & 2048) != 0) {
                        imeOptions3 = ImeOptions.Companion.getDefault();
                        i33 &= -113;
                    } else {
                        imeOptions3 = imeOptions;
                    }
                    if (i25 != 0) {
                        keyboardActions3 = KeyboardActions.Companion.getDefault();
                    } else {
                        keyboardActions3 = keyboardActions;
                    }
                    if (i28 != 0) {
                        z9 = true;
                    } else {
                        z9 = z2;
                    }
                    if (i31 != 0) {
                        z10 = false;
                    } else {
                        z10 = z3;
                    }
                    if (i34 != 0) {
                        lambda$559628295$foundation = ComposableSingletons$CoreTextFieldKt.INSTANCE.getLambda$559628295$foundation();
                    } else {
                        lambda$559628295$foundation = dm3Var;
                    }
                    boolean z3213 = z8;
                    textStyle2 = textStyle4;
                    modifier4 = modifier2;
                    z11 = z9;
                    nl3Var5 = nl3Var3;
                    z12 = z3213;
                    VisualTransformation visualTransformation118 = none;
                    imeOptions4 = imeOptions3;
                    brush2 = solidColor;
                    visualTransformation3 = visualTransformation118;
                    i40 = i33;
                    if (i35 != 0) {
                        textFieldScrollerPosition3 = null;
                    } else {
                        textFieldScrollerPosition3 = textFieldScrollerPosition;
                    }
                }
                composerStartRestartGroup.endDefaults();
                brush3 = brush2;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(31062401, i6, i40, "androidx.compose.foundation.text.CoreTextField (CoreTextField.kt:208)");
                }
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue2 == companion.getEmpty()) {
                    objRememberedValue2 = new FocusRequester();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                focusRequester = (FocusRequester) objRememberedValue2;
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                i41 = i6;
                if (objRememberedValue3 == companion.getEmpty()) {
                    objRememberedValue3 = LegacyPlatformTextInputServiceAdapter_androidKt.createLegacyPlatformTextInputServiceAdapter();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                legacyPlatformTextInputServiceAdapter = (LegacyPlatformTextInputServiceAdapter) objRememberedValue3;
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue4 == companion.getEmpty()) {
                    objRememberedValue4 = new TextInputService(legacyPlatformTextInputServiceAdapter);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                textInputService = (TextInputService) objRememberedValue4;
                density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                resolver = (FontFamily.Resolver) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalFontFamilyResolver());
                jM3048getBackgroundColor0d7_KjU = ((TextSelectionColors) composerStartRestartGroup.consume(TextSelectionColorsKt.getLocalTextSelectionColors())).m3048getBackgroundColor0d7_KjU();
                focusManager = (FocusManager) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalFocusManager());
                windowInfo = (WindowInfo) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalWindowInfo());
                textStyle5 = textStyle2;
                softwareKeyboardController = (SoftwareKeyboardController) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalSoftwareKeyboardController());
                z13 = z12;
                if (i38 == 1) {
                    orientation = Orientation.Vertical;
                } else {
                    orientation = Orientation.Vertical;
                }
                if (textFieldScrollerPosition3 == null) {
                    composerStartRestartGroup.startReplaceGroup(-213744626);
                    Object[] objArr9 = {orientation};
                    Saver<TextFieldScrollerPosition, Object> saver9 = TextFieldScrollerPosition.Companion.getSaver();
                    zChanged3 = composerStartRestartGroup.changed(orientation.ordinal());
                    objRememberedValue18 = composerStartRestartGroup.rememberedValue();
                    if (zChanged3) {
                        i49 = 0;
                        objRememberedValue18 = new u12(orientation, i49);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue18);
                    } else {
                        i49 = 0;
                        objRememberedValue18 = new u12(orientation, i49);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue18);
                    }
                    textFieldScrollerPosition4 = (TextFieldScrollerPosition) RememberSaveableKt.m5624rememberSaveable(objArr9, (Saver) saver9, (ll3) objRememberedValue18, composerStartRestartGroup, i49);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-213745742);
                    composerStartRestartGroup.endReplaceGroup();
                    textFieldScrollerPosition4 = textFieldScrollerPosition3;
                }
                if (textFieldScrollerPosition4.getOrientation() != orientation) {
                    if (orientation == Orientation.Vertical) {
                        str = "only single-line, non-wrap text fields can scroll horizontally";
                    } else {
                        str = "single-line, non-wrap text fields can only scroll horizontally";
                    }
                    throw new IllegalArgumentException("Mismatching scroller orientation; ".concat(str));
                }
                i42 = i41 & 14;
                if (i42 == 4) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                if ((i41 & 57344) == 16384) {
                    z15 = true;
                } else {
                    z15 = false;
                }
                z16 = z14 | z15;
                objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                if (z16) {
                    transformedTextFilterWithValidation = ValidatingOffsetMappingKt.filterWithValidation(visualTransformation3, textFieldValue.getAnnotatedString());
                    textRangeM8740getCompositionMzsxiRA = textFieldValue.m8740getCompositionMzsxiRA();
                    if (textRangeM8740getCompositionMzsxiRA != null) {
                        textFieldScrollerPosition5 = textFieldScrollerPosition4;
                        transformedTextM2604applyCompositionDecoration72CqOWE = TextFieldDelegate.Companion.m2604applyCompositionDecoration72CqOWE(textRangeM8740getCompositionMzsxiRA.m8495unboximpl(), transformedTextFilterWithValidation);
                        if (transformedTextM2604applyCompositionDecoration72CqOWE != null) {
                            objRememberedValue5 = transformedTextM2604applyCompositionDecoration72CqOWE;
                        }
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    } else {
                        textFieldScrollerPosition5 = textFieldScrollerPosition4;
                    }
                    objRememberedValue5 = transformedTextFilterWithValidation;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                } else {
                    transformedTextFilterWithValidation = ValidatingOffsetMappingKt.filterWithValidation(visualTransformation3, textFieldValue.getAnnotatedString());
                    textRangeM8740getCompositionMzsxiRA = textFieldValue.m8740getCompositionMzsxiRA();
                    if (textRangeM8740getCompositionMzsxiRA != null) {
                        textFieldScrollerPosition5 = textFieldScrollerPosition4;
                        transformedTextM2604applyCompositionDecoration72CqOWE = TextFieldDelegate.Companion.m2604applyCompositionDecoration72CqOWE(textRangeM8740getCompositionMzsxiRA.m8495unboximpl(), transformedTextFilterWithValidation);
                        if (transformedTextM2604applyCompositionDecoration72CqOWE != null) {
                            objRememberedValue5 = transformedTextM2604applyCompositionDecoration72CqOWE;
                        }
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    } else {
                        textFieldScrollerPosition5 = textFieldScrollerPosition4;
                    }
                    objRememberedValue5 = transformedTextFilterWithValidation;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                }
                TransformedText transformedText9 = (TransformedText) objRememberedValue5;
                text = transformedText9.getText();
                offsetMapping = transformedText9.getOffsetMapping();
                currentRecomposeScope = ComposablesKt.getCurrentRecomposeScope(composerStartRestartGroup, 0);
                zChanged = composerStartRestartGroup.changed(softwareKeyboardController);
                objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue6 = new LegacyTextFieldState(new TextDelegate(text, textStyle5, 0, 0, z13, 0, density, resolver, null, 300, null), currentRecomposeScope, softwareKeyboardController);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                } else {
                    objRememberedValue6 = new LegacyTextFieldState(new TextDelegate(text, textStyle5, 0, 0, z13, 0, density, resolver, null, 300, null), currentRecomposeScope, softwareKeyboardController);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                }
                legacyTextFieldState = (LegacyTextFieldState) objRememberedValue6;
                KeyboardActions keyboardActions12 = keyboardActions3;
                legacyTextFieldState.m2569updatefnh65Uc(textFieldValue.getAnnotatedString(), text, textStyle5, z13, r55, resolver, nl3Var, keyboardActions12, focusManager, jM3048getBackgroundColor0d7_KjU);
                legacyTextFieldState.getProcessor().reset(textFieldValue, legacyTextFieldState.getInputSession());
                objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue7 == companion.getEmpty()) {
                    objRememberedValue7 = new UndoManager(0, 1, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                }
                undoManager = (UndoManager) objRememberedValue7;
                UndoManager.snapshotIfNeeded$default(undoManager, textFieldValue, 0L, 2, null);
                objRememberedValue8 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue8 == companion.getEmpty()) {
                    objRememberedValue8 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
                }
                y22Var = (y22) objRememberedValue8;
                objRememberedValue9 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue9 == companion.getEmpty()) {
                    objRememberedValue9 = BringIntoViewRequesterKt.BringIntoViewRequester();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue9);
                }
                bringIntoViewRequester = (BringIntoViewRequester) objRememberedValue9;
                objRememberedValue10 = composerStartRestartGroup.rememberedValue();
                MutableInteractionSource mutableInteractionSource11 = mutableInteractionSource2;
                if (objRememberedValue10 == companion.getEmpty()) {
                    objRememberedValue10 = new TextFieldSelectionManager(undoManager);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue10);
                }
                textFieldSelectionManager = (TextFieldSelectionManager) objRememberedValue10;
                textFieldSelectionManager.setOffsetMapping$foundation(offsetMapping);
                textFieldSelectionManager.setVisualTransformation$foundation(visualTransformation3);
                textFieldSelectionManager.setOnValueChange$foundation(legacyTextFieldState.getOnValueChange());
                textFieldSelectionManager.setState$foundation(legacyTextFieldState);
                textFieldSelectionManager.setValue$foundation(textFieldValue);
                textFieldSelectionManager.setClipboard$foundation((Clipboard) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalClipboard()));
                textFieldSelectionManager.setCoroutineScope$foundation(y22Var);
                textFieldSelectionManager.setTextToolbar((TextToolbar) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalTextToolbar()));
                textFieldSelectionManager.setHapticFeedBack((HapticFeedback) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalHapticFeedback()));
                textFieldSelectionManager.setFocusRequester(focusRequester);
                boolean z311111112 = !z10;
                textFieldSelectionManager.setEditable(z311111112);
                textFieldSelectionManager.setEnabled(z11);
                if (ComposeFoundationFlags.isSmartSelectionEnabled) {
                    composerStartRestartGroup.startReplaceGroup(1966756105);
                    textFieldSelectionManager.setPlatformSelectionBehaviors$foundation(PlatformSelectionBehaviors_androidKt.rememberPlatformSelectionBehaviors(SelectedTextType.EditableText, textStyle5.getLocaleList(), composerStartRestartGroup, 6));
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(1966902177);
                    composerStartRestartGroup.endReplaceGroup();
                }
                legacyTextFieldState.getHasFocus();
                companion2 = Modifier.Companion;
                boolean zChangedInstance11111 = composerStartRestartGroup.changedInstance(legacyTextFieldState);
                i43 = i40 & 7168;
                i44 = i40;
                if (i43 == 2048) {
                    z17 = true;
                } else {
                    z17 = false;
                }
                boolean z311111113 = z17 | zChangedInstance11111;
                if ((i44 & 57344) == 16384) {
                    z18 = true;
                } else {
                    z18 = false;
                }
                boolean zChangedInstance11112 = z311111113 | z18 | composerStartRestartGroup.changedInstance(textInputService);
                if (i42 == 4) {
                    z19 = true;
                } else {
                    z19 = false;
                }
                boolean z311111114 = zChangedInstance11112 | z19;
                i45 = (i44 & 112) ^ 48;
                if (i45 > 32) {
                    textInputService2 = textInputService;
                    if ((i44 & 48) != 32) {
                        z20 = true;
                    } else {
                        z20 = false;
                    }
                } else {
                    textInputService2 = textInputService;
                    if ((i44 & 48) != 32) {
                        z20 = true;
                    } else {
                        z20 = false;
                    }
                }
                zChangedInstance = z311111114 | z20 | composerStartRestartGroup.changedInstance(offsetMapping) | composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(bringIntoViewRequester) | composerStartRestartGroup.changedInstance(textFieldSelectionManager);
                objRememberedValue11 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance) {
                    offsetMapping2 = offsetMapping;
                    final ImeOptions imeOptions11115 = imeOptions4;
                    final boolean z311111115 = z11;
                    final boolean z311111116 = z10;
                    objRememberedValue11 = new nl3() { // from class: v12
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z311111115, z311111116, textInputService2, textFieldValue, imeOptions11115, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                        }
                    };
                    legacyTextFieldState2 = legacyTextFieldState;
                    z21 = z311111115;
                    textFieldValue2 = textFieldValue;
                    imeOptions5 = imeOptions11115;
                    textFieldSelectionManager2 = textFieldSelectionManager;
                    y22Var2 = y22Var;
                    bringIntoViewRequester2 = bringIntoViewRequester;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                } else {
                    offsetMapping2 = offsetMapping;
                    final ImeOptions imeOptions11116 = imeOptions4;
                    final boolean z311111117 = z11;
                    final boolean z311111118 = z10;
                    objRememberedValue11 = new nl3() { // from class: v12
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z311111117, z311111118, textInputService2, textFieldValue, imeOptions11116, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                        }
                    };
                    legacyTextFieldState2 = legacyTextFieldState;
                    z21 = z311111117;
                    textFieldValue2 = textFieldValue;
                    imeOptions5 = imeOptions11116;
                    textFieldSelectionManager2 = textFieldSelectionManager;
                    y22Var2 = y22Var;
                    bringIntoViewRequester2 = bringIntoViewRequester;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                }
                final BringIntoViewRequester bringIntoViewRequester12 = bringIntoViewRequester2;
                Modifier modifierTextFieldFocusModifier10 = TextFieldGestureModifiersKt.textFieldFocusModifier(companion2, z21, focusRequester, mutableInteractionSource11, (nl3) objRememberedValue11);
                if (z21) {
                    z22 = false;
                } else {
                    z22 = false;
                }
                stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Boolean.valueOf(z22), composerStartRestartGroup, 0);
                j59 j59Var10 = j59.a;
                boolean zChanged113 = composerStartRestartGroup.changed(stateRememberUpdatedState) | composerStartRestartGroup.changedInstance(legacyTextFieldState2) | composerStartRestartGroup.changedInstance(textInputService2) | composerStartRestartGroup.changedInstance(textFieldSelectionManager2);
                if (i45 > 32) {
                    imeOptions6 = imeOptions5;
                    if ((i44 & 48) != 32) {
                        z23 = true;
                    } else {
                        z23 = false;
                    }
                } else {
                    imeOptions6 = imeOptions5;
                    if ((i44 & 48) != 32) {
                        z23 = true;
                    } else {
                        z23 = false;
                    }
                }
                z24 = zChanged113 | z23;
                objRememberedValue12 = composerStartRestartGroup.rememberedValue();
                if (z24) {
                    ImeOptions imeOptions11117 = imeOptions6;
                    TextInputService textInputService112 = textInputService2;
                    TextFieldSelectionManager textFieldSelectionManager116 = textFieldSelectionManager2;
                    LegacyTextFieldState legacyTextFieldState115 = legacyTextFieldState2;
                    objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState115, stateRememberUpdatedState, textInputService112, textFieldSelectionManager116, imeOptions11117, null);
                    legacyTextFieldState3 = legacyTextFieldState115;
                    textFieldSelectionManager3 = textFieldSelectionManager116;
                    imeOptions7 = imeOptions11117;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                } else {
                    ImeOptions imeOptions11118 = imeOptions6;
                    TextInputService textInputService113 = textInputService2;
                    TextFieldSelectionManager textFieldSelectionManager117 = textFieldSelectionManager2;
                    LegacyTextFieldState legacyTextFieldState116 = legacyTextFieldState2;
                    objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState116, stateRememberUpdatedState, textInputService113, textFieldSelectionManager117, imeOptions11118, null);
                    legacyTextFieldState3 = legacyTextFieldState116;
                    textFieldSelectionManager3 = textFieldSelectionManager117;
                    imeOptions7 = imeOptions11118;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                }
                imeOptions8 = imeOptions7;
                EffectsKt.LaunchedEffect(j59Var10, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue12, composerStartRestartGroup, 6);
                int i5111 = i44 >> 3;
                z25 = z21;
                legacyTextFieldState4 = legacyTextFieldState3;
                textFieldSelectionManager4 = textFieldSelectionManager3;
                Modifier modifierTextFieldPointer11 = TextFieldPointerModifier_androidKt.textFieldPointer(companion2, textFieldSelectionManager4, z25, mutableInteractionSource11, legacyTextFieldState4, focusRequester, z10, offsetMapping2, composerStartRestartGroup, (i5111 & 896) | 196614 | ((i41 >> 9) & 7168) | ((i44 << 6) & 3670016));
                offsetMapping3 = offsetMapping2;
                final Modifier modifierTextFieldDraw11 = CoreTextField_androidKt.textFieldDraw(companion2, legacyTextFieldState4, textFieldValue2, offsetMapping3);
                boolean zChangedInstance11113 = composerStartRestartGroup.changedInstance(legacyTextFieldState4);
                if (i43 == 2048) {
                    z26 = true;
                } else {
                    z26 = false;
                }
                boolean zChanged114 = zChangedInstance11113 | z26 | composerStartRestartGroup.changed(windowInfo) | composerStartRestartGroup.changedInstance(textFieldSelectionManager4);
                if (i42 == 4) {
                    z27 = true;
                } else {
                    z27 = false;
                }
                zChangedInstance2 = zChanged114 | z27 | composerStartRestartGroup.changedInstance(offsetMapping3);
                objRememberedValue13 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance2) {
                    objRememberedValue13 = new nl3() { // from class: w12
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                        }
                    };
                    textFieldSelectionManager5 = textFieldSelectionManager4;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                } else {
                    objRememberedValue13 = new nl3() { // from class: w12
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                        }
                    };
                    textFieldSelectionManager5 = textFieldSelectionManager4;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                }
                final Modifier modifierOnGloballyPositioned11 = OnGloballyPositionedModifierKt.onGloballyPositioned(companion2, (nl3) objRememberedValue13);
                textFieldSelectionManager6 = textFieldSelectionManager5;
                CoreTextFieldSemanticsModifier coreTextFieldSemanticsModifier11 = new CoreTextFieldSemanticsModifier(transformedText9, textFieldValue, legacyTextFieldState4, z10, z25, visualTransformation3 instanceof PasswordVisualTransformation, offsetMapping3, textFieldSelectionManager6, imeOptions8, focusRequester);
                final VisualTransformation visualTransformation119 = visualTransformation3;
                if (z25 != 0) {
                    z28 = false;
                } else {
                    z28 = false;
                }
                final Modifier modifierTextFieldCursor11 = CoreTextField_androidKt.textFieldCursor(companion2, legacyTextFieldState4, textFieldValue, offsetMapping3, brush3, z28);
                zChangedInstance3 = composerStartRestartGroup.changedInstance(textFieldSelectionManager6);
                objRememberedValue14 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance3) {
                    i46 = 0;
                    objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                } else {
                    i46 = 0;
                    objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                }
                EffectsKt.DisposableEffect(textFieldSelectionManager6, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue14, composerStartRestartGroup, i46);
                boolean zChangedInstance11114 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changedInstance(textInputService2);
                if (i42 == 4) {
                    z29 = true;
                } else {
                    z29 = false;
                }
                z30 = z29 | zChangedInstance11114 | ((i45 <= 32 && composerStartRestartGroup.changed(imeOptions8)) || (i44 & 48) == 32);
                objRememberedValue15 = composerStartRestartGroup.rememberedValue();
                if (z30) {
                    objRememberedValue15 = new nl3() { // from class: h12
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                } else {
                    objRememberedValue15 = new nl3() { // from class: h12
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                }
                EffectsKt.DisposableEffect(imeOptions8, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue15, composerStartRestartGroup, i5111 & 14);
                nl3<TextFieldValue, j59> onValueChange11 = legacyTextFieldState4.getOnValueChange();
                i47 = i38;
                if (i47 == 1) {
                    z31 = true;
                } else {
                    z31 = false;
                }
                Modifier modifierM2614textFieldKeyInput2WJ9YEU11 = TextFieldKeyInputKt.m2614textFieldKeyInput2WJ9YEU(companion2, legacyTextFieldState4, textFieldSelectionManager6, textFieldValue, onValueChange11, z311111112, z31, offsetMapping3, undoManager, imeOptions8.m8688getImeActioneUduSuo());
                iM8689getKeyboardTypePjHm6EE = imeOptions8.m8689getKeyboardTypePjHm6EE();
                companion3 = KeyboardType.Companion;
                if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion3.m8731getPasswordPjHm6EE())) {
                    z32 = false;
                } else {
                    z32 = false;
                }
                boolean zCoreTextField$lambda$114 = CoreTextField$lambda$14(stateRememberUpdatedState);
                zChanged2 = composerStartRestartGroup.changed(z32) | composerStartRestartGroup.changedInstance(legacyPlatformTextInputServiceAdapter);
                objRememberedValue16 = composerStartRestartGroup.rememberedValue();
                if (zChanged2) {
                    objRememberedValue16 = new ll3() { // from class: i12
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                } else {
                    objRememberedValue16 = new ll3() { // from class: i12
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                }
                Modifier modifierStylusHandwriting11 = StylusHandwritingKt.stylusHandwriting(companion2, zCoreTextField$lambda$114, z32, (ll3) objRememberedValue16);
                y22 y22Var13 = y22Var2;
                brushM2447resolveAutofillHighlightWkMShQ = AutofillHighlightKt.m2447resolveAutofillHighlightWkMShQ((Brush) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightBrush()), ((Color) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightColor())).m6242unboximpl(), AutofillHighlight_androidKt.autofillHighlightColor());
                zChangedInstance4 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changed(brushM2447resolveAutofillHighlightWkMShQ);
                objRememberedValue17 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance4) {
                    i48 = 0;
                    objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                } else {
                    i48 = 0;
                    objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                }
                Modifier modifierDrawWithContent11 = DrawModifierKt.drawWithContent(companion2, (nl3) objRememberedValue17);
                OverscrollEffect overscrollEffectRememberTextFieldOverscrollEffect11 = TextFieldScroll_androidKt.rememberTextFieldOverscrollEffect(composerStartRestartGroup, i48);
                Modifier modifier115 = modifier4;
                Modifier modifierThen11 = previewKeyEventToDeselectOnBack(TextFieldFocusModifier_androidKt.interceptDPadAndMoveFocus(LegacyAdaptingPlatformTextInputModifierNodeKt.legacyTextInputAdapter(modifier115.then(modifierDrawWithContent11), legacyPlatformTextInputServiceAdapter, legacyTextFieldState4, textFieldSelectionManager6).then(modifierStylusHandwriting11).then(modifierTextFieldFocusModifier10), legacyTextFieldState4, focusManager), legacyTextFieldState4, textFieldSelectionManager6).then(modifierM2614textFieldKeyInput2WJ9YEU11);
                final TextFieldScrollerPosition textFieldScrollerPosition16 = textFieldScrollerPosition5;
                Modifier modifierAddContextMenuComponents11 = addContextMenuComponents(OnGloballyPositionedModifierKt.onGloballyPositioned(TextFieldScrollKt.textFieldScrollable(modifierThen11, textFieldScrollerPosition16, mutableInteractionSource11, z25, overscrollEffectRememberTextFieldOverscrollEffect11).then(modifierTextFieldPointer11).then(coreTextFieldSemanticsModifier11), new nl3() { // from class: r12
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return CoreTextFieldKt.CoreTextField$lambda$21(legacyTextFieldState4, (LayoutCoordinates) obj);
                    }
                }), textFieldSelectionManager6, y22Var13);
                if (z25) {
                    i48 = 1;
                }
                if (i48 != 0) {
                    modifierTextFieldMagnifier = TextFieldSelectionManager_androidKt.textFieldMagnifier(companion2, textFieldSelectionManager6);
                } else {
                    modifierTextFieldMagnifier = companion2;
                }
                final Modifier modifier116 = modifierTextFieldMagnifier;
                final boolean z311111119 = z10;
                final dm3 dm3Var13 = lambda$559628295$foundation;
                final int i5112 = i39;
                final boolean z410 = i48;
                CoreTextFieldRootBox(modifierAddContextMenuComponents11, textFieldSelectionManager6, ComposableLambdaKt.rememberComposableLambda(-814563849, true, new bm3() { // from class: s12
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return CoreTextFieldKt.CoreTextField$lambda$22(dm3Var13, legacyTextFieldState4, textStyle5, i5112, i47, textFieldScrollerPosition16, textFieldValue, visualTransformation119, modifierTextFieldCursor11, modifierTextFieldDraw11, modifierOnGloballyPositioned11, modifier116, bringIntoViewRequester12, textFieldSelectionManager6, z410, z311111119, nl3Var5, offsetMapping3, density, (Composer) obj, iIntValue);
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, RendererCapabilities.DECODER_SUPPORT_MASK);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                dm3Var2 = dm3Var13;
                i37 = i5112;
                composer2 = composerStartRestartGroup;
                nl3Var4 = nl3Var5;
                z7 = z311111119;
                textFieldScrollerPosition2 = textFieldScrollerPosition3;
                imeOptions2 = imeOptions8;
                z6 = z25;
                mutableInteractionSource2 = mutableInteractionSource11;
                z5 = z13;
                keyboardActions2 = keyboardActions12;
                modifier3 = modifier115;
                i36 = i47;
                visualTransformation2 = visualTransformation119;
                solidColor = brush3;
                textStyle3 = textStyle5;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                z5 = z;
                imeOptions2 = imeOptions;
                keyboardActions2 = keyboardActions;
                dm3Var2 = dm3Var;
                textFieldScrollerPosition2 = textFieldScrollerPosition;
                composer2 = composerStartRestartGroup;
                textStyle3 = textStyle2;
                nl3Var4 = nl3Var3;
                visualTransformation2 = none;
                modifier3 = modifier2;
                i36 = i;
                i37 = i2;
                z6 = z2;
                z7 = z3;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: t12
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return CoreTextFieldKt.CoreTextField$lambda$23(textFieldValue, nl3Var, modifier3, textStyle3, visualTransformation2, nl3Var4, mutableInteractionSource2, solidColor, z5, i36, i37, imeOptions2, keyboardActions2, z6, z7, dm3Var2, textFieldScrollerPosition2, i3, i4, i5, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i6 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        modifier2 = modifier;
        i7 = i5 & 8;
        if (i7 != 0) {
            if ((i3 & 3072) == 0) {
                textStyle2 = textStyle;
                if (composerStartRestartGroup.changed(textStyle2)) {
                    i8 = 2048;
                } else {
                    i8 = 1024;
                }
                i6 |= i8;
            }
            i9 = i5 & 16;
            if (i9 != 0) {
                if ((i3 & 24576) == 0) {
                    none = visualTransformation;
                    if (composerStartRestartGroup.changed(none)) {
                        i10 = 16384;
                    } else {
                        i10 = 8192;
                    }
                    i6 |= i10;
                }
                i11 = i5 & 32;
                if (i11 != 0) {
                    i6 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    nl3Var3 = nl3Var2;
                } else {
                    nl3Var3 = nl3Var2;
                    if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var3)) {
                            i12 = 131072;
                        } else {
                            i12 = 65536;
                        }
                        i6 |= i12;
                    }
                }
                i13 = i5 & 64;
                if (i13 != 0) {
                    i6 |= 1572864;
                    mutableInteractionSource2 = mutableInteractionSource;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                    if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource2)) {
                            i14 = 1048576;
                        } else {
                            i14 = 524288;
                        }
                        i6 |= i14;
                    }
                }
                i15 = i5 & 128;
                if (i15 != 0) {
                    i6 |= 12582912;
                    solidColor = brush;
                } else {
                    solidColor = brush;
                    if ((i3 & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(solidColor)) {
                            i16 = 8388608;
                        } else {
                            i16 = 4194304;
                        }
                        i6 |= i16;
                    }
                }
                i17 = i5 & 256;
                if (i17 != 0) {
                    i6 |= 100663296;
                } else if ((i3 & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(z)) {
                        i18 = 67108864;
                    } else {
                        i18 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i6 |= i18;
                }
                i19 = i5 & 512;
                if (i19 != 0) {
                    if ((i3 & 805306368) == 0) {
                        if (composerStartRestartGroup.changed(i)) {
                            i20 = 536870912;
                        } else {
                            i20 = 268435456;
                        }
                        i6 |= i20;
                    }
                    i21 = i5 & 1024;
                    if (i21 != 0) {
                        i22 = i4 | 6;
                    } else if ((i4 & 6) == 0) {
                        if (composerStartRestartGroup.changed(i2)) {
                            i23 = 4;
                        } else {
                            i23 = 2;
                        }
                        i22 = i4 | i23;
                    } else {
                        i22 = i4;
                    }
                    if ((i4 & 48) != 0) {
                        i22 |= ((i5 & 2048) == 0 || !composerStartRestartGroup.changed(imeOptions)) ? 16 : 32;
                    }
                    i24 = i22;
                    i25 = i5 & 4096;
                    if (i25 != 0) {
                        i26 = i24 | RendererCapabilities.DECODER_SUPPORT_MASK;
                    } else if ((i4 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                        if (composerStartRestartGroup.changed(keyboardActions)) {
                            i27 = 256;
                        } else {
                            i27 = 128;
                        }
                        i26 = i24 | i27;
                    } else {
                        i26 = i24;
                    }
                    i28 = i5 & 8192;
                    if (i28 != 0) {
                        i30 = i26 | 3072;
                    } else {
                        i29 = i26;
                        if ((i4 & 3072) == 0) {
                            i30 = i29 | (composerStartRestartGroup.changed(z2) ? 2048 : 1024);
                        } else {
                            i30 = i29;
                        }
                    }
                    i31 = i5 & 16384;
                    if (i31 != 0) {
                        i33 = i30 | 24576;
                    } else {
                        i32 = i30;
                        if ((i4 & 24576) == 0) {
                            i33 = i32 | (composerStartRestartGroup.changed(z3) ? 16384 : 8192);
                        } else {
                            i33 = i32;
                        }
                    }
                    i34 = i5 & 32768;
                    if (i34 != 0) {
                        i33 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    } else if ((i4 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        i33 |= composerStartRestartGroup.changedInstance(dm3Var) ? 131072 : 65536;
                    }
                    i35 = i5 & 65536;
                    if (i35 != 0) {
                        i33 |= 1572864;
                    } else if ((i4 & 1572864) == 0) {
                        i33 |= composerStartRestartGroup.changed(textFieldScrollerPosition) ? 1048576 : 524288;
                    }
                    if ((i6 & 306783379) == 306783378) {
                        z4 = true;
                    } else {
                        z4 = true;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i6 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        jh2Var = null;
                        if ((i3 & 1) != 0) {
                            if (i50 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i7 != 0) {
                                textStyle4 = TextStyle.Companion.getDefault();
                            } else {
                                textStyle4 = textStyle2;
                            }
                            if (i9 != 0) {
                                none = VisualTransformation.Companion.getNone();
                            }
                            if (i11 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new p12(0);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                nl3Var3 = (nl3) objRememberedValue;
                            }
                            if (i13 != 0) {
                                mutableInteractionSource2 = null;
                            }
                            if (i15 != 0) {
                                solidColor = new SolidColor(Color.Companion.m6268getUnspecified0d7_KjU(), jh2Var);
                            }
                            if (i17 != 0) {
                                z8 = true;
                            } else {
                                z8 = z;
                            }
                            if (i19 != 0) {
                                i38 = Integer.MAX_VALUE;
                            } else {
                                i38 = i;
                            }
                            if (i21 != 0) {
                                i39 = 1;
                            } else {
                                i39 = i2;
                            }
                            if ((i5 & 2048) != 0) {
                                imeOptions3 = ImeOptions.Companion.getDefault();
                                i33 &= -113;
                            } else {
                                imeOptions3 = imeOptions;
                            }
                            if (i25 != 0) {
                                keyboardActions3 = KeyboardActions.Companion.getDefault();
                            } else {
                                keyboardActions3 = keyboardActions;
                            }
                            if (i28 != 0) {
                                z9 = true;
                            } else {
                                z9 = z2;
                            }
                            if (i31 != 0) {
                                z10 = false;
                            } else {
                                z10 = z3;
                            }
                            if (i34 != 0) {
                                lambda$559628295$foundation = ComposableSingletons$CoreTextFieldKt.INSTANCE.getLambda$559628295$foundation();
                            } else {
                                lambda$559628295$foundation = dm3Var;
                            }
                            boolean z3214 = z8;
                            textStyle2 = textStyle4;
                            modifier4 = modifier2;
                            z11 = z9;
                            nl3Var5 = nl3Var3;
                            z12 = z3214;
                            VisualTransformation visualTransformation1110 = none;
                            imeOptions4 = imeOptions3;
                            brush2 = solidColor;
                            visualTransformation3 = visualTransformation1110;
                            i40 = i33;
                            if (i35 != 0) {
                                textFieldScrollerPosition3 = null;
                            } else {
                                textFieldScrollerPosition3 = textFieldScrollerPosition;
                            }
                        } else {
                            if (i50 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i7 != 0) {
                                textStyle4 = TextStyle.Companion.getDefault();
                            } else {
                                textStyle4 = textStyle2;
                            }
                            if (i9 != 0) {
                                none = VisualTransformation.Companion.getNone();
                            }
                            if (i11 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new p12(0);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                nl3Var3 = (nl3) objRememberedValue;
                            }
                            if (i13 != 0) {
                                mutableInteractionSource2 = null;
                            }
                            if (i15 != 0) {
                                solidColor = new SolidColor(Color.Companion.m6268getUnspecified0d7_KjU(), jh2Var);
                            }
                            if (i17 != 0) {
                                z8 = true;
                            } else {
                                z8 = z;
                            }
                            if (i19 != 0) {
                                i38 = Integer.MAX_VALUE;
                            } else {
                                i38 = i;
                            }
                            if (i21 != 0) {
                                i39 = 1;
                            } else {
                                i39 = i2;
                            }
                            if ((i5 & 2048) != 0) {
                                imeOptions3 = ImeOptions.Companion.getDefault();
                                i33 &= -113;
                            } else {
                                imeOptions3 = imeOptions;
                            }
                            if (i25 != 0) {
                                keyboardActions3 = KeyboardActions.Companion.getDefault();
                            } else {
                                keyboardActions3 = keyboardActions;
                            }
                            if (i28 != 0) {
                                z9 = true;
                            } else {
                                z9 = z2;
                            }
                            if (i31 != 0) {
                                z10 = false;
                            } else {
                                z10 = z3;
                            }
                            if (i34 != 0) {
                                lambda$559628295$foundation = ComposableSingletons$CoreTextFieldKt.INSTANCE.getLambda$559628295$foundation();
                            } else {
                                lambda$559628295$foundation = dm3Var;
                            }
                            boolean z3215 = z8;
                            textStyle2 = textStyle4;
                            modifier4 = modifier2;
                            z11 = z9;
                            nl3Var5 = nl3Var3;
                            z12 = z3215;
                            VisualTransformation visualTransformation1111 = none;
                            imeOptions4 = imeOptions3;
                            brush2 = solidColor;
                            visualTransformation3 = visualTransformation1111;
                            i40 = i33;
                            if (i35 != 0) {
                                textFieldScrollerPosition3 = null;
                            } else {
                                textFieldScrollerPosition3 = textFieldScrollerPosition;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        brush3 = brush2;
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(31062401, i6, i40, "androidx.compose.foundation.text.CoreTextField (CoreTextField.kt:208)");
                        }
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue2 == companion.getEmpty()) {
                            objRememberedValue2 = new FocusRequester();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        focusRequester = (FocusRequester) objRememberedValue2;
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        i41 = i6;
                        if (objRememberedValue3 == companion.getEmpty()) {
                            objRememberedValue3 = LegacyPlatformTextInputServiceAdapter_androidKt.createLegacyPlatformTextInputServiceAdapter();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        legacyPlatformTextInputServiceAdapter = (LegacyPlatformTextInputServiceAdapter) objRememberedValue3;
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue4 == companion.getEmpty()) {
                            objRememberedValue4 = new TextInputService(legacyPlatformTextInputServiceAdapter);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        textInputService = (TextInputService) objRememberedValue4;
                        density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        resolver = (FontFamily.Resolver) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalFontFamilyResolver());
                        jM3048getBackgroundColor0d7_KjU = ((TextSelectionColors) composerStartRestartGroup.consume(TextSelectionColorsKt.getLocalTextSelectionColors())).m3048getBackgroundColor0d7_KjU();
                        focusManager = (FocusManager) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalFocusManager());
                        windowInfo = (WindowInfo) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalWindowInfo());
                        textStyle5 = textStyle2;
                        softwareKeyboardController = (SoftwareKeyboardController) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalSoftwareKeyboardController());
                        z13 = z12;
                        if (i38 == 1) {
                            orientation = Orientation.Vertical;
                        } else {
                            orientation = Orientation.Vertical;
                        }
                        if (textFieldScrollerPosition3 == null) {
                            composerStartRestartGroup.startReplaceGroup(-213744626);
                            Object[] objArr10 = {orientation};
                            Saver<TextFieldScrollerPosition, Object> saver10 = TextFieldScrollerPosition.Companion.getSaver();
                            zChanged3 = composerStartRestartGroup.changed(orientation.ordinal());
                            objRememberedValue18 = composerStartRestartGroup.rememberedValue();
                            if (zChanged3) {
                                i49 = 0;
                                objRememberedValue18 = new u12(orientation, i49);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue18);
                            } else {
                                i49 = 0;
                                objRememberedValue18 = new u12(orientation, i49);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue18);
                            }
                            textFieldScrollerPosition4 = (TextFieldScrollerPosition) RememberSaveableKt.m5624rememberSaveable(objArr10, (Saver) saver10, (ll3) objRememberedValue18, composerStartRestartGroup, i49);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-213745742);
                            composerStartRestartGroup.endReplaceGroup();
                            textFieldScrollerPosition4 = textFieldScrollerPosition3;
                        }
                        if (textFieldScrollerPosition4.getOrientation() != orientation) {
                            if (orientation == Orientation.Vertical) {
                                str = "only single-line, non-wrap text fields can scroll horizontally";
                            } else {
                                str = "single-line, non-wrap text fields can only scroll horizontally";
                            }
                            throw new IllegalArgumentException("Mismatching scroller orientation; ".concat(str));
                        }
                        i42 = i41 & 14;
                        if (i42 == 4) {
                            z14 = true;
                        } else {
                            z14 = false;
                        }
                        if ((i41 & 57344) == 16384) {
                            z15 = true;
                        } else {
                            z15 = false;
                        }
                        z16 = z14 | z15;
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (z16) {
                            transformedTextFilterWithValidation = ValidatingOffsetMappingKt.filterWithValidation(visualTransformation3, textFieldValue.getAnnotatedString());
                            textRangeM8740getCompositionMzsxiRA = textFieldValue.m8740getCompositionMzsxiRA();
                            if (textRangeM8740getCompositionMzsxiRA != null) {
                                textFieldScrollerPosition5 = textFieldScrollerPosition4;
                                transformedTextM2604applyCompositionDecoration72CqOWE = TextFieldDelegate.Companion.m2604applyCompositionDecoration72CqOWE(textRangeM8740getCompositionMzsxiRA.m8495unboximpl(), transformedTextFilterWithValidation);
                                if (transformedTextM2604applyCompositionDecoration72CqOWE != null) {
                                    objRememberedValue5 = transformedTextM2604applyCompositionDecoration72CqOWE;
                                }
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            } else {
                                textFieldScrollerPosition5 = textFieldScrollerPosition4;
                            }
                            objRememberedValue5 = transformedTextFilterWithValidation;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            transformedTextFilterWithValidation = ValidatingOffsetMappingKt.filterWithValidation(visualTransformation3, textFieldValue.getAnnotatedString());
                            textRangeM8740getCompositionMzsxiRA = textFieldValue.m8740getCompositionMzsxiRA();
                            if (textRangeM8740getCompositionMzsxiRA != null) {
                                textFieldScrollerPosition5 = textFieldScrollerPosition4;
                                transformedTextM2604applyCompositionDecoration72CqOWE = TextFieldDelegate.Companion.m2604applyCompositionDecoration72CqOWE(textRangeM8740getCompositionMzsxiRA.m8495unboximpl(), transformedTextFilterWithValidation);
                                if (transformedTextM2604applyCompositionDecoration72CqOWE != null) {
                                    objRememberedValue5 = transformedTextM2604applyCompositionDecoration72CqOWE;
                                }
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            } else {
                                textFieldScrollerPosition5 = textFieldScrollerPosition4;
                            }
                            objRememberedValue5 = transformedTextFilterWithValidation;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        TransformedText transformedText10 = (TransformedText) objRememberedValue5;
                        text = transformedText10.getText();
                        offsetMapping = transformedText10.getOffsetMapping();
                        currentRecomposeScope = ComposablesKt.getCurrentRecomposeScope(composerStartRestartGroup, 0);
                        zChanged = composerStartRestartGroup.changed(softwareKeyboardController);
                        objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue6 = new LegacyTextFieldState(new TextDelegate(text, textStyle5, 0, 0, z13, 0, density, resolver, null, 300, null), currentRecomposeScope, softwareKeyboardController);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        } else {
                            objRememberedValue6 = new LegacyTextFieldState(new TextDelegate(text, textStyle5, 0, 0, z13, 0, density, resolver, null, 300, null), currentRecomposeScope, softwareKeyboardController);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        }
                        legacyTextFieldState = (LegacyTextFieldState) objRememberedValue6;
                        KeyboardActions keyboardActions13 = keyboardActions3;
                        legacyTextFieldState.m2569updatefnh65Uc(textFieldValue.getAnnotatedString(), text, textStyle5, z13, r55, resolver, nl3Var, keyboardActions13, focusManager, jM3048getBackgroundColor0d7_KjU);
                        legacyTextFieldState.getProcessor().reset(textFieldValue, legacyTextFieldState.getInputSession());
                        objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue7 == companion.getEmpty()) {
                            objRememberedValue7 = new UndoManager(0, 1, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                        }
                        undoManager = (UndoManager) objRememberedValue7;
                        UndoManager.snapshotIfNeeded$default(undoManager, textFieldValue, 0L, 2, null);
                        objRememberedValue8 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue8 == companion.getEmpty()) {
                            objRememberedValue8 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
                        }
                        y22Var = (y22) objRememberedValue8;
                        objRememberedValue9 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue9 == companion.getEmpty()) {
                            objRememberedValue9 = BringIntoViewRequesterKt.BringIntoViewRequester();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue9);
                        }
                        bringIntoViewRequester = (BringIntoViewRequester) objRememberedValue9;
                        objRememberedValue10 = composerStartRestartGroup.rememberedValue();
                        MutableInteractionSource mutableInteractionSource12 = mutableInteractionSource2;
                        if (objRememberedValue10 == companion.getEmpty()) {
                            objRememberedValue10 = new TextFieldSelectionManager(undoManager);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue10);
                        }
                        textFieldSelectionManager = (TextFieldSelectionManager) objRememberedValue10;
                        textFieldSelectionManager.setOffsetMapping$foundation(offsetMapping);
                        textFieldSelectionManager.setVisualTransformation$foundation(visualTransformation3);
                        textFieldSelectionManager.setOnValueChange$foundation(legacyTextFieldState.getOnValueChange());
                        textFieldSelectionManager.setState$foundation(legacyTextFieldState);
                        textFieldSelectionManager.setValue$foundation(textFieldValue);
                        textFieldSelectionManager.setClipboard$foundation((Clipboard) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalClipboard()));
                        textFieldSelectionManager.setCoroutineScope$foundation(y22Var);
                        textFieldSelectionManager.setTextToolbar((TextToolbar) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalTextToolbar()));
                        textFieldSelectionManager.setHapticFeedBack((HapticFeedback) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalHapticFeedback()));
                        textFieldSelectionManager.setFocusRequester(focusRequester);
                        boolean z3111111110 = !z10;
                        textFieldSelectionManager.setEditable(z3111111110);
                        textFieldSelectionManager.setEnabled(z11);
                        if (ComposeFoundationFlags.isSmartSelectionEnabled) {
                            composerStartRestartGroup.startReplaceGroup(1966756105);
                            textFieldSelectionManager.setPlatformSelectionBehaviors$foundation(PlatformSelectionBehaviors_androidKt.rememberPlatformSelectionBehaviors(SelectedTextType.EditableText, textStyle5.getLocaleList(), composerStartRestartGroup, 6));
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1966902177);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        legacyTextFieldState.getHasFocus();
                        companion2 = Modifier.Companion;
                        boolean zChangedInstance11115 = composerStartRestartGroup.changedInstance(legacyTextFieldState);
                        i43 = i40 & 7168;
                        i44 = i40;
                        if (i43 == 2048) {
                            z17 = true;
                        } else {
                            z17 = false;
                        }
                        boolean z3111111111 = z17 | zChangedInstance11115;
                        if ((i44 & 57344) == 16384) {
                            z18 = true;
                        } else {
                            z18 = false;
                        }
                        boolean zChangedInstance11116 = z3111111111 | z18 | composerStartRestartGroup.changedInstance(textInputService);
                        if (i42 == 4) {
                            z19 = true;
                        } else {
                            z19 = false;
                        }
                        boolean z3111111112 = zChangedInstance11116 | z19;
                        i45 = (i44 & 112) ^ 48;
                        if (i45 > 32) {
                            textInputService2 = textInputService;
                            if ((i44 & 48) != 32) {
                                z20 = true;
                            } else {
                                z20 = false;
                            }
                        } else {
                            textInputService2 = textInputService;
                            if ((i44 & 48) != 32) {
                                z20 = true;
                            } else {
                                z20 = false;
                            }
                        }
                        zChangedInstance = z3111111112 | z20 | composerStartRestartGroup.changedInstance(offsetMapping) | composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(bringIntoViewRequester) | composerStartRestartGroup.changedInstance(textFieldSelectionManager);
                        objRememberedValue11 = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance) {
                            offsetMapping2 = offsetMapping;
                            final ImeOptions imeOptions11119 = imeOptions4;
                            final boolean z3111111113 = z11;
                            final boolean z3111111114 = z10;
                            objRememberedValue11 = new nl3() { // from class: v12
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z3111111113, z3111111114, textInputService2, textFieldValue, imeOptions11119, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                                }
                            };
                            legacyTextFieldState2 = legacyTextFieldState;
                            z21 = z3111111113;
                            textFieldValue2 = textFieldValue;
                            imeOptions5 = imeOptions11119;
                            textFieldSelectionManager2 = textFieldSelectionManager;
                            y22Var2 = y22Var;
                            bringIntoViewRequester2 = bringIntoViewRequester;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                        } else {
                            offsetMapping2 = offsetMapping;
                            final ImeOptions imeOptions111110 = imeOptions4;
                            final boolean z3111111115 = z11;
                            final boolean z3111111116 = z10;
                            objRememberedValue11 = new nl3() { // from class: v12
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z3111111115, z3111111116, textInputService2, textFieldValue, imeOptions111110, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                                }
                            };
                            legacyTextFieldState2 = legacyTextFieldState;
                            z21 = z3111111115;
                            textFieldValue2 = textFieldValue;
                            imeOptions5 = imeOptions111110;
                            textFieldSelectionManager2 = textFieldSelectionManager;
                            y22Var2 = y22Var;
                            bringIntoViewRequester2 = bringIntoViewRequester;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                        }
                        final BringIntoViewRequester bringIntoViewRequester13 = bringIntoViewRequester2;
                        Modifier modifierTextFieldFocusModifier11 = TextFieldGestureModifiersKt.textFieldFocusModifier(companion2, z21, focusRequester, mutableInteractionSource12, (nl3) objRememberedValue11);
                        if (z21) {
                            z22 = false;
                        } else {
                            z22 = false;
                        }
                        stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Boolean.valueOf(z22), composerStartRestartGroup, 0);
                        j59 j59Var11 = j59.a;
                        boolean zChanged115 = composerStartRestartGroup.changed(stateRememberUpdatedState) | composerStartRestartGroup.changedInstance(legacyTextFieldState2) | composerStartRestartGroup.changedInstance(textInputService2) | composerStartRestartGroup.changedInstance(textFieldSelectionManager2);
                        if (i45 > 32) {
                            imeOptions6 = imeOptions5;
                            if ((i44 & 48) != 32) {
                                z23 = true;
                            } else {
                                z23 = false;
                            }
                        } else {
                            imeOptions6 = imeOptions5;
                            if ((i44 & 48) != 32) {
                                z23 = true;
                            } else {
                                z23 = false;
                            }
                        }
                        z24 = zChanged115 | z23;
                        objRememberedValue12 = composerStartRestartGroup.rememberedValue();
                        if (z24) {
                            ImeOptions imeOptions111111 = imeOptions6;
                            TextInputService textInputService114 = textInputService2;
                            TextFieldSelectionManager textFieldSelectionManager118 = textFieldSelectionManager2;
                            LegacyTextFieldState legacyTextFieldState117 = legacyTextFieldState2;
                            objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState117, stateRememberUpdatedState, textInputService114, textFieldSelectionManager118, imeOptions111111, null);
                            legacyTextFieldState3 = legacyTextFieldState117;
                            textFieldSelectionManager3 = textFieldSelectionManager118;
                            imeOptions7 = imeOptions111111;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                        } else {
                            ImeOptions imeOptions111112 = imeOptions6;
                            TextInputService textInputService115 = textInputService2;
                            TextFieldSelectionManager textFieldSelectionManager119 = textFieldSelectionManager2;
                            LegacyTextFieldState legacyTextFieldState118 = legacyTextFieldState2;
                            objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState118, stateRememberUpdatedState, textInputService115, textFieldSelectionManager119, imeOptions111112, null);
                            legacyTextFieldState3 = legacyTextFieldState118;
                            textFieldSelectionManager3 = textFieldSelectionManager119;
                            imeOptions7 = imeOptions111112;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                        }
                        imeOptions8 = imeOptions7;
                        EffectsKt.LaunchedEffect(j59Var11, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue12, composerStartRestartGroup, 6);
                        int i5113 = i44 >> 3;
                        z25 = z21;
                        legacyTextFieldState4 = legacyTextFieldState3;
                        textFieldSelectionManager4 = textFieldSelectionManager3;
                        Modifier modifierTextFieldPointer12 = TextFieldPointerModifier_androidKt.textFieldPointer(companion2, textFieldSelectionManager4, z25, mutableInteractionSource12, legacyTextFieldState4, focusRequester, z10, offsetMapping2, composerStartRestartGroup, (i5113 & 896) | 196614 | ((i41 >> 9) & 7168) | ((i44 << 6) & 3670016));
                        offsetMapping3 = offsetMapping2;
                        final Modifier modifierTextFieldDraw12 = CoreTextField_androidKt.textFieldDraw(companion2, legacyTextFieldState4, textFieldValue2, offsetMapping3);
                        boolean zChangedInstance11117 = composerStartRestartGroup.changedInstance(legacyTextFieldState4);
                        if (i43 == 2048) {
                            z26 = true;
                        } else {
                            z26 = false;
                        }
                        boolean zChanged116 = zChangedInstance11117 | z26 | composerStartRestartGroup.changed(windowInfo) | composerStartRestartGroup.changedInstance(textFieldSelectionManager4);
                        if (i42 == 4) {
                            z27 = true;
                        } else {
                            z27 = false;
                        }
                        zChangedInstance2 = zChanged116 | z27 | composerStartRestartGroup.changedInstance(offsetMapping3);
                        objRememberedValue13 = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance2) {
                            objRememberedValue13 = new nl3() { // from class: w12
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                                }
                            };
                            textFieldSelectionManager5 = textFieldSelectionManager4;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                        } else {
                            objRememberedValue13 = new nl3() { // from class: w12
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                                }
                            };
                            textFieldSelectionManager5 = textFieldSelectionManager4;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                        }
                        final Modifier modifierOnGloballyPositioned12 = OnGloballyPositionedModifierKt.onGloballyPositioned(companion2, (nl3) objRememberedValue13);
                        textFieldSelectionManager6 = textFieldSelectionManager5;
                        CoreTextFieldSemanticsModifier coreTextFieldSemanticsModifier12 = new CoreTextFieldSemanticsModifier(transformedText10, textFieldValue, legacyTextFieldState4, z10, z25, visualTransformation3 instanceof PasswordVisualTransformation, offsetMapping3, textFieldSelectionManager6, imeOptions8, focusRequester);
                        final VisualTransformation visualTransformation1112 = visualTransformation3;
                        if (z25 != 0) {
                            z28 = false;
                        } else {
                            z28 = false;
                        }
                        final Modifier modifierTextFieldCursor12 = CoreTextField_androidKt.textFieldCursor(companion2, legacyTextFieldState4, textFieldValue, offsetMapping3, brush3, z28);
                        zChangedInstance3 = composerStartRestartGroup.changedInstance(textFieldSelectionManager6);
                        objRememberedValue14 = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance3) {
                            i46 = 0;
                            objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                        } else {
                            i46 = 0;
                            objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                        }
                        EffectsKt.DisposableEffect(textFieldSelectionManager6, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue14, composerStartRestartGroup, i46);
                        boolean zChangedInstance11118 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changedInstance(textInputService2);
                        if (i42 == 4) {
                            z29 = true;
                        } else {
                            z29 = false;
                        }
                        z30 = z29 | zChangedInstance11118 | ((i45 <= 32 && composerStartRestartGroup.changed(imeOptions8)) || (i44 & 48) == 32);
                        objRememberedValue15 = composerStartRestartGroup.rememberedValue();
                        if (z30) {
                            objRememberedValue15 = new nl3() { // from class: h12
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                        } else {
                            objRememberedValue15 = new nl3() { // from class: h12
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                        }
                        EffectsKt.DisposableEffect(imeOptions8, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue15, composerStartRestartGroup, i5113 & 14);
                        nl3<TextFieldValue, j59> onValueChange12 = legacyTextFieldState4.getOnValueChange();
                        i47 = i38;
                        if (i47 == 1) {
                            z31 = true;
                        } else {
                            z31 = false;
                        }
                        Modifier modifierM2614textFieldKeyInput2WJ9YEU12 = TextFieldKeyInputKt.m2614textFieldKeyInput2WJ9YEU(companion2, legacyTextFieldState4, textFieldSelectionManager6, textFieldValue, onValueChange12, z3111111110, z31, offsetMapping3, undoManager, imeOptions8.m8688getImeActioneUduSuo());
                        iM8689getKeyboardTypePjHm6EE = imeOptions8.m8689getKeyboardTypePjHm6EE();
                        companion3 = KeyboardType.Companion;
                        if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion3.m8731getPasswordPjHm6EE())) {
                            z32 = false;
                        } else {
                            z32 = false;
                        }
                        boolean zCoreTextField$lambda$115 = CoreTextField$lambda$14(stateRememberUpdatedState);
                        zChanged2 = composerStartRestartGroup.changed(z32) | composerStartRestartGroup.changedInstance(legacyPlatformTextInputServiceAdapter);
                        objRememberedValue16 = composerStartRestartGroup.rememberedValue();
                        if (zChanged2) {
                            objRememberedValue16 = new ll3() { // from class: i12
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                        } else {
                            objRememberedValue16 = new ll3() { // from class: i12
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                        }
                        Modifier modifierStylusHandwriting12 = StylusHandwritingKt.stylusHandwriting(companion2, zCoreTextField$lambda$115, z32, (ll3) objRememberedValue16);
                        y22 y22Var14 = y22Var2;
                        brushM2447resolveAutofillHighlightWkMShQ = AutofillHighlightKt.m2447resolveAutofillHighlightWkMShQ((Brush) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightBrush()), ((Color) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightColor())).m6242unboximpl(), AutofillHighlight_androidKt.autofillHighlightColor());
                        zChangedInstance4 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changed(brushM2447resolveAutofillHighlightWkMShQ);
                        objRememberedValue17 = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance4) {
                            i48 = 0;
                            objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                        } else {
                            i48 = 0;
                            objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                        }
                        Modifier modifierDrawWithContent12 = DrawModifierKt.drawWithContent(companion2, (nl3) objRememberedValue17);
                        OverscrollEffect overscrollEffectRememberTextFieldOverscrollEffect12 = TextFieldScroll_androidKt.rememberTextFieldOverscrollEffect(composerStartRestartGroup, i48);
                        Modifier modifier117 = modifier4;
                        Modifier modifierThen12 = previewKeyEventToDeselectOnBack(TextFieldFocusModifier_androidKt.interceptDPadAndMoveFocus(LegacyAdaptingPlatformTextInputModifierNodeKt.legacyTextInputAdapter(modifier117.then(modifierDrawWithContent12), legacyPlatformTextInputServiceAdapter, legacyTextFieldState4, textFieldSelectionManager6).then(modifierStylusHandwriting12).then(modifierTextFieldFocusModifier11), legacyTextFieldState4, focusManager), legacyTextFieldState4, textFieldSelectionManager6).then(modifierM2614textFieldKeyInput2WJ9YEU12);
                        final TextFieldScrollerPosition textFieldScrollerPosition17 = textFieldScrollerPosition5;
                        Modifier modifierAddContextMenuComponents12 = addContextMenuComponents(OnGloballyPositionedModifierKt.onGloballyPositioned(TextFieldScrollKt.textFieldScrollable(modifierThen12, textFieldScrollerPosition17, mutableInteractionSource12, z25, overscrollEffectRememberTextFieldOverscrollEffect12).then(modifierTextFieldPointer12).then(coreTextFieldSemanticsModifier12), new nl3() { // from class: r12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$21(legacyTextFieldState4, (LayoutCoordinates) obj);
                            }
                        }), textFieldSelectionManager6, y22Var14);
                        if (z25) {
                            i48 = 1;
                        }
                        if (i48 != 0) {
                            modifierTextFieldMagnifier = TextFieldSelectionManager_androidKt.textFieldMagnifier(companion2, textFieldSelectionManager6);
                        } else {
                            modifierTextFieldMagnifier = companion2;
                        }
                        final Modifier modifier118 = modifierTextFieldMagnifier;
                        final boolean z3111111117 = z10;
                        final dm3 dm3Var14 = lambda$559628295$foundation;
                        final int i5114 = i39;
                        final boolean z411 = i48;
                        CoreTextFieldRootBox(modifierAddContextMenuComponents12, textFieldSelectionManager6, ComposableLambdaKt.rememberComposableLambda(-814563849, true, new bm3() { // from class: s12
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return CoreTextFieldKt.CoreTextField$lambda$22(dm3Var14, legacyTextFieldState4, textStyle5, i5114, i47, textFieldScrollerPosition17, textFieldValue, visualTransformation1112, modifierTextFieldCursor12, modifierTextFieldDraw12, modifierOnGloballyPositioned12, modifier118, bringIntoViewRequester13, textFieldSelectionManager6, z411, z3111111117, nl3Var5, offsetMapping3, density, (Composer) obj, iIntValue);
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, RendererCapabilities.DECODER_SUPPORT_MASK);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        dm3Var2 = dm3Var14;
                        i37 = i5114;
                        composer2 = composerStartRestartGroup;
                        nl3Var4 = nl3Var5;
                        z7 = z3111111117;
                        textFieldScrollerPosition2 = textFieldScrollerPosition3;
                        imeOptions2 = imeOptions8;
                        z6 = z25;
                        mutableInteractionSource2 = mutableInteractionSource12;
                        z5 = z13;
                        keyboardActions2 = keyboardActions13;
                        modifier3 = modifier117;
                        i36 = i47;
                        visualTransformation2 = visualTransformation1112;
                        solidColor = brush3;
                        textStyle3 = textStyle5;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        z5 = z;
                        imeOptions2 = imeOptions;
                        keyboardActions2 = keyboardActions;
                        dm3Var2 = dm3Var;
                        textFieldScrollerPosition2 = textFieldScrollerPosition;
                        composer2 = composerStartRestartGroup;
                        textStyle3 = textStyle2;
                        nl3Var4 = nl3Var3;
                        visualTransformation2 = none;
                        modifier3 = modifier2;
                        i36 = i;
                        i37 = i2;
                        z6 = z2;
                        z7 = z3;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: t12
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return CoreTextFieldKt.CoreTextField$lambda$23(textFieldValue, nl3Var, modifier3, textStyle3, visualTransformation2, nl3Var4, mutableInteractionSource2, solidColor, z5, i36, i37, imeOptions2, keyboardActions2, z6, z7, dm3Var2, textFieldScrollerPosition2, i3, i4, i5, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i6 |= 805306368;
                i21 = i5 & 1024;
                if (i21 != 0) {
                    i22 = i4 | 6;
                } else if ((i4 & 6) == 0) {
                    if (composerStartRestartGroup.changed(i2)) {
                        i23 = 4;
                    } else {
                        i23 = 2;
                    }
                    i22 = i4 | i23;
                } else {
                    i22 = i4;
                }
                if ((i4 & 48) != 0) {
                    i22 |= ((i5 & 2048) == 0 || !composerStartRestartGroup.changed(imeOptions)) ? 16 : 32;
                }
                i24 = i22;
                i25 = i5 & 4096;
                if (i25 != 0) {
                    i26 = i24 | RendererCapabilities.DECODER_SUPPORT_MASK;
                } else if ((i4 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    if (composerStartRestartGroup.changed(keyboardActions)) {
                        i27 = 256;
                    } else {
                        i27 = 128;
                    }
                    i26 = i24 | i27;
                } else {
                    i26 = i24;
                }
                i28 = i5 & 8192;
                if (i28 != 0) {
                    i30 = i26 | 3072;
                } else {
                    i29 = i26;
                    if ((i4 & 3072) == 0) {
                        i30 = i29 | (composerStartRestartGroup.changed(z2) ? 2048 : 1024);
                    } else {
                        i30 = i29;
                    }
                }
                i31 = i5 & 16384;
                if (i31 != 0) {
                    i33 = i30 | 24576;
                } else {
                    i32 = i30;
                    if ((i4 & 24576) == 0) {
                        i33 = i32 | (composerStartRestartGroup.changed(z3) ? 16384 : 8192);
                    } else {
                        i33 = i32;
                    }
                }
                i34 = i5 & 32768;
                if (i34 != 0) {
                    i33 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i4 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    i33 |= composerStartRestartGroup.changedInstance(dm3Var) ? 131072 : 65536;
                }
                i35 = i5 & 65536;
                if (i35 != 0) {
                    i33 |= 1572864;
                } else if ((i4 & 1572864) == 0) {
                    i33 |= composerStartRestartGroup.changed(textFieldScrollerPosition) ? 1048576 : 524288;
                }
                if ((i6 & 306783379) == 306783378) {
                    z4 = true;
                } else {
                    z4 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i6 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    jh2Var = null;
                    if ((i3 & 1) != 0) {
                        if (i50 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i7 != 0) {
                            textStyle4 = TextStyle.Companion.getDefault();
                        } else {
                            textStyle4 = textStyle2;
                        }
                        if (i9 != 0) {
                            none = VisualTransformation.Companion.getNone();
                        }
                        if (i11 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new p12(0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            nl3Var3 = (nl3) objRememberedValue;
                        }
                        if (i13 != 0) {
                            mutableInteractionSource2 = null;
                        }
                        if (i15 != 0) {
                            solidColor = new SolidColor(Color.Companion.m6268getUnspecified0d7_KjU(), jh2Var);
                        }
                        if (i17 != 0) {
                            z8 = true;
                        } else {
                            z8 = z;
                        }
                        if (i19 != 0) {
                            i38 = Integer.MAX_VALUE;
                        } else {
                            i38 = i;
                        }
                        if (i21 != 0) {
                            i39 = 1;
                        } else {
                            i39 = i2;
                        }
                        if ((i5 & 2048) != 0) {
                            imeOptions3 = ImeOptions.Companion.getDefault();
                            i33 &= -113;
                        } else {
                            imeOptions3 = imeOptions;
                        }
                        if (i25 != 0) {
                            keyboardActions3 = KeyboardActions.Companion.getDefault();
                        } else {
                            keyboardActions3 = keyboardActions;
                        }
                        if (i28 != 0) {
                            z9 = true;
                        } else {
                            z9 = z2;
                        }
                        if (i31 != 0) {
                            z10 = false;
                        } else {
                            z10 = z3;
                        }
                        if (i34 != 0) {
                            lambda$559628295$foundation = ComposableSingletons$CoreTextFieldKt.INSTANCE.getLambda$559628295$foundation();
                        } else {
                            lambda$559628295$foundation = dm3Var;
                        }
                        boolean z3216 = z8;
                        textStyle2 = textStyle4;
                        modifier4 = modifier2;
                        z11 = z9;
                        nl3Var5 = nl3Var3;
                        z12 = z3216;
                        VisualTransformation visualTransformation1113 = none;
                        imeOptions4 = imeOptions3;
                        brush2 = solidColor;
                        visualTransformation3 = visualTransformation1113;
                        i40 = i33;
                        if (i35 != 0) {
                            textFieldScrollerPosition3 = null;
                        } else {
                            textFieldScrollerPosition3 = textFieldScrollerPosition;
                        }
                    } else {
                        if (i50 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i7 != 0) {
                            textStyle4 = TextStyle.Companion.getDefault();
                        } else {
                            textStyle4 = textStyle2;
                        }
                        if (i9 != 0) {
                            none = VisualTransformation.Companion.getNone();
                        }
                        if (i11 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new p12(0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            nl3Var3 = (nl3) objRememberedValue;
                        }
                        if (i13 != 0) {
                            mutableInteractionSource2 = null;
                        }
                        if (i15 != 0) {
                            solidColor = new SolidColor(Color.Companion.m6268getUnspecified0d7_KjU(), jh2Var);
                        }
                        if (i17 != 0) {
                            z8 = true;
                        } else {
                            z8 = z;
                        }
                        if (i19 != 0) {
                            i38 = Integer.MAX_VALUE;
                        } else {
                            i38 = i;
                        }
                        if (i21 != 0) {
                            i39 = 1;
                        } else {
                            i39 = i2;
                        }
                        if ((i5 & 2048) != 0) {
                            imeOptions3 = ImeOptions.Companion.getDefault();
                            i33 &= -113;
                        } else {
                            imeOptions3 = imeOptions;
                        }
                        if (i25 != 0) {
                            keyboardActions3 = KeyboardActions.Companion.getDefault();
                        } else {
                            keyboardActions3 = keyboardActions;
                        }
                        if (i28 != 0) {
                            z9 = true;
                        } else {
                            z9 = z2;
                        }
                        if (i31 != 0) {
                            z10 = false;
                        } else {
                            z10 = z3;
                        }
                        if (i34 != 0) {
                            lambda$559628295$foundation = ComposableSingletons$CoreTextFieldKt.INSTANCE.getLambda$559628295$foundation();
                        } else {
                            lambda$559628295$foundation = dm3Var;
                        }
                        boolean z3217 = z8;
                        textStyle2 = textStyle4;
                        modifier4 = modifier2;
                        z11 = z9;
                        nl3Var5 = nl3Var3;
                        z12 = z3217;
                        VisualTransformation visualTransformation1114 = none;
                        imeOptions4 = imeOptions3;
                        brush2 = solidColor;
                        visualTransformation3 = visualTransformation1114;
                        i40 = i33;
                        if (i35 != 0) {
                            textFieldScrollerPosition3 = null;
                        } else {
                            textFieldScrollerPosition3 = textFieldScrollerPosition;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    brush3 = brush2;
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(31062401, i6, i40, "androidx.compose.foundation.text.CoreTextField (CoreTextField.kt:208)");
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = new FocusRequester();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    focusRequester = (FocusRequester) objRememberedValue2;
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    i41 = i6;
                    if (objRememberedValue3 == companion.getEmpty()) {
                        objRememberedValue3 = LegacyPlatformTextInputServiceAdapter_androidKt.createLegacyPlatformTextInputServiceAdapter();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    legacyPlatformTextInputServiceAdapter = (LegacyPlatformTextInputServiceAdapter) objRememberedValue3;
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue4 == companion.getEmpty()) {
                        objRememberedValue4 = new TextInputService(legacyPlatformTextInputServiceAdapter);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    textInputService = (TextInputService) objRememberedValue4;
                    density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    resolver = (FontFamily.Resolver) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalFontFamilyResolver());
                    jM3048getBackgroundColor0d7_KjU = ((TextSelectionColors) composerStartRestartGroup.consume(TextSelectionColorsKt.getLocalTextSelectionColors())).m3048getBackgroundColor0d7_KjU();
                    focusManager = (FocusManager) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalFocusManager());
                    windowInfo = (WindowInfo) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalWindowInfo());
                    textStyle5 = textStyle2;
                    softwareKeyboardController = (SoftwareKeyboardController) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalSoftwareKeyboardController());
                    z13 = z12;
                    if (i38 == 1) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Vertical;
                    }
                    if (textFieldScrollerPosition3 == null) {
                        composerStartRestartGroup.startReplaceGroup(-213744626);
                        Object[] objArr11 = {orientation};
                        Saver<TextFieldScrollerPosition, Object> saver11 = TextFieldScrollerPosition.Companion.getSaver();
                        zChanged3 = composerStartRestartGroup.changed(orientation.ordinal());
                        objRememberedValue18 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            i49 = 0;
                            objRememberedValue18 = new u12(orientation, i49);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue18);
                        } else {
                            i49 = 0;
                            objRememberedValue18 = new u12(orientation, i49);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue18);
                        }
                        textFieldScrollerPosition4 = (TextFieldScrollerPosition) RememberSaveableKt.m5624rememberSaveable(objArr11, (Saver) saver11, (ll3) objRememberedValue18, composerStartRestartGroup, i49);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-213745742);
                        composerStartRestartGroup.endReplaceGroup();
                        textFieldScrollerPosition4 = textFieldScrollerPosition3;
                    }
                    if (textFieldScrollerPosition4.getOrientation() != orientation) {
                        if (orientation == Orientation.Vertical) {
                            str = "only single-line, non-wrap text fields can scroll horizontally";
                        } else {
                            str = "single-line, non-wrap text fields can only scroll horizontally";
                        }
                        throw new IllegalArgumentException("Mismatching scroller orientation; ".concat(str));
                    }
                    i42 = i41 & 14;
                    if (i42 == 4) {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    if ((i41 & 57344) == 16384) {
                        z15 = true;
                    } else {
                        z15 = false;
                    }
                    z16 = z14 | z15;
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (z16) {
                        transformedTextFilterWithValidation = ValidatingOffsetMappingKt.filterWithValidation(visualTransformation3, textFieldValue.getAnnotatedString());
                        textRangeM8740getCompositionMzsxiRA = textFieldValue.m8740getCompositionMzsxiRA();
                        if (textRangeM8740getCompositionMzsxiRA != null) {
                            textFieldScrollerPosition5 = textFieldScrollerPosition4;
                            transformedTextM2604applyCompositionDecoration72CqOWE = TextFieldDelegate.Companion.m2604applyCompositionDecoration72CqOWE(textRangeM8740getCompositionMzsxiRA.m8495unboximpl(), transformedTextFilterWithValidation);
                            if (transformedTextM2604applyCompositionDecoration72CqOWE != null) {
                                objRememberedValue5 = transformedTextM2604applyCompositionDecoration72CqOWE;
                            }
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            textFieldScrollerPosition5 = textFieldScrollerPosition4;
                        }
                        objRememberedValue5 = transformedTextFilterWithValidation;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    } else {
                        transformedTextFilterWithValidation = ValidatingOffsetMappingKt.filterWithValidation(visualTransformation3, textFieldValue.getAnnotatedString());
                        textRangeM8740getCompositionMzsxiRA = textFieldValue.m8740getCompositionMzsxiRA();
                        if (textRangeM8740getCompositionMzsxiRA != null) {
                            textFieldScrollerPosition5 = textFieldScrollerPosition4;
                            transformedTextM2604applyCompositionDecoration72CqOWE = TextFieldDelegate.Companion.m2604applyCompositionDecoration72CqOWE(textRangeM8740getCompositionMzsxiRA.m8495unboximpl(), transformedTextFilterWithValidation);
                            if (transformedTextM2604applyCompositionDecoration72CqOWE != null) {
                                objRememberedValue5 = transformedTextM2604applyCompositionDecoration72CqOWE;
                            }
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            textFieldScrollerPosition5 = textFieldScrollerPosition4;
                        }
                        objRememberedValue5 = transformedTextFilterWithValidation;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    TransformedText transformedText11 = (TransformedText) objRememberedValue5;
                    text = transformedText11.getText();
                    offsetMapping = transformedText11.getOffsetMapping();
                    currentRecomposeScope = ComposablesKt.getCurrentRecomposeScope(composerStartRestartGroup, 0);
                    zChanged = composerStartRestartGroup.changed(softwareKeyboardController);
                    objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue6 = new LegacyTextFieldState(new TextDelegate(text, textStyle5, 0, 0, z13, 0, density, resolver, null, 300, null), currentRecomposeScope, softwareKeyboardController);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    } else {
                        objRememberedValue6 = new LegacyTextFieldState(new TextDelegate(text, textStyle5, 0, 0, z13, 0, density, resolver, null, 300, null), currentRecomposeScope, softwareKeyboardController);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    }
                    legacyTextFieldState = (LegacyTextFieldState) objRememberedValue6;
                    KeyboardActions keyboardActions14 = keyboardActions3;
                    legacyTextFieldState.m2569updatefnh65Uc(textFieldValue.getAnnotatedString(), text, textStyle5, z13, r55, resolver, nl3Var, keyboardActions14, focusManager, jM3048getBackgroundColor0d7_KjU);
                    legacyTextFieldState.getProcessor().reset(textFieldValue, legacyTextFieldState.getInputSession());
                    objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue7 == companion.getEmpty()) {
                        objRememberedValue7 = new UndoManager(0, 1, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                    }
                    undoManager = (UndoManager) objRememberedValue7;
                    UndoManager.snapshotIfNeeded$default(undoManager, textFieldValue, 0L, 2, null);
                    objRememberedValue8 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue8 == companion.getEmpty()) {
                        objRememberedValue8 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
                    }
                    y22Var = (y22) objRememberedValue8;
                    objRememberedValue9 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue9 == companion.getEmpty()) {
                        objRememberedValue9 = BringIntoViewRequesterKt.BringIntoViewRequester();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue9);
                    }
                    bringIntoViewRequester = (BringIntoViewRequester) objRememberedValue9;
                    objRememberedValue10 = composerStartRestartGroup.rememberedValue();
                    MutableInteractionSource mutableInteractionSource13 = mutableInteractionSource2;
                    if (objRememberedValue10 == companion.getEmpty()) {
                        objRememberedValue10 = new TextFieldSelectionManager(undoManager);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue10);
                    }
                    textFieldSelectionManager = (TextFieldSelectionManager) objRememberedValue10;
                    textFieldSelectionManager.setOffsetMapping$foundation(offsetMapping);
                    textFieldSelectionManager.setVisualTransformation$foundation(visualTransformation3);
                    textFieldSelectionManager.setOnValueChange$foundation(legacyTextFieldState.getOnValueChange());
                    textFieldSelectionManager.setState$foundation(legacyTextFieldState);
                    textFieldSelectionManager.setValue$foundation(textFieldValue);
                    textFieldSelectionManager.setClipboard$foundation((Clipboard) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalClipboard()));
                    textFieldSelectionManager.setCoroutineScope$foundation(y22Var);
                    textFieldSelectionManager.setTextToolbar((TextToolbar) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalTextToolbar()));
                    textFieldSelectionManager.setHapticFeedBack((HapticFeedback) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalHapticFeedback()));
                    textFieldSelectionManager.setFocusRequester(focusRequester);
                    boolean z3111111118 = !z10;
                    textFieldSelectionManager.setEditable(z3111111118);
                    textFieldSelectionManager.setEnabled(z11);
                    if (ComposeFoundationFlags.isSmartSelectionEnabled) {
                        composerStartRestartGroup.startReplaceGroup(1966756105);
                        textFieldSelectionManager.setPlatformSelectionBehaviors$foundation(PlatformSelectionBehaviors_androidKt.rememberPlatformSelectionBehaviors(SelectedTextType.EditableText, textStyle5.getLocaleList(), composerStartRestartGroup, 6));
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1966902177);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    legacyTextFieldState.getHasFocus();
                    companion2 = Modifier.Companion;
                    boolean zChangedInstance11119 = composerStartRestartGroup.changedInstance(legacyTextFieldState);
                    i43 = i40 & 7168;
                    i44 = i40;
                    if (i43 == 2048) {
                        z17 = true;
                    } else {
                        z17 = false;
                    }
                    boolean z3111111119 = z17 | zChangedInstance11119;
                    if ((i44 & 57344) == 16384) {
                        z18 = true;
                    } else {
                        z18 = false;
                    }
                    boolean zChangedInstance111110 = z3111111119 | z18 | composerStartRestartGroup.changedInstance(textInputService);
                    if (i42 == 4) {
                        z19 = true;
                    } else {
                        z19 = false;
                    }
                    boolean z31111111110 = zChangedInstance111110 | z19;
                    i45 = (i44 & 112) ^ 48;
                    if (i45 > 32) {
                        textInputService2 = textInputService;
                        if ((i44 & 48) != 32) {
                            z20 = true;
                        } else {
                            z20 = false;
                        }
                    } else {
                        textInputService2 = textInputService;
                        if ((i44 & 48) != 32) {
                            z20 = true;
                        } else {
                            z20 = false;
                        }
                    }
                    zChangedInstance = z31111111110 | z20 | composerStartRestartGroup.changedInstance(offsetMapping) | composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(bringIntoViewRequester) | composerStartRestartGroup.changedInstance(textFieldSelectionManager);
                    objRememberedValue11 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance) {
                        offsetMapping2 = offsetMapping;
                        final ImeOptions imeOptions111113 = imeOptions4;
                        final boolean z31111111111 = z11;
                        final boolean z31111111112 = z10;
                        objRememberedValue11 = new nl3() { // from class: v12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z31111111111, z31111111112, textInputService2, textFieldValue, imeOptions111113, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                            }
                        };
                        legacyTextFieldState2 = legacyTextFieldState;
                        z21 = z31111111111;
                        textFieldValue2 = textFieldValue;
                        imeOptions5 = imeOptions111113;
                        textFieldSelectionManager2 = textFieldSelectionManager;
                        y22Var2 = y22Var;
                        bringIntoViewRequester2 = bringIntoViewRequester;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                    } else {
                        offsetMapping2 = offsetMapping;
                        final ImeOptions imeOptions111114 = imeOptions4;
                        final boolean z31111111113 = z11;
                        final boolean z31111111114 = z10;
                        objRememberedValue11 = new nl3() { // from class: v12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z31111111113, z31111111114, textInputService2, textFieldValue, imeOptions111114, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                            }
                        };
                        legacyTextFieldState2 = legacyTextFieldState;
                        z21 = z31111111113;
                        textFieldValue2 = textFieldValue;
                        imeOptions5 = imeOptions111114;
                        textFieldSelectionManager2 = textFieldSelectionManager;
                        y22Var2 = y22Var;
                        bringIntoViewRequester2 = bringIntoViewRequester;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                    }
                    final BringIntoViewRequester bringIntoViewRequester14 = bringIntoViewRequester2;
                    Modifier modifierTextFieldFocusModifier12 = TextFieldGestureModifiersKt.textFieldFocusModifier(companion2, z21, focusRequester, mutableInteractionSource13, (nl3) objRememberedValue11);
                    if (z21) {
                        z22 = false;
                    } else {
                        z22 = false;
                    }
                    stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Boolean.valueOf(z22), composerStartRestartGroup, 0);
                    j59 j59Var12 = j59.a;
                    boolean zChanged117 = composerStartRestartGroup.changed(stateRememberUpdatedState) | composerStartRestartGroup.changedInstance(legacyTextFieldState2) | composerStartRestartGroup.changedInstance(textInputService2) | composerStartRestartGroup.changedInstance(textFieldSelectionManager2);
                    if (i45 > 32) {
                        imeOptions6 = imeOptions5;
                        if ((i44 & 48) != 32) {
                            z23 = true;
                        } else {
                            z23 = false;
                        }
                    } else {
                        imeOptions6 = imeOptions5;
                        if ((i44 & 48) != 32) {
                            z23 = true;
                        } else {
                            z23 = false;
                        }
                    }
                    z24 = zChanged117 | z23;
                    objRememberedValue12 = composerStartRestartGroup.rememberedValue();
                    if (z24) {
                        ImeOptions imeOptions111115 = imeOptions6;
                        TextInputService textInputService116 = textInputService2;
                        TextFieldSelectionManager textFieldSelectionManager1110 = textFieldSelectionManager2;
                        LegacyTextFieldState legacyTextFieldState119 = legacyTextFieldState2;
                        objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState119, stateRememberUpdatedState, textInputService116, textFieldSelectionManager1110, imeOptions111115, null);
                        legacyTextFieldState3 = legacyTextFieldState119;
                        textFieldSelectionManager3 = textFieldSelectionManager1110;
                        imeOptions7 = imeOptions111115;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                    } else {
                        ImeOptions imeOptions111116 = imeOptions6;
                        TextInputService textInputService117 = textInputService2;
                        TextFieldSelectionManager textFieldSelectionManager1111 = textFieldSelectionManager2;
                        LegacyTextFieldState legacyTextFieldState1110 = legacyTextFieldState2;
                        objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState1110, stateRememberUpdatedState, textInputService117, textFieldSelectionManager1111, imeOptions111116, null);
                        legacyTextFieldState3 = legacyTextFieldState1110;
                        textFieldSelectionManager3 = textFieldSelectionManager1111;
                        imeOptions7 = imeOptions111116;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                    }
                    imeOptions8 = imeOptions7;
                    EffectsKt.LaunchedEffect(j59Var12, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue12, composerStartRestartGroup, 6);
                    int i5115 = i44 >> 3;
                    z25 = z21;
                    legacyTextFieldState4 = legacyTextFieldState3;
                    textFieldSelectionManager4 = textFieldSelectionManager3;
                    Modifier modifierTextFieldPointer13 = TextFieldPointerModifier_androidKt.textFieldPointer(companion2, textFieldSelectionManager4, z25, mutableInteractionSource13, legacyTextFieldState4, focusRequester, z10, offsetMapping2, composerStartRestartGroup, (i5115 & 896) | 196614 | ((i41 >> 9) & 7168) | ((i44 << 6) & 3670016));
                    offsetMapping3 = offsetMapping2;
                    final Modifier modifierTextFieldDraw13 = CoreTextField_androidKt.textFieldDraw(companion2, legacyTextFieldState4, textFieldValue2, offsetMapping3);
                    boolean zChangedInstance111111 = composerStartRestartGroup.changedInstance(legacyTextFieldState4);
                    if (i43 == 2048) {
                        z26 = true;
                    } else {
                        z26 = false;
                    }
                    boolean zChanged118 = zChangedInstance111111 | z26 | composerStartRestartGroup.changed(windowInfo) | composerStartRestartGroup.changedInstance(textFieldSelectionManager4);
                    if (i42 == 4) {
                        z27 = true;
                    } else {
                        z27 = false;
                    }
                    zChangedInstance2 = zChanged118 | z27 | composerStartRestartGroup.changedInstance(offsetMapping3);
                    objRememberedValue13 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance2) {
                        objRememberedValue13 = new nl3() { // from class: w12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                            }
                        };
                        textFieldSelectionManager5 = textFieldSelectionManager4;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                    } else {
                        objRememberedValue13 = new nl3() { // from class: w12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                            }
                        };
                        textFieldSelectionManager5 = textFieldSelectionManager4;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                    }
                    final Modifier modifierOnGloballyPositioned13 = OnGloballyPositionedModifierKt.onGloballyPositioned(companion2, (nl3) objRememberedValue13);
                    textFieldSelectionManager6 = textFieldSelectionManager5;
                    CoreTextFieldSemanticsModifier coreTextFieldSemanticsModifier13 = new CoreTextFieldSemanticsModifier(transformedText11, textFieldValue, legacyTextFieldState4, z10, z25, visualTransformation3 instanceof PasswordVisualTransformation, offsetMapping3, textFieldSelectionManager6, imeOptions8, focusRequester);
                    final VisualTransformation visualTransformation1115 = visualTransformation3;
                    if (z25 != 0) {
                        z28 = false;
                    } else {
                        z28 = false;
                    }
                    final Modifier modifierTextFieldCursor13 = CoreTextField_androidKt.textFieldCursor(companion2, legacyTextFieldState4, textFieldValue, offsetMapping3, brush3, z28);
                    zChangedInstance3 = composerStartRestartGroup.changedInstance(textFieldSelectionManager6);
                    objRememberedValue14 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance3) {
                        i46 = 0;
                        objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                    } else {
                        i46 = 0;
                        objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                    }
                    EffectsKt.DisposableEffect(textFieldSelectionManager6, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue14, composerStartRestartGroup, i46);
                    boolean zChangedInstance111112 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changedInstance(textInputService2);
                    if (i42 == 4) {
                        z29 = true;
                    } else {
                        z29 = false;
                    }
                    z30 = z29 | zChangedInstance111112 | ((i45 <= 32 && composerStartRestartGroup.changed(imeOptions8)) || (i44 & 48) == 32);
                    objRememberedValue15 = composerStartRestartGroup.rememberedValue();
                    if (z30) {
                        objRememberedValue15 = new nl3() { // from class: h12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                    } else {
                        objRememberedValue15 = new nl3() { // from class: h12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                    }
                    EffectsKt.DisposableEffect(imeOptions8, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue15, composerStartRestartGroup, i5115 & 14);
                    nl3<TextFieldValue, j59> onValueChange13 = legacyTextFieldState4.getOnValueChange();
                    i47 = i38;
                    if (i47 == 1) {
                        z31 = true;
                    } else {
                        z31 = false;
                    }
                    Modifier modifierM2614textFieldKeyInput2WJ9YEU13 = TextFieldKeyInputKt.m2614textFieldKeyInput2WJ9YEU(companion2, legacyTextFieldState4, textFieldSelectionManager6, textFieldValue, onValueChange13, z3111111118, z31, offsetMapping3, undoManager, imeOptions8.m8688getImeActioneUduSuo());
                    iM8689getKeyboardTypePjHm6EE = imeOptions8.m8689getKeyboardTypePjHm6EE();
                    companion3 = KeyboardType.Companion;
                    if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion3.m8731getPasswordPjHm6EE())) {
                        z32 = false;
                    } else {
                        z32 = false;
                    }
                    boolean zCoreTextField$lambda$116 = CoreTextField$lambda$14(stateRememberUpdatedState);
                    zChanged2 = composerStartRestartGroup.changed(z32) | composerStartRestartGroup.changedInstance(legacyPlatformTextInputServiceAdapter);
                    objRememberedValue16 = composerStartRestartGroup.rememberedValue();
                    if (zChanged2) {
                        objRememberedValue16 = new ll3() { // from class: i12
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                    } else {
                        objRememberedValue16 = new ll3() { // from class: i12
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                    }
                    Modifier modifierStylusHandwriting13 = StylusHandwritingKt.stylusHandwriting(companion2, zCoreTextField$lambda$116, z32, (ll3) objRememberedValue16);
                    y22 y22Var15 = y22Var2;
                    brushM2447resolveAutofillHighlightWkMShQ = AutofillHighlightKt.m2447resolveAutofillHighlightWkMShQ((Brush) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightBrush()), ((Color) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightColor())).m6242unboximpl(), AutofillHighlight_androidKt.autofillHighlightColor());
                    zChangedInstance4 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changed(brushM2447resolveAutofillHighlightWkMShQ);
                    objRememberedValue17 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance4) {
                        i48 = 0;
                        objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                    } else {
                        i48 = 0;
                        objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                    }
                    Modifier modifierDrawWithContent13 = DrawModifierKt.drawWithContent(companion2, (nl3) objRememberedValue17);
                    OverscrollEffect overscrollEffectRememberTextFieldOverscrollEffect13 = TextFieldScroll_androidKt.rememberTextFieldOverscrollEffect(composerStartRestartGroup, i48);
                    Modifier modifier119 = modifier4;
                    Modifier modifierThen13 = previewKeyEventToDeselectOnBack(TextFieldFocusModifier_androidKt.interceptDPadAndMoveFocus(LegacyAdaptingPlatformTextInputModifierNodeKt.legacyTextInputAdapter(modifier119.then(modifierDrawWithContent13), legacyPlatformTextInputServiceAdapter, legacyTextFieldState4, textFieldSelectionManager6).then(modifierStylusHandwriting13).then(modifierTextFieldFocusModifier12), legacyTextFieldState4, focusManager), legacyTextFieldState4, textFieldSelectionManager6).then(modifierM2614textFieldKeyInput2WJ9YEU13);
                    final TextFieldScrollerPosition textFieldScrollerPosition18 = textFieldScrollerPosition5;
                    Modifier modifierAddContextMenuComponents13 = addContextMenuComponents(OnGloballyPositionedModifierKt.onGloballyPositioned(TextFieldScrollKt.textFieldScrollable(modifierThen13, textFieldScrollerPosition18, mutableInteractionSource13, z25, overscrollEffectRememberTextFieldOverscrollEffect13).then(modifierTextFieldPointer13).then(coreTextFieldSemanticsModifier13), new nl3() { // from class: r12
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return CoreTextFieldKt.CoreTextField$lambda$21(legacyTextFieldState4, (LayoutCoordinates) obj);
                        }
                    }), textFieldSelectionManager6, y22Var15);
                    if (z25) {
                        i48 = 1;
                    }
                    if (i48 != 0) {
                        modifierTextFieldMagnifier = TextFieldSelectionManager_androidKt.textFieldMagnifier(companion2, textFieldSelectionManager6);
                    } else {
                        modifierTextFieldMagnifier = companion2;
                    }
                    final Modifier modifier1110 = modifierTextFieldMagnifier;
                    final boolean z31111111115 = z10;
                    final dm3 dm3Var15 = lambda$559628295$foundation;
                    final int i5116 = i39;
                    final boolean z412 = i48;
                    CoreTextFieldRootBox(modifierAddContextMenuComponents13, textFieldSelectionManager6, ComposableLambdaKt.rememberComposableLambda(-814563849, true, new bm3() { // from class: s12
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return CoreTextFieldKt.CoreTextField$lambda$22(dm3Var15, legacyTextFieldState4, textStyle5, i5116, i47, textFieldScrollerPosition18, textFieldValue, visualTransformation1115, modifierTextFieldCursor13, modifierTextFieldDraw13, modifierOnGloballyPositioned13, modifier1110, bringIntoViewRequester14, textFieldSelectionManager6, z412, z31111111115, nl3Var5, offsetMapping3, density, (Composer) obj, iIntValue);
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, RendererCapabilities.DECODER_SUPPORT_MASK);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    dm3Var2 = dm3Var15;
                    i37 = i5116;
                    composer2 = composerStartRestartGroup;
                    nl3Var4 = nl3Var5;
                    z7 = z31111111115;
                    textFieldScrollerPosition2 = textFieldScrollerPosition3;
                    imeOptions2 = imeOptions8;
                    z6 = z25;
                    mutableInteractionSource2 = mutableInteractionSource13;
                    z5 = z13;
                    keyboardActions2 = keyboardActions14;
                    modifier3 = modifier119;
                    i36 = i47;
                    visualTransformation2 = visualTransformation1115;
                    solidColor = brush3;
                    textStyle3 = textStyle5;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    z5 = z;
                    imeOptions2 = imeOptions;
                    keyboardActions2 = keyboardActions;
                    dm3Var2 = dm3Var;
                    textFieldScrollerPosition2 = textFieldScrollerPosition;
                    composer2 = composerStartRestartGroup;
                    textStyle3 = textStyle2;
                    nl3Var4 = nl3Var3;
                    visualTransformation2 = none;
                    modifier3 = modifier2;
                    i36 = i;
                    i37 = i2;
                    z6 = z2;
                    z7 = z3;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: t12
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return CoreTextFieldKt.CoreTextField$lambda$23(textFieldValue, nl3Var, modifier3, textStyle3, visualTransformation2, nl3Var4, mutableInteractionSource2, solidColor, z5, i36, i37, imeOptions2, keyboardActions2, z6, z7, dm3Var2, textFieldScrollerPosition2, i3, i4, i5, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i6 |= 24576;
            none = visualTransformation;
            i11 = i5 & 32;
            if (i11 != 0) {
                i6 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                nl3Var3 = nl3Var2;
            } else {
                nl3Var3 = nl3Var2;
                if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var3)) {
                        i12 = 131072;
                    } else {
                        i12 = 65536;
                    }
                    i6 |= i12;
                }
            }
            i13 = i5 & 64;
            if (i13 != 0) {
                i6 |= 1572864;
                mutableInteractionSource2 = mutableInteractionSource;
            } else {
                mutableInteractionSource2 = mutableInteractionSource;
                if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(mutableInteractionSource2)) {
                        i14 = 1048576;
                    } else {
                        i14 = 524288;
                    }
                    i6 |= i14;
                }
            }
            i15 = i5 & 128;
            if (i15 != 0) {
                i6 |= 12582912;
                solidColor = brush;
            } else {
                solidColor = brush;
                if ((i3 & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(solidColor)) {
                        i16 = 8388608;
                    } else {
                        i16 = 4194304;
                    }
                    i6 |= i16;
                }
            }
            i17 = i5 & 256;
            if (i17 != 0) {
                i6 |= 100663296;
            } else if ((i3 & 100663296) == 0) {
                if (composerStartRestartGroup.changed(z)) {
                    i18 = 67108864;
                } else {
                    i18 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i6 |= i18;
            }
            i19 = i5 & 512;
            if (i19 != 0) {
                if ((i3 & 805306368) == 0) {
                    if (composerStartRestartGroup.changed(i)) {
                        i20 = 536870912;
                    } else {
                        i20 = 268435456;
                    }
                    i6 |= i20;
                }
                i21 = i5 & 1024;
                if (i21 != 0) {
                    i22 = i4 | 6;
                } else if ((i4 & 6) == 0) {
                    if (composerStartRestartGroup.changed(i2)) {
                        i23 = 4;
                    } else {
                        i23 = 2;
                    }
                    i22 = i4 | i23;
                } else {
                    i22 = i4;
                }
                if ((i4 & 48) != 0) {
                    i22 |= ((i5 & 2048) == 0 || !composerStartRestartGroup.changed(imeOptions)) ? 16 : 32;
                }
                i24 = i22;
                i25 = i5 & 4096;
                if (i25 != 0) {
                    i26 = i24 | RendererCapabilities.DECODER_SUPPORT_MASK;
                } else if ((i4 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    if (composerStartRestartGroup.changed(keyboardActions)) {
                        i27 = 256;
                    } else {
                        i27 = 128;
                    }
                    i26 = i24 | i27;
                } else {
                    i26 = i24;
                }
                i28 = i5 & 8192;
                if (i28 != 0) {
                    i30 = i26 | 3072;
                } else {
                    i29 = i26;
                    if ((i4 & 3072) == 0) {
                        i30 = i29 | (composerStartRestartGroup.changed(z2) ? 2048 : 1024);
                    } else {
                        i30 = i29;
                    }
                }
                i31 = i5 & 16384;
                if (i31 != 0) {
                    i33 = i30 | 24576;
                } else {
                    i32 = i30;
                    if ((i4 & 24576) == 0) {
                        i33 = i32 | (composerStartRestartGroup.changed(z3) ? 16384 : 8192);
                    } else {
                        i33 = i32;
                    }
                }
                i34 = i5 & 32768;
                if (i34 != 0) {
                    i33 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i4 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    i33 |= composerStartRestartGroup.changedInstance(dm3Var) ? 131072 : 65536;
                }
                i35 = i5 & 65536;
                if (i35 != 0) {
                    i33 |= 1572864;
                } else if ((i4 & 1572864) == 0) {
                    i33 |= composerStartRestartGroup.changed(textFieldScrollerPosition) ? 1048576 : 524288;
                }
                if ((i6 & 306783379) == 306783378) {
                    z4 = true;
                } else {
                    z4 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i6 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    jh2Var = null;
                    if ((i3 & 1) != 0) {
                        if (i50 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i7 != 0) {
                            textStyle4 = TextStyle.Companion.getDefault();
                        } else {
                            textStyle4 = textStyle2;
                        }
                        if (i9 != 0) {
                            none = VisualTransformation.Companion.getNone();
                        }
                        if (i11 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new p12(0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            nl3Var3 = (nl3) objRememberedValue;
                        }
                        if (i13 != 0) {
                            mutableInteractionSource2 = null;
                        }
                        if (i15 != 0) {
                            solidColor = new SolidColor(Color.Companion.m6268getUnspecified0d7_KjU(), jh2Var);
                        }
                        if (i17 != 0) {
                            z8 = true;
                        } else {
                            z8 = z;
                        }
                        if (i19 != 0) {
                            i38 = Integer.MAX_VALUE;
                        } else {
                            i38 = i;
                        }
                        if (i21 != 0) {
                            i39 = 1;
                        } else {
                            i39 = i2;
                        }
                        if ((i5 & 2048) != 0) {
                            imeOptions3 = ImeOptions.Companion.getDefault();
                            i33 &= -113;
                        } else {
                            imeOptions3 = imeOptions;
                        }
                        if (i25 != 0) {
                            keyboardActions3 = KeyboardActions.Companion.getDefault();
                        } else {
                            keyboardActions3 = keyboardActions;
                        }
                        if (i28 != 0) {
                            z9 = true;
                        } else {
                            z9 = z2;
                        }
                        if (i31 != 0) {
                            z10 = false;
                        } else {
                            z10 = z3;
                        }
                        if (i34 != 0) {
                            lambda$559628295$foundation = ComposableSingletons$CoreTextFieldKt.INSTANCE.getLambda$559628295$foundation();
                        } else {
                            lambda$559628295$foundation = dm3Var;
                        }
                        boolean z3218 = z8;
                        textStyle2 = textStyle4;
                        modifier4 = modifier2;
                        z11 = z9;
                        nl3Var5 = nl3Var3;
                        z12 = z3218;
                        VisualTransformation visualTransformation1116 = none;
                        imeOptions4 = imeOptions3;
                        brush2 = solidColor;
                        visualTransformation3 = visualTransformation1116;
                        i40 = i33;
                        if (i35 != 0) {
                            textFieldScrollerPosition3 = null;
                        } else {
                            textFieldScrollerPosition3 = textFieldScrollerPosition;
                        }
                    } else {
                        if (i50 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i7 != 0) {
                            textStyle4 = TextStyle.Companion.getDefault();
                        } else {
                            textStyle4 = textStyle2;
                        }
                        if (i9 != 0) {
                            none = VisualTransformation.Companion.getNone();
                        }
                        if (i11 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new p12(0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            nl3Var3 = (nl3) objRememberedValue;
                        }
                        if (i13 != 0) {
                            mutableInteractionSource2 = null;
                        }
                        if (i15 != 0) {
                            solidColor = new SolidColor(Color.Companion.m6268getUnspecified0d7_KjU(), jh2Var);
                        }
                        if (i17 != 0) {
                            z8 = true;
                        } else {
                            z8 = z;
                        }
                        if (i19 != 0) {
                            i38 = Integer.MAX_VALUE;
                        } else {
                            i38 = i;
                        }
                        if (i21 != 0) {
                            i39 = 1;
                        } else {
                            i39 = i2;
                        }
                        if ((i5 & 2048) != 0) {
                            imeOptions3 = ImeOptions.Companion.getDefault();
                            i33 &= -113;
                        } else {
                            imeOptions3 = imeOptions;
                        }
                        if (i25 != 0) {
                            keyboardActions3 = KeyboardActions.Companion.getDefault();
                        } else {
                            keyboardActions3 = keyboardActions;
                        }
                        if (i28 != 0) {
                            z9 = true;
                        } else {
                            z9 = z2;
                        }
                        if (i31 != 0) {
                            z10 = false;
                        } else {
                            z10 = z3;
                        }
                        if (i34 != 0) {
                            lambda$559628295$foundation = ComposableSingletons$CoreTextFieldKt.INSTANCE.getLambda$559628295$foundation();
                        } else {
                            lambda$559628295$foundation = dm3Var;
                        }
                        boolean z3219 = z8;
                        textStyle2 = textStyle4;
                        modifier4 = modifier2;
                        z11 = z9;
                        nl3Var5 = nl3Var3;
                        z12 = z3219;
                        VisualTransformation visualTransformation1117 = none;
                        imeOptions4 = imeOptions3;
                        brush2 = solidColor;
                        visualTransformation3 = visualTransformation1117;
                        i40 = i33;
                        if (i35 != 0) {
                            textFieldScrollerPosition3 = null;
                        } else {
                            textFieldScrollerPosition3 = textFieldScrollerPosition;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    brush3 = brush2;
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(31062401, i6, i40, "androidx.compose.foundation.text.CoreTextField (CoreTextField.kt:208)");
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = new FocusRequester();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    focusRequester = (FocusRequester) objRememberedValue2;
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    i41 = i6;
                    if (objRememberedValue3 == companion.getEmpty()) {
                        objRememberedValue3 = LegacyPlatformTextInputServiceAdapter_androidKt.createLegacyPlatformTextInputServiceAdapter();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    legacyPlatformTextInputServiceAdapter = (LegacyPlatformTextInputServiceAdapter) objRememberedValue3;
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue4 == companion.getEmpty()) {
                        objRememberedValue4 = new TextInputService(legacyPlatformTextInputServiceAdapter);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    textInputService = (TextInputService) objRememberedValue4;
                    density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    resolver = (FontFamily.Resolver) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalFontFamilyResolver());
                    jM3048getBackgroundColor0d7_KjU = ((TextSelectionColors) composerStartRestartGroup.consume(TextSelectionColorsKt.getLocalTextSelectionColors())).m3048getBackgroundColor0d7_KjU();
                    focusManager = (FocusManager) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalFocusManager());
                    windowInfo = (WindowInfo) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalWindowInfo());
                    textStyle5 = textStyle2;
                    softwareKeyboardController = (SoftwareKeyboardController) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalSoftwareKeyboardController());
                    z13 = z12;
                    if (i38 == 1) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Vertical;
                    }
                    if (textFieldScrollerPosition3 == null) {
                        composerStartRestartGroup.startReplaceGroup(-213744626);
                        Object[] objArr12 = {orientation};
                        Saver<TextFieldScrollerPosition, Object> saver12 = TextFieldScrollerPosition.Companion.getSaver();
                        zChanged3 = composerStartRestartGroup.changed(orientation.ordinal());
                        objRememberedValue18 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            i49 = 0;
                            objRememberedValue18 = new u12(orientation, i49);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue18);
                        } else {
                            i49 = 0;
                            objRememberedValue18 = new u12(orientation, i49);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue18);
                        }
                        textFieldScrollerPosition4 = (TextFieldScrollerPosition) RememberSaveableKt.m5624rememberSaveable(objArr12, (Saver) saver12, (ll3) objRememberedValue18, composerStartRestartGroup, i49);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-213745742);
                        composerStartRestartGroup.endReplaceGroup();
                        textFieldScrollerPosition4 = textFieldScrollerPosition3;
                    }
                    if (textFieldScrollerPosition4.getOrientation() != orientation) {
                        if (orientation == Orientation.Vertical) {
                            str = "only single-line, non-wrap text fields can scroll horizontally";
                        } else {
                            str = "single-line, non-wrap text fields can only scroll horizontally";
                        }
                        throw new IllegalArgumentException("Mismatching scroller orientation; ".concat(str));
                    }
                    i42 = i41 & 14;
                    if (i42 == 4) {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    if ((i41 & 57344) == 16384) {
                        z15 = true;
                    } else {
                        z15 = false;
                    }
                    z16 = z14 | z15;
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (z16) {
                        transformedTextFilterWithValidation = ValidatingOffsetMappingKt.filterWithValidation(visualTransformation3, textFieldValue.getAnnotatedString());
                        textRangeM8740getCompositionMzsxiRA = textFieldValue.m8740getCompositionMzsxiRA();
                        if (textRangeM8740getCompositionMzsxiRA != null) {
                            textFieldScrollerPosition5 = textFieldScrollerPosition4;
                            transformedTextM2604applyCompositionDecoration72CqOWE = TextFieldDelegate.Companion.m2604applyCompositionDecoration72CqOWE(textRangeM8740getCompositionMzsxiRA.m8495unboximpl(), transformedTextFilterWithValidation);
                            if (transformedTextM2604applyCompositionDecoration72CqOWE != null) {
                                objRememberedValue5 = transformedTextM2604applyCompositionDecoration72CqOWE;
                            }
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            textFieldScrollerPosition5 = textFieldScrollerPosition4;
                        }
                        objRememberedValue5 = transformedTextFilterWithValidation;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    } else {
                        transformedTextFilterWithValidation = ValidatingOffsetMappingKt.filterWithValidation(visualTransformation3, textFieldValue.getAnnotatedString());
                        textRangeM8740getCompositionMzsxiRA = textFieldValue.m8740getCompositionMzsxiRA();
                        if (textRangeM8740getCompositionMzsxiRA != null) {
                            textFieldScrollerPosition5 = textFieldScrollerPosition4;
                            transformedTextM2604applyCompositionDecoration72CqOWE = TextFieldDelegate.Companion.m2604applyCompositionDecoration72CqOWE(textRangeM8740getCompositionMzsxiRA.m8495unboximpl(), transformedTextFilterWithValidation);
                            if (transformedTextM2604applyCompositionDecoration72CqOWE != null) {
                                objRememberedValue5 = transformedTextM2604applyCompositionDecoration72CqOWE;
                            }
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            textFieldScrollerPosition5 = textFieldScrollerPosition4;
                        }
                        objRememberedValue5 = transformedTextFilterWithValidation;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    TransformedText transformedText12 = (TransformedText) objRememberedValue5;
                    text = transformedText12.getText();
                    offsetMapping = transformedText12.getOffsetMapping();
                    currentRecomposeScope = ComposablesKt.getCurrentRecomposeScope(composerStartRestartGroup, 0);
                    zChanged = composerStartRestartGroup.changed(softwareKeyboardController);
                    objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue6 = new LegacyTextFieldState(new TextDelegate(text, textStyle5, 0, 0, z13, 0, density, resolver, null, 300, null), currentRecomposeScope, softwareKeyboardController);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    } else {
                        objRememberedValue6 = new LegacyTextFieldState(new TextDelegate(text, textStyle5, 0, 0, z13, 0, density, resolver, null, 300, null), currentRecomposeScope, softwareKeyboardController);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    }
                    legacyTextFieldState = (LegacyTextFieldState) objRememberedValue6;
                    KeyboardActions keyboardActions15 = keyboardActions3;
                    legacyTextFieldState.m2569updatefnh65Uc(textFieldValue.getAnnotatedString(), text, textStyle5, z13, r55, resolver, nl3Var, keyboardActions15, focusManager, jM3048getBackgroundColor0d7_KjU);
                    legacyTextFieldState.getProcessor().reset(textFieldValue, legacyTextFieldState.getInputSession());
                    objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue7 == companion.getEmpty()) {
                        objRememberedValue7 = new UndoManager(0, 1, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                    }
                    undoManager = (UndoManager) objRememberedValue7;
                    UndoManager.snapshotIfNeeded$default(undoManager, textFieldValue, 0L, 2, null);
                    objRememberedValue8 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue8 == companion.getEmpty()) {
                        objRememberedValue8 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
                    }
                    y22Var = (y22) objRememberedValue8;
                    objRememberedValue9 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue9 == companion.getEmpty()) {
                        objRememberedValue9 = BringIntoViewRequesterKt.BringIntoViewRequester();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue9);
                    }
                    bringIntoViewRequester = (BringIntoViewRequester) objRememberedValue9;
                    objRememberedValue10 = composerStartRestartGroup.rememberedValue();
                    MutableInteractionSource mutableInteractionSource14 = mutableInteractionSource2;
                    if (objRememberedValue10 == companion.getEmpty()) {
                        objRememberedValue10 = new TextFieldSelectionManager(undoManager);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue10);
                    }
                    textFieldSelectionManager = (TextFieldSelectionManager) objRememberedValue10;
                    textFieldSelectionManager.setOffsetMapping$foundation(offsetMapping);
                    textFieldSelectionManager.setVisualTransformation$foundation(visualTransformation3);
                    textFieldSelectionManager.setOnValueChange$foundation(legacyTextFieldState.getOnValueChange());
                    textFieldSelectionManager.setState$foundation(legacyTextFieldState);
                    textFieldSelectionManager.setValue$foundation(textFieldValue);
                    textFieldSelectionManager.setClipboard$foundation((Clipboard) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalClipboard()));
                    textFieldSelectionManager.setCoroutineScope$foundation(y22Var);
                    textFieldSelectionManager.setTextToolbar((TextToolbar) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalTextToolbar()));
                    textFieldSelectionManager.setHapticFeedBack((HapticFeedback) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalHapticFeedback()));
                    textFieldSelectionManager.setFocusRequester(focusRequester);
                    boolean z31111111116 = !z10;
                    textFieldSelectionManager.setEditable(z31111111116);
                    textFieldSelectionManager.setEnabled(z11);
                    if (ComposeFoundationFlags.isSmartSelectionEnabled) {
                        composerStartRestartGroup.startReplaceGroup(1966756105);
                        textFieldSelectionManager.setPlatformSelectionBehaviors$foundation(PlatformSelectionBehaviors_androidKt.rememberPlatformSelectionBehaviors(SelectedTextType.EditableText, textStyle5.getLocaleList(), composerStartRestartGroup, 6));
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1966902177);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    legacyTextFieldState.getHasFocus();
                    companion2 = Modifier.Companion;
                    boolean zChangedInstance111113 = composerStartRestartGroup.changedInstance(legacyTextFieldState);
                    i43 = i40 & 7168;
                    i44 = i40;
                    if (i43 == 2048) {
                        z17 = true;
                    } else {
                        z17 = false;
                    }
                    boolean z31111111117 = z17 | zChangedInstance111113;
                    if ((i44 & 57344) == 16384) {
                        z18 = true;
                    } else {
                        z18 = false;
                    }
                    boolean zChangedInstance111114 = z31111111117 | z18 | composerStartRestartGroup.changedInstance(textInputService);
                    if (i42 == 4) {
                        z19 = true;
                    } else {
                        z19 = false;
                    }
                    boolean z31111111118 = zChangedInstance111114 | z19;
                    i45 = (i44 & 112) ^ 48;
                    if (i45 > 32) {
                        textInputService2 = textInputService;
                        if ((i44 & 48) != 32) {
                            z20 = true;
                        } else {
                            z20 = false;
                        }
                    } else {
                        textInputService2 = textInputService;
                        if ((i44 & 48) != 32) {
                            z20 = true;
                        } else {
                            z20 = false;
                        }
                    }
                    zChangedInstance = z31111111118 | z20 | composerStartRestartGroup.changedInstance(offsetMapping) | composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(bringIntoViewRequester) | composerStartRestartGroup.changedInstance(textFieldSelectionManager);
                    objRememberedValue11 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance) {
                        offsetMapping2 = offsetMapping;
                        final ImeOptions imeOptions111117 = imeOptions4;
                        final boolean z31111111119 = z11;
                        final boolean z311111111110 = z10;
                        objRememberedValue11 = new nl3() { // from class: v12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z31111111119, z311111111110, textInputService2, textFieldValue, imeOptions111117, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                            }
                        };
                        legacyTextFieldState2 = legacyTextFieldState;
                        z21 = z31111111119;
                        textFieldValue2 = textFieldValue;
                        imeOptions5 = imeOptions111117;
                        textFieldSelectionManager2 = textFieldSelectionManager;
                        y22Var2 = y22Var;
                        bringIntoViewRequester2 = bringIntoViewRequester;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                    } else {
                        offsetMapping2 = offsetMapping;
                        final ImeOptions imeOptions111118 = imeOptions4;
                        final boolean z311111111111 = z11;
                        final boolean z311111111112 = z10;
                        objRememberedValue11 = new nl3() { // from class: v12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z311111111111, z311111111112, textInputService2, textFieldValue, imeOptions111118, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                            }
                        };
                        legacyTextFieldState2 = legacyTextFieldState;
                        z21 = z311111111111;
                        textFieldValue2 = textFieldValue;
                        imeOptions5 = imeOptions111118;
                        textFieldSelectionManager2 = textFieldSelectionManager;
                        y22Var2 = y22Var;
                        bringIntoViewRequester2 = bringIntoViewRequester;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                    }
                    final BringIntoViewRequester bringIntoViewRequester15 = bringIntoViewRequester2;
                    Modifier modifierTextFieldFocusModifier13 = TextFieldGestureModifiersKt.textFieldFocusModifier(companion2, z21, focusRequester, mutableInteractionSource14, (nl3) objRememberedValue11);
                    if (z21) {
                        z22 = false;
                    } else {
                        z22 = false;
                    }
                    stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Boolean.valueOf(z22), composerStartRestartGroup, 0);
                    j59 j59Var13 = j59.a;
                    boolean zChanged119 = composerStartRestartGroup.changed(stateRememberUpdatedState) | composerStartRestartGroup.changedInstance(legacyTextFieldState2) | composerStartRestartGroup.changedInstance(textInputService2) | composerStartRestartGroup.changedInstance(textFieldSelectionManager2);
                    if (i45 > 32) {
                        imeOptions6 = imeOptions5;
                        if ((i44 & 48) != 32) {
                            z23 = true;
                        } else {
                            z23 = false;
                        }
                    } else {
                        imeOptions6 = imeOptions5;
                        if ((i44 & 48) != 32) {
                            z23 = true;
                        } else {
                            z23 = false;
                        }
                    }
                    z24 = zChanged119 | z23;
                    objRememberedValue12 = composerStartRestartGroup.rememberedValue();
                    if (z24) {
                        ImeOptions imeOptions111119 = imeOptions6;
                        TextInputService textInputService118 = textInputService2;
                        TextFieldSelectionManager textFieldSelectionManager1112 = textFieldSelectionManager2;
                        LegacyTextFieldState legacyTextFieldState1111 = legacyTextFieldState2;
                        objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState1111, stateRememberUpdatedState, textInputService118, textFieldSelectionManager1112, imeOptions111119, null);
                        legacyTextFieldState3 = legacyTextFieldState1111;
                        textFieldSelectionManager3 = textFieldSelectionManager1112;
                        imeOptions7 = imeOptions111119;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                    } else {
                        ImeOptions imeOptions1111110 = imeOptions6;
                        TextInputService textInputService119 = textInputService2;
                        TextFieldSelectionManager textFieldSelectionManager1113 = textFieldSelectionManager2;
                        LegacyTextFieldState legacyTextFieldState1112 = legacyTextFieldState2;
                        objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState1112, stateRememberUpdatedState, textInputService119, textFieldSelectionManager1113, imeOptions1111110, null);
                        legacyTextFieldState3 = legacyTextFieldState1112;
                        textFieldSelectionManager3 = textFieldSelectionManager1113;
                        imeOptions7 = imeOptions1111110;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                    }
                    imeOptions8 = imeOptions7;
                    EffectsKt.LaunchedEffect(j59Var13, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue12, composerStartRestartGroup, 6);
                    int i5117 = i44 >> 3;
                    z25 = z21;
                    legacyTextFieldState4 = legacyTextFieldState3;
                    textFieldSelectionManager4 = textFieldSelectionManager3;
                    Modifier modifierTextFieldPointer14 = TextFieldPointerModifier_androidKt.textFieldPointer(companion2, textFieldSelectionManager4, z25, mutableInteractionSource14, legacyTextFieldState4, focusRequester, z10, offsetMapping2, composerStartRestartGroup, (i5117 & 896) | 196614 | ((i41 >> 9) & 7168) | ((i44 << 6) & 3670016));
                    offsetMapping3 = offsetMapping2;
                    final Modifier modifierTextFieldDraw14 = CoreTextField_androidKt.textFieldDraw(companion2, legacyTextFieldState4, textFieldValue2, offsetMapping3);
                    boolean zChangedInstance111115 = composerStartRestartGroup.changedInstance(legacyTextFieldState4);
                    if (i43 == 2048) {
                        z26 = true;
                    } else {
                        z26 = false;
                    }
                    boolean zChanged1110 = zChangedInstance111115 | z26 | composerStartRestartGroup.changed(windowInfo) | composerStartRestartGroup.changedInstance(textFieldSelectionManager4);
                    if (i42 == 4) {
                        z27 = true;
                    } else {
                        z27 = false;
                    }
                    zChangedInstance2 = zChanged1110 | z27 | composerStartRestartGroup.changedInstance(offsetMapping3);
                    objRememberedValue13 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance2) {
                        objRememberedValue13 = new nl3() { // from class: w12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                            }
                        };
                        textFieldSelectionManager5 = textFieldSelectionManager4;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                    } else {
                        objRememberedValue13 = new nl3() { // from class: w12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                            }
                        };
                        textFieldSelectionManager5 = textFieldSelectionManager4;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                    }
                    final Modifier modifierOnGloballyPositioned14 = OnGloballyPositionedModifierKt.onGloballyPositioned(companion2, (nl3) objRememberedValue13);
                    textFieldSelectionManager6 = textFieldSelectionManager5;
                    CoreTextFieldSemanticsModifier coreTextFieldSemanticsModifier14 = new CoreTextFieldSemanticsModifier(transformedText12, textFieldValue, legacyTextFieldState4, z10, z25, visualTransformation3 instanceof PasswordVisualTransformation, offsetMapping3, textFieldSelectionManager6, imeOptions8, focusRequester);
                    final VisualTransformation visualTransformation1118 = visualTransformation3;
                    if (z25 != 0) {
                        z28 = false;
                    } else {
                        z28 = false;
                    }
                    final Modifier modifierTextFieldCursor14 = CoreTextField_androidKt.textFieldCursor(companion2, legacyTextFieldState4, textFieldValue, offsetMapping3, brush3, z28);
                    zChangedInstance3 = composerStartRestartGroup.changedInstance(textFieldSelectionManager6);
                    objRememberedValue14 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance3) {
                        i46 = 0;
                        objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                    } else {
                        i46 = 0;
                        objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                    }
                    EffectsKt.DisposableEffect(textFieldSelectionManager6, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue14, composerStartRestartGroup, i46);
                    boolean zChangedInstance111116 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changedInstance(textInputService2);
                    if (i42 == 4) {
                        z29 = true;
                    } else {
                        z29 = false;
                    }
                    z30 = z29 | zChangedInstance111116 | ((i45 <= 32 && composerStartRestartGroup.changed(imeOptions8)) || (i44 & 48) == 32);
                    objRememberedValue15 = composerStartRestartGroup.rememberedValue();
                    if (z30) {
                        objRememberedValue15 = new nl3() { // from class: h12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                    } else {
                        objRememberedValue15 = new nl3() { // from class: h12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                    }
                    EffectsKt.DisposableEffect(imeOptions8, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue15, composerStartRestartGroup, i5117 & 14);
                    nl3<TextFieldValue, j59> onValueChange14 = legacyTextFieldState4.getOnValueChange();
                    i47 = i38;
                    if (i47 == 1) {
                        z31 = true;
                    } else {
                        z31 = false;
                    }
                    Modifier modifierM2614textFieldKeyInput2WJ9YEU14 = TextFieldKeyInputKt.m2614textFieldKeyInput2WJ9YEU(companion2, legacyTextFieldState4, textFieldSelectionManager6, textFieldValue, onValueChange14, z31111111116, z31, offsetMapping3, undoManager, imeOptions8.m8688getImeActioneUduSuo());
                    iM8689getKeyboardTypePjHm6EE = imeOptions8.m8689getKeyboardTypePjHm6EE();
                    companion3 = KeyboardType.Companion;
                    if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion3.m8731getPasswordPjHm6EE())) {
                        z32 = false;
                    } else {
                        z32 = false;
                    }
                    boolean zCoreTextField$lambda$117 = CoreTextField$lambda$14(stateRememberUpdatedState);
                    zChanged2 = composerStartRestartGroup.changed(z32) | composerStartRestartGroup.changedInstance(legacyPlatformTextInputServiceAdapter);
                    objRememberedValue16 = composerStartRestartGroup.rememberedValue();
                    if (zChanged2) {
                        objRememberedValue16 = new ll3() { // from class: i12
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                    } else {
                        objRememberedValue16 = new ll3() { // from class: i12
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                    }
                    Modifier modifierStylusHandwriting14 = StylusHandwritingKt.stylusHandwriting(companion2, zCoreTextField$lambda$117, z32, (ll3) objRememberedValue16);
                    y22 y22Var16 = y22Var2;
                    brushM2447resolveAutofillHighlightWkMShQ = AutofillHighlightKt.m2447resolveAutofillHighlightWkMShQ((Brush) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightBrush()), ((Color) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightColor())).m6242unboximpl(), AutofillHighlight_androidKt.autofillHighlightColor());
                    zChangedInstance4 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changed(brushM2447resolveAutofillHighlightWkMShQ);
                    objRememberedValue17 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance4) {
                        i48 = 0;
                        objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                    } else {
                        i48 = 0;
                        objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                    }
                    Modifier modifierDrawWithContent14 = DrawModifierKt.drawWithContent(companion2, (nl3) objRememberedValue17);
                    OverscrollEffect overscrollEffectRememberTextFieldOverscrollEffect14 = TextFieldScroll_androidKt.rememberTextFieldOverscrollEffect(composerStartRestartGroup, i48);
                    Modifier modifier1111 = modifier4;
                    Modifier modifierThen14 = previewKeyEventToDeselectOnBack(TextFieldFocusModifier_androidKt.interceptDPadAndMoveFocus(LegacyAdaptingPlatformTextInputModifierNodeKt.legacyTextInputAdapter(modifier1111.then(modifierDrawWithContent14), legacyPlatformTextInputServiceAdapter, legacyTextFieldState4, textFieldSelectionManager6).then(modifierStylusHandwriting14).then(modifierTextFieldFocusModifier13), legacyTextFieldState4, focusManager), legacyTextFieldState4, textFieldSelectionManager6).then(modifierM2614textFieldKeyInput2WJ9YEU14);
                    final TextFieldScrollerPosition textFieldScrollerPosition19 = textFieldScrollerPosition5;
                    Modifier modifierAddContextMenuComponents14 = addContextMenuComponents(OnGloballyPositionedModifierKt.onGloballyPositioned(TextFieldScrollKt.textFieldScrollable(modifierThen14, textFieldScrollerPosition19, mutableInteractionSource14, z25, overscrollEffectRememberTextFieldOverscrollEffect14).then(modifierTextFieldPointer14).then(coreTextFieldSemanticsModifier14), new nl3() { // from class: r12
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return CoreTextFieldKt.CoreTextField$lambda$21(legacyTextFieldState4, (LayoutCoordinates) obj);
                        }
                    }), textFieldSelectionManager6, y22Var16);
                    if (z25) {
                        i48 = 1;
                    }
                    if (i48 != 0) {
                        modifierTextFieldMagnifier = TextFieldSelectionManager_androidKt.textFieldMagnifier(companion2, textFieldSelectionManager6);
                    } else {
                        modifierTextFieldMagnifier = companion2;
                    }
                    final Modifier modifier1112 = modifierTextFieldMagnifier;
                    final boolean z311111111113 = z10;
                    final dm3 dm3Var16 = lambda$559628295$foundation;
                    final int i5118 = i39;
                    final boolean z413 = i48;
                    CoreTextFieldRootBox(modifierAddContextMenuComponents14, textFieldSelectionManager6, ComposableLambdaKt.rememberComposableLambda(-814563849, true, new bm3() { // from class: s12
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return CoreTextFieldKt.CoreTextField$lambda$22(dm3Var16, legacyTextFieldState4, textStyle5, i5118, i47, textFieldScrollerPosition19, textFieldValue, visualTransformation1118, modifierTextFieldCursor14, modifierTextFieldDraw14, modifierOnGloballyPositioned14, modifier1112, bringIntoViewRequester15, textFieldSelectionManager6, z413, z311111111113, nl3Var5, offsetMapping3, density, (Composer) obj, iIntValue);
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, RendererCapabilities.DECODER_SUPPORT_MASK);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    dm3Var2 = dm3Var16;
                    i37 = i5118;
                    composer2 = composerStartRestartGroup;
                    nl3Var4 = nl3Var5;
                    z7 = z311111111113;
                    textFieldScrollerPosition2 = textFieldScrollerPosition3;
                    imeOptions2 = imeOptions8;
                    z6 = z25;
                    mutableInteractionSource2 = mutableInteractionSource14;
                    z5 = z13;
                    keyboardActions2 = keyboardActions15;
                    modifier3 = modifier1111;
                    i36 = i47;
                    visualTransformation2 = visualTransformation1118;
                    solidColor = brush3;
                    textStyle3 = textStyle5;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    z5 = z;
                    imeOptions2 = imeOptions;
                    keyboardActions2 = keyboardActions;
                    dm3Var2 = dm3Var;
                    textFieldScrollerPosition2 = textFieldScrollerPosition;
                    composer2 = composerStartRestartGroup;
                    textStyle3 = textStyle2;
                    nl3Var4 = nl3Var3;
                    visualTransformation2 = none;
                    modifier3 = modifier2;
                    i36 = i;
                    i37 = i2;
                    z6 = z2;
                    z7 = z3;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: t12
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return CoreTextFieldKt.CoreTextField$lambda$23(textFieldValue, nl3Var, modifier3, textStyle3, visualTransformation2, nl3Var4, mutableInteractionSource2, solidColor, z5, i36, i37, imeOptions2, keyboardActions2, z6, z7, dm3Var2, textFieldScrollerPosition2, i3, i4, i5, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i6 |= 805306368;
            i21 = i5 & 1024;
            if (i21 != 0) {
                i22 = i4 | 6;
            } else if ((i4 & 6) == 0) {
                if (composerStartRestartGroup.changed(i2)) {
                    i23 = 4;
                } else {
                    i23 = 2;
                }
                i22 = i4 | i23;
            } else {
                i22 = i4;
            }
            if ((i4 & 48) != 0) {
                i22 |= ((i5 & 2048) == 0 || !composerStartRestartGroup.changed(imeOptions)) ? 16 : 32;
            }
            i24 = i22;
            i25 = i5 & 4096;
            if (i25 != 0) {
                i26 = i24 | RendererCapabilities.DECODER_SUPPORT_MASK;
            } else if ((i4 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if (composerStartRestartGroup.changed(keyboardActions)) {
                    i27 = 256;
                } else {
                    i27 = 128;
                }
                i26 = i24 | i27;
            } else {
                i26 = i24;
            }
            i28 = i5 & 8192;
            if (i28 != 0) {
                i30 = i26 | 3072;
            } else {
                i29 = i26;
                if ((i4 & 3072) == 0) {
                    i30 = i29 | (composerStartRestartGroup.changed(z2) ? 2048 : 1024);
                } else {
                    i30 = i29;
                }
            }
            i31 = i5 & 16384;
            if (i31 != 0) {
                i33 = i30 | 24576;
            } else {
                i32 = i30;
                if ((i4 & 24576) == 0) {
                    i33 = i32 | (composerStartRestartGroup.changed(z3) ? 16384 : 8192);
                } else {
                    i33 = i32;
                }
            }
            i34 = i5 & 32768;
            if (i34 != 0) {
                i33 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i4 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                i33 |= composerStartRestartGroup.changedInstance(dm3Var) ? 131072 : 65536;
            }
            i35 = i5 & 65536;
            if (i35 != 0) {
                i33 |= 1572864;
            } else if ((i4 & 1572864) == 0) {
                i33 |= composerStartRestartGroup.changed(textFieldScrollerPosition) ? 1048576 : 524288;
            }
            if ((i6 & 306783379) == 306783378) {
                z4 = true;
            } else {
                z4 = true;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i6 & 1)) {
                composerStartRestartGroup.startDefaults();
                jh2Var = null;
                if ((i3 & 1) != 0) {
                    if (i50 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i7 != 0) {
                        textStyle4 = TextStyle.Companion.getDefault();
                    } else {
                        textStyle4 = textStyle2;
                    }
                    if (i9 != 0) {
                        none = VisualTransformation.Companion.getNone();
                    }
                    if (i11 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new p12(0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        nl3Var3 = (nl3) objRememberedValue;
                    }
                    if (i13 != 0) {
                        mutableInteractionSource2 = null;
                    }
                    if (i15 != 0) {
                        solidColor = new SolidColor(Color.Companion.m6268getUnspecified0d7_KjU(), jh2Var);
                    }
                    if (i17 != 0) {
                        z8 = true;
                    } else {
                        z8 = z;
                    }
                    if (i19 != 0) {
                        i38 = Integer.MAX_VALUE;
                    } else {
                        i38 = i;
                    }
                    if (i21 != 0) {
                        i39 = 1;
                    } else {
                        i39 = i2;
                    }
                    if ((i5 & 2048) != 0) {
                        imeOptions3 = ImeOptions.Companion.getDefault();
                        i33 &= -113;
                    } else {
                        imeOptions3 = imeOptions;
                    }
                    if (i25 != 0) {
                        keyboardActions3 = KeyboardActions.Companion.getDefault();
                    } else {
                        keyboardActions3 = keyboardActions;
                    }
                    if (i28 != 0) {
                        z9 = true;
                    } else {
                        z9 = z2;
                    }
                    if (i31 != 0) {
                        z10 = false;
                    } else {
                        z10 = z3;
                    }
                    if (i34 != 0) {
                        lambda$559628295$foundation = ComposableSingletons$CoreTextFieldKt.INSTANCE.getLambda$559628295$foundation();
                    } else {
                        lambda$559628295$foundation = dm3Var;
                    }
                    boolean z32110 = z8;
                    textStyle2 = textStyle4;
                    modifier4 = modifier2;
                    z11 = z9;
                    nl3Var5 = nl3Var3;
                    z12 = z32110;
                    VisualTransformation visualTransformation1119 = none;
                    imeOptions4 = imeOptions3;
                    brush2 = solidColor;
                    visualTransformation3 = visualTransformation1119;
                    i40 = i33;
                    if (i35 != 0) {
                        textFieldScrollerPosition3 = null;
                    } else {
                        textFieldScrollerPosition3 = textFieldScrollerPosition;
                    }
                } else {
                    if (i50 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i7 != 0) {
                        textStyle4 = TextStyle.Companion.getDefault();
                    } else {
                        textStyle4 = textStyle2;
                    }
                    if (i9 != 0) {
                        none = VisualTransformation.Companion.getNone();
                    }
                    if (i11 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new p12(0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        nl3Var3 = (nl3) objRememberedValue;
                    }
                    if (i13 != 0) {
                        mutableInteractionSource2 = null;
                    }
                    if (i15 != 0) {
                        solidColor = new SolidColor(Color.Companion.m6268getUnspecified0d7_KjU(), jh2Var);
                    }
                    if (i17 != 0) {
                        z8 = true;
                    } else {
                        z8 = z;
                    }
                    if (i19 != 0) {
                        i38 = Integer.MAX_VALUE;
                    } else {
                        i38 = i;
                    }
                    if (i21 != 0) {
                        i39 = 1;
                    } else {
                        i39 = i2;
                    }
                    if ((i5 & 2048) != 0) {
                        imeOptions3 = ImeOptions.Companion.getDefault();
                        i33 &= -113;
                    } else {
                        imeOptions3 = imeOptions;
                    }
                    if (i25 != 0) {
                        keyboardActions3 = KeyboardActions.Companion.getDefault();
                    } else {
                        keyboardActions3 = keyboardActions;
                    }
                    if (i28 != 0) {
                        z9 = true;
                    } else {
                        z9 = z2;
                    }
                    if (i31 != 0) {
                        z10 = false;
                    } else {
                        z10 = z3;
                    }
                    if (i34 != 0) {
                        lambda$559628295$foundation = ComposableSingletons$CoreTextFieldKt.INSTANCE.getLambda$559628295$foundation();
                    } else {
                        lambda$559628295$foundation = dm3Var;
                    }
                    boolean z32111 = z8;
                    textStyle2 = textStyle4;
                    modifier4 = modifier2;
                    z11 = z9;
                    nl3Var5 = nl3Var3;
                    z12 = z32111;
                    VisualTransformation visualTransformation11110 = none;
                    imeOptions4 = imeOptions3;
                    brush2 = solidColor;
                    visualTransformation3 = visualTransformation11110;
                    i40 = i33;
                    if (i35 != 0) {
                        textFieldScrollerPosition3 = null;
                    } else {
                        textFieldScrollerPosition3 = textFieldScrollerPosition;
                    }
                }
                composerStartRestartGroup.endDefaults();
                brush3 = brush2;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(31062401, i6, i40, "androidx.compose.foundation.text.CoreTextField (CoreTextField.kt:208)");
                }
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue2 == companion.getEmpty()) {
                    objRememberedValue2 = new FocusRequester();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                focusRequester = (FocusRequester) objRememberedValue2;
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                i41 = i6;
                if (objRememberedValue3 == companion.getEmpty()) {
                    objRememberedValue3 = LegacyPlatformTextInputServiceAdapter_androidKt.createLegacyPlatformTextInputServiceAdapter();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                legacyPlatformTextInputServiceAdapter = (LegacyPlatformTextInputServiceAdapter) objRememberedValue3;
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue4 == companion.getEmpty()) {
                    objRememberedValue4 = new TextInputService(legacyPlatformTextInputServiceAdapter);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                textInputService = (TextInputService) objRememberedValue4;
                density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                resolver = (FontFamily.Resolver) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalFontFamilyResolver());
                jM3048getBackgroundColor0d7_KjU = ((TextSelectionColors) composerStartRestartGroup.consume(TextSelectionColorsKt.getLocalTextSelectionColors())).m3048getBackgroundColor0d7_KjU();
                focusManager = (FocusManager) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalFocusManager());
                windowInfo = (WindowInfo) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalWindowInfo());
                textStyle5 = textStyle2;
                softwareKeyboardController = (SoftwareKeyboardController) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalSoftwareKeyboardController());
                z13 = z12;
                if (i38 == 1) {
                    orientation = Orientation.Vertical;
                } else {
                    orientation = Orientation.Vertical;
                }
                if (textFieldScrollerPosition3 == null) {
                    composerStartRestartGroup.startReplaceGroup(-213744626);
                    Object[] objArr13 = {orientation};
                    Saver<TextFieldScrollerPosition, Object> saver13 = TextFieldScrollerPosition.Companion.getSaver();
                    zChanged3 = composerStartRestartGroup.changed(orientation.ordinal());
                    objRememberedValue18 = composerStartRestartGroup.rememberedValue();
                    if (zChanged3) {
                        i49 = 0;
                        objRememberedValue18 = new u12(orientation, i49);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue18);
                    } else {
                        i49 = 0;
                        objRememberedValue18 = new u12(orientation, i49);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue18);
                    }
                    textFieldScrollerPosition4 = (TextFieldScrollerPosition) RememberSaveableKt.m5624rememberSaveable(objArr13, (Saver) saver13, (ll3) objRememberedValue18, composerStartRestartGroup, i49);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-213745742);
                    composerStartRestartGroup.endReplaceGroup();
                    textFieldScrollerPosition4 = textFieldScrollerPosition3;
                }
                if (textFieldScrollerPosition4.getOrientation() != orientation) {
                    if (orientation == Orientation.Vertical) {
                        str = "only single-line, non-wrap text fields can scroll horizontally";
                    } else {
                        str = "single-line, non-wrap text fields can only scroll horizontally";
                    }
                    throw new IllegalArgumentException("Mismatching scroller orientation; ".concat(str));
                }
                i42 = i41 & 14;
                if (i42 == 4) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                if ((i41 & 57344) == 16384) {
                    z15 = true;
                } else {
                    z15 = false;
                }
                z16 = z14 | z15;
                objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                if (z16) {
                    transformedTextFilterWithValidation = ValidatingOffsetMappingKt.filterWithValidation(visualTransformation3, textFieldValue.getAnnotatedString());
                    textRangeM8740getCompositionMzsxiRA = textFieldValue.m8740getCompositionMzsxiRA();
                    if (textRangeM8740getCompositionMzsxiRA != null) {
                        textFieldScrollerPosition5 = textFieldScrollerPosition4;
                        transformedTextM2604applyCompositionDecoration72CqOWE = TextFieldDelegate.Companion.m2604applyCompositionDecoration72CqOWE(textRangeM8740getCompositionMzsxiRA.m8495unboximpl(), transformedTextFilterWithValidation);
                        if (transformedTextM2604applyCompositionDecoration72CqOWE != null) {
                            objRememberedValue5 = transformedTextM2604applyCompositionDecoration72CqOWE;
                        }
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    } else {
                        textFieldScrollerPosition5 = textFieldScrollerPosition4;
                    }
                    objRememberedValue5 = transformedTextFilterWithValidation;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                } else {
                    transformedTextFilterWithValidation = ValidatingOffsetMappingKt.filterWithValidation(visualTransformation3, textFieldValue.getAnnotatedString());
                    textRangeM8740getCompositionMzsxiRA = textFieldValue.m8740getCompositionMzsxiRA();
                    if (textRangeM8740getCompositionMzsxiRA != null) {
                        textFieldScrollerPosition5 = textFieldScrollerPosition4;
                        transformedTextM2604applyCompositionDecoration72CqOWE = TextFieldDelegate.Companion.m2604applyCompositionDecoration72CqOWE(textRangeM8740getCompositionMzsxiRA.m8495unboximpl(), transformedTextFilterWithValidation);
                        if (transformedTextM2604applyCompositionDecoration72CqOWE != null) {
                            objRememberedValue5 = transformedTextM2604applyCompositionDecoration72CqOWE;
                        }
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    } else {
                        textFieldScrollerPosition5 = textFieldScrollerPosition4;
                    }
                    objRememberedValue5 = transformedTextFilterWithValidation;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                }
                TransformedText transformedText13 = (TransformedText) objRememberedValue5;
                text = transformedText13.getText();
                offsetMapping = transformedText13.getOffsetMapping();
                currentRecomposeScope = ComposablesKt.getCurrentRecomposeScope(composerStartRestartGroup, 0);
                zChanged = composerStartRestartGroup.changed(softwareKeyboardController);
                objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue6 = new LegacyTextFieldState(new TextDelegate(text, textStyle5, 0, 0, z13, 0, density, resolver, null, 300, null), currentRecomposeScope, softwareKeyboardController);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                } else {
                    objRememberedValue6 = new LegacyTextFieldState(new TextDelegate(text, textStyle5, 0, 0, z13, 0, density, resolver, null, 300, null), currentRecomposeScope, softwareKeyboardController);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                }
                legacyTextFieldState = (LegacyTextFieldState) objRememberedValue6;
                KeyboardActions keyboardActions16 = keyboardActions3;
                legacyTextFieldState.m2569updatefnh65Uc(textFieldValue.getAnnotatedString(), text, textStyle5, z13, r55, resolver, nl3Var, keyboardActions16, focusManager, jM3048getBackgroundColor0d7_KjU);
                legacyTextFieldState.getProcessor().reset(textFieldValue, legacyTextFieldState.getInputSession());
                objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue7 == companion.getEmpty()) {
                    objRememberedValue7 = new UndoManager(0, 1, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                }
                undoManager = (UndoManager) objRememberedValue7;
                UndoManager.snapshotIfNeeded$default(undoManager, textFieldValue, 0L, 2, null);
                objRememberedValue8 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue8 == companion.getEmpty()) {
                    objRememberedValue8 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
                }
                y22Var = (y22) objRememberedValue8;
                objRememberedValue9 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue9 == companion.getEmpty()) {
                    objRememberedValue9 = BringIntoViewRequesterKt.BringIntoViewRequester();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue9);
                }
                bringIntoViewRequester = (BringIntoViewRequester) objRememberedValue9;
                objRememberedValue10 = composerStartRestartGroup.rememberedValue();
                MutableInteractionSource mutableInteractionSource15 = mutableInteractionSource2;
                if (objRememberedValue10 == companion.getEmpty()) {
                    objRememberedValue10 = new TextFieldSelectionManager(undoManager);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue10);
                }
                textFieldSelectionManager = (TextFieldSelectionManager) objRememberedValue10;
                textFieldSelectionManager.setOffsetMapping$foundation(offsetMapping);
                textFieldSelectionManager.setVisualTransformation$foundation(visualTransformation3);
                textFieldSelectionManager.setOnValueChange$foundation(legacyTextFieldState.getOnValueChange());
                textFieldSelectionManager.setState$foundation(legacyTextFieldState);
                textFieldSelectionManager.setValue$foundation(textFieldValue);
                textFieldSelectionManager.setClipboard$foundation((Clipboard) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalClipboard()));
                textFieldSelectionManager.setCoroutineScope$foundation(y22Var);
                textFieldSelectionManager.setTextToolbar((TextToolbar) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalTextToolbar()));
                textFieldSelectionManager.setHapticFeedBack((HapticFeedback) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalHapticFeedback()));
                textFieldSelectionManager.setFocusRequester(focusRequester);
                boolean z311111111114 = !z10;
                textFieldSelectionManager.setEditable(z311111111114);
                textFieldSelectionManager.setEnabled(z11);
                if (ComposeFoundationFlags.isSmartSelectionEnabled) {
                    composerStartRestartGroup.startReplaceGroup(1966756105);
                    textFieldSelectionManager.setPlatformSelectionBehaviors$foundation(PlatformSelectionBehaviors_androidKt.rememberPlatformSelectionBehaviors(SelectedTextType.EditableText, textStyle5.getLocaleList(), composerStartRestartGroup, 6));
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(1966902177);
                    composerStartRestartGroup.endReplaceGroup();
                }
                legacyTextFieldState.getHasFocus();
                companion2 = Modifier.Companion;
                boolean zChangedInstance111117 = composerStartRestartGroup.changedInstance(legacyTextFieldState);
                i43 = i40 & 7168;
                i44 = i40;
                if (i43 == 2048) {
                    z17 = true;
                } else {
                    z17 = false;
                }
                boolean z311111111115 = z17 | zChangedInstance111117;
                if ((i44 & 57344) == 16384) {
                    z18 = true;
                } else {
                    z18 = false;
                }
                boolean zChangedInstance111118 = z311111111115 | z18 | composerStartRestartGroup.changedInstance(textInputService);
                if (i42 == 4) {
                    z19 = true;
                } else {
                    z19 = false;
                }
                boolean z311111111116 = zChangedInstance111118 | z19;
                i45 = (i44 & 112) ^ 48;
                if (i45 > 32) {
                    textInputService2 = textInputService;
                    if ((i44 & 48) != 32) {
                        z20 = true;
                    } else {
                        z20 = false;
                    }
                } else {
                    textInputService2 = textInputService;
                    if ((i44 & 48) != 32) {
                        z20 = true;
                    } else {
                        z20 = false;
                    }
                }
                zChangedInstance = z311111111116 | z20 | composerStartRestartGroup.changedInstance(offsetMapping) | composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(bringIntoViewRequester) | composerStartRestartGroup.changedInstance(textFieldSelectionManager);
                objRememberedValue11 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance) {
                    offsetMapping2 = offsetMapping;
                    final ImeOptions imeOptions1111111 = imeOptions4;
                    final boolean z311111111117 = z11;
                    final boolean z311111111118 = z10;
                    objRememberedValue11 = new nl3() { // from class: v12
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z311111111117, z311111111118, textInputService2, textFieldValue, imeOptions1111111, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                        }
                    };
                    legacyTextFieldState2 = legacyTextFieldState;
                    z21 = z311111111117;
                    textFieldValue2 = textFieldValue;
                    imeOptions5 = imeOptions1111111;
                    textFieldSelectionManager2 = textFieldSelectionManager;
                    y22Var2 = y22Var;
                    bringIntoViewRequester2 = bringIntoViewRequester;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                } else {
                    offsetMapping2 = offsetMapping;
                    final ImeOptions imeOptions1111112 = imeOptions4;
                    final boolean z311111111119 = z11;
                    final boolean z3111111111110 = z10;
                    objRememberedValue11 = new nl3() { // from class: v12
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z311111111119, z3111111111110, textInputService2, textFieldValue, imeOptions1111112, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                        }
                    };
                    legacyTextFieldState2 = legacyTextFieldState;
                    z21 = z311111111119;
                    textFieldValue2 = textFieldValue;
                    imeOptions5 = imeOptions1111112;
                    textFieldSelectionManager2 = textFieldSelectionManager;
                    y22Var2 = y22Var;
                    bringIntoViewRequester2 = bringIntoViewRequester;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                }
                final BringIntoViewRequester bringIntoViewRequester16 = bringIntoViewRequester2;
                Modifier modifierTextFieldFocusModifier14 = TextFieldGestureModifiersKt.textFieldFocusModifier(companion2, z21, focusRequester, mutableInteractionSource15, (nl3) objRememberedValue11);
                if (z21) {
                    z22 = false;
                } else {
                    z22 = false;
                }
                stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Boolean.valueOf(z22), composerStartRestartGroup, 0);
                j59 j59Var14 = j59.a;
                boolean zChanged1111 = composerStartRestartGroup.changed(stateRememberUpdatedState) | composerStartRestartGroup.changedInstance(legacyTextFieldState2) | composerStartRestartGroup.changedInstance(textInputService2) | composerStartRestartGroup.changedInstance(textFieldSelectionManager2);
                if (i45 > 32) {
                    imeOptions6 = imeOptions5;
                    if ((i44 & 48) != 32) {
                        z23 = true;
                    } else {
                        z23 = false;
                    }
                } else {
                    imeOptions6 = imeOptions5;
                    if ((i44 & 48) != 32) {
                        z23 = true;
                    } else {
                        z23 = false;
                    }
                }
                z24 = zChanged1111 | z23;
                objRememberedValue12 = composerStartRestartGroup.rememberedValue();
                if (z24) {
                    ImeOptions imeOptions1111113 = imeOptions6;
                    TextInputService textInputService1110 = textInputService2;
                    TextFieldSelectionManager textFieldSelectionManager1114 = textFieldSelectionManager2;
                    LegacyTextFieldState legacyTextFieldState1113 = legacyTextFieldState2;
                    objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState1113, stateRememberUpdatedState, textInputService1110, textFieldSelectionManager1114, imeOptions1111113, null);
                    legacyTextFieldState3 = legacyTextFieldState1113;
                    textFieldSelectionManager3 = textFieldSelectionManager1114;
                    imeOptions7 = imeOptions1111113;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                } else {
                    ImeOptions imeOptions1111114 = imeOptions6;
                    TextInputService textInputService1111 = textInputService2;
                    TextFieldSelectionManager textFieldSelectionManager1115 = textFieldSelectionManager2;
                    LegacyTextFieldState legacyTextFieldState1114 = legacyTextFieldState2;
                    objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState1114, stateRememberUpdatedState, textInputService1111, textFieldSelectionManager1115, imeOptions1111114, null);
                    legacyTextFieldState3 = legacyTextFieldState1114;
                    textFieldSelectionManager3 = textFieldSelectionManager1115;
                    imeOptions7 = imeOptions1111114;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                }
                imeOptions8 = imeOptions7;
                EffectsKt.LaunchedEffect(j59Var14, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue12, composerStartRestartGroup, 6);
                int i5119 = i44 >> 3;
                z25 = z21;
                legacyTextFieldState4 = legacyTextFieldState3;
                textFieldSelectionManager4 = textFieldSelectionManager3;
                Modifier modifierTextFieldPointer15 = TextFieldPointerModifier_androidKt.textFieldPointer(companion2, textFieldSelectionManager4, z25, mutableInteractionSource15, legacyTextFieldState4, focusRequester, z10, offsetMapping2, composerStartRestartGroup, (i5119 & 896) | 196614 | ((i41 >> 9) & 7168) | ((i44 << 6) & 3670016));
                offsetMapping3 = offsetMapping2;
                final Modifier modifierTextFieldDraw15 = CoreTextField_androidKt.textFieldDraw(companion2, legacyTextFieldState4, textFieldValue2, offsetMapping3);
                boolean zChangedInstance111119 = composerStartRestartGroup.changedInstance(legacyTextFieldState4);
                if (i43 == 2048) {
                    z26 = true;
                } else {
                    z26 = false;
                }
                boolean zChanged1112 = zChangedInstance111119 | z26 | composerStartRestartGroup.changed(windowInfo) | composerStartRestartGroup.changedInstance(textFieldSelectionManager4);
                if (i42 == 4) {
                    z27 = true;
                } else {
                    z27 = false;
                }
                zChangedInstance2 = zChanged1112 | z27 | composerStartRestartGroup.changedInstance(offsetMapping3);
                objRememberedValue13 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance2) {
                    objRememberedValue13 = new nl3() { // from class: w12
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                        }
                    };
                    textFieldSelectionManager5 = textFieldSelectionManager4;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                } else {
                    objRememberedValue13 = new nl3() { // from class: w12
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                        }
                    };
                    textFieldSelectionManager5 = textFieldSelectionManager4;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                }
                final Modifier modifierOnGloballyPositioned15 = OnGloballyPositionedModifierKt.onGloballyPositioned(companion2, (nl3) objRememberedValue13);
                textFieldSelectionManager6 = textFieldSelectionManager5;
                CoreTextFieldSemanticsModifier coreTextFieldSemanticsModifier15 = new CoreTextFieldSemanticsModifier(transformedText13, textFieldValue, legacyTextFieldState4, z10, z25, visualTransformation3 instanceof PasswordVisualTransformation, offsetMapping3, textFieldSelectionManager6, imeOptions8, focusRequester);
                final VisualTransformation visualTransformation11111 = visualTransformation3;
                if (z25 != 0) {
                    z28 = false;
                } else {
                    z28 = false;
                }
                final Modifier modifierTextFieldCursor15 = CoreTextField_androidKt.textFieldCursor(companion2, legacyTextFieldState4, textFieldValue, offsetMapping3, brush3, z28);
                zChangedInstance3 = composerStartRestartGroup.changedInstance(textFieldSelectionManager6);
                objRememberedValue14 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance3) {
                    i46 = 0;
                    objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                } else {
                    i46 = 0;
                    objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                }
                EffectsKt.DisposableEffect(textFieldSelectionManager6, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue14, composerStartRestartGroup, i46);
                boolean zChangedInstance1111110 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changedInstance(textInputService2);
                if (i42 == 4) {
                    z29 = true;
                } else {
                    z29 = false;
                }
                z30 = z29 | zChangedInstance1111110 | ((i45 <= 32 && composerStartRestartGroup.changed(imeOptions8)) || (i44 & 48) == 32);
                objRememberedValue15 = composerStartRestartGroup.rememberedValue();
                if (z30) {
                    objRememberedValue15 = new nl3() { // from class: h12
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                } else {
                    objRememberedValue15 = new nl3() { // from class: h12
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                }
                EffectsKt.DisposableEffect(imeOptions8, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue15, composerStartRestartGroup, i5119 & 14);
                nl3<TextFieldValue, j59> onValueChange15 = legacyTextFieldState4.getOnValueChange();
                i47 = i38;
                if (i47 == 1) {
                    z31 = true;
                } else {
                    z31 = false;
                }
                Modifier modifierM2614textFieldKeyInput2WJ9YEU15 = TextFieldKeyInputKt.m2614textFieldKeyInput2WJ9YEU(companion2, legacyTextFieldState4, textFieldSelectionManager6, textFieldValue, onValueChange15, z311111111114, z31, offsetMapping3, undoManager, imeOptions8.m8688getImeActioneUduSuo());
                iM8689getKeyboardTypePjHm6EE = imeOptions8.m8689getKeyboardTypePjHm6EE();
                companion3 = KeyboardType.Companion;
                if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion3.m8731getPasswordPjHm6EE())) {
                    z32 = false;
                } else {
                    z32 = false;
                }
                boolean zCoreTextField$lambda$118 = CoreTextField$lambda$14(stateRememberUpdatedState);
                zChanged2 = composerStartRestartGroup.changed(z32) | composerStartRestartGroup.changedInstance(legacyPlatformTextInputServiceAdapter);
                objRememberedValue16 = composerStartRestartGroup.rememberedValue();
                if (zChanged2) {
                    objRememberedValue16 = new ll3() { // from class: i12
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                } else {
                    objRememberedValue16 = new ll3() { // from class: i12
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                }
                Modifier modifierStylusHandwriting15 = StylusHandwritingKt.stylusHandwriting(companion2, zCoreTextField$lambda$118, z32, (ll3) objRememberedValue16);
                y22 y22Var17 = y22Var2;
                brushM2447resolveAutofillHighlightWkMShQ = AutofillHighlightKt.m2447resolveAutofillHighlightWkMShQ((Brush) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightBrush()), ((Color) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightColor())).m6242unboximpl(), AutofillHighlight_androidKt.autofillHighlightColor());
                zChangedInstance4 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changed(brushM2447resolveAutofillHighlightWkMShQ);
                objRememberedValue17 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance4) {
                    i48 = 0;
                    objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                } else {
                    i48 = 0;
                    objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                }
                Modifier modifierDrawWithContent15 = DrawModifierKt.drawWithContent(companion2, (nl3) objRememberedValue17);
                OverscrollEffect overscrollEffectRememberTextFieldOverscrollEffect15 = TextFieldScroll_androidKt.rememberTextFieldOverscrollEffect(composerStartRestartGroup, i48);
                Modifier modifier1113 = modifier4;
                Modifier modifierThen15 = previewKeyEventToDeselectOnBack(TextFieldFocusModifier_androidKt.interceptDPadAndMoveFocus(LegacyAdaptingPlatformTextInputModifierNodeKt.legacyTextInputAdapter(modifier1113.then(modifierDrawWithContent15), legacyPlatformTextInputServiceAdapter, legacyTextFieldState4, textFieldSelectionManager6).then(modifierStylusHandwriting15).then(modifierTextFieldFocusModifier14), legacyTextFieldState4, focusManager), legacyTextFieldState4, textFieldSelectionManager6).then(modifierM2614textFieldKeyInput2WJ9YEU15);
                final TextFieldScrollerPosition textFieldScrollerPosition110 = textFieldScrollerPosition5;
                Modifier modifierAddContextMenuComponents15 = addContextMenuComponents(OnGloballyPositionedModifierKt.onGloballyPositioned(TextFieldScrollKt.textFieldScrollable(modifierThen15, textFieldScrollerPosition110, mutableInteractionSource15, z25, overscrollEffectRememberTextFieldOverscrollEffect15).then(modifierTextFieldPointer15).then(coreTextFieldSemanticsModifier15), new nl3() { // from class: r12
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return CoreTextFieldKt.CoreTextField$lambda$21(legacyTextFieldState4, (LayoutCoordinates) obj);
                    }
                }), textFieldSelectionManager6, y22Var17);
                if (z25) {
                    i48 = 1;
                }
                if (i48 != 0) {
                    modifierTextFieldMagnifier = TextFieldSelectionManager_androidKt.textFieldMagnifier(companion2, textFieldSelectionManager6);
                } else {
                    modifierTextFieldMagnifier = companion2;
                }
                final Modifier modifier1114 = modifierTextFieldMagnifier;
                final boolean z3111111111111 = z10;
                final dm3 dm3Var17 = lambda$559628295$foundation;
                final int i51110 = i39;
                final boolean z414 = i48;
                CoreTextFieldRootBox(modifierAddContextMenuComponents15, textFieldSelectionManager6, ComposableLambdaKt.rememberComposableLambda(-814563849, true, new bm3() { // from class: s12
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return CoreTextFieldKt.CoreTextField$lambda$22(dm3Var17, legacyTextFieldState4, textStyle5, i51110, i47, textFieldScrollerPosition110, textFieldValue, visualTransformation11111, modifierTextFieldCursor15, modifierTextFieldDraw15, modifierOnGloballyPositioned15, modifier1114, bringIntoViewRequester16, textFieldSelectionManager6, z414, z3111111111111, nl3Var5, offsetMapping3, density, (Composer) obj, iIntValue);
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, RendererCapabilities.DECODER_SUPPORT_MASK);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                dm3Var2 = dm3Var17;
                i37 = i51110;
                composer2 = composerStartRestartGroup;
                nl3Var4 = nl3Var5;
                z7 = z3111111111111;
                textFieldScrollerPosition2 = textFieldScrollerPosition3;
                imeOptions2 = imeOptions8;
                z6 = z25;
                mutableInteractionSource2 = mutableInteractionSource15;
                z5 = z13;
                keyboardActions2 = keyboardActions16;
                modifier3 = modifier1113;
                i36 = i47;
                visualTransformation2 = visualTransformation11111;
                solidColor = brush3;
                textStyle3 = textStyle5;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                z5 = z;
                imeOptions2 = imeOptions;
                keyboardActions2 = keyboardActions;
                dm3Var2 = dm3Var;
                textFieldScrollerPosition2 = textFieldScrollerPosition;
                composer2 = composerStartRestartGroup;
                textStyle3 = textStyle2;
                nl3Var4 = nl3Var3;
                visualTransformation2 = none;
                modifier3 = modifier2;
                i36 = i;
                i37 = i2;
                z6 = z2;
                z7 = z3;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: t12
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return CoreTextFieldKt.CoreTextField$lambda$23(textFieldValue, nl3Var, modifier3, textStyle3, visualTransformation2, nl3Var4, mutableInteractionSource2, solidColor, z5, i36, i37, imeOptions2, keyboardActions2, z6, z7, dm3Var2, textFieldScrollerPosition2, i3, i4, i5, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i6 |= 3072;
        textStyle2 = textStyle;
        i9 = i5 & 16;
        if (i9 != 0) {
            if ((i3 & 24576) == 0) {
                none = visualTransformation;
                if (composerStartRestartGroup.changed(none)) {
                    i10 = 16384;
                } else {
                    i10 = 8192;
                }
                i6 |= i10;
            }
            i11 = i5 & 32;
            if (i11 != 0) {
                i6 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                nl3Var3 = nl3Var2;
            } else {
                nl3Var3 = nl3Var2;
                if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var3)) {
                        i12 = 131072;
                    } else {
                        i12 = 65536;
                    }
                    i6 |= i12;
                }
            }
            i13 = i5 & 64;
            if (i13 != 0) {
                i6 |= 1572864;
                mutableInteractionSource2 = mutableInteractionSource;
            } else {
                mutableInteractionSource2 = mutableInteractionSource;
                if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(mutableInteractionSource2)) {
                        i14 = 1048576;
                    } else {
                        i14 = 524288;
                    }
                    i6 |= i14;
                }
            }
            i15 = i5 & 128;
            if (i15 != 0) {
                i6 |= 12582912;
                solidColor = brush;
            } else {
                solidColor = brush;
                if ((i3 & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(solidColor)) {
                        i16 = 8388608;
                    } else {
                        i16 = 4194304;
                    }
                    i6 |= i16;
                }
            }
            i17 = i5 & 256;
            if (i17 != 0) {
                i6 |= 100663296;
            } else if ((i3 & 100663296) == 0) {
                if (composerStartRestartGroup.changed(z)) {
                    i18 = 67108864;
                } else {
                    i18 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i6 |= i18;
            }
            i19 = i5 & 512;
            if (i19 != 0) {
                if ((i3 & 805306368) == 0) {
                    if (composerStartRestartGroup.changed(i)) {
                        i20 = 536870912;
                    } else {
                        i20 = 268435456;
                    }
                    i6 |= i20;
                }
                i21 = i5 & 1024;
                if (i21 != 0) {
                    i22 = i4 | 6;
                } else if ((i4 & 6) == 0) {
                    if (composerStartRestartGroup.changed(i2)) {
                        i23 = 4;
                    } else {
                        i23 = 2;
                    }
                    i22 = i4 | i23;
                } else {
                    i22 = i4;
                }
                if ((i4 & 48) != 0) {
                    i22 |= ((i5 & 2048) == 0 || !composerStartRestartGroup.changed(imeOptions)) ? 16 : 32;
                }
                i24 = i22;
                i25 = i5 & 4096;
                if (i25 != 0) {
                    i26 = i24 | RendererCapabilities.DECODER_SUPPORT_MASK;
                } else if ((i4 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    if (composerStartRestartGroup.changed(keyboardActions)) {
                        i27 = 256;
                    } else {
                        i27 = 128;
                    }
                    i26 = i24 | i27;
                } else {
                    i26 = i24;
                }
                i28 = i5 & 8192;
                if (i28 != 0) {
                    i30 = i26 | 3072;
                } else {
                    i29 = i26;
                    if ((i4 & 3072) == 0) {
                        i30 = i29 | (composerStartRestartGroup.changed(z2) ? 2048 : 1024);
                    } else {
                        i30 = i29;
                    }
                }
                i31 = i5 & 16384;
                if (i31 != 0) {
                    i33 = i30 | 24576;
                } else {
                    i32 = i30;
                    if ((i4 & 24576) == 0) {
                        i33 = i32 | (composerStartRestartGroup.changed(z3) ? 16384 : 8192);
                    } else {
                        i33 = i32;
                    }
                }
                i34 = i5 & 32768;
                if (i34 != 0) {
                    i33 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i4 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    i33 |= composerStartRestartGroup.changedInstance(dm3Var) ? 131072 : 65536;
                }
                i35 = i5 & 65536;
                if (i35 != 0) {
                    i33 |= 1572864;
                } else if ((i4 & 1572864) == 0) {
                    i33 |= composerStartRestartGroup.changed(textFieldScrollerPosition) ? 1048576 : 524288;
                }
                if ((i6 & 306783379) == 306783378) {
                    z4 = true;
                } else {
                    z4 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i6 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    jh2Var = null;
                    if ((i3 & 1) != 0) {
                        if (i50 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i7 != 0) {
                            textStyle4 = TextStyle.Companion.getDefault();
                        } else {
                            textStyle4 = textStyle2;
                        }
                        if (i9 != 0) {
                            none = VisualTransformation.Companion.getNone();
                        }
                        if (i11 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new p12(0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            nl3Var3 = (nl3) objRememberedValue;
                        }
                        if (i13 != 0) {
                            mutableInteractionSource2 = null;
                        }
                        if (i15 != 0) {
                            solidColor = new SolidColor(Color.Companion.m6268getUnspecified0d7_KjU(), jh2Var);
                        }
                        if (i17 != 0) {
                            z8 = true;
                        } else {
                            z8 = z;
                        }
                        if (i19 != 0) {
                            i38 = Integer.MAX_VALUE;
                        } else {
                            i38 = i;
                        }
                        if (i21 != 0) {
                            i39 = 1;
                        } else {
                            i39 = i2;
                        }
                        if ((i5 & 2048) != 0) {
                            imeOptions3 = ImeOptions.Companion.getDefault();
                            i33 &= -113;
                        } else {
                            imeOptions3 = imeOptions;
                        }
                        if (i25 != 0) {
                            keyboardActions3 = KeyboardActions.Companion.getDefault();
                        } else {
                            keyboardActions3 = keyboardActions;
                        }
                        if (i28 != 0) {
                            z9 = true;
                        } else {
                            z9 = z2;
                        }
                        if (i31 != 0) {
                            z10 = false;
                        } else {
                            z10 = z3;
                        }
                        if (i34 != 0) {
                            lambda$559628295$foundation = ComposableSingletons$CoreTextFieldKt.INSTANCE.getLambda$559628295$foundation();
                        } else {
                            lambda$559628295$foundation = dm3Var;
                        }
                        boolean z32112 = z8;
                        textStyle2 = textStyle4;
                        modifier4 = modifier2;
                        z11 = z9;
                        nl3Var5 = nl3Var3;
                        z12 = z32112;
                        VisualTransformation visualTransformation11112 = none;
                        imeOptions4 = imeOptions3;
                        brush2 = solidColor;
                        visualTransformation3 = visualTransformation11112;
                        i40 = i33;
                        if (i35 != 0) {
                            textFieldScrollerPosition3 = null;
                        } else {
                            textFieldScrollerPosition3 = textFieldScrollerPosition;
                        }
                    } else {
                        if (i50 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i7 != 0) {
                            textStyle4 = TextStyle.Companion.getDefault();
                        } else {
                            textStyle4 = textStyle2;
                        }
                        if (i9 != 0) {
                            none = VisualTransformation.Companion.getNone();
                        }
                        if (i11 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new p12(0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            nl3Var3 = (nl3) objRememberedValue;
                        }
                        if (i13 != 0) {
                            mutableInteractionSource2 = null;
                        }
                        if (i15 != 0) {
                            solidColor = new SolidColor(Color.Companion.m6268getUnspecified0d7_KjU(), jh2Var);
                        }
                        if (i17 != 0) {
                            z8 = true;
                        } else {
                            z8 = z;
                        }
                        if (i19 != 0) {
                            i38 = Integer.MAX_VALUE;
                        } else {
                            i38 = i;
                        }
                        if (i21 != 0) {
                            i39 = 1;
                        } else {
                            i39 = i2;
                        }
                        if ((i5 & 2048) != 0) {
                            imeOptions3 = ImeOptions.Companion.getDefault();
                            i33 &= -113;
                        } else {
                            imeOptions3 = imeOptions;
                        }
                        if (i25 != 0) {
                            keyboardActions3 = KeyboardActions.Companion.getDefault();
                        } else {
                            keyboardActions3 = keyboardActions;
                        }
                        if (i28 != 0) {
                            z9 = true;
                        } else {
                            z9 = z2;
                        }
                        if (i31 != 0) {
                            z10 = false;
                        } else {
                            z10 = z3;
                        }
                        if (i34 != 0) {
                            lambda$559628295$foundation = ComposableSingletons$CoreTextFieldKt.INSTANCE.getLambda$559628295$foundation();
                        } else {
                            lambda$559628295$foundation = dm3Var;
                        }
                        boolean z32113 = z8;
                        textStyle2 = textStyle4;
                        modifier4 = modifier2;
                        z11 = z9;
                        nl3Var5 = nl3Var3;
                        z12 = z32113;
                        VisualTransformation visualTransformation11113 = none;
                        imeOptions4 = imeOptions3;
                        brush2 = solidColor;
                        visualTransformation3 = visualTransformation11113;
                        i40 = i33;
                        if (i35 != 0) {
                            textFieldScrollerPosition3 = null;
                        } else {
                            textFieldScrollerPosition3 = textFieldScrollerPosition;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    brush3 = brush2;
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(31062401, i6, i40, "androidx.compose.foundation.text.CoreTextField (CoreTextField.kt:208)");
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = new FocusRequester();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    focusRequester = (FocusRequester) objRememberedValue2;
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    i41 = i6;
                    if (objRememberedValue3 == companion.getEmpty()) {
                        objRememberedValue3 = LegacyPlatformTextInputServiceAdapter_androidKt.createLegacyPlatformTextInputServiceAdapter();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    legacyPlatformTextInputServiceAdapter = (LegacyPlatformTextInputServiceAdapter) objRememberedValue3;
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue4 == companion.getEmpty()) {
                        objRememberedValue4 = new TextInputService(legacyPlatformTextInputServiceAdapter);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    textInputService = (TextInputService) objRememberedValue4;
                    density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    resolver = (FontFamily.Resolver) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalFontFamilyResolver());
                    jM3048getBackgroundColor0d7_KjU = ((TextSelectionColors) composerStartRestartGroup.consume(TextSelectionColorsKt.getLocalTextSelectionColors())).m3048getBackgroundColor0d7_KjU();
                    focusManager = (FocusManager) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalFocusManager());
                    windowInfo = (WindowInfo) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalWindowInfo());
                    textStyle5 = textStyle2;
                    softwareKeyboardController = (SoftwareKeyboardController) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalSoftwareKeyboardController());
                    z13 = z12;
                    if (i38 == 1) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Vertical;
                    }
                    if (textFieldScrollerPosition3 == null) {
                        composerStartRestartGroup.startReplaceGroup(-213744626);
                        Object[] objArr14 = {orientation};
                        Saver<TextFieldScrollerPosition, Object> saver14 = TextFieldScrollerPosition.Companion.getSaver();
                        zChanged3 = composerStartRestartGroup.changed(orientation.ordinal());
                        objRememberedValue18 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            i49 = 0;
                            objRememberedValue18 = new u12(orientation, i49);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue18);
                        } else {
                            i49 = 0;
                            objRememberedValue18 = new u12(orientation, i49);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue18);
                        }
                        textFieldScrollerPosition4 = (TextFieldScrollerPosition) RememberSaveableKt.m5624rememberSaveable(objArr14, (Saver) saver14, (ll3) objRememberedValue18, composerStartRestartGroup, i49);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-213745742);
                        composerStartRestartGroup.endReplaceGroup();
                        textFieldScrollerPosition4 = textFieldScrollerPosition3;
                    }
                    if (textFieldScrollerPosition4.getOrientation() != orientation) {
                        if (orientation == Orientation.Vertical) {
                            str = "only single-line, non-wrap text fields can scroll horizontally";
                        } else {
                            str = "single-line, non-wrap text fields can only scroll horizontally";
                        }
                        throw new IllegalArgumentException("Mismatching scroller orientation; ".concat(str));
                    }
                    i42 = i41 & 14;
                    if (i42 == 4) {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    if ((i41 & 57344) == 16384) {
                        z15 = true;
                    } else {
                        z15 = false;
                    }
                    z16 = z14 | z15;
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (z16) {
                        transformedTextFilterWithValidation = ValidatingOffsetMappingKt.filterWithValidation(visualTransformation3, textFieldValue.getAnnotatedString());
                        textRangeM8740getCompositionMzsxiRA = textFieldValue.m8740getCompositionMzsxiRA();
                        if (textRangeM8740getCompositionMzsxiRA != null) {
                            textFieldScrollerPosition5 = textFieldScrollerPosition4;
                            transformedTextM2604applyCompositionDecoration72CqOWE = TextFieldDelegate.Companion.m2604applyCompositionDecoration72CqOWE(textRangeM8740getCompositionMzsxiRA.m8495unboximpl(), transformedTextFilterWithValidation);
                            if (transformedTextM2604applyCompositionDecoration72CqOWE != null) {
                                objRememberedValue5 = transformedTextM2604applyCompositionDecoration72CqOWE;
                            }
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            textFieldScrollerPosition5 = textFieldScrollerPosition4;
                        }
                        objRememberedValue5 = transformedTextFilterWithValidation;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    } else {
                        transformedTextFilterWithValidation = ValidatingOffsetMappingKt.filterWithValidation(visualTransformation3, textFieldValue.getAnnotatedString());
                        textRangeM8740getCompositionMzsxiRA = textFieldValue.m8740getCompositionMzsxiRA();
                        if (textRangeM8740getCompositionMzsxiRA != null) {
                            textFieldScrollerPosition5 = textFieldScrollerPosition4;
                            transformedTextM2604applyCompositionDecoration72CqOWE = TextFieldDelegate.Companion.m2604applyCompositionDecoration72CqOWE(textRangeM8740getCompositionMzsxiRA.m8495unboximpl(), transformedTextFilterWithValidation);
                            if (transformedTextM2604applyCompositionDecoration72CqOWE != null) {
                                objRememberedValue5 = transformedTextM2604applyCompositionDecoration72CqOWE;
                            }
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            textFieldScrollerPosition5 = textFieldScrollerPosition4;
                        }
                        objRememberedValue5 = transformedTextFilterWithValidation;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    TransformedText transformedText14 = (TransformedText) objRememberedValue5;
                    text = transformedText14.getText();
                    offsetMapping = transformedText14.getOffsetMapping();
                    currentRecomposeScope = ComposablesKt.getCurrentRecomposeScope(composerStartRestartGroup, 0);
                    zChanged = composerStartRestartGroup.changed(softwareKeyboardController);
                    objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue6 = new LegacyTextFieldState(new TextDelegate(text, textStyle5, 0, 0, z13, 0, density, resolver, null, 300, null), currentRecomposeScope, softwareKeyboardController);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    } else {
                        objRememberedValue6 = new LegacyTextFieldState(new TextDelegate(text, textStyle5, 0, 0, z13, 0, density, resolver, null, 300, null), currentRecomposeScope, softwareKeyboardController);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    }
                    legacyTextFieldState = (LegacyTextFieldState) objRememberedValue6;
                    KeyboardActions keyboardActions17 = keyboardActions3;
                    legacyTextFieldState.m2569updatefnh65Uc(textFieldValue.getAnnotatedString(), text, textStyle5, z13, r55, resolver, nl3Var, keyboardActions17, focusManager, jM3048getBackgroundColor0d7_KjU);
                    legacyTextFieldState.getProcessor().reset(textFieldValue, legacyTextFieldState.getInputSession());
                    objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue7 == companion.getEmpty()) {
                        objRememberedValue7 = new UndoManager(0, 1, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                    }
                    undoManager = (UndoManager) objRememberedValue7;
                    UndoManager.snapshotIfNeeded$default(undoManager, textFieldValue, 0L, 2, null);
                    objRememberedValue8 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue8 == companion.getEmpty()) {
                        objRememberedValue8 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
                    }
                    y22Var = (y22) objRememberedValue8;
                    objRememberedValue9 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue9 == companion.getEmpty()) {
                        objRememberedValue9 = BringIntoViewRequesterKt.BringIntoViewRequester();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue9);
                    }
                    bringIntoViewRequester = (BringIntoViewRequester) objRememberedValue9;
                    objRememberedValue10 = composerStartRestartGroup.rememberedValue();
                    MutableInteractionSource mutableInteractionSource16 = mutableInteractionSource2;
                    if (objRememberedValue10 == companion.getEmpty()) {
                        objRememberedValue10 = new TextFieldSelectionManager(undoManager);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue10);
                    }
                    textFieldSelectionManager = (TextFieldSelectionManager) objRememberedValue10;
                    textFieldSelectionManager.setOffsetMapping$foundation(offsetMapping);
                    textFieldSelectionManager.setVisualTransformation$foundation(visualTransformation3);
                    textFieldSelectionManager.setOnValueChange$foundation(legacyTextFieldState.getOnValueChange());
                    textFieldSelectionManager.setState$foundation(legacyTextFieldState);
                    textFieldSelectionManager.setValue$foundation(textFieldValue);
                    textFieldSelectionManager.setClipboard$foundation((Clipboard) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalClipboard()));
                    textFieldSelectionManager.setCoroutineScope$foundation(y22Var);
                    textFieldSelectionManager.setTextToolbar((TextToolbar) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalTextToolbar()));
                    textFieldSelectionManager.setHapticFeedBack((HapticFeedback) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalHapticFeedback()));
                    textFieldSelectionManager.setFocusRequester(focusRequester);
                    boolean z3111111111112 = !z10;
                    textFieldSelectionManager.setEditable(z3111111111112);
                    textFieldSelectionManager.setEnabled(z11);
                    if (ComposeFoundationFlags.isSmartSelectionEnabled) {
                        composerStartRestartGroup.startReplaceGroup(1966756105);
                        textFieldSelectionManager.setPlatformSelectionBehaviors$foundation(PlatformSelectionBehaviors_androidKt.rememberPlatformSelectionBehaviors(SelectedTextType.EditableText, textStyle5.getLocaleList(), composerStartRestartGroup, 6));
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1966902177);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    legacyTextFieldState.getHasFocus();
                    companion2 = Modifier.Companion;
                    boolean zChangedInstance1111111 = composerStartRestartGroup.changedInstance(legacyTextFieldState);
                    i43 = i40 & 7168;
                    i44 = i40;
                    if (i43 == 2048) {
                        z17 = true;
                    } else {
                        z17 = false;
                    }
                    boolean z3111111111113 = z17 | zChangedInstance1111111;
                    if ((i44 & 57344) == 16384) {
                        z18 = true;
                    } else {
                        z18 = false;
                    }
                    boolean zChangedInstance1111112 = z3111111111113 | z18 | composerStartRestartGroup.changedInstance(textInputService);
                    if (i42 == 4) {
                        z19 = true;
                    } else {
                        z19 = false;
                    }
                    boolean z3111111111114 = zChangedInstance1111112 | z19;
                    i45 = (i44 & 112) ^ 48;
                    if (i45 > 32) {
                        textInputService2 = textInputService;
                        if ((i44 & 48) != 32) {
                            z20 = true;
                        } else {
                            z20 = false;
                        }
                    } else {
                        textInputService2 = textInputService;
                        if ((i44 & 48) != 32) {
                            z20 = true;
                        } else {
                            z20 = false;
                        }
                    }
                    zChangedInstance = z3111111111114 | z20 | composerStartRestartGroup.changedInstance(offsetMapping) | composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(bringIntoViewRequester) | composerStartRestartGroup.changedInstance(textFieldSelectionManager);
                    objRememberedValue11 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance) {
                        offsetMapping2 = offsetMapping;
                        final ImeOptions imeOptions1111115 = imeOptions4;
                        final boolean z3111111111115 = z11;
                        final boolean z3111111111116 = z10;
                        objRememberedValue11 = new nl3() { // from class: v12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z3111111111115, z3111111111116, textInputService2, textFieldValue, imeOptions1111115, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                            }
                        };
                        legacyTextFieldState2 = legacyTextFieldState;
                        z21 = z3111111111115;
                        textFieldValue2 = textFieldValue;
                        imeOptions5 = imeOptions1111115;
                        textFieldSelectionManager2 = textFieldSelectionManager;
                        y22Var2 = y22Var;
                        bringIntoViewRequester2 = bringIntoViewRequester;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                    } else {
                        offsetMapping2 = offsetMapping;
                        final ImeOptions imeOptions1111116 = imeOptions4;
                        final boolean z3111111111117 = z11;
                        final boolean z3111111111118 = z10;
                        objRememberedValue11 = new nl3() { // from class: v12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z3111111111117, z3111111111118, textInputService2, textFieldValue, imeOptions1111116, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                            }
                        };
                        legacyTextFieldState2 = legacyTextFieldState;
                        z21 = z3111111111117;
                        textFieldValue2 = textFieldValue;
                        imeOptions5 = imeOptions1111116;
                        textFieldSelectionManager2 = textFieldSelectionManager;
                        y22Var2 = y22Var;
                        bringIntoViewRequester2 = bringIntoViewRequester;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                    }
                    final BringIntoViewRequester bringIntoViewRequester17 = bringIntoViewRequester2;
                    Modifier modifierTextFieldFocusModifier15 = TextFieldGestureModifiersKt.textFieldFocusModifier(companion2, z21, focusRequester, mutableInteractionSource16, (nl3) objRememberedValue11);
                    if (z21) {
                        z22 = false;
                    } else {
                        z22 = false;
                    }
                    stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Boolean.valueOf(z22), composerStartRestartGroup, 0);
                    j59 j59Var15 = j59.a;
                    boolean zChanged1113 = composerStartRestartGroup.changed(stateRememberUpdatedState) | composerStartRestartGroup.changedInstance(legacyTextFieldState2) | composerStartRestartGroup.changedInstance(textInputService2) | composerStartRestartGroup.changedInstance(textFieldSelectionManager2);
                    if (i45 > 32) {
                        imeOptions6 = imeOptions5;
                        if ((i44 & 48) != 32) {
                            z23 = true;
                        } else {
                            z23 = false;
                        }
                    } else {
                        imeOptions6 = imeOptions5;
                        if ((i44 & 48) != 32) {
                            z23 = true;
                        } else {
                            z23 = false;
                        }
                    }
                    z24 = zChanged1113 | z23;
                    objRememberedValue12 = composerStartRestartGroup.rememberedValue();
                    if (z24) {
                        ImeOptions imeOptions1111117 = imeOptions6;
                        TextInputService textInputService1112 = textInputService2;
                        TextFieldSelectionManager textFieldSelectionManager1116 = textFieldSelectionManager2;
                        LegacyTextFieldState legacyTextFieldState1115 = legacyTextFieldState2;
                        objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState1115, stateRememberUpdatedState, textInputService1112, textFieldSelectionManager1116, imeOptions1111117, null);
                        legacyTextFieldState3 = legacyTextFieldState1115;
                        textFieldSelectionManager3 = textFieldSelectionManager1116;
                        imeOptions7 = imeOptions1111117;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                    } else {
                        ImeOptions imeOptions1111118 = imeOptions6;
                        TextInputService textInputService1113 = textInputService2;
                        TextFieldSelectionManager textFieldSelectionManager1117 = textFieldSelectionManager2;
                        LegacyTextFieldState legacyTextFieldState1116 = legacyTextFieldState2;
                        objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState1116, stateRememberUpdatedState, textInputService1113, textFieldSelectionManager1117, imeOptions1111118, null);
                        legacyTextFieldState3 = legacyTextFieldState1116;
                        textFieldSelectionManager3 = textFieldSelectionManager1117;
                        imeOptions7 = imeOptions1111118;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                    }
                    imeOptions8 = imeOptions7;
                    EffectsKt.LaunchedEffect(j59Var15, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue12, composerStartRestartGroup, 6);
                    int i51111 = i44 >> 3;
                    z25 = z21;
                    legacyTextFieldState4 = legacyTextFieldState3;
                    textFieldSelectionManager4 = textFieldSelectionManager3;
                    Modifier modifierTextFieldPointer16 = TextFieldPointerModifier_androidKt.textFieldPointer(companion2, textFieldSelectionManager4, z25, mutableInteractionSource16, legacyTextFieldState4, focusRequester, z10, offsetMapping2, composerStartRestartGroup, (i51111 & 896) | 196614 | ((i41 >> 9) & 7168) | ((i44 << 6) & 3670016));
                    offsetMapping3 = offsetMapping2;
                    final Modifier modifierTextFieldDraw16 = CoreTextField_androidKt.textFieldDraw(companion2, legacyTextFieldState4, textFieldValue2, offsetMapping3);
                    boolean zChangedInstance1111113 = composerStartRestartGroup.changedInstance(legacyTextFieldState4);
                    if (i43 == 2048) {
                        z26 = true;
                    } else {
                        z26 = false;
                    }
                    boolean zChanged1114 = zChangedInstance1111113 | z26 | composerStartRestartGroup.changed(windowInfo) | composerStartRestartGroup.changedInstance(textFieldSelectionManager4);
                    if (i42 == 4) {
                        z27 = true;
                    } else {
                        z27 = false;
                    }
                    zChangedInstance2 = zChanged1114 | z27 | composerStartRestartGroup.changedInstance(offsetMapping3);
                    objRememberedValue13 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance2) {
                        objRememberedValue13 = new nl3() { // from class: w12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                            }
                        };
                        textFieldSelectionManager5 = textFieldSelectionManager4;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                    } else {
                        objRememberedValue13 = new nl3() { // from class: w12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                            }
                        };
                        textFieldSelectionManager5 = textFieldSelectionManager4;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                    }
                    final Modifier modifierOnGloballyPositioned16 = OnGloballyPositionedModifierKt.onGloballyPositioned(companion2, (nl3) objRememberedValue13);
                    textFieldSelectionManager6 = textFieldSelectionManager5;
                    CoreTextFieldSemanticsModifier coreTextFieldSemanticsModifier16 = new CoreTextFieldSemanticsModifier(transformedText14, textFieldValue, legacyTextFieldState4, z10, z25, visualTransformation3 instanceof PasswordVisualTransformation, offsetMapping3, textFieldSelectionManager6, imeOptions8, focusRequester);
                    final VisualTransformation visualTransformation11114 = visualTransformation3;
                    if (z25 != 0) {
                        z28 = false;
                    } else {
                        z28 = false;
                    }
                    final Modifier modifierTextFieldCursor16 = CoreTextField_androidKt.textFieldCursor(companion2, legacyTextFieldState4, textFieldValue, offsetMapping3, brush3, z28);
                    zChangedInstance3 = composerStartRestartGroup.changedInstance(textFieldSelectionManager6);
                    objRememberedValue14 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance3) {
                        i46 = 0;
                        objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                    } else {
                        i46 = 0;
                        objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                    }
                    EffectsKt.DisposableEffect(textFieldSelectionManager6, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue14, composerStartRestartGroup, i46);
                    boolean zChangedInstance1111114 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changedInstance(textInputService2);
                    if (i42 == 4) {
                        z29 = true;
                    } else {
                        z29 = false;
                    }
                    z30 = z29 | zChangedInstance1111114 | ((i45 <= 32 && composerStartRestartGroup.changed(imeOptions8)) || (i44 & 48) == 32);
                    objRememberedValue15 = composerStartRestartGroup.rememberedValue();
                    if (z30) {
                        objRememberedValue15 = new nl3() { // from class: h12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                    } else {
                        objRememberedValue15 = new nl3() { // from class: h12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                    }
                    EffectsKt.DisposableEffect(imeOptions8, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue15, composerStartRestartGroup, i51111 & 14);
                    nl3<TextFieldValue, j59> onValueChange16 = legacyTextFieldState4.getOnValueChange();
                    i47 = i38;
                    if (i47 == 1) {
                        z31 = true;
                    } else {
                        z31 = false;
                    }
                    Modifier modifierM2614textFieldKeyInput2WJ9YEU16 = TextFieldKeyInputKt.m2614textFieldKeyInput2WJ9YEU(companion2, legacyTextFieldState4, textFieldSelectionManager6, textFieldValue, onValueChange16, z3111111111112, z31, offsetMapping3, undoManager, imeOptions8.m8688getImeActioneUduSuo());
                    iM8689getKeyboardTypePjHm6EE = imeOptions8.m8689getKeyboardTypePjHm6EE();
                    companion3 = KeyboardType.Companion;
                    if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion3.m8731getPasswordPjHm6EE())) {
                        z32 = false;
                    } else {
                        z32 = false;
                    }
                    boolean zCoreTextField$lambda$119 = CoreTextField$lambda$14(stateRememberUpdatedState);
                    zChanged2 = composerStartRestartGroup.changed(z32) | composerStartRestartGroup.changedInstance(legacyPlatformTextInputServiceAdapter);
                    objRememberedValue16 = composerStartRestartGroup.rememberedValue();
                    if (zChanged2) {
                        objRememberedValue16 = new ll3() { // from class: i12
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                    } else {
                        objRememberedValue16 = new ll3() { // from class: i12
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                    }
                    Modifier modifierStylusHandwriting16 = StylusHandwritingKt.stylusHandwriting(companion2, zCoreTextField$lambda$119, z32, (ll3) objRememberedValue16);
                    y22 y22Var18 = y22Var2;
                    brushM2447resolveAutofillHighlightWkMShQ = AutofillHighlightKt.m2447resolveAutofillHighlightWkMShQ((Brush) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightBrush()), ((Color) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightColor())).m6242unboximpl(), AutofillHighlight_androidKt.autofillHighlightColor());
                    zChangedInstance4 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changed(brushM2447resolveAutofillHighlightWkMShQ);
                    objRememberedValue17 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance4) {
                        i48 = 0;
                        objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                    } else {
                        i48 = 0;
                        objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                    }
                    Modifier modifierDrawWithContent16 = DrawModifierKt.drawWithContent(companion2, (nl3) objRememberedValue17);
                    OverscrollEffect overscrollEffectRememberTextFieldOverscrollEffect16 = TextFieldScroll_androidKt.rememberTextFieldOverscrollEffect(composerStartRestartGroup, i48);
                    Modifier modifier1115 = modifier4;
                    Modifier modifierThen16 = previewKeyEventToDeselectOnBack(TextFieldFocusModifier_androidKt.interceptDPadAndMoveFocus(LegacyAdaptingPlatformTextInputModifierNodeKt.legacyTextInputAdapter(modifier1115.then(modifierDrawWithContent16), legacyPlatformTextInputServiceAdapter, legacyTextFieldState4, textFieldSelectionManager6).then(modifierStylusHandwriting16).then(modifierTextFieldFocusModifier15), legacyTextFieldState4, focusManager), legacyTextFieldState4, textFieldSelectionManager6).then(modifierM2614textFieldKeyInput2WJ9YEU16);
                    final TextFieldScrollerPosition textFieldScrollerPosition111 = textFieldScrollerPosition5;
                    Modifier modifierAddContextMenuComponents16 = addContextMenuComponents(OnGloballyPositionedModifierKt.onGloballyPositioned(TextFieldScrollKt.textFieldScrollable(modifierThen16, textFieldScrollerPosition111, mutableInteractionSource16, z25, overscrollEffectRememberTextFieldOverscrollEffect16).then(modifierTextFieldPointer16).then(coreTextFieldSemanticsModifier16), new nl3() { // from class: r12
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return CoreTextFieldKt.CoreTextField$lambda$21(legacyTextFieldState4, (LayoutCoordinates) obj);
                        }
                    }), textFieldSelectionManager6, y22Var18);
                    if (z25) {
                        i48 = 1;
                    }
                    if (i48 != 0) {
                        modifierTextFieldMagnifier = TextFieldSelectionManager_androidKt.textFieldMagnifier(companion2, textFieldSelectionManager6);
                    } else {
                        modifierTextFieldMagnifier = companion2;
                    }
                    final Modifier modifier1116 = modifierTextFieldMagnifier;
                    final boolean z3111111111119 = z10;
                    final dm3 dm3Var18 = lambda$559628295$foundation;
                    final int i51112 = i39;
                    final boolean z415 = i48;
                    CoreTextFieldRootBox(modifierAddContextMenuComponents16, textFieldSelectionManager6, ComposableLambdaKt.rememberComposableLambda(-814563849, true, new bm3() { // from class: s12
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return CoreTextFieldKt.CoreTextField$lambda$22(dm3Var18, legacyTextFieldState4, textStyle5, i51112, i47, textFieldScrollerPosition111, textFieldValue, visualTransformation11114, modifierTextFieldCursor16, modifierTextFieldDraw16, modifierOnGloballyPositioned16, modifier1116, bringIntoViewRequester17, textFieldSelectionManager6, z415, z3111111111119, nl3Var5, offsetMapping3, density, (Composer) obj, iIntValue);
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, RendererCapabilities.DECODER_SUPPORT_MASK);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    dm3Var2 = dm3Var18;
                    i37 = i51112;
                    composer2 = composerStartRestartGroup;
                    nl3Var4 = nl3Var5;
                    z7 = z3111111111119;
                    textFieldScrollerPosition2 = textFieldScrollerPosition3;
                    imeOptions2 = imeOptions8;
                    z6 = z25;
                    mutableInteractionSource2 = mutableInteractionSource16;
                    z5 = z13;
                    keyboardActions2 = keyboardActions17;
                    modifier3 = modifier1115;
                    i36 = i47;
                    visualTransformation2 = visualTransformation11114;
                    solidColor = brush3;
                    textStyle3 = textStyle5;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    z5 = z;
                    imeOptions2 = imeOptions;
                    keyboardActions2 = keyboardActions;
                    dm3Var2 = dm3Var;
                    textFieldScrollerPosition2 = textFieldScrollerPosition;
                    composer2 = composerStartRestartGroup;
                    textStyle3 = textStyle2;
                    nl3Var4 = nl3Var3;
                    visualTransformation2 = none;
                    modifier3 = modifier2;
                    i36 = i;
                    i37 = i2;
                    z6 = z2;
                    z7 = z3;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: t12
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return CoreTextFieldKt.CoreTextField$lambda$23(textFieldValue, nl3Var, modifier3, textStyle3, visualTransformation2, nl3Var4, mutableInteractionSource2, solidColor, z5, i36, i37, imeOptions2, keyboardActions2, z6, z7, dm3Var2, textFieldScrollerPosition2, i3, i4, i5, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i6 |= 805306368;
            i21 = i5 & 1024;
            if (i21 != 0) {
                i22 = i4 | 6;
            } else if ((i4 & 6) == 0) {
                if (composerStartRestartGroup.changed(i2)) {
                    i23 = 4;
                } else {
                    i23 = 2;
                }
                i22 = i4 | i23;
            } else {
                i22 = i4;
            }
            if ((i4 & 48) != 0) {
                i22 |= ((i5 & 2048) == 0 || !composerStartRestartGroup.changed(imeOptions)) ? 16 : 32;
            }
            i24 = i22;
            i25 = i5 & 4096;
            if (i25 != 0) {
                i26 = i24 | RendererCapabilities.DECODER_SUPPORT_MASK;
            } else if ((i4 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if (composerStartRestartGroup.changed(keyboardActions)) {
                    i27 = 256;
                } else {
                    i27 = 128;
                }
                i26 = i24 | i27;
            } else {
                i26 = i24;
            }
            i28 = i5 & 8192;
            if (i28 != 0) {
                i30 = i26 | 3072;
            } else {
                i29 = i26;
                if ((i4 & 3072) == 0) {
                    i30 = i29 | (composerStartRestartGroup.changed(z2) ? 2048 : 1024);
                } else {
                    i30 = i29;
                }
            }
            i31 = i5 & 16384;
            if (i31 != 0) {
                i33 = i30 | 24576;
            } else {
                i32 = i30;
                if ((i4 & 24576) == 0) {
                    i33 = i32 | (composerStartRestartGroup.changed(z3) ? 16384 : 8192);
                } else {
                    i33 = i32;
                }
            }
            i34 = i5 & 32768;
            if (i34 != 0) {
                i33 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i4 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                i33 |= composerStartRestartGroup.changedInstance(dm3Var) ? 131072 : 65536;
            }
            i35 = i5 & 65536;
            if (i35 != 0) {
                i33 |= 1572864;
            } else if ((i4 & 1572864) == 0) {
                i33 |= composerStartRestartGroup.changed(textFieldScrollerPosition) ? 1048576 : 524288;
            }
            if ((i6 & 306783379) == 306783378) {
                z4 = true;
            } else {
                z4 = true;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i6 & 1)) {
                composerStartRestartGroup.startDefaults();
                jh2Var = null;
                if ((i3 & 1) != 0) {
                    if (i50 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i7 != 0) {
                        textStyle4 = TextStyle.Companion.getDefault();
                    } else {
                        textStyle4 = textStyle2;
                    }
                    if (i9 != 0) {
                        none = VisualTransformation.Companion.getNone();
                    }
                    if (i11 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new p12(0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        nl3Var3 = (nl3) objRememberedValue;
                    }
                    if (i13 != 0) {
                        mutableInteractionSource2 = null;
                    }
                    if (i15 != 0) {
                        solidColor = new SolidColor(Color.Companion.m6268getUnspecified0d7_KjU(), jh2Var);
                    }
                    if (i17 != 0) {
                        z8 = true;
                    } else {
                        z8 = z;
                    }
                    if (i19 != 0) {
                        i38 = Integer.MAX_VALUE;
                    } else {
                        i38 = i;
                    }
                    if (i21 != 0) {
                        i39 = 1;
                    } else {
                        i39 = i2;
                    }
                    if ((i5 & 2048) != 0) {
                        imeOptions3 = ImeOptions.Companion.getDefault();
                        i33 &= -113;
                    } else {
                        imeOptions3 = imeOptions;
                    }
                    if (i25 != 0) {
                        keyboardActions3 = KeyboardActions.Companion.getDefault();
                    } else {
                        keyboardActions3 = keyboardActions;
                    }
                    if (i28 != 0) {
                        z9 = true;
                    } else {
                        z9 = z2;
                    }
                    if (i31 != 0) {
                        z10 = false;
                    } else {
                        z10 = z3;
                    }
                    if (i34 != 0) {
                        lambda$559628295$foundation = ComposableSingletons$CoreTextFieldKt.INSTANCE.getLambda$559628295$foundation();
                    } else {
                        lambda$559628295$foundation = dm3Var;
                    }
                    boolean z32114 = z8;
                    textStyle2 = textStyle4;
                    modifier4 = modifier2;
                    z11 = z9;
                    nl3Var5 = nl3Var3;
                    z12 = z32114;
                    VisualTransformation visualTransformation11115 = none;
                    imeOptions4 = imeOptions3;
                    brush2 = solidColor;
                    visualTransformation3 = visualTransformation11115;
                    i40 = i33;
                    if (i35 != 0) {
                        textFieldScrollerPosition3 = null;
                    } else {
                        textFieldScrollerPosition3 = textFieldScrollerPosition;
                    }
                } else {
                    if (i50 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i7 != 0) {
                        textStyle4 = TextStyle.Companion.getDefault();
                    } else {
                        textStyle4 = textStyle2;
                    }
                    if (i9 != 0) {
                        none = VisualTransformation.Companion.getNone();
                    }
                    if (i11 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new p12(0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        nl3Var3 = (nl3) objRememberedValue;
                    }
                    if (i13 != 0) {
                        mutableInteractionSource2 = null;
                    }
                    if (i15 != 0) {
                        solidColor = new SolidColor(Color.Companion.m6268getUnspecified0d7_KjU(), jh2Var);
                    }
                    if (i17 != 0) {
                        z8 = true;
                    } else {
                        z8 = z;
                    }
                    if (i19 != 0) {
                        i38 = Integer.MAX_VALUE;
                    } else {
                        i38 = i;
                    }
                    if (i21 != 0) {
                        i39 = 1;
                    } else {
                        i39 = i2;
                    }
                    if ((i5 & 2048) != 0) {
                        imeOptions3 = ImeOptions.Companion.getDefault();
                        i33 &= -113;
                    } else {
                        imeOptions3 = imeOptions;
                    }
                    if (i25 != 0) {
                        keyboardActions3 = KeyboardActions.Companion.getDefault();
                    } else {
                        keyboardActions3 = keyboardActions;
                    }
                    if (i28 != 0) {
                        z9 = true;
                    } else {
                        z9 = z2;
                    }
                    if (i31 != 0) {
                        z10 = false;
                    } else {
                        z10 = z3;
                    }
                    if (i34 != 0) {
                        lambda$559628295$foundation = ComposableSingletons$CoreTextFieldKt.INSTANCE.getLambda$559628295$foundation();
                    } else {
                        lambda$559628295$foundation = dm3Var;
                    }
                    boolean z32115 = z8;
                    textStyle2 = textStyle4;
                    modifier4 = modifier2;
                    z11 = z9;
                    nl3Var5 = nl3Var3;
                    z12 = z32115;
                    VisualTransformation visualTransformation11116 = none;
                    imeOptions4 = imeOptions3;
                    brush2 = solidColor;
                    visualTransformation3 = visualTransformation11116;
                    i40 = i33;
                    if (i35 != 0) {
                        textFieldScrollerPosition3 = null;
                    } else {
                        textFieldScrollerPosition3 = textFieldScrollerPosition;
                    }
                }
                composerStartRestartGroup.endDefaults();
                brush3 = brush2;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(31062401, i6, i40, "androidx.compose.foundation.text.CoreTextField (CoreTextField.kt:208)");
                }
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue2 == companion.getEmpty()) {
                    objRememberedValue2 = new FocusRequester();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                focusRequester = (FocusRequester) objRememberedValue2;
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                i41 = i6;
                if (objRememberedValue3 == companion.getEmpty()) {
                    objRememberedValue3 = LegacyPlatformTextInputServiceAdapter_androidKt.createLegacyPlatformTextInputServiceAdapter();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                legacyPlatformTextInputServiceAdapter = (LegacyPlatformTextInputServiceAdapter) objRememberedValue3;
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue4 == companion.getEmpty()) {
                    objRememberedValue4 = new TextInputService(legacyPlatformTextInputServiceAdapter);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                textInputService = (TextInputService) objRememberedValue4;
                density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                resolver = (FontFamily.Resolver) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalFontFamilyResolver());
                jM3048getBackgroundColor0d7_KjU = ((TextSelectionColors) composerStartRestartGroup.consume(TextSelectionColorsKt.getLocalTextSelectionColors())).m3048getBackgroundColor0d7_KjU();
                focusManager = (FocusManager) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalFocusManager());
                windowInfo = (WindowInfo) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalWindowInfo());
                textStyle5 = textStyle2;
                softwareKeyboardController = (SoftwareKeyboardController) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalSoftwareKeyboardController());
                z13 = z12;
                if (i38 == 1) {
                    orientation = Orientation.Vertical;
                } else {
                    orientation = Orientation.Vertical;
                }
                if (textFieldScrollerPosition3 == null) {
                    composerStartRestartGroup.startReplaceGroup(-213744626);
                    Object[] objArr15 = {orientation};
                    Saver<TextFieldScrollerPosition, Object> saver15 = TextFieldScrollerPosition.Companion.getSaver();
                    zChanged3 = composerStartRestartGroup.changed(orientation.ordinal());
                    objRememberedValue18 = composerStartRestartGroup.rememberedValue();
                    if (zChanged3) {
                        i49 = 0;
                        objRememberedValue18 = new u12(orientation, i49);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue18);
                    } else {
                        i49 = 0;
                        objRememberedValue18 = new u12(orientation, i49);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue18);
                    }
                    textFieldScrollerPosition4 = (TextFieldScrollerPosition) RememberSaveableKt.m5624rememberSaveable(objArr15, (Saver) saver15, (ll3) objRememberedValue18, composerStartRestartGroup, i49);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-213745742);
                    composerStartRestartGroup.endReplaceGroup();
                    textFieldScrollerPosition4 = textFieldScrollerPosition3;
                }
                if (textFieldScrollerPosition4.getOrientation() != orientation) {
                    if (orientation == Orientation.Vertical) {
                        str = "only single-line, non-wrap text fields can scroll horizontally";
                    } else {
                        str = "single-line, non-wrap text fields can only scroll horizontally";
                    }
                    throw new IllegalArgumentException("Mismatching scroller orientation; ".concat(str));
                }
                i42 = i41 & 14;
                if (i42 == 4) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                if ((i41 & 57344) == 16384) {
                    z15 = true;
                } else {
                    z15 = false;
                }
                z16 = z14 | z15;
                objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                if (z16) {
                    transformedTextFilterWithValidation = ValidatingOffsetMappingKt.filterWithValidation(visualTransformation3, textFieldValue.getAnnotatedString());
                    textRangeM8740getCompositionMzsxiRA = textFieldValue.m8740getCompositionMzsxiRA();
                    if (textRangeM8740getCompositionMzsxiRA != null) {
                        textFieldScrollerPosition5 = textFieldScrollerPosition4;
                        transformedTextM2604applyCompositionDecoration72CqOWE = TextFieldDelegate.Companion.m2604applyCompositionDecoration72CqOWE(textRangeM8740getCompositionMzsxiRA.m8495unboximpl(), transformedTextFilterWithValidation);
                        if (transformedTextM2604applyCompositionDecoration72CqOWE != null) {
                            objRememberedValue5 = transformedTextM2604applyCompositionDecoration72CqOWE;
                        }
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    } else {
                        textFieldScrollerPosition5 = textFieldScrollerPosition4;
                    }
                    objRememberedValue5 = transformedTextFilterWithValidation;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                } else {
                    transformedTextFilterWithValidation = ValidatingOffsetMappingKt.filterWithValidation(visualTransformation3, textFieldValue.getAnnotatedString());
                    textRangeM8740getCompositionMzsxiRA = textFieldValue.m8740getCompositionMzsxiRA();
                    if (textRangeM8740getCompositionMzsxiRA != null) {
                        textFieldScrollerPosition5 = textFieldScrollerPosition4;
                        transformedTextM2604applyCompositionDecoration72CqOWE = TextFieldDelegate.Companion.m2604applyCompositionDecoration72CqOWE(textRangeM8740getCompositionMzsxiRA.m8495unboximpl(), transformedTextFilterWithValidation);
                        if (transformedTextM2604applyCompositionDecoration72CqOWE != null) {
                            objRememberedValue5 = transformedTextM2604applyCompositionDecoration72CqOWE;
                        }
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    } else {
                        textFieldScrollerPosition5 = textFieldScrollerPosition4;
                    }
                    objRememberedValue5 = transformedTextFilterWithValidation;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                }
                TransformedText transformedText15 = (TransformedText) objRememberedValue5;
                text = transformedText15.getText();
                offsetMapping = transformedText15.getOffsetMapping();
                currentRecomposeScope = ComposablesKt.getCurrentRecomposeScope(composerStartRestartGroup, 0);
                zChanged = composerStartRestartGroup.changed(softwareKeyboardController);
                objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue6 = new LegacyTextFieldState(new TextDelegate(text, textStyle5, 0, 0, z13, 0, density, resolver, null, 300, null), currentRecomposeScope, softwareKeyboardController);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                } else {
                    objRememberedValue6 = new LegacyTextFieldState(new TextDelegate(text, textStyle5, 0, 0, z13, 0, density, resolver, null, 300, null), currentRecomposeScope, softwareKeyboardController);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                }
                legacyTextFieldState = (LegacyTextFieldState) objRememberedValue6;
                KeyboardActions keyboardActions18 = keyboardActions3;
                legacyTextFieldState.m2569updatefnh65Uc(textFieldValue.getAnnotatedString(), text, textStyle5, z13, r55, resolver, nl3Var, keyboardActions18, focusManager, jM3048getBackgroundColor0d7_KjU);
                legacyTextFieldState.getProcessor().reset(textFieldValue, legacyTextFieldState.getInputSession());
                objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue7 == companion.getEmpty()) {
                    objRememberedValue7 = new UndoManager(0, 1, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                }
                undoManager = (UndoManager) objRememberedValue7;
                UndoManager.snapshotIfNeeded$default(undoManager, textFieldValue, 0L, 2, null);
                objRememberedValue8 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue8 == companion.getEmpty()) {
                    objRememberedValue8 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
                }
                y22Var = (y22) objRememberedValue8;
                objRememberedValue9 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue9 == companion.getEmpty()) {
                    objRememberedValue9 = BringIntoViewRequesterKt.BringIntoViewRequester();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue9);
                }
                bringIntoViewRequester = (BringIntoViewRequester) objRememberedValue9;
                objRememberedValue10 = composerStartRestartGroup.rememberedValue();
                MutableInteractionSource mutableInteractionSource17 = mutableInteractionSource2;
                if (objRememberedValue10 == companion.getEmpty()) {
                    objRememberedValue10 = new TextFieldSelectionManager(undoManager);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue10);
                }
                textFieldSelectionManager = (TextFieldSelectionManager) objRememberedValue10;
                textFieldSelectionManager.setOffsetMapping$foundation(offsetMapping);
                textFieldSelectionManager.setVisualTransformation$foundation(visualTransformation3);
                textFieldSelectionManager.setOnValueChange$foundation(legacyTextFieldState.getOnValueChange());
                textFieldSelectionManager.setState$foundation(legacyTextFieldState);
                textFieldSelectionManager.setValue$foundation(textFieldValue);
                textFieldSelectionManager.setClipboard$foundation((Clipboard) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalClipboard()));
                textFieldSelectionManager.setCoroutineScope$foundation(y22Var);
                textFieldSelectionManager.setTextToolbar((TextToolbar) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalTextToolbar()));
                textFieldSelectionManager.setHapticFeedBack((HapticFeedback) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalHapticFeedback()));
                textFieldSelectionManager.setFocusRequester(focusRequester);
                boolean z31111111111110 = !z10;
                textFieldSelectionManager.setEditable(z31111111111110);
                textFieldSelectionManager.setEnabled(z11);
                if (ComposeFoundationFlags.isSmartSelectionEnabled) {
                    composerStartRestartGroup.startReplaceGroup(1966756105);
                    textFieldSelectionManager.setPlatformSelectionBehaviors$foundation(PlatformSelectionBehaviors_androidKt.rememberPlatformSelectionBehaviors(SelectedTextType.EditableText, textStyle5.getLocaleList(), composerStartRestartGroup, 6));
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(1966902177);
                    composerStartRestartGroup.endReplaceGroup();
                }
                legacyTextFieldState.getHasFocus();
                companion2 = Modifier.Companion;
                boolean zChangedInstance1111115 = composerStartRestartGroup.changedInstance(legacyTextFieldState);
                i43 = i40 & 7168;
                i44 = i40;
                if (i43 == 2048) {
                    z17 = true;
                } else {
                    z17 = false;
                }
                boolean z31111111111111 = z17 | zChangedInstance1111115;
                if ((i44 & 57344) == 16384) {
                    z18 = true;
                } else {
                    z18 = false;
                }
                boolean zChangedInstance1111116 = z31111111111111 | z18 | composerStartRestartGroup.changedInstance(textInputService);
                if (i42 == 4) {
                    z19 = true;
                } else {
                    z19 = false;
                }
                boolean z31111111111112 = zChangedInstance1111116 | z19;
                i45 = (i44 & 112) ^ 48;
                if (i45 > 32) {
                    textInputService2 = textInputService;
                    if ((i44 & 48) != 32) {
                        z20 = true;
                    } else {
                        z20 = false;
                    }
                } else {
                    textInputService2 = textInputService;
                    if ((i44 & 48) != 32) {
                        z20 = true;
                    } else {
                        z20 = false;
                    }
                }
                zChangedInstance = z31111111111112 | z20 | composerStartRestartGroup.changedInstance(offsetMapping) | composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(bringIntoViewRequester) | composerStartRestartGroup.changedInstance(textFieldSelectionManager);
                objRememberedValue11 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance) {
                    offsetMapping2 = offsetMapping;
                    final ImeOptions imeOptions1111119 = imeOptions4;
                    final boolean z31111111111113 = z11;
                    final boolean z31111111111114 = z10;
                    objRememberedValue11 = new nl3() { // from class: v12
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z31111111111113, z31111111111114, textInputService2, textFieldValue, imeOptions1111119, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                        }
                    };
                    legacyTextFieldState2 = legacyTextFieldState;
                    z21 = z31111111111113;
                    textFieldValue2 = textFieldValue;
                    imeOptions5 = imeOptions1111119;
                    textFieldSelectionManager2 = textFieldSelectionManager;
                    y22Var2 = y22Var;
                    bringIntoViewRequester2 = bringIntoViewRequester;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                } else {
                    offsetMapping2 = offsetMapping;
                    final ImeOptions imeOptions11111110 = imeOptions4;
                    final boolean z31111111111115 = z11;
                    final boolean z31111111111116 = z10;
                    objRememberedValue11 = new nl3() { // from class: v12
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z31111111111115, z31111111111116, textInputService2, textFieldValue, imeOptions11111110, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                        }
                    };
                    legacyTextFieldState2 = legacyTextFieldState;
                    z21 = z31111111111115;
                    textFieldValue2 = textFieldValue;
                    imeOptions5 = imeOptions11111110;
                    textFieldSelectionManager2 = textFieldSelectionManager;
                    y22Var2 = y22Var;
                    bringIntoViewRequester2 = bringIntoViewRequester;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                }
                final BringIntoViewRequester bringIntoViewRequester18 = bringIntoViewRequester2;
                Modifier modifierTextFieldFocusModifier16 = TextFieldGestureModifiersKt.textFieldFocusModifier(companion2, z21, focusRequester, mutableInteractionSource17, (nl3) objRememberedValue11);
                if (z21) {
                    z22 = false;
                } else {
                    z22 = false;
                }
                stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Boolean.valueOf(z22), composerStartRestartGroup, 0);
                j59 j59Var16 = j59.a;
                boolean zChanged1115 = composerStartRestartGroup.changed(stateRememberUpdatedState) | composerStartRestartGroup.changedInstance(legacyTextFieldState2) | composerStartRestartGroup.changedInstance(textInputService2) | composerStartRestartGroup.changedInstance(textFieldSelectionManager2);
                if (i45 > 32) {
                    imeOptions6 = imeOptions5;
                    if ((i44 & 48) != 32) {
                        z23 = true;
                    } else {
                        z23 = false;
                    }
                } else {
                    imeOptions6 = imeOptions5;
                    if ((i44 & 48) != 32) {
                        z23 = true;
                    } else {
                        z23 = false;
                    }
                }
                z24 = zChanged1115 | z23;
                objRememberedValue12 = composerStartRestartGroup.rememberedValue();
                if (z24) {
                    ImeOptions imeOptions11111111 = imeOptions6;
                    TextInputService textInputService1114 = textInputService2;
                    TextFieldSelectionManager textFieldSelectionManager1118 = textFieldSelectionManager2;
                    LegacyTextFieldState legacyTextFieldState1117 = legacyTextFieldState2;
                    objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState1117, stateRememberUpdatedState, textInputService1114, textFieldSelectionManager1118, imeOptions11111111, null);
                    legacyTextFieldState3 = legacyTextFieldState1117;
                    textFieldSelectionManager3 = textFieldSelectionManager1118;
                    imeOptions7 = imeOptions11111111;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                } else {
                    ImeOptions imeOptions11111112 = imeOptions6;
                    TextInputService textInputService1115 = textInputService2;
                    TextFieldSelectionManager textFieldSelectionManager1119 = textFieldSelectionManager2;
                    LegacyTextFieldState legacyTextFieldState1118 = legacyTextFieldState2;
                    objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState1118, stateRememberUpdatedState, textInputService1115, textFieldSelectionManager1119, imeOptions11111112, null);
                    legacyTextFieldState3 = legacyTextFieldState1118;
                    textFieldSelectionManager3 = textFieldSelectionManager1119;
                    imeOptions7 = imeOptions11111112;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                }
                imeOptions8 = imeOptions7;
                EffectsKt.LaunchedEffect(j59Var16, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue12, composerStartRestartGroup, 6);
                int i51113 = i44 >> 3;
                z25 = z21;
                legacyTextFieldState4 = legacyTextFieldState3;
                textFieldSelectionManager4 = textFieldSelectionManager3;
                Modifier modifierTextFieldPointer17 = TextFieldPointerModifier_androidKt.textFieldPointer(companion2, textFieldSelectionManager4, z25, mutableInteractionSource17, legacyTextFieldState4, focusRequester, z10, offsetMapping2, composerStartRestartGroup, (i51113 & 896) | 196614 | ((i41 >> 9) & 7168) | ((i44 << 6) & 3670016));
                offsetMapping3 = offsetMapping2;
                final Modifier modifierTextFieldDraw17 = CoreTextField_androidKt.textFieldDraw(companion2, legacyTextFieldState4, textFieldValue2, offsetMapping3);
                boolean zChangedInstance1111117 = composerStartRestartGroup.changedInstance(legacyTextFieldState4);
                if (i43 == 2048) {
                    z26 = true;
                } else {
                    z26 = false;
                }
                boolean zChanged1116 = zChangedInstance1111117 | z26 | composerStartRestartGroup.changed(windowInfo) | composerStartRestartGroup.changedInstance(textFieldSelectionManager4);
                if (i42 == 4) {
                    z27 = true;
                } else {
                    z27 = false;
                }
                zChangedInstance2 = zChanged1116 | z27 | composerStartRestartGroup.changedInstance(offsetMapping3);
                objRememberedValue13 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance2) {
                    objRememberedValue13 = new nl3() { // from class: w12
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                        }
                    };
                    textFieldSelectionManager5 = textFieldSelectionManager4;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                } else {
                    objRememberedValue13 = new nl3() { // from class: w12
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                        }
                    };
                    textFieldSelectionManager5 = textFieldSelectionManager4;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                }
                final Modifier modifierOnGloballyPositioned17 = OnGloballyPositionedModifierKt.onGloballyPositioned(companion2, (nl3) objRememberedValue13);
                textFieldSelectionManager6 = textFieldSelectionManager5;
                CoreTextFieldSemanticsModifier coreTextFieldSemanticsModifier17 = new CoreTextFieldSemanticsModifier(transformedText15, textFieldValue, legacyTextFieldState4, z10, z25, visualTransformation3 instanceof PasswordVisualTransformation, offsetMapping3, textFieldSelectionManager6, imeOptions8, focusRequester);
                final VisualTransformation visualTransformation11117 = visualTransformation3;
                if (z25 != 0) {
                    z28 = false;
                } else {
                    z28 = false;
                }
                final Modifier modifierTextFieldCursor17 = CoreTextField_androidKt.textFieldCursor(companion2, legacyTextFieldState4, textFieldValue, offsetMapping3, brush3, z28);
                zChangedInstance3 = composerStartRestartGroup.changedInstance(textFieldSelectionManager6);
                objRememberedValue14 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance3) {
                    i46 = 0;
                    objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                } else {
                    i46 = 0;
                    objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                }
                EffectsKt.DisposableEffect(textFieldSelectionManager6, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue14, composerStartRestartGroup, i46);
                boolean zChangedInstance1111118 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changedInstance(textInputService2);
                if (i42 == 4) {
                    z29 = true;
                } else {
                    z29 = false;
                }
                z30 = z29 | zChangedInstance1111118 | ((i45 <= 32 && composerStartRestartGroup.changed(imeOptions8)) || (i44 & 48) == 32);
                objRememberedValue15 = composerStartRestartGroup.rememberedValue();
                if (z30) {
                    objRememberedValue15 = new nl3() { // from class: h12
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                } else {
                    objRememberedValue15 = new nl3() { // from class: h12
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                }
                EffectsKt.DisposableEffect(imeOptions8, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue15, composerStartRestartGroup, i51113 & 14);
                nl3<TextFieldValue, j59> onValueChange17 = legacyTextFieldState4.getOnValueChange();
                i47 = i38;
                if (i47 == 1) {
                    z31 = true;
                } else {
                    z31 = false;
                }
                Modifier modifierM2614textFieldKeyInput2WJ9YEU17 = TextFieldKeyInputKt.m2614textFieldKeyInput2WJ9YEU(companion2, legacyTextFieldState4, textFieldSelectionManager6, textFieldValue, onValueChange17, z31111111111110, z31, offsetMapping3, undoManager, imeOptions8.m8688getImeActioneUduSuo());
                iM8689getKeyboardTypePjHm6EE = imeOptions8.m8689getKeyboardTypePjHm6EE();
                companion3 = KeyboardType.Companion;
                if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion3.m8731getPasswordPjHm6EE())) {
                    z32 = false;
                } else {
                    z32 = false;
                }
                boolean zCoreTextField$lambda$1110 = CoreTextField$lambda$14(stateRememberUpdatedState);
                zChanged2 = composerStartRestartGroup.changed(z32) | composerStartRestartGroup.changedInstance(legacyPlatformTextInputServiceAdapter);
                objRememberedValue16 = composerStartRestartGroup.rememberedValue();
                if (zChanged2) {
                    objRememberedValue16 = new ll3() { // from class: i12
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                } else {
                    objRememberedValue16 = new ll3() { // from class: i12
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                }
                Modifier modifierStylusHandwriting17 = StylusHandwritingKt.stylusHandwriting(companion2, zCoreTextField$lambda$1110, z32, (ll3) objRememberedValue16);
                y22 y22Var19 = y22Var2;
                brushM2447resolveAutofillHighlightWkMShQ = AutofillHighlightKt.m2447resolveAutofillHighlightWkMShQ((Brush) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightBrush()), ((Color) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightColor())).m6242unboximpl(), AutofillHighlight_androidKt.autofillHighlightColor());
                zChangedInstance4 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changed(brushM2447resolveAutofillHighlightWkMShQ);
                objRememberedValue17 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance4) {
                    i48 = 0;
                    objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                } else {
                    i48 = 0;
                    objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                }
                Modifier modifierDrawWithContent17 = DrawModifierKt.drawWithContent(companion2, (nl3) objRememberedValue17);
                OverscrollEffect overscrollEffectRememberTextFieldOverscrollEffect17 = TextFieldScroll_androidKt.rememberTextFieldOverscrollEffect(composerStartRestartGroup, i48);
                Modifier modifier1117 = modifier4;
                Modifier modifierThen17 = previewKeyEventToDeselectOnBack(TextFieldFocusModifier_androidKt.interceptDPadAndMoveFocus(LegacyAdaptingPlatformTextInputModifierNodeKt.legacyTextInputAdapter(modifier1117.then(modifierDrawWithContent17), legacyPlatformTextInputServiceAdapter, legacyTextFieldState4, textFieldSelectionManager6).then(modifierStylusHandwriting17).then(modifierTextFieldFocusModifier16), legacyTextFieldState4, focusManager), legacyTextFieldState4, textFieldSelectionManager6).then(modifierM2614textFieldKeyInput2WJ9YEU17);
                final TextFieldScrollerPosition textFieldScrollerPosition112 = textFieldScrollerPosition5;
                Modifier modifierAddContextMenuComponents17 = addContextMenuComponents(OnGloballyPositionedModifierKt.onGloballyPositioned(TextFieldScrollKt.textFieldScrollable(modifierThen17, textFieldScrollerPosition112, mutableInteractionSource17, z25, overscrollEffectRememberTextFieldOverscrollEffect17).then(modifierTextFieldPointer17).then(coreTextFieldSemanticsModifier17), new nl3() { // from class: r12
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return CoreTextFieldKt.CoreTextField$lambda$21(legacyTextFieldState4, (LayoutCoordinates) obj);
                    }
                }), textFieldSelectionManager6, y22Var19);
                if (z25) {
                    i48 = 1;
                }
                if (i48 != 0) {
                    modifierTextFieldMagnifier = TextFieldSelectionManager_androidKt.textFieldMagnifier(companion2, textFieldSelectionManager6);
                } else {
                    modifierTextFieldMagnifier = companion2;
                }
                final Modifier modifier1118 = modifierTextFieldMagnifier;
                final boolean z31111111111117 = z10;
                final dm3 dm3Var19 = lambda$559628295$foundation;
                final int i51114 = i39;
                final boolean z416 = i48;
                CoreTextFieldRootBox(modifierAddContextMenuComponents17, textFieldSelectionManager6, ComposableLambdaKt.rememberComposableLambda(-814563849, true, new bm3() { // from class: s12
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return CoreTextFieldKt.CoreTextField$lambda$22(dm3Var19, legacyTextFieldState4, textStyle5, i51114, i47, textFieldScrollerPosition112, textFieldValue, visualTransformation11117, modifierTextFieldCursor17, modifierTextFieldDraw17, modifierOnGloballyPositioned17, modifier1118, bringIntoViewRequester18, textFieldSelectionManager6, z416, z31111111111117, nl3Var5, offsetMapping3, density, (Composer) obj, iIntValue);
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, RendererCapabilities.DECODER_SUPPORT_MASK);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                dm3Var2 = dm3Var19;
                i37 = i51114;
                composer2 = composerStartRestartGroup;
                nl3Var4 = nl3Var5;
                z7 = z31111111111117;
                textFieldScrollerPosition2 = textFieldScrollerPosition3;
                imeOptions2 = imeOptions8;
                z6 = z25;
                mutableInteractionSource2 = mutableInteractionSource17;
                z5 = z13;
                keyboardActions2 = keyboardActions18;
                modifier3 = modifier1117;
                i36 = i47;
                visualTransformation2 = visualTransformation11117;
                solidColor = brush3;
                textStyle3 = textStyle5;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                z5 = z;
                imeOptions2 = imeOptions;
                keyboardActions2 = keyboardActions;
                dm3Var2 = dm3Var;
                textFieldScrollerPosition2 = textFieldScrollerPosition;
                composer2 = composerStartRestartGroup;
                textStyle3 = textStyle2;
                nl3Var4 = nl3Var3;
                visualTransformation2 = none;
                modifier3 = modifier2;
                i36 = i;
                i37 = i2;
                z6 = z2;
                z7 = z3;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: t12
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return CoreTextFieldKt.CoreTextField$lambda$23(textFieldValue, nl3Var, modifier3, textStyle3, visualTransformation2, nl3Var4, mutableInteractionSource2, solidColor, z5, i36, i37, imeOptions2, keyboardActions2, z6, z7, dm3Var2, textFieldScrollerPosition2, i3, i4, i5, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i6 |= 24576;
        none = visualTransformation;
        i11 = i5 & 32;
        if (i11 != 0) {
            i6 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            nl3Var3 = nl3Var2;
        } else {
            nl3Var3 = nl3Var2;
            if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var3)) {
                    i12 = 131072;
                } else {
                    i12 = 65536;
                }
                i6 |= i12;
            }
        }
        i13 = i5 & 64;
        if (i13 != 0) {
            i6 |= 1572864;
            mutableInteractionSource2 = mutableInteractionSource;
        } else {
            mutableInteractionSource2 = mutableInteractionSource;
            if ((i3 & 1572864) == 0) {
                if (composerStartRestartGroup.changed(mutableInteractionSource2)) {
                    i14 = 1048576;
                } else {
                    i14 = 524288;
                }
                i6 |= i14;
            }
        }
        i15 = i5 & 128;
        if (i15 != 0) {
            i6 |= 12582912;
            solidColor = brush;
        } else {
            solidColor = brush;
            if ((i3 & 12582912) == 0) {
                if (composerStartRestartGroup.changed(solidColor)) {
                    i16 = 8388608;
                } else {
                    i16 = 4194304;
                }
                i6 |= i16;
            }
        }
        i17 = i5 & 256;
        if (i17 != 0) {
            i6 |= 100663296;
        } else if ((i3 & 100663296) == 0) {
            if (composerStartRestartGroup.changed(z)) {
                i18 = 67108864;
            } else {
                i18 = GroupFlagsKt.HasAuxSlotFlag;
            }
            i6 |= i18;
        }
        i19 = i5 & 512;
        if (i19 != 0) {
            if ((i3 & 805306368) == 0) {
                if (composerStartRestartGroup.changed(i)) {
                    i20 = 536870912;
                } else {
                    i20 = 268435456;
                }
                i6 |= i20;
            }
            i21 = i5 & 1024;
            if (i21 != 0) {
                i22 = i4 | 6;
            } else if ((i4 & 6) == 0) {
                if (composerStartRestartGroup.changed(i2)) {
                    i23 = 4;
                } else {
                    i23 = 2;
                }
                i22 = i4 | i23;
            } else {
                i22 = i4;
            }
            if ((i4 & 48) != 0) {
                i22 |= ((i5 & 2048) == 0 || !composerStartRestartGroup.changed(imeOptions)) ? 16 : 32;
            }
            i24 = i22;
            i25 = i5 & 4096;
            if (i25 != 0) {
                i26 = i24 | RendererCapabilities.DECODER_SUPPORT_MASK;
            } else if ((i4 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if (composerStartRestartGroup.changed(keyboardActions)) {
                    i27 = 256;
                } else {
                    i27 = 128;
                }
                i26 = i24 | i27;
            } else {
                i26 = i24;
            }
            i28 = i5 & 8192;
            if (i28 != 0) {
                i30 = i26 | 3072;
            } else {
                i29 = i26;
                if ((i4 & 3072) == 0) {
                    i30 = i29 | (composerStartRestartGroup.changed(z2) ? 2048 : 1024);
                } else {
                    i30 = i29;
                }
            }
            i31 = i5 & 16384;
            if (i31 != 0) {
                i33 = i30 | 24576;
            } else {
                i32 = i30;
                if ((i4 & 24576) == 0) {
                    i33 = i32 | (composerStartRestartGroup.changed(z3) ? 16384 : 8192);
                } else {
                    i33 = i32;
                }
            }
            i34 = i5 & 32768;
            if (i34 != 0) {
                i33 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i4 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                i33 |= composerStartRestartGroup.changedInstance(dm3Var) ? 131072 : 65536;
            }
            i35 = i5 & 65536;
            if (i35 != 0) {
                i33 |= 1572864;
            } else if ((i4 & 1572864) == 0) {
                i33 |= composerStartRestartGroup.changed(textFieldScrollerPosition) ? 1048576 : 524288;
            }
            if ((i6 & 306783379) == 306783378) {
                z4 = true;
            } else {
                z4 = true;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i6 & 1)) {
                composerStartRestartGroup.startDefaults();
                jh2Var = null;
                if ((i3 & 1) != 0) {
                    if (i50 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i7 != 0) {
                        textStyle4 = TextStyle.Companion.getDefault();
                    } else {
                        textStyle4 = textStyle2;
                    }
                    if (i9 != 0) {
                        none = VisualTransformation.Companion.getNone();
                    }
                    if (i11 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new p12(0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        nl3Var3 = (nl3) objRememberedValue;
                    }
                    if (i13 != 0) {
                        mutableInteractionSource2 = null;
                    }
                    if (i15 != 0) {
                        solidColor = new SolidColor(Color.Companion.m6268getUnspecified0d7_KjU(), jh2Var);
                    }
                    if (i17 != 0) {
                        z8 = true;
                    } else {
                        z8 = z;
                    }
                    if (i19 != 0) {
                        i38 = Integer.MAX_VALUE;
                    } else {
                        i38 = i;
                    }
                    if (i21 != 0) {
                        i39 = 1;
                    } else {
                        i39 = i2;
                    }
                    if ((i5 & 2048) != 0) {
                        imeOptions3 = ImeOptions.Companion.getDefault();
                        i33 &= -113;
                    } else {
                        imeOptions3 = imeOptions;
                    }
                    if (i25 != 0) {
                        keyboardActions3 = KeyboardActions.Companion.getDefault();
                    } else {
                        keyboardActions3 = keyboardActions;
                    }
                    if (i28 != 0) {
                        z9 = true;
                    } else {
                        z9 = z2;
                    }
                    if (i31 != 0) {
                        z10 = false;
                    } else {
                        z10 = z3;
                    }
                    if (i34 != 0) {
                        lambda$559628295$foundation = ComposableSingletons$CoreTextFieldKt.INSTANCE.getLambda$559628295$foundation();
                    } else {
                        lambda$559628295$foundation = dm3Var;
                    }
                    boolean z32116 = z8;
                    textStyle2 = textStyle4;
                    modifier4 = modifier2;
                    z11 = z9;
                    nl3Var5 = nl3Var3;
                    z12 = z32116;
                    VisualTransformation visualTransformation11118 = none;
                    imeOptions4 = imeOptions3;
                    brush2 = solidColor;
                    visualTransformation3 = visualTransformation11118;
                    i40 = i33;
                    if (i35 != 0) {
                        textFieldScrollerPosition3 = null;
                    } else {
                        textFieldScrollerPosition3 = textFieldScrollerPosition;
                    }
                } else {
                    if (i50 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i7 != 0) {
                        textStyle4 = TextStyle.Companion.getDefault();
                    } else {
                        textStyle4 = textStyle2;
                    }
                    if (i9 != 0) {
                        none = VisualTransformation.Companion.getNone();
                    }
                    if (i11 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new p12(0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        nl3Var3 = (nl3) objRememberedValue;
                    }
                    if (i13 != 0) {
                        mutableInteractionSource2 = null;
                    }
                    if (i15 != 0) {
                        solidColor = new SolidColor(Color.Companion.m6268getUnspecified0d7_KjU(), jh2Var);
                    }
                    if (i17 != 0) {
                        z8 = true;
                    } else {
                        z8 = z;
                    }
                    if (i19 != 0) {
                        i38 = Integer.MAX_VALUE;
                    } else {
                        i38 = i;
                    }
                    if (i21 != 0) {
                        i39 = 1;
                    } else {
                        i39 = i2;
                    }
                    if ((i5 & 2048) != 0) {
                        imeOptions3 = ImeOptions.Companion.getDefault();
                        i33 &= -113;
                    } else {
                        imeOptions3 = imeOptions;
                    }
                    if (i25 != 0) {
                        keyboardActions3 = KeyboardActions.Companion.getDefault();
                    } else {
                        keyboardActions3 = keyboardActions;
                    }
                    if (i28 != 0) {
                        z9 = true;
                    } else {
                        z9 = z2;
                    }
                    if (i31 != 0) {
                        z10 = false;
                    } else {
                        z10 = z3;
                    }
                    if (i34 != 0) {
                        lambda$559628295$foundation = ComposableSingletons$CoreTextFieldKt.INSTANCE.getLambda$559628295$foundation();
                    } else {
                        lambda$559628295$foundation = dm3Var;
                    }
                    boolean z32117 = z8;
                    textStyle2 = textStyle4;
                    modifier4 = modifier2;
                    z11 = z9;
                    nl3Var5 = nl3Var3;
                    z12 = z32117;
                    VisualTransformation visualTransformation11119 = none;
                    imeOptions4 = imeOptions3;
                    brush2 = solidColor;
                    visualTransformation3 = visualTransformation11119;
                    i40 = i33;
                    if (i35 != 0) {
                        textFieldScrollerPosition3 = null;
                    } else {
                        textFieldScrollerPosition3 = textFieldScrollerPosition;
                    }
                }
                composerStartRestartGroup.endDefaults();
                brush3 = brush2;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(31062401, i6, i40, "androidx.compose.foundation.text.CoreTextField (CoreTextField.kt:208)");
                }
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue2 == companion.getEmpty()) {
                    objRememberedValue2 = new FocusRequester();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                focusRequester = (FocusRequester) objRememberedValue2;
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                i41 = i6;
                if (objRememberedValue3 == companion.getEmpty()) {
                    objRememberedValue3 = LegacyPlatformTextInputServiceAdapter_androidKt.createLegacyPlatformTextInputServiceAdapter();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                legacyPlatformTextInputServiceAdapter = (LegacyPlatformTextInputServiceAdapter) objRememberedValue3;
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue4 == companion.getEmpty()) {
                    objRememberedValue4 = new TextInputService(legacyPlatformTextInputServiceAdapter);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                textInputService = (TextInputService) objRememberedValue4;
                density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                resolver = (FontFamily.Resolver) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalFontFamilyResolver());
                jM3048getBackgroundColor0d7_KjU = ((TextSelectionColors) composerStartRestartGroup.consume(TextSelectionColorsKt.getLocalTextSelectionColors())).m3048getBackgroundColor0d7_KjU();
                focusManager = (FocusManager) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalFocusManager());
                windowInfo = (WindowInfo) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalWindowInfo());
                textStyle5 = textStyle2;
                softwareKeyboardController = (SoftwareKeyboardController) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalSoftwareKeyboardController());
                z13 = z12;
                if (i38 == 1) {
                    orientation = Orientation.Vertical;
                } else {
                    orientation = Orientation.Vertical;
                }
                if (textFieldScrollerPosition3 == null) {
                    composerStartRestartGroup.startReplaceGroup(-213744626);
                    Object[] objArr16 = {orientation};
                    Saver<TextFieldScrollerPosition, Object> saver16 = TextFieldScrollerPosition.Companion.getSaver();
                    zChanged3 = composerStartRestartGroup.changed(orientation.ordinal());
                    objRememberedValue18 = composerStartRestartGroup.rememberedValue();
                    if (zChanged3) {
                        i49 = 0;
                        objRememberedValue18 = new u12(orientation, i49);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue18);
                    } else {
                        i49 = 0;
                        objRememberedValue18 = new u12(orientation, i49);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue18);
                    }
                    textFieldScrollerPosition4 = (TextFieldScrollerPosition) RememberSaveableKt.m5624rememberSaveable(objArr16, (Saver) saver16, (ll3) objRememberedValue18, composerStartRestartGroup, i49);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-213745742);
                    composerStartRestartGroup.endReplaceGroup();
                    textFieldScrollerPosition4 = textFieldScrollerPosition3;
                }
                if (textFieldScrollerPosition4.getOrientation() != orientation) {
                    if (orientation == Orientation.Vertical) {
                        str = "only single-line, non-wrap text fields can scroll horizontally";
                    } else {
                        str = "single-line, non-wrap text fields can only scroll horizontally";
                    }
                    throw new IllegalArgumentException("Mismatching scroller orientation; ".concat(str));
                }
                i42 = i41 & 14;
                if (i42 == 4) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                if ((i41 & 57344) == 16384) {
                    z15 = true;
                } else {
                    z15 = false;
                }
                z16 = z14 | z15;
                objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                if (z16) {
                    transformedTextFilterWithValidation = ValidatingOffsetMappingKt.filterWithValidation(visualTransformation3, textFieldValue.getAnnotatedString());
                    textRangeM8740getCompositionMzsxiRA = textFieldValue.m8740getCompositionMzsxiRA();
                    if (textRangeM8740getCompositionMzsxiRA != null) {
                        textFieldScrollerPosition5 = textFieldScrollerPosition4;
                        transformedTextM2604applyCompositionDecoration72CqOWE = TextFieldDelegate.Companion.m2604applyCompositionDecoration72CqOWE(textRangeM8740getCompositionMzsxiRA.m8495unboximpl(), transformedTextFilterWithValidation);
                        if (transformedTextM2604applyCompositionDecoration72CqOWE != null) {
                            objRememberedValue5 = transformedTextM2604applyCompositionDecoration72CqOWE;
                        }
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    } else {
                        textFieldScrollerPosition5 = textFieldScrollerPosition4;
                    }
                    objRememberedValue5 = transformedTextFilterWithValidation;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                } else {
                    transformedTextFilterWithValidation = ValidatingOffsetMappingKt.filterWithValidation(visualTransformation3, textFieldValue.getAnnotatedString());
                    textRangeM8740getCompositionMzsxiRA = textFieldValue.m8740getCompositionMzsxiRA();
                    if (textRangeM8740getCompositionMzsxiRA != null) {
                        textFieldScrollerPosition5 = textFieldScrollerPosition4;
                        transformedTextM2604applyCompositionDecoration72CqOWE = TextFieldDelegate.Companion.m2604applyCompositionDecoration72CqOWE(textRangeM8740getCompositionMzsxiRA.m8495unboximpl(), transformedTextFilterWithValidation);
                        if (transformedTextM2604applyCompositionDecoration72CqOWE != null) {
                            objRememberedValue5 = transformedTextM2604applyCompositionDecoration72CqOWE;
                        }
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    } else {
                        textFieldScrollerPosition5 = textFieldScrollerPosition4;
                    }
                    objRememberedValue5 = transformedTextFilterWithValidation;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                }
                TransformedText transformedText16 = (TransformedText) objRememberedValue5;
                text = transformedText16.getText();
                offsetMapping = transformedText16.getOffsetMapping();
                currentRecomposeScope = ComposablesKt.getCurrentRecomposeScope(composerStartRestartGroup, 0);
                zChanged = composerStartRestartGroup.changed(softwareKeyboardController);
                objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue6 = new LegacyTextFieldState(new TextDelegate(text, textStyle5, 0, 0, z13, 0, density, resolver, null, 300, null), currentRecomposeScope, softwareKeyboardController);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                } else {
                    objRememberedValue6 = new LegacyTextFieldState(new TextDelegate(text, textStyle5, 0, 0, z13, 0, density, resolver, null, 300, null), currentRecomposeScope, softwareKeyboardController);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                }
                legacyTextFieldState = (LegacyTextFieldState) objRememberedValue6;
                KeyboardActions keyboardActions19 = keyboardActions3;
                legacyTextFieldState.m2569updatefnh65Uc(textFieldValue.getAnnotatedString(), text, textStyle5, z13, r55, resolver, nl3Var, keyboardActions19, focusManager, jM3048getBackgroundColor0d7_KjU);
                legacyTextFieldState.getProcessor().reset(textFieldValue, legacyTextFieldState.getInputSession());
                objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue7 == companion.getEmpty()) {
                    objRememberedValue7 = new UndoManager(0, 1, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                }
                undoManager = (UndoManager) objRememberedValue7;
                UndoManager.snapshotIfNeeded$default(undoManager, textFieldValue, 0L, 2, null);
                objRememberedValue8 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue8 == companion.getEmpty()) {
                    objRememberedValue8 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
                }
                y22Var = (y22) objRememberedValue8;
                objRememberedValue9 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue9 == companion.getEmpty()) {
                    objRememberedValue9 = BringIntoViewRequesterKt.BringIntoViewRequester();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue9);
                }
                bringIntoViewRequester = (BringIntoViewRequester) objRememberedValue9;
                objRememberedValue10 = composerStartRestartGroup.rememberedValue();
                MutableInteractionSource mutableInteractionSource18 = mutableInteractionSource2;
                if (objRememberedValue10 == companion.getEmpty()) {
                    objRememberedValue10 = new TextFieldSelectionManager(undoManager);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue10);
                }
                textFieldSelectionManager = (TextFieldSelectionManager) objRememberedValue10;
                textFieldSelectionManager.setOffsetMapping$foundation(offsetMapping);
                textFieldSelectionManager.setVisualTransformation$foundation(visualTransformation3);
                textFieldSelectionManager.setOnValueChange$foundation(legacyTextFieldState.getOnValueChange());
                textFieldSelectionManager.setState$foundation(legacyTextFieldState);
                textFieldSelectionManager.setValue$foundation(textFieldValue);
                textFieldSelectionManager.setClipboard$foundation((Clipboard) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalClipboard()));
                textFieldSelectionManager.setCoroutineScope$foundation(y22Var);
                textFieldSelectionManager.setTextToolbar((TextToolbar) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalTextToolbar()));
                textFieldSelectionManager.setHapticFeedBack((HapticFeedback) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalHapticFeedback()));
                textFieldSelectionManager.setFocusRequester(focusRequester);
                boolean z31111111111118 = !z10;
                textFieldSelectionManager.setEditable(z31111111111118);
                textFieldSelectionManager.setEnabled(z11);
                if (ComposeFoundationFlags.isSmartSelectionEnabled) {
                    composerStartRestartGroup.startReplaceGroup(1966756105);
                    textFieldSelectionManager.setPlatformSelectionBehaviors$foundation(PlatformSelectionBehaviors_androidKt.rememberPlatformSelectionBehaviors(SelectedTextType.EditableText, textStyle5.getLocaleList(), composerStartRestartGroup, 6));
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(1966902177);
                    composerStartRestartGroup.endReplaceGroup();
                }
                legacyTextFieldState.getHasFocus();
                companion2 = Modifier.Companion;
                boolean zChangedInstance1111119 = composerStartRestartGroup.changedInstance(legacyTextFieldState);
                i43 = i40 & 7168;
                i44 = i40;
                if (i43 == 2048) {
                    z17 = true;
                } else {
                    z17 = false;
                }
                boolean z31111111111119 = z17 | zChangedInstance1111119;
                if ((i44 & 57344) == 16384) {
                    z18 = true;
                } else {
                    z18 = false;
                }
                boolean zChangedInstance11111110 = z31111111111119 | z18 | composerStartRestartGroup.changedInstance(textInputService);
                if (i42 == 4) {
                    z19 = true;
                } else {
                    z19 = false;
                }
                boolean z311111111111110 = zChangedInstance11111110 | z19;
                i45 = (i44 & 112) ^ 48;
                if (i45 > 32) {
                    textInputService2 = textInputService;
                    if ((i44 & 48) != 32) {
                        z20 = true;
                    } else {
                        z20 = false;
                    }
                } else {
                    textInputService2 = textInputService;
                    if ((i44 & 48) != 32) {
                        z20 = true;
                    } else {
                        z20 = false;
                    }
                }
                zChangedInstance = z311111111111110 | z20 | composerStartRestartGroup.changedInstance(offsetMapping) | composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(bringIntoViewRequester) | composerStartRestartGroup.changedInstance(textFieldSelectionManager);
                objRememberedValue11 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance) {
                    offsetMapping2 = offsetMapping;
                    final ImeOptions imeOptions11111113 = imeOptions4;
                    final boolean z311111111111111 = z11;
                    final boolean z311111111111112 = z10;
                    objRememberedValue11 = new nl3() { // from class: v12
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z311111111111111, z311111111111112, textInputService2, textFieldValue, imeOptions11111113, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                        }
                    };
                    legacyTextFieldState2 = legacyTextFieldState;
                    z21 = z311111111111111;
                    textFieldValue2 = textFieldValue;
                    imeOptions5 = imeOptions11111113;
                    textFieldSelectionManager2 = textFieldSelectionManager;
                    y22Var2 = y22Var;
                    bringIntoViewRequester2 = bringIntoViewRequester;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                } else {
                    offsetMapping2 = offsetMapping;
                    final ImeOptions imeOptions11111114 = imeOptions4;
                    final boolean z311111111111113 = z11;
                    final boolean z311111111111114 = z10;
                    objRememberedValue11 = new nl3() { // from class: v12
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z311111111111113, z311111111111114, textInputService2, textFieldValue, imeOptions11111114, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                        }
                    };
                    legacyTextFieldState2 = legacyTextFieldState;
                    z21 = z311111111111113;
                    textFieldValue2 = textFieldValue;
                    imeOptions5 = imeOptions11111114;
                    textFieldSelectionManager2 = textFieldSelectionManager;
                    y22Var2 = y22Var;
                    bringIntoViewRequester2 = bringIntoViewRequester;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                }
                final BringIntoViewRequester bringIntoViewRequester19 = bringIntoViewRequester2;
                Modifier modifierTextFieldFocusModifier17 = TextFieldGestureModifiersKt.textFieldFocusModifier(companion2, z21, focusRequester, mutableInteractionSource18, (nl3) objRememberedValue11);
                if (z21) {
                    z22 = false;
                } else {
                    z22 = false;
                }
                stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Boolean.valueOf(z22), composerStartRestartGroup, 0);
                j59 j59Var17 = j59.a;
                boolean zChanged1117 = composerStartRestartGroup.changed(stateRememberUpdatedState) | composerStartRestartGroup.changedInstance(legacyTextFieldState2) | composerStartRestartGroup.changedInstance(textInputService2) | composerStartRestartGroup.changedInstance(textFieldSelectionManager2);
                if (i45 > 32) {
                    imeOptions6 = imeOptions5;
                    if ((i44 & 48) != 32) {
                        z23 = true;
                    } else {
                        z23 = false;
                    }
                } else {
                    imeOptions6 = imeOptions5;
                    if ((i44 & 48) != 32) {
                        z23 = true;
                    } else {
                        z23 = false;
                    }
                }
                z24 = zChanged1117 | z23;
                objRememberedValue12 = composerStartRestartGroup.rememberedValue();
                if (z24) {
                    ImeOptions imeOptions11111115 = imeOptions6;
                    TextInputService textInputService1116 = textInputService2;
                    TextFieldSelectionManager textFieldSelectionManager11110 = textFieldSelectionManager2;
                    LegacyTextFieldState legacyTextFieldState1119 = legacyTextFieldState2;
                    objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState1119, stateRememberUpdatedState, textInputService1116, textFieldSelectionManager11110, imeOptions11111115, null);
                    legacyTextFieldState3 = legacyTextFieldState1119;
                    textFieldSelectionManager3 = textFieldSelectionManager11110;
                    imeOptions7 = imeOptions11111115;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                } else {
                    ImeOptions imeOptions11111116 = imeOptions6;
                    TextInputService textInputService1117 = textInputService2;
                    TextFieldSelectionManager textFieldSelectionManager11111 = textFieldSelectionManager2;
                    LegacyTextFieldState legacyTextFieldState11110 = legacyTextFieldState2;
                    objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState11110, stateRememberUpdatedState, textInputService1117, textFieldSelectionManager11111, imeOptions11111116, null);
                    legacyTextFieldState3 = legacyTextFieldState11110;
                    textFieldSelectionManager3 = textFieldSelectionManager11111;
                    imeOptions7 = imeOptions11111116;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
                }
                imeOptions8 = imeOptions7;
                EffectsKt.LaunchedEffect(j59Var17, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue12, composerStartRestartGroup, 6);
                int i51115 = i44 >> 3;
                z25 = z21;
                legacyTextFieldState4 = legacyTextFieldState3;
                textFieldSelectionManager4 = textFieldSelectionManager3;
                Modifier modifierTextFieldPointer18 = TextFieldPointerModifier_androidKt.textFieldPointer(companion2, textFieldSelectionManager4, z25, mutableInteractionSource18, legacyTextFieldState4, focusRequester, z10, offsetMapping2, composerStartRestartGroup, (i51115 & 896) | 196614 | ((i41 >> 9) & 7168) | ((i44 << 6) & 3670016));
                offsetMapping3 = offsetMapping2;
                final Modifier modifierTextFieldDraw18 = CoreTextField_androidKt.textFieldDraw(companion2, legacyTextFieldState4, textFieldValue2, offsetMapping3);
                boolean zChangedInstance11111111 = composerStartRestartGroup.changedInstance(legacyTextFieldState4);
                if (i43 == 2048) {
                    z26 = true;
                } else {
                    z26 = false;
                }
                boolean zChanged1118 = zChangedInstance11111111 | z26 | composerStartRestartGroup.changed(windowInfo) | composerStartRestartGroup.changedInstance(textFieldSelectionManager4);
                if (i42 == 4) {
                    z27 = true;
                } else {
                    z27 = false;
                }
                zChangedInstance2 = zChanged1118 | z27 | composerStartRestartGroup.changedInstance(offsetMapping3);
                objRememberedValue13 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance2) {
                    objRememberedValue13 = new nl3() { // from class: w12
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                        }
                    };
                    textFieldSelectionManager5 = textFieldSelectionManager4;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                } else {
                    objRememberedValue13 = new nl3() { // from class: w12
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                        }
                    };
                    textFieldSelectionManager5 = textFieldSelectionManager4;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
                }
                final Modifier modifierOnGloballyPositioned18 = OnGloballyPositionedModifierKt.onGloballyPositioned(companion2, (nl3) objRememberedValue13);
                textFieldSelectionManager6 = textFieldSelectionManager5;
                CoreTextFieldSemanticsModifier coreTextFieldSemanticsModifier18 = new CoreTextFieldSemanticsModifier(transformedText16, textFieldValue, legacyTextFieldState4, z10, z25, visualTransformation3 instanceof PasswordVisualTransformation, offsetMapping3, textFieldSelectionManager6, imeOptions8, focusRequester);
                final VisualTransformation visualTransformation111110 = visualTransformation3;
                if (z25 != 0) {
                    z28 = false;
                } else {
                    z28 = false;
                }
                final Modifier modifierTextFieldCursor18 = CoreTextField_androidKt.textFieldCursor(companion2, legacyTextFieldState4, textFieldValue, offsetMapping3, brush3, z28);
                zChangedInstance3 = composerStartRestartGroup.changedInstance(textFieldSelectionManager6);
                objRememberedValue14 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance3) {
                    i46 = 0;
                    objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                } else {
                    i46 = 0;
                    objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
                }
                EffectsKt.DisposableEffect(textFieldSelectionManager6, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue14, composerStartRestartGroup, i46);
                boolean zChangedInstance11111112 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changedInstance(textInputService2);
                if (i42 == 4) {
                    z29 = true;
                } else {
                    z29 = false;
                }
                z30 = z29 | zChangedInstance11111112 | ((i45 <= 32 && composerStartRestartGroup.changed(imeOptions8)) || (i44 & 48) == 32);
                objRememberedValue15 = composerStartRestartGroup.rememberedValue();
                if (z30) {
                    objRememberedValue15 = new nl3() { // from class: h12
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                } else {
                    objRememberedValue15 = new nl3() { // from class: h12
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
                }
                EffectsKt.DisposableEffect(imeOptions8, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue15, composerStartRestartGroup, i51115 & 14);
                nl3<TextFieldValue, j59> onValueChange18 = legacyTextFieldState4.getOnValueChange();
                i47 = i38;
                if (i47 == 1) {
                    z31 = true;
                } else {
                    z31 = false;
                }
                Modifier modifierM2614textFieldKeyInput2WJ9YEU18 = TextFieldKeyInputKt.m2614textFieldKeyInput2WJ9YEU(companion2, legacyTextFieldState4, textFieldSelectionManager6, textFieldValue, onValueChange18, z31111111111118, z31, offsetMapping3, undoManager, imeOptions8.m8688getImeActioneUduSuo());
                iM8689getKeyboardTypePjHm6EE = imeOptions8.m8689getKeyboardTypePjHm6EE();
                companion3 = KeyboardType.Companion;
                if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion3.m8731getPasswordPjHm6EE())) {
                    z32 = false;
                } else {
                    z32 = false;
                }
                boolean zCoreTextField$lambda$1111 = CoreTextField$lambda$14(stateRememberUpdatedState);
                zChanged2 = composerStartRestartGroup.changed(z32) | composerStartRestartGroup.changedInstance(legacyPlatformTextInputServiceAdapter);
                objRememberedValue16 = composerStartRestartGroup.rememberedValue();
                if (zChanged2) {
                    objRememberedValue16 = new ll3() { // from class: i12
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                } else {
                    objRememberedValue16 = new ll3() { // from class: i12
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                }
                Modifier modifierStylusHandwriting18 = StylusHandwritingKt.stylusHandwriting(companion2, zCoreTextField$lambda$1111, z32, (ll3) objRememberedValue16);
                y22 y22Var110 = y22Var2;
                brushM2447resolveAutofillHighlightWkMShQ = AutofillHighlightKt.m2447resolveAutofillHighlightWkMShQ((Brush) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightBrush()), ((Color) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightColor())).m6242unboximpl(), AutofillHighlight_androidKt.autofillHighlightColor());
                zChangedInstance4 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changed(brushM2447resolveAutofillHighlightWkMShQ);
                objRememberedValue17 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance4) {
                    i48 = 0;
                    objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                } else {
                    i48 = 0;
                    objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
                }
                Modifier modifierDrawWithContent18 = DrawModifierKt.drawWithContent(companion2, (nl3) objRememberedValue17);
                OverscrollEffect overscrollEffectRememberTextFieldOverscrollEffect18 = TextFieldScroll_androidKt.rememberTextFieldOverscrollEffect(composerStartRestartGroup, i48);
                Modifier modifier1119 = modifier4;
                Modifier modifierThen18 = previewKeyEventToDeselectOnBack(TextFieldFocusModifier_androidKt.interceptDPadAndMoveFocus(LegacyAdaptingPlatformTextInputModifierNodeKt.legacyTextInputAdapter(modifier1119.then(modifierDrawWithContent18), legacyPlatformTextInputServiceAdapter, legacyTextFieldState4, textFieldSelectionManager6).then(modifierStylusHandwriting18).then(modifierTextFieldFocusModifier17), legacyTextFieldState4, focusManager), legacyTextFieldState4, textFieldSelectionManager6).then(modifierM2614textFieldKeyInput2WJ9YEU18);
                final TextFieldScrollerPosition textFieldScrollerPosition113 = textFieldScrollerPosition5;
                Modifier modifierAddContextMenuComponents18 = addContextMenuComponents(OnGloballyPositionedModifierKt.onGloballyPositioned(TextFieldScrollKt.textFieldScrollable(modifierThen18, textFieldScrollerPosition113, mutableInteractionSource18, z25, overscrollEffectRememberTextFieldOverscrollEffect18).then(modifierTextFieldPointer18).then(coreTextFieldSemanticsModifier18), new nl3() { // from class: r12
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return CoreTextFieldKt.CoreTextField$lambda$21(legacyTextFieldState4, (LayoutCoordinates) obj);
                    }
                }), textFieldSelectionManager6, y22Var110);
                if (z25) {
                    i48 = 1;
                }
                if (i48 != 0) {
                    modifierTextFieldMagnifier = TextFieldSelectionManager_androidKt.textFieldMagnifier(companion2, textFieldSelectionManager6);
                } else {
                    modifierTextFieldMagnifier = companion2;
                }
                final Modifier modifier11110 = modifierTextFieldMagnifier;
                final boolean z311111111111115 = z10;
                final dm3 dm3Var110 = lambda$559628295$foundation;
                final int i51116 = i39;
                final boolean z417 = i48;
                CoreTextFieldRootBox(modifierAddContextMenuComponents18, textFieldSelectionManager6, ComposableLambdaKt.rememberComposableLambda(-814563849, true, new bm3() { // from class: s12
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return CoreTextFieldKt.CoreTextField$lambda$22(dm3Var110, legacyTextFieldState4, textStyle5, i51116, i47, textFieldScrollerPosition113, textFieldValue, visualTransformation111110, modifierTextFieldCursor18, modifierTextFieldDraw18, modifierOnGloballyPositioned18, modifier11110, bringIntoViewRequester19, textFieldSelectionManager6, z417, z311111111111115, nl3Var5, offsetMapping3, density, (Composer) obj, iIntValue);
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, RendererCapabilities.DECODER_SUPPORT_MASK);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                dm3Var2 = dm3Var110;
                i37 = i51116;
                composer2 = composerStartRestartGroup;
                nl3Var4 = nl3Var5;
                z7 = z311111111111115;
                textFieldScrollerPosition2 = textFieldScrollerPosition3;
                imeOptions2 = imeOptions8;
                z6 = z25;
                mutableInteractionSource2 = mutableInteractionSource18;
                z5 = z13;
                keyboardActions2 = keyboardActions19;
                modifier3 = modifier1119;
                i36 = i47;
                visualTransformation2 = visualTransformation111110;
                solidColor = brush3;
                textStyle3 = textStyle5;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                z5 = z;
                imeOptions2 = imeOptions;
                keyboardActions2 = keyboardActions;
                dm3Var2 = dm3Var;
                textFieldScrollerPosition2 = textFieldScrollerPosition;
                composer2 = composerStartRestartGroup;
                textStyle3 = textStyle2;
                nl3Var4 = nl3Var3;
                visualTransformation2 = none;
                modifier3 = modifier2;
                i36 = i;
                i37 = i2;
                z6 = z2;
                z7 = z3;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: t12
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return CoreTextFieldKt.CoreTextField$lambda$23(textFieldValue, nl3Var, modifier3, textStyle3, visualTransformation2, nl3Var4, mutableInteractionSource2, solidColor, z5, i36, i37, imeOptions2, keyboardActions2, z6, z7, dm3Var2, textFieldScrollerPosition2, i3, i4, i5, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i6 |= 805306368;
        i21 = i5 & 1024;
        if (i21 != 0) {
            i22 = i4 | 6;
        } else if ((i4 & 6) == 0) {
            if (composerStartRestartGroup.changed(i2)) {
                i23 = 4;
            } else {
                i23 = 2;
            }
            i22 = i4 | i23;
        } else {
            i22 = i4;
        }
        if ((i4 & 48) != 0) {
            i22 |= ((i5 & 2048) == 0 || !composerStartRestartGroup.changed(imeOptions)) ? 16 : 32;
        }
        i24 = i22;
        i25 = i5 & 4096;
        if (i25 != 0) {
            i26 = i24 | RendererCapabilities.DECODER_SUPPORT_MASK;
        } else if ((i4 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if (composerStartRestartGroup.changed(keyboardActions)) {
                i27 = 256;
            } else {
                i27 = 128;
            }
            i26 = i24 | i27;
        } else {
            i26 = i24;
        }
        i28 = i5 & 8192;
        if (i28 != 0) {
            i30 = i26 | 3072;
        } else {
            i29 = i26;
            if ((i4 & 3072) == 0) {
                i30 = i29 | (composerStartRestartGroup.changed(z2) ? 2048 : 1024);
            } else {
                i30 = i29;
            }
        }
        i31 = i5 & 16384;
        if (i31 != 0) {
            i33 = i30 | 24576;
        } else {
            i32 = i30;
            if ((i4 & 24576) == 0) {
                i33 = i32 | (composerStartRestartGroup.changed(z3) ? 16384 : 8192);
            } else {
                i33 = i32;
            }
        }
        i34 = i5 & 32768;
        if (i34 != 0) {
            i33 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((i4 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            i33 |= composerStartRestartGroup.changedInstance(dm3Var) ? 131072 : 65536;
        }
        i35 = i5 & 65536;
        if (i35 != 0) {
            i33 |= 1572864;
        } else if ((i4 & 1572864) == 0) {
            i33 |= composerStartRestartGroup.changed(textFieldScrollerPosition) ? 1048576 : 524288;
        }
        if ((i6 & 306783379) == 306783378) {
            z4 = true;
        } else {
            z4 = true;
        }
        if (composerStartRestartGroup.shouldExecute(z4, i6 & 1)) {
            composerStartRestartGroup.startDefaults();
            jh2Var = null;
            if ((i3 & 1) != 0) {
                if (i50 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i7 != 0) {
                    textStyle4 = TextStyle.Companion.getDefault();
                } else {
                    textStyle4 = textStyle2;
                }
                if (i9 != 0) {
                    none = VisualTransformation.Companion.getNone();
                }
                if (i11 != 0) {
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = new p12(0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    nl3Var3 = (nl3) objRememberedValue;
                }
                if (i13 != 0) {
                    mutableInteractionSource2 = null;
                }
                if (i15 != 0) {
                    solidColor = new SolidColor(Color.Companion.m6268getUnspecified0d7_KjU(), jh2Var);
                }
                if (i17 != 0) {
                    z8 = true;
                } else {
                    z8 = z;
                }
                if (i19 != 0) {
                    i38 = Integer.MAX_VALUE;
                } else {
                    i38 = i;
                }
                if (i21 != 0) {
                    i39 = 1;
                } else {
                    i39 = i2;
                }
                if ((i5 & 2048) != 0) {
                    imeOptions3 = ImeOptions.Companion.getDefault();
                    i33 &= -113;
                } else {
                    imeOptions3 = imeOptions;
                }
                if (i25 != 0) {
                    keyboardActions3 = KeyboardActions.Companion.getDefault();
                } else {
                    keyboardActions3 = keyboardActions;
                }
                if (i28 != 0) {
                    z9 = true;
                } else {
                    z9 = z2;
                }
                if (i31 != 0) {
                    z10 = false;
                } else {
                    z10 = z3;
                }
                if (i34 != 0) {
                    lambda$559628295$foundation = ComposableSingletons$CoreTextFieldKt.INSTANCE.getLambda$559628295$foundation();
                } else {
                    lambda$559628295$foundation = dm3Var;
                }
                boolean z32118 = z8;
                textStyle2 = textStyle4;
                modifier4 = modifier2;
                z11 = z9;
                nl3Var5 = nl3Var3;
                z12 = z32118;
                VisualTransformation visualTransformation111111 = none;
                imeOptions4 = imeOptions3;
                brush2 = solidColor;
                visualTransformation3 = visualTransformation111111;
                i40 = i33;
                if (i35 != 0) {
                    textFieldScrollerPosition3 = null;
                } else {
                    textFieldScrollerPosition3 = textFieldScrollerPosition;
                }
            } else {
                if (i50 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i7 != 0) {
                    textStyle4 = TextStyle.Companion.getDefault();
                } else {
                    textStyle4 = textStyle2;
                }
                if (i9 != 0) {
                    none = VisualTransformation.Companion.getNone();
                }
                if (i11 != 0) {
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = new p12(0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    nl3Var3 = (nl3) objRememberedValue;
                }
                if (i13 != 0) {
                    mutableInteractionSource2 = null;
                }
                if (i15 != 0) {
                    solidColor = new SolidColor(Color.Companion.m6268getUnspecified0d7_KjU(), jh2Var);
                }
                if (i17 != 0) {
                    z8 = true;
                } else {
                    z8 = z;
                }
                if (i19 != 0) {
                    i38 = Integer.MAX_VALUE;
                } else {
                    i38 = i;
                }
                if (i21 != 0) {
                    i39 = 1;
                } else {
                    i39 = i2;
                }
                if ((i5 & 2048) != 0) {
                    imeOptions3 = ImeOptions.Companion.getDefault();
                    i33 &= -113;
                } else {
                    imeOptions3 = imeOptions;
                }
                if (i25 != 0) {
                    keyboardActions3 = KeyboardActions.Companion.getDefault();
                } else {
                    keyboardActions3 = keyboardActions;
                }
                if (i28 != 0) {
                    z9 = true;
                } else {
                    z9 = z2;
                }
                if (i31 != 0) {
                    z10 = false;
                } else {
                    z10 = z3;
                }
                if (i34 != 0) {
                    lambda$559628295$foundation = ComposableSingletons$CoreTextFieldKt.INSTANCE.getLambda$559628295$foundation();
                } else {
                    lambda$559628295$foundation = dm3Var;
                }
                boolean z32119 = z8;
                textStyle2 = textStyle4;
                modifier4 = modifier2;
                z11 = z9;
                nl3Var5 = nl3Var3;
                z12 = z32119;
                VisualTransformation visualTransformation111112 = none;
                imeOptions4 = imeOptions3;
                brush2 = solidColor;
                visualTransformation3 = visualTransformation111112;
                i40 = i33;
                if (i35 != 0) {
                    textFieldScrollerPosition3 = null;
                } else {
                    textFieldScrollerPosition3 = textFieldScrollerPosition;
                }
            }
            composerStartRestartGroup.endDefaults();
            brush3 = brush2;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(31062401, i6, i40, "androidx.compose.foundation.text.CoreTextField (CoreTextField.kt:208)");
            }
            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            companion = Composer.Companion;
            if (objRememberedValue2 == companion.getEmpty()) {
                objRememberedValue2 = new FocusRequester();
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            focusRequester = (FocusRequester) objRememberedValue2;
            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            i41 = i6;
            if (objRememberedValue3 == companion.getEmpty()) {
                objRememberedValue3 = LegacyPlatformTextInputServiceAdapter_androidKt.createLegacyPlatformTextInputServiceAdapter();
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            legacyPlatformTextInputServiceAdapter = (LegacyPlatformTextInputServiceAdapter) objRememberedValue3;
            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue4 == companion.getEmpty()) {
                objRememberedValue4 = new TextInputService(legacyPlatformTextInputServiceAdapter);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            }
            textInputService = (TextInputService) objRememberedValue4;
            density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            resolver = (FontFamily.Resolver) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalFontFamilyResolver());
            jM3048getBackgroundColor0d7_KjU = ((TextSelectionColors) composerStartRestartGroup.consume(TextSelectionColorsKt.getLocalTextSelectionColors())).m3048getBackgroundColor0d7_KjU();
            focusManager = (FocusManager) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalFocusManager());
            windowInfo = (WindowInfo) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalWindowInfo());
            textStyle5 = textStyle2;
            softwareKeyboardController = (SoftwareKeyboardController) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalSoftwareKeyboardController());
            z13 = z12;
            if (i38 == 1) {
                orientation = Orientation.Vertical;
            } else {
                orientation = Orientation.Vertical;
            }
            if (textFieldScrollerPosition3 == null) {
                composerStartRestartGroup.startReplaceGroup(-213744626);
                Object[] objArr17 = {orientation};
                Saver<TextFieldScrollerPosition, Object> saver17 = TextFieldScrollerPosition.Companion.getSaver();
                zChanged3 = composerStartRestartGroup.changed(orientation.ordinal());
                objRememberedValue18 = composerStartRestartGroup.rememberedValue();
                if (zChanged3) {
                    i49 = 0;
                    objRememberedValue18 = new u12(orientation, i49);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue18);
                } else {
                    i49 = 0;
                    objRememberedValue18 = new u12(orientation, i49);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue18);
                }
                textFieldScrollerPosition4 = (TextFieldScrollerPosition) RememberSaveableKt.m5624rememberSaveable(objArr17, (Saver) saver17, (ll3) objRememberedValue18, composerStartRestartGroup, i49);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(-213745742);
                composerStartRestartGroup.endReplaceGroup();
                textFieldScrollerPosition4 = textFieldScrollerPosition3;
            }
            if (textFieldScrollerPosition4.getOrientation() != orientation) {
                if (orientation == Orientation.Vertical) {
                    str = "only single-line, non-wrap text fields can scroll horizontally";
                } else {
                    str = "single-line, non-wrap text fields can only scroll horizontally";
                }
                throw new IllegalArgumentException("Mismatching scroller orientation; ".concat(str));
            }
            i42 = i41 & 14;
            if (i42 == 4) {
                z14 = true;
            } else {
                z14 = false;
            }
            if ((i41 & 57344) == 16384) {
                z15 = true;
            } else {
                z15 = false;
            }
            z16 = z14 | z15;
            objRememberedValue5 = composerStartRestartGroup.rememberedValue();
            if (z16) {
                transformedTextFilterWithValidation = ValidatingOffsetMappingKt.filterWithValidation(visualTransformation3, textFieldValue.getAnnotatedString());
                textRangeM8740getCompositionMzsxiRA = textFieldValue.m8740getCompositionMzsxiRA();
                if (textRangeM8740getCompositionMzsxiRA != null) {
                    textFieldScrollerPosition5 = textFieldScrollerPosition4;
                    transformedTextM2604applyCompositionDecoration72CqOWE = TextFieldDelegate.Companion.m2604applyCompositionDecoration72CqOWE(textRangeM8740getCompositionMzsxiRA.m8495unboximpl(), transformedTextFilterWithValidation);
                    if (transformedTextM2604applyCompositionDecoration72CqOWE != null) {
                        objRememberedValue5 = transformedTextM2604applyCompositionDecoration72CqOWE;
                    }
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                } else {
                    textFieldScrollerPosition5 = textFieldScrollerPosition4;
                }
                objRememberedValue5 = transformedTextFilterWithValidation;
                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
            } else {
                transformedTextFilterWithValidation = ValidatingOffsetMappingKt.filterWithValidation(visualTransformation3, textFieldValue.getAnnotatedString());
                textRangeM8740getCompositionMzsxiRA = textFieldValue.m8740getCompositionMzsxiRA();
                if (textRangeM8740getCompositionMzsxiRA != null) {
                    textFieldScrollerPosition5 = textFieldScrollerPosition4;
                    transformedTextM2604applyCompositionDecoration72CqOWE = TextFieldDelegate.Companion.m2604applyCompositionDecoration72CqOWE(textRangeM8740getCompositionMzsxiRA.m8495unboximpl(), transformedTextFilterWithValidation);
                    if (transformedTextM2604applyCompositionDecoration72CqOWE != null) {
                        objRememberedValue5 = transformedTextM2604applyCompositionDecoration72CqOWE;
                    }
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                } else {
                    textFieldScrollerPosition5 = textFieldScrollerPosition4;
                }
                objRememberedValue5 = transformedTextFilterWithValidation;
                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
            }
            TransformedText transformedText17 = (TransformedText) objRememberedValue5;
            text = transformedText17.getText();
            offsetMapping = transformedText17.getOffsetMapping();
            currentRecomposeScope = ComposablesKt.getCurrentRecomposeScope(composerStartRestartGroup, 0);
            zChanged = composerStartRestartGroup.changed(softwareKeyboardController);
            objRememberedValue6 = composerStartRestartGroup.rememberedValue();
            if (zChanged) {
                objRememberedValue6 = new LegacyTextFieldState(new TextDelegate(text, textStyle5, 0, 0, z13, 0, density, resolver, null, 300, null), currentRecomposeScope, softwareKeyboardController);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
            } else {
                objRememberedValue6 = new LegacyTextFieldState(new TextDelegate(text, textStyle5, 0, 0, z13, 0, density, resolver, null, 300, null), currentRecomposeScope, softwareKeyboardController);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
            }
            legacyTextFieldState = (LegacyTextFieldState) objRememberedValue6;
            KeyboardActions keyboardActions110 = keyboardActions3;
            legacyTextFieldState.m2569updatefnh65Uc(textFieldValue.getAnnotatedString(), text, textStyle5, z13, r55, resolver, nl3Var, keyboardActions110, focusManager, jM3048getBackgroundColor0d7_KjU);
            legacyTextFieldState.getProcessor().reset(textFieldValue, legacyTextFieldState.getInputSession());
            objRememberedValue7 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue7 == companion.getEmpty()) {
                objRememberedValue7 = new UndoManager(0, 1, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
            }
            undoManager = (UndoManager) objRememberedValue7;
            UndoManager.snapshotIfNeeded$default(undoManager, textFieldValue, 0L, 2, null);
            objRememberedValue8 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue8 == companion.getEmpty()) {
                objRememberedValue8 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
            }
            y22Var = (y22) objRememberedValue8;
            objRememberedValue9 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue9 == companion.getEmpty()) {
                objRememberedValue9 = BringIntoViewRequesterKt.BringIntoViewRequester();
                composerStartRestartGroup.updateRememberedValue(objRememberedValue9);
            }
            bringIntoViewRequester = (BringIntoViewRequester) objRememberedValue9;
            objRememberedValue10 = composerStartRestartGroup.rememberedValue();
            MutableInteractionSource mutableInteractionSource19 = mutableInteractionSource2;
            if (objRememberedValue10 == companion.getEmpty()) {
                objRememberedValue10 = new TextFieldSelectionManager(undoManager);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue10);
            }
            textFieldSelectionManager = (TextFieldSelectionManager) objRememberedValue10;
            textFieldSelectionManager.setOffsetMapping$foundation(offsetMapping);
            textFieldSelectionManager.setVisualTransformation$foundation(visualTransformation3);
            textFieldSelectionManager.setOnValueChange$foundation(legacyTextFieldState.getOnValueChange());
            textFieldSelectionManager.setState$foundation(legacyTextFieldState);
            textFieldSelectionManager.setValue$foundation(textFieldValue);
            textFieldSelectionManager.setClipboard$foundation((Clipboard) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalClipboard()));
            textFieldSelectionManager.setCoroutineScope$foundation(y22Var);
            textFieldSelectionManager.setTextToolbar((TextToolbar) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalTextToolbar()));
            textFieldSelectionManager.setHapticFeedBack((HapticFeedback) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalHapticFeedback()));
            textFieldSelectionManager.setFocusRequester(focusRequester);
            boolean z311111111111116 = !z10;
            textFieldSelectionManager.setEditable(z311111111111116);
            textFieldSelectionManager.setEnabled(z11);
            if (ComposeFoundationFlags.isSmartSelectionEnabled) {
                composerStartRestartGroup.startReplaceGroup(1966756105);
                textFieldSelectionManager.setPlatformSelectionBehaviors$foundation(PlatformSelectionBehaviors_androidKt.rememberPlatformSelectionBehaviors(SelectedTextType.EditableText, textStyle5.getLocaleList(), composerStartRestartGroup, 6));
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(1966902177);
                composerStartRestartGroup.endReplaceGroup();
            }
            legacyTextFieldState.getHasFocus();
            companion2 = Modifier.Companion;
            boolean zChangedInstance11111113 = composerStartRestartGroup.changedInstance(legacyTextFieldState);
            i43 = i40 & 7168;
            i44 = i40;
            if (i43 == 2048) {
                z17 = true;
            } else {
                z17 = false;
            }
            boolean z311111111111117 = z17 | zChangedInstance11111113;
            if ((i44 & 57344) == 16384) {
                z18 = true;
            } else {
                z18 = false;
            }
            boolean zChangedInstance11111114 = z311111111111117 | z18 | composerStartRestartGroup.changedInstance(textInputService);
            if (i42 == 4) {
                z19 = true;
            } else {
                z19 = false;
            }
            boolean z311111111111118 = zChangedInstance11111114 | z19;
            i45 = (i44 & 112) ^ 48;
            if (i45 > 32) {
                textInputService2 = textInputService;
                if ((i44 & 48) != 32) {
                    z20 = true;
                } else {
                    z20 = false;
                }
            } else {
                textInputService2 = textInputService;
                if ((i44 & 48) != 32) {
                    z20 = true;
                } else {
                    z20 = false;
                }
            }
            zChangedInstance = z311111111111118 | z20 | composerStartRestartGroup.changedInstance(offsetMapping) | composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(bringIntoViewRequester) | composerStartRestartGroup.changedInstance(textFieldSelectionManager);
            objRememberedValue11 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance) {
                offsetMapping2 = offsetMapping;
                final ImeOptions imeOptions11111117 = imeOptions4;
                final boolean z311111111111119 = z11;
                final boolean z3111111111111110 = z10;
                objRememberedValue11 = new nl3() { // from class: v12
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z311111111111119, z3111111111111110, textInputService2, textFieldValue, imeOptions11111117, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                    }
                };
                legacyTextFieldState2 = legacyTextFieldState;
                z21 = z311111111111119;
                textFieldValue2 = textFieldValue;
                imeOptions5 = imeOptions11111117;
                textFieldSelectionManager2 = textFieldSelectionManager;
                y22Var2 = y22Var;
                bringIntoViewRequester2 = bringIntoViewRequester;
                composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
            } else {
                offsetMapping2 = offsetMapping;
                final ImeOptions imeOptions11111118 = imeOptions4;
                final boolean z3111111111111111 = z11;
                final boolean z3111111111111112 = z10;
                objRememberedValue11 = new nl3() { // from class: v12
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState, z3111111111111111, z3111111111111112, textInputService2, textFieldValue, imeOptions11111118, offsetMapping2, textFieldSelectionManager, y22Var, bringIntoViewRequester, (FocusState) obj);
                    }
                };
                legacyTextFieldState2 = legacyTextFieldState;
                z21 = z3111111111111111;
                textFieldValue2 = textFieldValue;
                imeOptions5 = imeOptions11111118;
                textFieldSelectionManager2 = textFieldSelectionManager;
                y22Var2 = y22Var;
                bringIntoViewRequester2 = bringIntoViewRequester;
                composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
            }
            final BringIntoViewRequester bringIntoViewRequester110 = bringIntoViewRequester2;
            Modifier modifierTextFieldFocusModifier18 = TextFieldGestureModifiersKt.textFieldFocusModifier(companion2, z21, focusRequester, mutableInteractionSource19, (nl3) objRememberedValue11);
            if (z21) {
                z22 = false;
            } else {
                z22 = false;
            }
            stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Boolean.valueOf(z22), composerStartRestartGroup, 0);
            j59 j59Var18 = j59.a;
            boolean zChanged1119 = composerStartRestartGroup.changed(stateRememberUpdatedState) | composerStartRestartGroup.changedInstance(legacyTextFieldState2) | composerStartRestartGroup.changedInstance(textInputService2) | composerStartRestartGroup.changedInstance(textFieldSelectionManager2);
            if (i45 > 32) {
                imeOptions6 = imeOptions5;
                if ((i44 & 48) != 32) {
                    z23 = true;
                } else {
                    z23 = false;
                }
            } else {
                imeOptions6 = imeOptions5;
                if ((i44 & 48) != 32) {
                    z23 = true;
                } else {
                    z23 = false;
                }
            }
            z24 = zChanged1119 | z23;
            objRememberedValue12 = composerStartRestartGroup.rememberedValue();
            if (z24) {
                ImeOptions imeOptions11111119 = imeOptions6;
                TextInputService textInputService1118 = textInputService2;
                TextFieldSelectionManager textFieldSelectionManager11112 = textFieldSelectionManager2;
                LegacyTextFieldState legacyTextFieldState11111 = legacyTextFieldState2;
                objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState11111, stateRememberUpdatedState, textInputService1118, textFieldSelectionManager11112, imeOptions11111119, null);
                legacyTextFieldState3 = legacyTextFieldState11111;
                textFieldSelectionManager3 = textFieldSelectionManager11112;
                imeOptions7 = imeOptions11111119;
                composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
            } else {
                ImeOptions imeOptions111111110 = imeOptions6;
                TextInputService textInputService1119 = textInputService2;
                TextFieldSelectionManager textFieldSelectionManager11113 = textFieldSelectionManager2;
                LegacyTextFieldState legacyTextFieldState11112 = legacyTextFieldState2;
                objRememberedValue12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState11112, stateRememberUpdatedState, textInputService1119, textFieldSelectionManager11113, imeOptions111111110, null);
                legacyTextFieldState3 = legacyTextFieldState11112;
                textFieldSelectionManager3 = textFieldSelectionManager11113;
                imeOptions7 = imeOptions111111110;
                composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
            }
            imeOptions8 = imeOptions7;
            EffectsKt.LaunchedEffect(j59Var18, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue12, composerStartRestartGroup, 6);
            int i51117 = i44 >> 3;
            z25 = z21;
            legacyTextFieldState4 = legacyTextFieldState3;
            textFieldSelectionManager4 = textFieldSelectionManager3;
            Modifier modifierTextFieldPointer19 = TextFieldPointerModifier_androidKt.textFieldPointer(companion2, textFieldSelectionManager4, z25, mutableInteractionSource19, legacyTextFieldState4, focusRequester, z10, offsetMapping2, composerStartRestartGroup, (i51117 & 896) | 196614 | ((i41 >> 9) & 7168) | ((i44 << 6) & 3670016));
            offsetMapping3 = offsetMapping2;
            final Modifier modifierTextFieldDraw19 = CoreTextField_androidKt.textFieldDraw(companion2, legacyTextFieldState4, textFieldValue2, offsetMapping3);
            boolean zChangedInstance11111115 = composerStartRestartGroup.changedInstance(legacyTextFieldState4);
            if (i43 == 2048) {
                z26 = true;
            } else {
                z26 = false;
            }
            boolean zChanged11110 = zChangedInstance11111115 | z26 | composerStartRestartGroup.changed(windowInfo) | composerStartRestartGroup.changedInstance(textFieldSelectionManager4);
            if (i42 == 4) {
                z27 = true;
            } else {
                z27 = false;
            }
            zChangedInstance2 = zChanged11110 | z27 | composerStartRestartGroup.changedInstance(offsetMapping3);
            objRememberedValue13 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance2) {
                objRememberedValue13 = new nl3() { // from class: w12
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                    }
                };
                textFieldSelectionManager5 = textFieldSelectionManager4;
                composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
            } else {
                objRememberedValue13 = new nl3() { // from class: w12
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState4, z25, windowInfo, textFieldSelectionManager4, textFieldValue, offsetMapping3, (LayoutCoordinates) obj);
                    }
                };
                textFieldSelectionManager5 = textFieldSelectionManager4;
                composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
            }
            final Modifier modifierOnGloballyPositioned19 = OnGloballyPositionedModifierKt.onGloballyPositioned(companion2, (nl3) objRememberedValue13);
            textFieldSelectionManager6 = textFieldSelectionManager5;
            CoreTextFieldSemanticsModifier coreTextFieldSemanticsModifier19 = new CoreTextFieldSemanticsModifier(transformedText17, textFieldValue, legacyTextFieldState4, z10, z25, visualTransformation3 instanceof PasswordVisualTransformation, offsetMapping3, textFieldSelectionManager6, imeOptions8, focusRequester);
            final VisualTransformation visualTransformation111113 = visualTransformation3;
            if (z25 != 0) {
                z28 = false;
            } else {
                z28 = false;
            }
            final Modifier modifierTextFieldCursor19 = CoreTextField_androidKt.textFieldCursor(companion2, legacyTextFieldState4, textFieldValue, offsetMapping3, brush3, z28);
            zChangedInstance3 = composerStartRestartGroup.changedInstance(textFieldSelectionManager6);
            objRememberedValue14 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance3) {
                i46 = 0;
                objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
            } else {
                i46 = 0;
                objRememberedValue14 = new x12(textFieldSelectionManager6, i46);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue14);
            }
            EffectsKt.DisposableEffect(textFieldSelectionManager6, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue14, composerStartRestartGroup, i46);
            boolean zChangedInstance11111116 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changedInstance(textInputService2);
            if (i42 == 4) {
                z29 = true;
            } else {
                z29 = false;
            }
            z30 = z29 | zChangedInstance11111116 | ((i45 <= 32 && composerStartRestartGroup.changed(imeOptions8)) || (i44 & 48) == 32);
            objRememberedValue15 = composerStartRestartGroup.rememberedValue();
            if (z30) {
                objRememberedValue15 = new nl3() { // from class: h12
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
            } else {
                objRememberedValue15 = new nl3() { // from class: h12
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return CoreTextFieldKt.CoreTextField$lambda$18$0(legacyTextFieldState4, textInputService2, textFieldValue, imeOptions8, (DisposableEffectScope) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue15);
            }
            EffectsKt.DisposableEffect(imeOptions8, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue15, composerStartRestartGroup, i51117 & 14);
            nl3<TextFieldValue, j59> onValueChange19 = legacyTextFieldState4.getOnValueChange();
            i47 = i38;
            if (i47 == 1) {
                z31 = true;
            } else {
                z31 = false;
            }
            Modifier modifierM2614textFieldKeyInput2WJ9YEU19 = TextFieldKeyInputKt.m2614textFieldKeyInput2WJ9YEU(companion2, legacyTextFieldState4, textFieldSelectionManager6, textFieldValue, onValueChange19, z311111111111116, z31, offsetMapping3, undoManager, imeOptions8.m8688getImeActioneUduSuo());
            iM8689getKeyboardTypePjHm6EE = imeOptions8.m8689getKeyboardTypePjHm6EE();
            companion3 = KeyboardType.Companion;
            if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion3.m8731getPasswordPjHm6EE())) {
                z32 = false;
            } else {
                z32 = false;
            }
            boolean zCoreTextField$lambda$1112 = CoreTextField$lambda$14(stateRememberUpdatedState);
            zChanged2 = composerStartRestartGroup.changed(z32) | composerStartRestartGroup.changedInstance(legacyPlatformTextInputServiceAdapter);
            objRememberedValue16 = composerStartRestartGroup.rememberedValue();
            if (zChanged2) {
                objRememberedValue16 = new ll3() { // from class: i12
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
            } else {
                objRememberedValue16 = new ll3() { // from class: i12
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return CoreTextFieldKt.CoreTextField$lambda$19$0(z32, legacyPlatformTextInputServiceAdapter);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
            }
            Modifier modifierStylusHandwriting19 = StylusHandwritingKt.stylusHandwriting(companion2, zCoreTextField$lambda$1112, z32, (ll3) objRememberedValue16);
            y22 y22Var111 = y22Var2;
            brushM2447resolveAutofillHighlightWkMShQ = AutofillHighlightKt.m2447resolveAutofillHighlightWkMShQ((Brush) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightBrush()), ((Color) composerStartRestartGroup.consume(AutofillHighlightKt.getLocalAutofillHighlightColor())).m6242unboximpl(), AutofillHighlight_androidKt.autofillHighlightColor());
            zChangedInstance4 = composerStartRestartGroup.changedInstance(legacyTextFieldState4) | composerStartRestartGroup.changed(brushM2447resolveAutofillHighlightWkMShQ);
            objRememberedValue17 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance4) {
                i48 = 0;
                objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
            } else {
                i48 = 0;
                objRememberedValue17 = new q12(i48, legacyTextFieldState4, brushM2447resolveAutofillHighlightWkMShQ);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
            }
            Modifier modifierDrawWithContent19 = DrawModifierKt.drawWithContent(companion2, (nl3) objRememberedValue17);
            OverscrollEffect overscrollEffectRememberTextFieldOverscrollEffect19 = TextFieldScroll_androidKt.rememberTextFieldOverscrollEffect(composerStartRestartGroup, i48);
            Modifier modifier11111 = modifier4;
            Modifier modifierThen19 = previewKeyEventToDeselectOnBack(TextFieldFocusModifier_androidKt.interceptDPadAndMoveFocus(LegacyAdaptingPlatformTextInputModifierNodeKt.legacyTextInputAdapter(modifier11111.then(modifierDrawWithContent19), legacyPlatformTextInputServiceAdapter, legacyTextFieldState4, textFieldSelectionManager6).then(modifierStylusHandwriting19).then(modifierTextFieldFocusModifier18), legacyTextFieldState4, focusManager), legacyTextFieldState4, textFieldSelectionManager6).then(modifierM2614textFieldKeyInput2WJ9YEU19);
            final TextFieldScrollerPosition textFieldScrollerPosition114 = textFieldScrollerPosition5;
            Modifier modifierAddContextMenuComponents19 = addContextMenuComponents(OnGloballyPositionedModifierKt.onGloballyPositioned(TextFieldScrollKt.textFieldScrollable(modifierThen19, textFieldScrollerPosition114, mutableInteractionSource19, z25, overscrollEffectRememberTextFieldOverscrollEffect19).then(modifierTextFieldPointer19).then(coreTextFieldSemanticsModifier19), new nl3() { // from class: r12
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return CoreTextFieldKt.CoreTextField$lambda$21(legacyTextFieldState4, (LayoutCoordinates) obj);
                }
            }), textFieldSelectionManager6, y22Var111);
            if (z25) {
                i48 = 1;
            }
            if (i48 != 0) {
                modifierTextFieldMagnifier = TextFieldSelectionManager_androidKt.textFieldMagnifier(companion2, textFieldSelectionManager6);
            } else {
                modifierTextFieldMagnifier = companion2;
            }
            final Modifier modifier11112 = modifierTextFieldMagnifier;
            final boolean z3111111111111113 = z10;
            final dm3 dm3Var111 = lambda$559628295$foundation;
            final int i51118 = i39;
            final boolean z418 = i48;
            CoreTextFieldRootBox(modifierAddContextMenuComponents19, textFieldSelectionManager6, ComposableLambdaKt.rememberComposableLambda(-814563849, true, new bm3() { // from class: s12
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return CoreTextFieldKt.CoreTextField$lambda$22(dm3Var111, legacyTextFieldState4, textStyle5, i51118, i47, textFieldScrollerPosition114, textFieldValue, visualTransformation111113, modifierTextFieldCursor19, modifierTextFieldDraw19, modifierOnGloballyPositioned19, modifier11112, bringIntoViewRequester110, textFieldSelectionManager6, z418, z3111111111111113, nl3Var5, offsetMapping3, density, (Composer) obj, iIntValue);
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, RendererCapabilities.DECODER_SUPPORT_MASK);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            dm3Var2 = dm3Var111;
            i37 = i51118;
            composer2 = composerStartRestartGroup;
            nl3Var4 = nl3Var5;
            z7 = z3111111111111113;
            textFieldScrollerPosition2 = textFieldScrollerPosition3;
            imeOptions2 = imeOptions8;
            z6 = z25;
            mutableInteractionSource2 = mutableInteractionSource19;
            z5 = z13;
            keyboardActions2 = keyboardActions110;
            modifier3 = modifier11111;
            i36 = i47;
            visualTransformation2 = visualTransformation111113;
            solidColor = brush3;
            textStyle3 = textStyle5;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            z5 = z;
            imeOptions2 = imeOptions;
            keyboardActions2 = keyboardActions;
            dm3Var2 = dm3Var;
            textFieldScrollerPosition2 = textFieldScrollerPosition;
            composer2 = composerStartRestartGroup;
            textStyle3 = textStyle2;
            nl3Var4 = nl3Var3;
            visualTransformation2 = none;
            modifier3 = modifier2;
            i36 = i;
            i37 = i2;
            z6 = z2;
            z7 = z3;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: t12
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return CoreTextFieldKt.CoreTextField$lambda$23(textFieldValue, nl3Var, modifier3, textStyle3, visualTransformation2, nl3Var4, mutableInteractionSource2, solidColor, z5, i36, i37, imeOptions2, keyboardActions2, z6, z7, dm3Var2, textFieldScrollerPosition2, i3, i4, i5, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CoreTextField$lambda$0$0(TextLayoutResult textLayoutResult) {
        return j59.a;
    }

    private static final j59 CoreTextField$lambda$10(TextFieldSelectionManager textFieldSelectionManager, AnnotatedString annotatedString) {
        textFieldSelectionManager.paste$foundation(annotatedString);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CoreTextField$lambda$13$0(LegacyTextFieldState legacyTextFieldState, boolean z, boolean z2, TextInputService textInputService, TextFieldValue textFieldValue, ImeOptions imeOptions, OffsetMapping offsetMapping, TextFieldSelectionManager textFieldSelectionManager, y22 y22Var, BringIntoViewRequester bringIntoViewRequester, FocusState focusState) {
        TextLayoutResultProxy layoutResult;
        if (legacyTextFieldState.getHasFocus() == focusState.isFocused()) {
            return j59.a;
        }
        legacyTextFieldState.setHasFocus(focusState.isFocused());
        if (legacyTextFieldState.getHasFocus() && z && !z2) {
            startInputSession(textInputService, legacyTextFieldState, textFieldValue, imeOptions, offsetMapping);
        } else {
            endInputSession(legacyTextFieldState);
        }
        if (focusState.isFocused() && (layoutResult = legacyTextFieldState.getLayoutResult()) != null) {
            av0.c(y22Var, null, null, new CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1(bringIntoViewRequester, textFieldValue, legacyTextFieldState, layoutResult, offsetMapping, null), 3);
        }
        if (!focusState.isFocused()) {
            TextFieldSelectionManager.m3033deselect_kEHs6E$foundation$default(textFieldSelectionManager, null, 1, null);
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean CoreTextField$lambda$14(State<Boolean> state) {
        return state.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CoreTextField$lambda$16$0(LegacyTextFieldState legacyTextFieldState, boolean z, WindowInfo windowInfo, TextFieldSelectionManager textFieldSelectionManager, TextFieldValue textFieldValue, OffsetMapping offsetMapping, LayoutCoordinates layoutCoordinates) {
        TextInputSession inputSession;
        legacyTextFieldState.setLayoutCoordinates(layoutCoordinates);
        TextLayoutResultProxy layoutResult = legacyTextFieldState.getLayoutResult();
        if (layoutResult != null) {
            layoutResult.setInnerTextFieldCoordinates(layoutCoordinates);
        }
        if (z) {
            if (legacyTextFieldState.getHandleState() == HandleState.Selection) {
                if (legacyTextFieldState.getShowFloatingToolbar() && windowInfo.isWindowFocused()) {
                    textFieldSelectionManager.showSelectionToolbar$foundation();
                } else {
                    textFieldSelectionManager.hideSelectionToolbar$foundation();
                }
                legacyTextFieldState.setShowSelectionHandleStart(TextFieldSelectionManager_androidKt.isSelectionHandleInVisibleBound(textFieldSelectionManager, true));
                legacyTextFieldState.setShowSelectionHandleEnd(TextFieldSelectionManager_androidKt.isSelectionHandleInVisibleBound(textFieldSelectionManager, false));
                legacyTextFieldState.setShowCursorHandle(TextRange.m8485getCollapsedimpl(textFieldValue.m8741getSelectiond9O1mEE()));
            } else if (legacyTextFieldState.getHandleState() == HandleState.Cursor) {
                legacyTextFieldState.setShowCursorHandle(TextFieldSelectionManager_androidKt.isSelectionHandleInVisibleBound(textFieldSelectionManager, true));
            }
            notifyFocusedRect(legacyTextFieldState, textFieldValue, offsetMapping);
            TextLayoutResultProxy layoutResult2 = legacyTextFieldState.getLayoutResult();
            if (layoutResult2 != null && (inputSession = legacyTextFieldState.getInputSession()) != null && legacyTextFieldState.getHasFocus()) {
                TextFieldDelegate.Companion.updateTextLayoutResult$foundation(inputSession, textFieldValue, offsetMapping, layoutResult2);
            }
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DisposableEffectResult CoreTextField$lambda$17$0(final TextFieldSelectionManager textFieldSelectionManager, DisposableEffectScope disposableEffectScope) {
        return new DisposableEffectResult() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$lambda$17$0$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() {
                textFieldSelectionManager.hideSelectionToolbar$foundation();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DisposableEffectResult CoreTextField$lambda$18$0(LegacyTextFieldState legacyTextFieldState, TextInputService textInputService, TextFieldValue textFieldValue, ImeOptions imeOptions, DisposableEffectScope disposableEffectScope) {
        if (legacyTextFieldState.getHasFocus()) {
            legacyTextFieldState.setInputSession(TextFieldDelegate.Companion.restartInput$foundation(textInputService, textFieldValue, legacyTextFieldState.getProcessor(), imeOptions, legacyTextFieldState.getOnValueChange(), legacyTextFieldState.getOnImeActionPerformed()));
        }
        return new DisposableEffectResult() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$lambda$18$0$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() {
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CoreTextField$lambda$19$0(boolean z, LegacyPlatformTextInputServiceAdapter legacyPlatformTextInputServiceAdapter) {
        if (z) {
            legacyPlatformTextInputServiceAdapter.startStylusHandwriting();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CoreTextField$lambda$20$0(LegacyTextFieldState legacyTextFieldState, Brush brush, ContentDrawScope contentDrawScope) {
        contentDrawScope.drawContent();
        if (legacyTextFieldState.getAutofillHighlightOn() || legacyTextFieldState.getJustAutofilled()) {
            DrawScope.m6799drawRectAsUm42w$default(contentDrawScope, brush, 0L, 0L, 0.0f, null, null, 0, 126, null);
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CoreTextField$lambda$21(LegacyTextFieldState legacyTextFieldState, LayoutCoordinates layoutCoordinates) {
        TextLayoutResultProxy layoutResult = legacyTextFieldState.getLayoutResult();
        if (layoutResult != null) {
            layoutResult.setDecorationBoxCoordinates(layoutCoordinates);
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CoreTextField$lambda$22(dm3 dm3Var, final LegacyTextFieldState legacyTextFieldState, final TextStyle textStyle, final int i, final int i2, final TextFieldScrollerPosition textFieldScrollerPosition, final TextFieldValue textFieldValue, final VisualTransformation visualTransformation, final Modifier modifier, final Modifier modifier2, final Modifier modifier3, final Modifier modifier4, final BringIntoViewRequester bringIntoViewRequester, final TextFieldSelectionManager textFieldSelectionManager, final boolean z, final boolean z2, final nl3 nl3Var, final OffsetMapping offsetMapping, final Density density, Composer composer, int i3) {
        if (composer.shouldExecute((i3 & 3) != 2, i3 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-814563849, i3, -1, "androidx.compose.foundation.text.CoreTextField.<anonymous> (CoreTextField.kt:548)");
            }
            dm3Var.invoke(ComposableLambdaKt.rememberComposableLambda(-44346382, true, new bm3() { // from class: o12
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return CoreTextFieldKt.CoreTextField$lambda$22$0(legacyTextFieldState, textStyle, i, i2, textFieldScrollerPosition, textFieldValue, visualTransformation, modifier, modifier2, modifier3, modifier4, bringIntoViewRequester, textFieldSelectionManager, z, z2, nl3Var, offsetMapping, density, (Composer) obj, iIntValue);
                }
            }, composer, 54), composer, 6);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CoreTextField$lambda$22$0(final LegacyTextFieldState legacyTextFieldState, TextStyle textStyle, int i, final int i2, TextFieldScrollerPosition textFieldScrollerPosition, final TextFieldValue textFieldValue, VisualTransformation visualTransformation, Modifier modifier, Modifier modifier2, Modifier modifier3, Modifier modifier4, BringIntoViewRequester bringIntoViewRequester, final TextFieldSelectionManager textFieldSelectionManager, final boolean z, final boolean z2, final nl3 nl3Var, final OffsetMapping offsetMapping, final Density density, Composer composer, int i3) {
        if (composer.shouldExecute((i3 & 3) != 2, i3 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-44346382, i3, -1, "androidx.compose.foundation.text.CoreTextField.<anonymous>.<anonymous> (CoreTextField.kt:551)");
            }
            Modifier modifierHeightInLines = HeightInLinesModifierKt.heightInLines(SizeKt.m2087heightInVpY3zN4$default(Modifier.Companion, legacyTextFieldState.m2562getMinHeightForSingleLineFieldD9Ej5fM(), 0.0f, 2, null), textStyle, i, i2);
            boolean zChangedInstance = composer.changedInstance(legacyTextFieldState);
            Object objRememberedValue = composer.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new jf(legacyTextFieldState, 3);
                composer.updateRememberedValue(objRememberedValue);
            }
            SimpleLayoutKt.SimpleLayout(BringIntoViewRequesterKt.bringIntoViewRequester(TextFieldSizeKt.textFieldMinSize(TextFieldScroll_androidKt.textFieldScroll(modifierHeightInLines, textFieldScrollerPosition, textFieldValue, visualTransformation, (ll3) objRememberedValue).then(modifier).then(modifier2), textStyle).then(modifier3).then(modifier4), bringIntoViewRequester), ComposableLambdaKt.rememberComposableLambda(1412697320, true, new bm3() { // from class: m12
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return CoreTextFieldKt.CoreTextField$lambda$22$0$1(textFieldSelectionManager, legacyTextFieldState, z, z2, nl3Var, textFieldValue, offsetMapping, density, i2, (Composer) obj, iIntValue);
                }
            }, composer, 54), composer, 48, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:26:0x00a4  */
    public static final j59 CoreTextField$lambda$22$0$1(TextFieldSelectionManager textFieldSelectionManager, LegacyTextFieldState legacyTextFieldState, boolean z, boolean z2, nl3 nl3Var, TextFieldValue textFieldValue, OffsetMapping offsetMapping, Density density, int i, Composer composer, int i2) {
        boolean z3;
        if (composer.shouldExecute((i2 & 3) != 2, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1412697320, i2, -1, "androidx.compose.foundation.text.CoreTextField.<anonymous>.<anonymous>.<anonymous> (CoreTextField.kt:572)");
            }
            CoreTextFieldKt$CoreTextField$8$1$1$2 coreTextFieldKt$CoreTextField$8$1$1$2 = new CoreTextFieldKt$CoreTextField$8$1$1$2(legacyTextFieldState, nl3Var, textFieldValue, offsetMapping, density, i);
            Modifier.Companion companion = Modifier.Companion;
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer, 0));
            CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, companion);
            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
            ll3<ComposeUiNode> constructor = companion2.getConstructor();
            if (composer.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composer.startReusableNode();
            if (composer.getInserting()) {
                composer.createNode(constructor);
            } else {
                composer.useNode();
            }
            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer);
            Updater.m5363setimpl(composerM5355constructorimpl, coreTextFieldKt$CoreTextField$8$1$1$2, companion2.getSetMeasurePolicy());
            Updater.m5363setimpl(composerM5355constructorimpl, currentCompositionLocalMap, companion2.getSetResolvedCompositionLocals());
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, (bm3<? super T, ? super Modifier, j59>) hm.b(companion2, composerM5355constructorimpl, Integer.valueOf(iHashCode), composerM5355constructorimpl));
            composer.endNode();
            if (legacyTextFieldState.getHandleState() != HandleState.None && legacyTextFieldState.getLayoutCoordinates() != null) {
                LayoutCoordinates layoutCoordinates = legacyTextFieldState.getLayoutCoordinates();
                layoutCoordinates.getClass();
                z3 = layoutCoordinates.isAttached() && z;
            }
            SelectionToolbarAndHandles(textFieldSelectionManager, z3, composer, 0);
            if (legacyTextFieldState.getHandleState() == HandleState.Cursor && !z2 && z) {
                composer.startReplaceGroup(-714666198);
                TextFieldCursorHandle(textFieldSelectionManager, composer, 0);
                composer.endReplaceGroup();
            } else {
                composer.startReplaceGroup(-714589318);
                composer.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CoreTextField$lambda$23(TextFieldValue textFieldValue, nl3 nl3Var, Modifier modifier, TextStyle textStyle, VisualTransformation visualTransformation, nl3 nl3Var2, MutableInteractionSource mutableInteractionSource, Brush brush, boolean z, int i, int i2, ImeOptions imeOptions, KeyboardActions keyboardActions, boolean z2, boolean z3, dm3 dm3Var, TextFieldScrollerPosition textFieldScrollerPosition, int i3, int i4, int i5, Composer composer, int i6) {
        CoreTextField(textFieldValue, nl3Var, modifier, textStyle, visualTransformation, nl3Var2, mutableInteractionSource, brush, z, i, i2, imeOptions, keyboardActions, z2, z3, dm3Var, textFieldScrollerPosition, composer, RecomposeScopeImplKt.updateChangedFlags(i3 | 1), RecomposeScopeImplKt.updateChangedFlags(i4), i5);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TextFieldScrollerPosition CoreTextField$lambda$4$0(Orientation orientation) {
        return new TextFieldScrollerPosition(orientation, 0.0f, 2, null);
    }

    private static final void CoreTextFieldRootBox(final Modifier modifier, final TextFieldSelectionManager textFieldSelectionManager, final bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(2036174316);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(textFieldSelectionManager) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var) ? 256 : 128;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 147) != 146, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2036174316, i2, -1, "androidx.compose.foundation.text.CoreTextFieldRootBox (CoreTextField.kt:661)");
            }
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), true);
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier);
            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
            ll3<ComposeUiNode> constructor = companion.getConstructor();
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
            jg.d(companion, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, (bm3<? super T, ? super Modifier, j59>) hm.b(companion, composerM5355constructorimpl, Integer.valueOf(iHashCode), composerM5355constructorimpl));
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            ContextMenu_androidKt.ContextMenuArea(textFieldSelectionManager, bm3Var, composerStartRestartGroup, (i2 >> 3) & 126);
            composerStartRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: g12
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return CoreTextFieldKt.CoreTextFieldRootBox$lambda$1(modifier, textFieldSelectionManager, bm3Var, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CoreTextFieldRootBox$lambda$1(Modifier modifier, TextFieldSelectionManager textFieldSelectionManager, bm3 bm3Var, int i, Composer composer, int i2) {
        CoreTextFieldRootBox(modifier, textFieldSelectionManager, bm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    private static final void SelectionToolbarAndHandles(final TextFieldSelectionManager textFieldSelectionManager, final boolean z, Composer composer, final int i) {
        int i2;
        TextLayoutResultProxy layoutResult;
        TextLayoutResult value;
        Composer composerStartRestartGroup = composer.startRestartGroup(626339208);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(textFieldSelectionManager) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(z) ? 32 : 16;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 19) != 18, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(626339208, i2, -1, "androidx.compose.foundation.text.SelectionToolbarAndHandles (CoreTextField.kt:1014)");
            }
            if (z) {
                composerStartRestartGroup.startReplaceGroup(1530097388);
                LegacyTextFieldState state$foundation = textFieldSelectionManager.getState$foundation();
                TextLayoutResult textLayoutResult = null;
                if (state$foundation != null && (layoutResult = state$foundation.getLayoutResult()) != null && (value = layoutResult.getValue()) != null) {
                    LegacyTextFieldState state$foundation2 = textFieldSelectionManager.getState$foundation();
                    if (!(state$foundation2 != null ? state$foundation2.isLayoutResultStale() : true)) {
                        textLayoutResult = value;
                    }
                }
                if (textLayoutResult == null) {
                    composerStartRestartGroup.startReplaceGroup(1530097387);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(1530097388);
                    if (TextRange.m8485getCollapsedimpl(textFieldSelectionManager.getValue$foundation().m8741getSelectiond9O1mEE())) {
                        composerStartRestartGroup.startReplaceGroup(2110860558);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(2109807302);
                        int iOriginalToTransformed = textFieldSelectionManager.getOffsetMapping$foundation().originalToTransformed(TextRange.m8491getStartimpl(textFieldSelectionManager.getValue$foundation().m8741getSelectiond9O1mEE()));
                        int iOriginalToTransformed2 = textFieldSelectionManager.getOffsetMapping$foundation().originalToTransformed(TextRange.m8486getEndimpl(textFieldSelectionManager.getValue$foundation().m8741getSelectiond9O1mEE()));
                        ResolvedTextDirection bidiRunDirection = textLayoutResult.getBidiRunDirection(iOriginalToTransformed);
                        ResolvedTextDirection bidiRunDirection2 = textLayoutResult.getBidiRunDirection(Math.max(iOriginalToTransformed2 - 1, 0));
                        LegacyTextFieldState state$foundation3 = textFieldSelectionManager.getState$foundation();
                        if (state$foundation3 == null || !state$foundation3.getShowSelectionHandleStart()) {
                            composerStartRestartGroup.startReplaceGroup(2110490542);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(2110225306);
                            TextFieldSelectionManagerKt.TextFieldSelectionHandle(true, bidiRunDirection, textFieldSelectionManager, composerStartRestartGroup, ((i2 << 6) & 896) | 6);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        LegacyTextFieldState state$foundation4 = textFieldSelectionManager.getState$foundation();
                        if (state$foundation4 == null || !state$foundation4.getShowSelectionHandleEnd()) {
                            composerStartRestartGroup.startReplaceGroup(2110838734);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(2110574459);
                            TextFieldSelectionManagerKt.TextFieldSelectionHandle(false, bidiRunDirection2, textFieldSelectionManager, composerStartRestartGroup, ((i2 << 6) & 896) | 6);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    LegacyTextFieldState state$foundation5 = textFieldSelectionManager.getState$foundation();
                    if (state$foundation5 != null) {
                        if (textFieldSelectionManager.isTextChanged$foundation()) {
                            state$foundation5.setShowFloatingToolbar(false);
                        }
                        if (state$foundation5.getHasFocus()) {
                            if (state$foundation5.getShowFloatingToolbar()) {
                                textFieldSelectionManager.showSelectionToolbar$foundation();
                            } else {
                                textFieldSelectionManager.hideSelectionToolbar$foundation();
                            }
                        }
                        j59 j59Var = j59.a;
                    }
                    composerStartRestartGroup.endReplaceGroup();
                }
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(1989076778);
                composerStartRestartGroup.endReplaceGroup();
                textFieldSelectionManager.hideSelectionToolbar$foundation();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: l12
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return CoreTextFieldKt.SelectionToolbarAndHandles$lambda$1(textFieldSelectionManager, z, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 SelectionToolbarAndHandles$lambda$1(TextFieldSelectionManager textFieldSelectionManager, boolean z, int i, Composer composer, int i2) {
        SelectionToolbarAndHandles(textFieldSelectionManager, z, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    public static final void TextFieldCursorHandle(final TextFieldSelectionManager textFieldSelectionManager, Composer composer, final int i) {
        int i2;
        AnnotatedString transformedText$foundation;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1436003720);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(textFieldSelectionManager) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 3) != 2, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1436003720, i2, -1, "androidx.compose.foundation.text.TextFieldCursorHandle (CoreTextField.kt:1061)");
            }
            LegacyTextFieldState state$foundation = textFieldSelectionManager.getState$foundation();
            if (state$foundation == null || !state$foundation.getShowCursorHandle() || (transformedText$foundation = textFieldSelectionManager.getTransformedText$foundation()) == null || transformedText$foundation.length() <= 0) {
                composerStartRestartGroup.startReplaceGroup(-2111042550);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(-2112351432);
                boolean zChanged = composerStartRestartGroup.changed(textFieldSelectionManager);
                Object objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = textFieldSelectionManager.cursorDragObserver$foundation();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                final TextDragObserver textDragObserver = (TextDragObserver) objRememberedValue;
                final long jM3039getCursorPositiontuRUvjQ$foundation = textFieldSelectionManager.m3039getCursorPositiontuRUvjQ$foundation((Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity()));
                boolean zChanged2 = composerStartRestartGroup.changed(jM3039getCursorPositiontuRUvjQ$foundation);
                Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (zChanged2 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                    objRememberedValue2 = new OffsetProvider() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$1$1
                        @Override // androidx.compose.foundation.text.selection.OffsetProvider
                        /* JADX INFO: renamed from: provide-F1C5BW0 */
                        public final long mo2453provideF1C5BW0() {
                            return jM3039getCursorPositiontuRUvjQ$foundation;
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                OffsetProvider offsetProvider = (OffsetProvider) objRememberedValue2;
                Modifier.Companion companion = Modifier.Companion;
                boolean zChangedInstance = composerStartRestartGroup.changedInstance(textDragObserver) | composerStartRestartGroup.changedInstance(textFieldSelectionManager);
                Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance || objRememberedValue3 == Composer.Companion.getEmpty()) {
                    objRememberedValue3 = new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1

                        /* JADX INFO: renamed from: androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1$1, reason: invalid class name */
                        @bd2(c = "androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1$1", f = "CoreTextField.kt", l = {}, m = "invokeSuspend", v = 1)
                        public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
                            final /* synthetic */ TextFieldSelectionManager $manager;
                            final /* synthetic */ TextDragObserver $observer;
                            final /* synthetic */ PointerInputScope $this_pointerInput;
                            private /* synthetic */ Object L$0;
                            int label;

                            /* JADX INFO: renamed from: androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1$1$1, reason: invalid class name and collision with other inner class name */
                            @bd2(c = "androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1$1$1", f = "CoreTextField.kt", l = {1074}, m = "invokeSuspend", v = 1)
                            public static final class C00411 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
                                final /* synthetic */ TextDragObserver $observer;
                                final /* synthetic */ PointerInputScope $this_pointerInput;
                                int label;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                public C00411(PointerInputScope pointerInputScope, TextDragObserver textDragObserver, e02<? super C00411> e02Var) {
                                    super(2, e02Var);
                                    this.$this_pointerInput = pointerInputScope;
                                    this.$observer = textDragObserver;
                                }

                                @Override // defpackage.cd0
                                public final e02<j59> create(Object obj, e02<?> e02Var) {
                                    return new C00411(this.$this_pointerInput, this.$observer, e02Var);
                                }

                                @Override // defpackage.bm3
                                public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                                    return ((C00411) create(y22Var, e02Var)).invokeSuspend(j59.a);
                                }

                                @Override // defpackage.cd0
                                public final Object invokeSuspend(Object obj) {
                                    a32 a32Var = a32.COROUTINE_SUSPENDED;
                                    int i = this.label;
                                    if (i == 0) {
                                        r57.b(obj);
                                        PointerInputScope pointerInputScope = this.$this_pointerInput;
                                        TextDragObserver textDragObserver = this.$observer;
                                        this.label = 1;
                                        if (LongPressTextDragObserverKt.detectDownAndDragGesturesWithObserver(pointerInputScope, textDragObserver, this) == a32Var) {
                                            return a32Var;
                                        }
                                    } else {
                                        if (i != 1) {
                                            ah.f("call to 'resume' before 'invoke' with coroutine");
                                            return null;
                                        }
                                        r57.b(obj);
                                    }
                                    return j59.a;
                                }
                            }

                            /* JADX INFO: renamed from: androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1$1$2, reason: invalid class name */
                            @bd2(c = "androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1$1$2", f = "CoreTextField.kt", l = {1077}, m = "invokeSuspend", v = 1)
                            public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
                                final /* synthetic */ TextFieldSelectionManager $manager;
                                final /* synthetic */ PointerInputScope $this_pointerInput;
                                int label;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                public AnonymousClass2(PointerInputScope pointerInputScope, TextFieldSelectionManager textFieldSelectionManager, e02<? super AnonymousClass2> e02Var) {
                                    super(2, e02Var);
                                    this.$this_pointerInput = pointerInputScope;
                                    this.$manager = textFieldSelectionManager;
                                }

                                /* JADX INFO: Access modifiers changed from: private */
                                public static final j59 invokeSuspend$lambda$0(TextFieldSelectionManager textFieldSelectionManager, Offset offset) {
                                    textFieldSelectionManager.showSelectionToolbar$foundation();
                                    return j59.a;
                                }

                                @Override // defpackage.cd0
                                public final e02<j59> create(Object obj, e02<?> e02Var) {
                                    return new AnonymousClass2(this.$this_pointerInput, this.$manager, e02Var);
                                }

                                @Override // defpackage.bm3
                                public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                                    return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
                                }

                                @Override // defpackage.cd0
                                public final Object invokeSuspend(Object obj) {
                                    a32 a32Var = a32.COROUTINE_SUSPENDED;
                                    int i = this.label;
                                    if (i == 0) {
                                        r57.b(obj);
                                        PointerInputScope pointerInputScope = this.$this_pointerInput;
                                        final TextFieldSelectionManager textFieldSelectionManager = this.$manager;
                                        nl3 nl3Var = 
                                        /*  JADX ERROR: Method code generation error
                                            jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x001d: CONSTRUCTOR (r5v0 'nl3Var' nl3) = (r10v1 'textFieldSelectionManager' androidx.compose.foundation.text.selection.TextFieldSelectionManager A[DONT_INLINE]) A[DECLARE_VAR, MD:(androidx.compose.foundation.text.selection.TextFieldSelectionManager):void (m)] call: androidx.compose.foundation.text.e.<init>(androidx.compose.foundation.text.selection.TextFieldSelectionManager):void type: CONSTRUCTOR in method: androidx.compose.foundation.text.CoreTextFieldKt.TextFieldCursorHandle.2.1.1.2.invokeSuspend(java.lang.Object):java.lang.Object, file: classes.dex
                                            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:310)
                                            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:273)
                                            	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:94)
                                            	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                                            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                                            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                                            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                                            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
                                            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                                            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                                            	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                                            	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                                            Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Expected class to be processed at this point, class: androidx.compose.foundation.text.e, state: NOT_LOADED
                                            	at jadx.core.dex.nodes.ClassNode.ensureProcessed(ClassNode.java:306)
                                            	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:807)
                                            	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:730)
                                            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:418)
                                            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:303)
                                            	... 21 more
                                            */
                                        /*
                                            this = this;
                                            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                                            int r1 = r9.label
                                            r2 = 1
                                            if (r1 == 0) goto L14
                                            if (r1 != r2) goto Ld
                                            defpackage.r57.b(r10)
                                            goto L2f
                                        Ld:
                                            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                                            defpackage.ah.f(r9)
                                            r9 = 0
                                            return r9
                                        L14:
                                            defpackage.r57.b(r10)
                                            androidx.compose.ui.input.pointer.PointerInputScope r1 = r9.$this_pointerInput
                                            androidx.compose.foundation.text.selection.TextFieldSelectionManager r10 = r9.$manager
                                            androidx.compose.foundation.text.e r5 = new androidx.compose.foundation.text.e
                                            r5.<init>(r10)
                                            r9.label = r2
                                            r2 = 0
                                            r3 = 0
                                            r4 = 0
                                            r7 = 7
                                            r8 = 0
                                            r6 = r9
                                            java.lang.Object r9 = androidx.compose.foundation.gestures.TapGestureDetectorKt.detectTapGestures$default(r1, r2, r3, r4, r5, r6, r7, r8)
                                            if (r9 != r0) goto L2f
                                            return r0
                                        L2f:
                                            j59 r9 = defpackage.j59.a
                                            return r9
                                        */
                                        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1.AnonymousClass1.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
                                    }
                                }

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                public AnonymousClass1(PointerInputScope pointerInputScope, TextDragObserver textDragObserver, TextFieldSelectionManager textFieldSelectionManager, e02<? super AnonymousClass1> e02Var) {
                                    super(2, e02Var);
                                    this.$this_pointerInput = pointerInputScope;
                                    this.$observer = textDragObserver;
                                    this.$manager = textFieldSelectionManager;
                                }

                                @Override // defpackage.cd0
                                public final e02<j59> create(Object obj, e02<?> e02Var) {
                                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_pointerInput, this.$observer, this.$manager, e02Var);
                                    anonymousClass1.L$0 = obj;
                                    return anonymousClass1;
                                }

                                @Override // defpackage.bm3
                                public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                                    return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
                                }

                                @Override // defpackage.cd0
                                public final Object invokeSuspend(Object obj) {
                                    a32 a32Var = a32.COROUTINE_SUSPENDED;
                                    if (this.label != 0) {
                                        ah.f("call to 'resume' before 'invoke' with coroutine");
                                        return null;
                                    }
                                    r57.b(obj);
                                    y22 y22Var = (y22) this.L$0;
                                    c32 c32Var = c32.UNDISPATCHED;
                                    av0.c(y22Var, null, c32Var, new C00411(this.$this_pointerInput, this.$observer, null), 1);
                                    av0.c(y22Var, null, c32Var, new AnonymousClass2(this.$this_pointerInput, this.$manager, null), 1);
                                    return j59.a;
                                }
                            }

                            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                            public final Object invoke(PointerInputScope pointerInputScope, e02<? super j59> e02Var) {
                                Object objC = z22.c(new AnonymousClass1(pointerInputScope, textDragObserver, textFieldSelectionManager, null), e02Var);
                                return objC == a32.COROUTINE_SUSPENDED ? objC : j59.a;
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    Modifier modifierPointerInput = SuspendingPointerInputFilterKt.pointerInput(companion, textDragObserver, (PointerInputEventHandler) objRememberedValue3);
                    boolean zChanged3 = composerStartRestartGroup.changed(jM3039getCursorPositiontuRUvjQ$foundation);
                    Object objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (zChanged3 || objRememberedValue4 == Composer.Companion.getEmpty()) {
                        objRememberedValue4 = new nl3() { // from class: j12
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return CoreTextFieldKt.TextFieldCursorHandle$lambda$3$0(jM3039getCursorPositiontuRUvjQ$foundation, (SemanticsPropertyReceiver) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    AndroidCursorHandle_androidKt.m2444CursorHandleUSBMPiE(offsetProvider, SemanticsModifierKt.semantics$default(modifierPointerInput, false, (nl3) objRememberedValue4, 1, null), 0L, composerStartRestartGroup, 0, 4);
                    composerStartRestartGroup.endReplaceGroup();
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
            }
            ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: k12
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return CoreTextFieldKt.TextFieldCursorHandle$lambda$4(textFieldSelectionManager, i, (Composer) obj, iIntValue);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 TextFieldCursorHandle$lambda$3$0(long j, SemanticsPropertyReceiver semanticsPropertyReceiver) {
            semanticsPropertyReceiver.set(SelectionHandlesKt.getSelectionHandleInfoKey(), new SelectionHandleInfo(Handle.Cursor, j, SelectionHandleAnchor.Middle, true, null));
            return j59.a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 TextFieldCursorHandle$lambda$4(TextFieldSelectionManager textFieldSelectionManager, int i, Composer composer, int i2) {
            TextFieldCursorHandle(textFieldSelectionManager, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            return j59.a;
        }

        private static final Modifier addContextMenuComponents(Modifier modifier, TextFieldSelectionManager textFieldSelectionManager, y22 y22Var) {
            return ComposeFoundationFlags.isNewContextMenuEnabled ? TextFieldSelectionManager_androidKt.addBasicTextFieldTextContextMenuComponents(modifier, textFieldSelectionManager, y22Var) : modifier;
        }

        public static final Object bringSelectionEndIntoView(BringIntoViewRequester bringIntoViewRequester, TextFieldValue textFieldValue, TextDelegate textDelegate, TextLayoutResult textLayoutResult, OffsetMapping offsetMapping, e02<? super j59> e02Var) {
            Rect boundingBox;
            int iOriginalToTransformed = offsetMapping.originalToTransformed(TextRange.m8488getMaximpl(textFieldValue.m8741getSelectiond9O1mEE()));
            if (iOriginalToTransformed < textLayoutResult.getLayoutInput().getText().length()) {
                boundingBox = textLayoutResult.getBoundingBox(iOriginalToTransformed);
            } else {
                boundingBox = iOriginalToTransformed != 0 ? textLayoutResult.getBoundingBox(iOriginalToTransformed - 1) : new Rect(0.0f, 0.0f, 1.0f, (int) (TextFieldDelegateKt.computeSizeForDefaultText$default(textDelegate.getStyle(), textDelegate.getDensity(), textDelegate.getFontFamilyResolver(), null, 0, 24, null) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            }
            Object objBringIntoView = bringIntoViewRequester.bringIntoView(boundingBox, e02Var);
            return objBringIntoView == a32.COROUTINE_SUSPENDED ? objBringIntoView : j59.a;
        }

        public static final Modifier defaultTextFieldDraw(Modifier modifier, final LegacyTextFieldState legacyTextFieldState, final TextFieldValue textFieldValue, final OffsetMapping offsetMapping) {
            return DrawModifierKt.drawBehind(modifier, new nl3() { // from class: n12
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return CoreTextFieldKt.defaultTextFieldDraw$lambda$0(legacyTextFieldState, textFieldValue, offsetMapping, (DrawScope) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 defaultTextFieldDraw$lambda$0(LegacyTextFieldState legacyTextFieldState, TextFieldValue textFieldValue, OffsetMapping offsetMapping, DrawScope drawScope) {
            TextLayoutResultProxy layoutResult = legacyTextFieldState.getLayoutResult();
            if (layoutResult != null) {
                TextFieldDelegate.Companion.m2605drawQ1vqE60$foundation(drawScope.getDrawContext().getCanvas(), textFieldValue, legacyTextFieldState.m2564getSelectionPreviewHighlightRanged9O1mEE(), legacyTextFieldState.m2561getDeletionPreviewHighlightRanged9O1mEE(), offsetMapping, layoutResult.getValue(), legacyTextFieldState.getHighlightPaint(), legacyTextFieldState.m2563getSelectionBackgroundColor0d7_KjU());
            }
            return j59.a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void endInputSession(LegacyTextFieldState legacyTextFieldState) {
            TextInputSession inputSession = legacyTextFieldState.getInputSession();
            if (inputSession != null) {
                TextFieldDelegate.Companion.onBlur$foundation(inputSession, legacyTextFieldState.getProcessor(), legacyTextFieldState.getOnValueChange());
            }
            legacyTextFieldState.setInputSession(null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void notifyFocusedRect(LegacyTextFieldState legacyTextFieldState, TextFieldValue textFieldValue, OffsetMapping offsetMapping) {
            Snapshot.Companion companion = Snapshot.Companion;
            Snapshot currentThreadSnapshot = companion.getCurrentThreadSnapshot();
            nl3<Object, j59> readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
            Snapshot snapshotMakeCurrentNonObservable = companion.makeCurrentNonObservable(currentThreadSnapshot);
            try {
                TextLayoutResultProxy layoutResult = legacyTextFieldState.getLayoutResult();
                if (layoutResult == null) {
                    return;
                }
                TextInputSession inputSession = legacyTextFieldState.getInputSession();
                if (inputSession == null) {
                    return;
                }
                LayoutCoordinates layoutCoordinates = legacyTextFieldState.getLayoutCoordinates();
                if (layoutCoordinates == null) {
                    return;
                }
                TextFieldDelegate.Companion.notifyFocusedRect$foundation(textFieldValue, legacyTextFieldState.getTextDelegate(), layoutResult.getValue(), layoutCoordinates, inputSession, legacyTextFieldState.getHasFocus(), offsetMapping);
                j59 j59Var = j59.a;
            } finally {
                companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
            }
        }

        private static final Modifier previewKeyEventToDeselectOnBack(Modifier modifier, final LegacyTextFieldState legacyTextFieldState, final TextFieldSelectionManager textFieldSelectionManager) {
            return KeyInputModifierKt.onPreviewKeyEvent(modifier, new nl3<KeyEvent, Boolean>() { // from class: androidx.compose.foundation.text.CoreTextFieldKt.previewKeyEventToDeselectOnBack.1
                @Override // defpackage.nl3
                public /* bridge */ /* synthetic */ Boolean invoke(KeyEvent keyEvent) {
                    return m2492invokeZmokQxo(keyEvent.m7390unboximpl());
                }

                /* JADX INFO: renamed from: invoke-ZmokQxo, reason: not valid java name */
                public final Boolean m2492invokeZmokQxo(android.view.KeyEvent keyEvent) {
                    boolean z;
                    if (legacyTextFieldState.getHandleState() == HandleState.Selection && KeyEventHelpers_androidKt.m2495cancelsTextSelectionZmokQxo(keyEvent)) {
                        z = true;
                        TextFieldSelectionManager.m3033deselect_kEHs6E$foundation$default(textFieldSelectionManager, null, 1, null);
                    } else {
                        z = false;
                    }
                    return Boolean.valueOf(z);
                }
            });
        }

        public static final void requestFocusAndShowKeyboardIfNeeded(LegacyTextFieldState legacyTextFieldState, FocusRequester focusRequester, boolean z) {
            SoftwareKeyboardController keyboardController;
            if (!legacyTextFieldState.getHasFocus()) {
                FocusRequester.m5892requestFocus3ESFkO8$default(focusRequester, 0, 1, null);
            } else {
                if (!z || (keyboardController = legacyTextFieldState.getKeyboardController()) == null) {
                    return;
                }
                keyboardController.show();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void startInputSession(TextInputService textInputService, LegacyTextFieldState legacyTextFieldState, TextFieldValue textFieldValue, ImeOptions imeOptions, OffsetMapping offsetMapping) {
            legacyTextFieldState.setInputSession(TextFieldDelegate.Companion.onFocus$foundation(textInputService, textFieldValue, legacyTextFieldState.getProcessor(), imeOptions, legacyTextFieldState.getOnValueChange(), legacyTextFieldState.getOnImeActionPerformed()));
            notifyFocusedRect(legacyTextFieldState, textFieldValue, offsetMapping);
        }
    }
