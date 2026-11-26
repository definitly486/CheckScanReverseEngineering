package androidx.compose.material3;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.unit.Velocity;
import androidx.media3.muxer.MuxerUtil;
import defpackage.a32;
import defpackage.ah;
import defpackage.e02;
import defpackage.r57;

/* JADX INFO: loaded from: classes2.dex */
public final class ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1 implements NestedScrollConnection {
    final /* synthetic */ ExitUntilCollapsedScrollBehavior this$0;

    public ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1(ExitUntilCollapsedScrollBehavior exitUntilCollapsedScrollBehavior) {
        this.this$0 = exitUntilCollapsedScrollBehavior;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* JADX INFO: renamed from: onPostFling-RZ2iAVY */
    public Object mo1601onPostFlingRZ2iAVY(long j, long j2, e02<? super Velocity> e02Var) {
        ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$1 exitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$1;
        long j3;
        if (e02Var instanceof ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$1) {
            exitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$1 = (ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$1) e02Var;
            int i = exitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                exitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$1.label = i - Integer.MIN_VALUE;
            } else {
                exitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$1 = new ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$1(this, e02Var);
            }
        } else {
            exitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$1 = new ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$1(this, e02Var);
        }
        ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$1 exitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$2 = exitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$1;
        Object objMo1601onPostFlingRZ2iAVY = exitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$2.result;
        Object obj = a32.COROUTINE_SUSPENDED;
        int i2 = exitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$2.label;
        if (i2 == 0) {
            r57.b(objMo1601onPostFlingRZ2iAVY);
            if (Velocity.m9281getYimpl(j2) > 0.0f) {
                this.this$0.getState().setContentOffset(0.0f);
            }
            exitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$2.J$0 = j2;
            exitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$2.label = 1;
            objMo1601onPostFlingRZ2iAVY = super.mo1601onPostFlingRZ2iAVY(j, j2, exitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$2);
            if (objMo1601onPostFlingRZ2iAVY != obj) {
            }
            return obj;
        }
        if (i2 == 1) {
            j2 = exitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$2.J$0;
            r57.b(objMo1601onPostFlingRZ2iAVY);
        } else {
            if (i2 != 2) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            j3 = exitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$2.J$0;
            r57.b(objMo1601onPostFlingRZ2iAVY);
        }
        return Velocity.m9271boximpl(Velocity.m9284plusAH228Gc(j3, ((Velocity) objMo1601onPostFlingRZ2iAVY).m9289unboximpl()));
        long jM9289unboximpl = ((Velocity) objMo1601onPostFlingRZ2iAVY).m9289unboximpl();
        TopAppBarState state = this.this$0.getState();
        float fM9281getYimpl = Velocity.m9281getYimpl(j2);
        DecayAnimationSpec<Float> flingAnimationSpec = this.this$0.getFlingAnimationSpec();
        AnimationSpec<Float> snapAnimationSpec = this.this$0.getSnapAnimationSpec();
        exitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$2.J$0 = jM9289unboximpl;
        exitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$2.label = 2;
        objMo1601onPostFlingRZ2iAVY = AppBarKt.settleAppBar(state, fM9281getYimpl, flingAnimationSpec, snapAnimationSpec, exitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$2);
        if (objMo1601onPostFlingRZ2iAVY != obj) {
            j3 = jM9289unboximpl;
            return Velocity.m9271boximpl(Velocity.m9284plusAH228Gc(j3, ((Velocity) objMo1601onPostFlingRZ2iAVY).m9289unboximpl()));
        }
        return obj;
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* JADX INFO: renamed from: onPostScroll-DzOQY0M */
    public long mo1602onPostScrollDzOQY0M(long j, long j2, int i) {
        if (!this.this$0.getCanScroll().invoke().booleanValue()) {
            return Offset.Companion.m6003getZeroF1C5BW0();
        }
        TopAppBarState state = this.this$0.getState();
        float contentOffset = state.getContentOffset();
        int i2 = (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        state.setContentOffset(Float.intBitsToFloat(i2) + contentOffset);
        int i3 = (int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        if (Float.intBitsToFloat(i3) < 0.0f || Float.intBitsToFloat(i2) < 0.0f) {
            float heightOffset = this.this$0.getState().getHeightOffset();
            this.this$0.getState().setHeightOffset(Float.intBitsToFloat(i2) + this.this$0.getState().getHeightOffset());
            float heightOffset2 = this.this$0.getState().getHeightOffset() - heightOffset;
            return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(0.0f)) << 32) | (((long) Float.floatToRawIntBits(heightOffset2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        if (Float.intBitsToFloat(i3) <= 0.0f) {
            return Offset.Companion.m6003getZeroF1C5BW0();
        }
        float heightOffset3 = this.this$0.getState().getHeightOffset();
        this.this$0.getState().setHeightOffset(Float.intBitsToFloat(i3) + this.this$0.getState().getHeightOffset());
        float heightOffset4 = this.this$0.getState().getHeightOffset() - heightOffset3;
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(0.0f)) << 32) | (((long) Float.floatToRawIntBits(heightOffset4)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* JADX INFO: renamed from: onPreScroll-OzD1aCk */
    public long mo2131onPreScrollOzD1aCk(long j, int i) {
        if (this.this$0.getCanScroll().invoke().booleanValue()) {
            int i2 = (int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & j);
            if (Float.intBitsToFloat(i2) <= 0.0f) {
                float heightOffset = this.this$0.getState().getHeightOffset();
                this.this$0.getState().setHeightOffset(Float.intBitsToFloat(i2) + this.this$0.getState().getHeightOffset());
                return heightOffset == this.this$0.getState().getHeightOffset() ? Offset.Companion.m6003getZeroF1C5BW0() : Offset.m5981copydBAh8RU$default(j, 0.0f, 0.0f, 2, null);
            }
        }
        return Offset.Companion.m6003getZeroF1C5BW0();
    }
}
