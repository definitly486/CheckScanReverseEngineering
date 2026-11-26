.class public final Lps;
.super Landroidx/compose/ui/graphics/painter/Painter;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/RememberObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lps$a;,
        Lps$b;
    }
.end annotation


# static fields
.field public static final s:Los;


# instance fields
.field public final b:Landroidx/compose/runtime/MutableState;

.field public c:F

.field public d:Landroidx/compose/ui/graphics/ColorFilter;

.field public e:Z

.field public f:Lmb4;

.field public g:Lzs7;

.field public h:J

.field public i:Ly22;

.field public j:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "-",
            "Lps$b;",
            "+",
            "Lps$b;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "-",
            "Lps$b;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field public l:Landroidx/compose/ui/layout/ContentScale;

.field public m:I

.field public n:Lss;

.field public o:Lps$a;

.field public final p:Lz68;

.field public final q:Lz68;

.field public final r:Lgy6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Los;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Los;-><init>(I)V

    sput-object v0, Lps;->s:Los;

    return-void
.end method

.method public constructor <init>(Lps$a;)V
    .locals 2

    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Lps;->b:Landroidx/compose/runtime/MutableState;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lps;->c:F

    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide v0

    iput-wide v0, p0, Lps;->h:J

    sget-object v0, Lps;->s:Los;

    iput-object v0, p0, Lps;->j:Lnl3;

    sget-object v0, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/layout/ContentScale$Companion;->getFit()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v0

    iput-object v0, p0, Lps;->l:Landroidx/compose/ui/layout/ContentScale;

    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultFilterQuality-f-v9h1I()I

    move-result v0

    iput v0, p0, Lps;->m:I

    iput-object p1, p0, Lps;->o:Lps$a;

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lps;->p:Lz68;

    sget-object p1, Lps$b$a;->a:Lps$b$a;

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lps;->q:Lz68;

    invoke-static {p1}, Lbf3;->b(Lxg5;)Lgy6;

    move-result-object p1

    iput-object p1, p0, Lps;->r:Lgy6;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/graphics/painter/Painter;
    .locals 0

    iget-object p0, p0, Lps;->b:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/painter/Painter;

    return-object p0
.end method

.method public final applyAlpha(F)Z
    .locals 0

    iput p1, p0, Lps;->c:F

    const/4 p0, 0x1

    return p0
.end method

.method public final applyColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)Z
    .locals 0

    iput-object p1, p0, Lps;->d:Landroidx/compose/ui/graphics/ColorFilter;

    const/4 p0, 0x1

    return p0
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lps;->o:Lps$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lps;->i:Ly22;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    new-instance v3, Lps$c;

    invoke-direct {v3, p0, v0, v2}, Lps$c;-><init>(Lps;Lps$a;Le02;)V

    invoke-interface {v1}, Ly22;->getCoroutineContext()Lo22;

    move-result-object v0

    sget v4, Lnb9;->b:I

    sget-object v4, Lr22;->Key:Lr22$a;

    invoke-interface {v0, v4}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object v0

    check-cast v0, Lr22;

    if-eqz v0, :cond_2

    sget-object v4, Lqo2;->b:Ld59;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v4, Lok2;

    invoke-interface {v1}, Ly22;->getCoroutineContext()Lo22;

    move-result-object v1

    invoke-direct {v4, v1}, Lej3;-><init>(Lo22;)V

    invoke-static {v4}, Lz22;->a(Lo22;)Lkz1;

    move-result-object v1

    new-instance v4, Lpk2;

    invoke-direct {v4, v0}, Lpk2;-><init>(Lr22;)V

    sget-object v0, Lc32;->UNDISPATCHED:Lc32;

    invoke-static {v1, v4, v0, v3}, Lav0;->b(Ly22;Lo22;Lc32;Lbm3;)Ls68;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Lqo2;->b:Ld59;

    sget-object v4, Lc32;->UNDISPATCHED:Lc32;

    invoke-static {v1, v0, v4, v3}, Lav0;->b(Ly22;Lo22;Lc32;Lbm3;)Ls68;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lps;->f:Lmb4;

    if-eqz v1, :cond_3

    invoke-interface {v1, v2}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_3
    iput-object v0, p0, Lps;->f:Lmb4;

    return-void

    :cond_4
    const-string p0, "scope"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    throw v2
