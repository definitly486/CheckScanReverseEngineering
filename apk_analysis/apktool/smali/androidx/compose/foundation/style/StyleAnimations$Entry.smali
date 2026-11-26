.class public final Landroidx/compose/foundation/style/StyleAnimations$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/style/StyleAnimations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Entry"
.end annotation


# instance fields
.field private final anim:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation
.end field

.field private fromSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private job:Lmb4;

.field private final key:I

.field private state:I

.field private style:Landroidx/compose/foundation/style/Style;

.field private final styleScope:Landroidx/compose/foundation/style/ResolvedStyle;

.field final synthetic this$0:Landroidx/compose/foundation/style/StyleAnimations;

.field private toSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/style/StyleAnimations;ILandroidx/compose/foundation/style/Style;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/AnimationSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/foundation/style/Style;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/style/StyleAnimations$Entry;->this$0:Landroidx/compose/foundation/style/StyleAnimations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroidx/compose/foundation/style/StyleAnimations$Entry;->key:I

    iput-object p3, p0, Landroidx/compose/foundation/style/StyleAnimations$Entry;->style:Landroidx/compose/foundation/style/Style;

    iput-object p4, p0, Landroidx/compose/foundation/style/StyleAnimations$Entry;->toSpec:Landroidx/compose/animation/core/AnimationSpec;

    iput-object p5, p0, Landroidx/compose/foundation/style/StyleAnimations$Entry;->fromSpec:Landroidx/compose/animation/core/AnimationSpec;

    const/4 p1, 0x2

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-static {p3, p3, p1, p2}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/style/StyleAnimations$Entry;->anim:Landroidx/compose/animation/core/Animatable;

    new-instance p1, Landroidx/compose/foundation/style/ResolvedStyle;

    invoke-direct {p1}, Landroidx/compose/foundation/style/ResolvedStyle;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/style/StyleAnimations$Entry;->styleScope:Landroidx/compose/foundation/style/ResolvedStyle;

    const/4 p1, 0x3

    iput p1, p0, Landroidx/compose/foundation/style/StyleAnimations$Entry;->state:I

    return-void
.end method


# virtual methods
.method public final animateIn(Ly22;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/style/StyleAnimations$Entry;->job:Lmb4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    new-instance v0, Landroidx/compose/foundation/style/StyleAnimations$Entry$animateIn$1;

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/style/StyleAnimations$Entry$animateIn$1;-><init>(Landroidx/compose/foundation/style/StyleAnimations$Entry;Le02;)V

    const/4 v2, 0x3

    invoke-static {p1, v1, v1, v0, v2}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/style/StyleAnimations$Entry;->job:Lmb4;

    return-void
.end method

.method public final animateOut(Ly22;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/style/StyleAnimations$Entry;->job:Lmb4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    new-instance v0, Landroidx/compose/foundation/style/StyleAnimations$Entry$animateOut$1;

    iget-object v2, p0, Landroidx/compose/foundation/style/StyleAnimations$Entry;->this$0:Landroidx/compose/foundation/style/StyleAnimations;

    invoke-direct {v0, p0, v2, v1}, Landroidx/compose/foundation/style/StyleAnimations$Entry$animateOut$1;-><init>(Landroidx/compose/foundation/style/StyleAnimations$Entry;Landroidx/compose/foundation/style/StyleAnimations;Le02;)V

    const/4 v2, 0x3

    invoke-static {p1, v1, v1, v0, v2}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/style/StyleAnimations$Entry;->job:Lmb4;

    return-void
.end method

.method public final getAnim()Landroidx/compose/animation/core/Animatable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/style/StyleAnimations$Entry;->anim:Landroidx/compose/animation/core/Animatable;

    return-object p0
.end method

.method public final getFromSpec()Landroidx/compose/animation/core/AnimationSpec;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/style/StyleAnimations$Entry;->fromSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-object p0
.end method

.method public final getJob()Lmb4;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/style/StyleAnimations$Entry;->job:Lmb4;

    return-object p0
.end method

.method public final getKey()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/StyleAnimations$Entry;->key:I

    return p0
.end method

.method public final getState()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/StyleAnimations$Entry;->state:I

    return p0
.end method

.method public final getStyle()Landroidx/compose/foundation/style/Style;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/style/StyleAnimations$Entry;->style:Landroidx/compose/foundation/style/Style;

    return-object p0
.end method

.method public final getStyleScope()Landroidx/compose/foundation/style/ResolvedStyle;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/style/StyleAnimations$Entry;->styleScope:Landroidx/compose/foundation/style/ResolvedStyle;

    return-object p0
.end method

.method public final getToSpec()Landroidx/compose/animation/core/AnimationSpec;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/style/StyleAnimations$Entry;->toSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-object p0
.end method

.method public final setFromSpec(Landroidx/compose/animation/core/AnimationSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/style/StyleAnimations$Entry;->fromSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-void
.end method

.method public final setJob(Lmb4;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/style/StyleAnimations$Entry;->job:Lmb4;

    return-void
.end method

.method public final setState(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/style/StyleAnimations$Entry;->state:I

    return-void
.end method

.method public final setStyle(Landroidx/compose/foundation/style/Style;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/style/StyleAnimations$Entry;->style:Landroidx/compose/foundation/style/Style;

    return-void
.end method

.method public final setToSpec(Landroidx/compose/animation/core/AnimationSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/style/StyleAnimations$Entry;->toSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-void
.end method

.method public final snapIn(Ly22;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/style/StyleAnimations$Entry;->job:Lmb4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    new-instance v0, Landroidx/compose/foundation/style/StyleAnimations$Entry$snapIn$1;

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/style/StyleAnimations$Entry$snapIn$1;-><init>(Landroidx/compose/foundation/style/StyleAnimations$Entry;Le02;)V

    const/4 v2, 0x3

    invoke-static {p1, v1, v1, v0, v2}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/style/StyleAnimations$Entry;->job:Lmb4;

    return-void
.end method

.method public final snapOut(Ly22;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/style/StyleAnimations$Entry;->job:Lmb4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    new-instance v0, Landroidx/compose/foundation/style/StyleAnimations$Entry$snapOut$1;

    iget-object v2, p0, Landroidx/compose/foundation/style/StyleAnimations$Entry;->this$0:Landroidx/compose/foundation/style/StyleAnimations;

    invoke-direct {v0, p0, v2, v1}, Landroidx/compose/foundation/style/StyleAnimations$Entry$snapOut$1;-><init>(Landroidx/compose/foundation/style/StyleAnimations$Entry;Landroidx/compose/foundation/style/StyleAnimations;Le02;)V

    const/4 v2, 0x3

    invoke-static {p1, v1, v1, v0, v2}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/style/StyleAnimations$Entry;->job:Lmb4;

    return-void
.end method
