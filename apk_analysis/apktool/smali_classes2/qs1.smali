.class public final synthetic Lqs1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqs1;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput-object p2, p0, Lqs1;->c:Ljava/lang/Object;

    iput-object p3, p0, Lqs1;->d:Ljava/lang/Object;

    iput-object p4, p0, Lqs1;->e:Ljava/lang/Object;

    iput-object p5, p0, Lqs1;->f:Ljava/lang/Object;

    iput-object p6, p0, Lqs1;->g:Ljava/lang/Object;

    iput-object p7, p0, Lqs1;->h:Ljava/lang/Object;

    iput-object p8, p0, Lqs1;->i:Ljava/lang/Object;

    iput p9, p0, Lqs1;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v0, p0, Lqs1;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iget-object v1, p0, Lqs1;->c:Ljava/lang/Object;

    iget-object v2, p0, Lqs1;->d:Ljava/lang/Object;

    iget-object v3, p0, Lqs1;->e:Ljava/lang/Object;

    iget-object v4, p0, Lqs1;->f:Ljava/lang/Object;

    iget-object v5, p0, Lqs1;->g:Ljava/lang/Object;

    iget-object v6, p0, Lqs1;->h:Ljava/lang/Object;

    iget-object v7, p0, Lqs1;->i:Ljava/lang/Object;

    iget v8, p0, Lqs1;->j:I

    invoke-static/range {v0 .. v10}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->q(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