.end method

.method public final c(Lps$a;)V
    .locals 2

    iget-object v0, p0, Lps;->o:Lps$a;

    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p1, p0, Lps;->o:Lps$a;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object v1, p0, Lps;->f:Lmb4;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v0, p0, Lps;->f:Lmb4;

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lps;->e:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lps;->b()V

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    iget-object p0, p0, Lps;->p:Lz68;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0, p1}, Lz68;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public final d(Lb24;Z)Lb24;
    .locals 7

    iget-object v0, p1, Lb24;->o:Lw18;

    iget-object v1, p1, Lb24;->s:Lb24$c;

    instance-of v2, v0, Las2;

    if-eqz v2, :cond_2

    check-cast v0, Las2;

    iget-object v2, p0, Lps;->g:Lzs7;

    if-nez v2, :cond_1

    sget-object v2, Lcu0;->DROP_OLDEST:Lcu0;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v4, v5, v2, v3}, Lbt7;->b(IILcu0;I)Lzs7;

    move-result-object v2

    iget-wide v3, p0, Lps;->h:J

    const-wide v5, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    move-result-object v3

    invoke-virtual {v2, v3}, Lzs7;->e(Ljava/lang/Object;)Z

    :cond_0
    iput-object v2, p0, Lps;->g:Lzs7;

    :cond_1
    invoke-interface {v0}, Las2;->b()V

    :cond_2
    invoke-static {p1}, Lb24;->a(Lb24;)Lb24$a;

    move-result-object v0

    new-instance v2, Lps$d;

    invoke-direct {v2, p1, p0}, Lps$d;-><init>(Lb24;Lps;)V

    iput-object v2, v0, Lb24$a;->d:Lxk8;

    iget-object p1, v1, Lb24$c;->d:Lw18;

    if-nez p1, :cond_3

    sget-object p1, Lw18;->u1:Liz6;

    iput-object p1, v0, Lb24$a;->i:Lw18;

    :cond_3
    iget-object p1, v1, Lb24$c;->e:Lmd7;

    if-nez p1, :cond_6

    iget-object p0, p0, Lps;->l:Landroidx/compose/ui/layout/ContentScale;

    sget p1, Lnb9;->b:I

    sget-object p1, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/layout/ContentScale$Companion;->getFit()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v2

    invoke-static {p0, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Landroidx/compose/ui/layout/ContentScale$Companion;->getInside()Landroidx/compose/ui/layout/ContentScale;

    move-result-object p1

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    sget-object p0, Lmd7;->FILL:Lmd7;

    goto :goto_1

    :cond_5
    :goto_0
    sget-object p0, Lmd7;->FIT:Lmd7;

    :goto_1
    iput-object p0, v0, Lb24$a;->j:Lmd7;

    :cond_6
    iget-object p0, v1, Lb24$c;->f:Lre6;

    if-nez p0, :cond_7

    sget-object p0, Lre6;->INEXACT:Lre6;

    iput-object p0, v0, Lb24$a;->k:Lre6;

    :cond_7
    if-eqz p2, :cond_8

    sget-object p0, Lgx2;->b:Lgx2;

    iput-object p0, v0, Lb24$a;->f:Lo22;

    iput-object p0, v0, Lb24$a;->g:Lo22;

    iput-object p0, v0, Lb24$a;->h:Lo22;

    :cond_8
    invoke-virtual {v0}, Lb24$a;->a()Lb24;

    move-result-object p0

    return-object p0
.end method

.method public final e(Lps$b;)V
    .locals 5

    iget-object v0, p0, Lps;->q:Lz68;

    invoke-virtual {v0}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lps$b;

    iget-object v2, p0, Lps;->j:Lnl3;

    invoke-interface {v2, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lps$b;

    invoke-virtual {v0, p1}, Lz68;->setValue(Ljava/lang/Object;)V

    instance-of v0, p1, Lps$b$d;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lps$b$d;

    iget-object v0, v0, Lps$b$d;->b:Lzc8;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lps$b$b;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lps$b$b;

    iget-object v0, v0, Lps$b$b;->b:Lu03;

    :goto_0
    invoke-interface {v0}, Lg24;->getRequest()Lb24;

    move-result-object v3

    sget-object v4, Lf24;->a:Lb53$b;

    invoke-static {v3, v4}, Lc53;->a(Lb24;Lb53$b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj29;

    sget-object v4, Lqs;->a:Lqs$a;

    invoke-interface {v3, v4, v0}, Lj29;->a(Lp29;Lg24;)Lio5;

    :cond_1
    invoke-interface {p1}, Lps$b;->a()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v0

    iget-object v3, p0, Lps;->b:Landroidx/compose/runtime/MutableState;

    invoke-interface {v3, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {v1}, Lps$b;->a()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v0

    invoke-interface {p1}, Lps$b;->a()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v3

    if-eq v0, v3, :cond_5

    invoke-interface {v1}, Lps$b;->a()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v0

    instance-of v1, v0, Landroidx/compose/runtime/RememberObserver;

    if-eqz v1, :cond_2

    check-cast v0, Landroidx/compose/runtime/RememberObserver;

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroidx/compose/runtime/RememberObserver;->onForgotten()V

    :cond_3
    invoke-interface {p1}, Lps$b;->a()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v0

    instance-of v1, v0, Landroidx/compose/runtime/RememberObserver;

    if-eqz v1, :cond_4

    move-object v2, v0

    check-cast v2, Landroidx/compose/runtime/RememberObserver;

    :cond_4
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroidx/compose/runtime/RememberObserver;->onRemembered()V

    :cond_5
    iget-object p0, p0, Lps;->k:Lnl3;

    if-eqz p0, :cond_6

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method

.method public final getIntrinsicSize-NH-jbRc()J
    .locals 2

    invoke-virtual {p0}, Lps;->a()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/painter/Painter;->getIntrinsicSize-NH-jbRc()J

    move-result-wide v0

    return-wide v0

    :cond_0
    sget-object p0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onAbandoned()V
    .locals 3

    iget-object v0, p0, Lps;->f:Lmb4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v1, p0, Lps;->f:Lmb4;

    invoke-virtual {p0}, Lps;->a()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v0

    instance-of v2, v0, Landroidx/compose/runtime/RememberObserver;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Landroidx/compose/runtime/RememberObserver;

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroidx/compose/runtime/RememberObserver;->onAbandoned()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lps;->e:Z

    return-void
.end method

.method public final onDraw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 9

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v0

    iget-wide v2, p0, Lps;->h:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_0

    iput-wide v0, p0, Lps;->h:J

    iget-object v2, p0, Lps;->g:Lzs7;

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    move-result-object v0

    invoke-virtual {v2, v0}, Lzs7;->e(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lps;->a()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v5

    iget v7, p0, Lps;->c:F

    iget-object v8, p0, Lps;->d:Landroidx/compose/ui/graphics/ColorFilter;

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroidx/compose/ui/graphics/painter/Painter;->draw-x_KDEd0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFLandroidx/compose/ui/graphics/ColorFilter;)V

    :cond_1
    return-void
.end method

.method public final onForgotten()V
    .locals 3

    iget-object v0, p0, Lps;->f:Lmb4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v1, p0, Lps;->f:Lmb4;

    invoke-virtual {p0}, Lps;->a()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v0

    instance-of v2, v0, Landroidx/compose/runtime/RememberObserver;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Landroidx/compose/runtime/RememberObserver;

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroidx/compose/runtime/RememberObserver;->onForgotten()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lps;->e:Z

    return-void
.end method

.method public final onRemembered()V
    .locals 2

    const-string v0, "AsyncImagePainter.onRemembered"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lps;->a()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v0

    instance-of v1, v0, Landroidx/compose/runtime/RememberObserver;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/compose/runtime/RememberObserver;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/compose/runtime/RememberObserver;->onRemembered()V

    :cond_1
    invoke-virtual {p0}, Lps;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lps;->e:Z

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method
