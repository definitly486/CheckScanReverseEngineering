package androidx.compose.material3.internal;

import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.ui.geometry.Offset;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.r57;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class MappedInteractionSource implements InteractionSource {
    public static final int $stable = 0;
    private final long delta;
    private final hd3<Interaction> interactions;
    private final Map<PressInteraction.Press, PressInteraction.Press> mappedPresses;

    private MappedInteractionSource(InteractionSource interactionSource, long j) {
        this.delta = j;
        this.mappedPresses = new LinkedHashMap();
        final hd3<Interaction> interactions = interactionSource.getInteractions();
        this.interactions = new hd3<Interaction>() { // from class: androidx.compose.material3.internal.MappedInteractionSource$special$$inlined$map$1

            /* JADX INFO: renamed from: androidx.compose.material3.internal.MappedInteractionSource$special$$inlined$map$1$2, reason: invalid class name */
            public static final class AnonymousClass2<T> implements id3 {
                final /* synthetic */ id3 $this_unsafeFlow;
                final /* synthetic */ MappedInteractionSource this$0;

                /* JADX INFO: renamed from: androidx.compose.material3.internal.MappedInteractionSource$special$$inlined$map$1$2$1, reason: invalid class name */
                @bd2(c = "androidx.compose.material3.internal.MappedInteractionSource$special$$inlined$map$1$2", f = "MappedInteractionSource.kt", l = {219}, m = "emit")
                public static final class AnonymousClass1 extends f02 {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(e02 e02Var) {
                        super(e02Var);
                    }

                    @Override // defpackage.cd0
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(id3 id3Var, MappedInteractionSource mappedInteractionSource) {
                    this.$this_unsafeFlow = id3Var;
                    this.this$0 = mappedInteractionSource;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference fix 'apply assigned field type' failed
                java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
                	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                 */
                @Override // defpackage.id3
                public final Object emit(Object obj, e02 e02Var) {
                    AnonymousClass1 anonymousClass1;
                    Object release;
                    if (e02Var instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) e02Var;
                        int i = anonymousClass1.label;
                        if ((i & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.label = i - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(e02Var);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(e02Var);
                    }
                    Object obj2 = anonymousClass1.result;
                    a32 a32Var = a32.COROUTINE_SUSPENDED;
                    int i2 = anonymousClass1.label;
                    if (i2 == 0) {
                        r57.b(obj2);
                        id3 id3Var = this.$this_unsafeFlow;
                        Interaction interaction = (Interaction) obj;
                        if (interaction instanceof PressInteraction.Press) {
                            PressInteraction.Press pressMapPress = this.this$0.mapPress((PressInteraction.Press) interaction);
                            this.this$0.mappedPresses.put(interaction, pressMapPress);
                            release = pressMapPress;
                        } else if (interaction instanceof PressInteraction.Cancel) {
                            PressInteraction.Cancel cancel = (PressInteraction.Cancel) interaction;
                            PressInteraction.Press press = (PressInteraction.Press) this.this$0.mappedPresses.remove(cancel.getPress());
                            release = cancel;
                            if (press != null) {
                                release = new PressInteraction.Cancel(press);
                            }
                        } else {
                            boolean z = interaction instanceof PressInteraction.Release;
                            release = interaction;
                            if (z) {
                                PressInteraction.Release release2 = (PressInteraction.Release) interaction;
                                PressInteraction.Press press2 = (PressInteraction.Press) this.this$0.mappedPresses.remove(release2.getPress());
                                release = release2;
                                if (press2 != null) {
                                    release = new PressInteraction.Release(press2);
                                }
                            }
                        }
                        anonymousClass1.label = 1;
                        if (id3Var.emit(release, anonymousClass1) == a32Var) {
                            return a32Var;
                        }
                    } else {
                        if (i2 != 1) {
                            ah.f("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        r57.b(obj2);
                    }
                    return j59.a;
                }
            }

            @Override // defpackage.hd3
            public Object collect(id3<? super Interaction> id3Var, e02 e02Var) {
                Object objCollect = interactions.collect(new AnonymousClass2(id3Var, this), e02Var);
                return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PressInteraction.Press mapPress(PressInteraction.Press press) {
        return new PressInteraction.Press(Offset.m5991minusMKHz9U(press.m1681getPressPositionF1C5BW0(), this.delta), null);
    }

    @Override // androidx.compose.foundation.interaction.InteractionSource
    public hd3<Interaction> getInteractions() {
        return this.interactions;
    }

    public /* synthetic */ MappedInteractionSource(InteractionSource interactionSource, long j, jh2 jh2Var) {
        this(interactionSource, j);
    }
}
