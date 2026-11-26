.class public final synthetic Lbn4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;

.field public final synthetic c:I

.field public final synthetic d:F

.field public final synthetic e:Lo07;

.field public final synthetic f:Ln07;

.field public final synthetic g:Z

.field public final synthetic h:F

.field public final synthetic i:Lp07;

.field public final synthetic j:I

.field public final synthetic k:I

.field public final synthetic l:Lr07;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;IFLo07;Ln07;ZFLp07;IILr07;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbn4;->b:Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;

    iput p2, p0, Lbn4;->c:I

    iput p3, p0, Lbn4;->d:F

    iput-object p4, p0, Lbn4;->e:Lo07;

    iput-object p5, p0, Lbn4;->f:Ln07;

    iput-boolean p6, p0, Lbn4;->g:Z

    iput p7, p0, Lbn4;->h:F

    iput-object p8, p0, Lbn4;->i:Lp07;

    iput p9, p0, Lbn4;->j:I

    iput p10, p0, Lbn4;->k:I

    iput-object p11, p0, Lbn4;->l:Lr07;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget-object v10, p0, Lbn4;->l:Lr07;

    move-object v11, p1

    check-cast v11, Landroidx/compose/animation/core/AnimationScope;

    iget-object v0, p0, Lbn4;->b:Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;

    iget v1, p0, Lbn4;->c:I

    iget v2, p0, Lbn4;->d:F

    iget-object v3, p0, Lbn4;->e:Lo07;

    iget-object v4, p0, Lbn4;->f:Ln07;

    iget-boolean v5, p0, Lbn4;->g:Z

    iget v6, p0, Lbn4;->h:F

    iget-object v7, p0, Lbn4;->i:Lp07;

    iget v8, p0, Lbn4;->j:I

    iget v9, p0, Lbn4;->k:I

    invoke-static/range {v0 .. v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;IFLo07;Ln07;ZFLp07;IILr07;Landroidx/compose/animation/core/AnimationScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
