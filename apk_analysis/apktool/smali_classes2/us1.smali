.class public final synthetic Lus1;
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

.field public final synthetic j:Ljava/lang/Object;

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lus1;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput-object p2, p0, Lus1;->c:Ljava/lang/Object;

    iput-object p3, p0, Lus1;->d:Ljava/lang/Object;

    iput-object p4, p0, Lus1;->e:Ljava/lang/Object;

    iput-object p5, p0, Lus1;->f:Ljava/lang/Object;

    iput-object p6, p0, Lus1;->g:Ljava/lang/Object;

    iput-object p7, p0, Lus1;->h:Ljava/lang/Object;

    iput-object p8, p0, Lus1;->i:Ljava/lang/Object;

    iput-object p9, p0, Lus1;->j:Ljava/lang/Object;

    iput p10, p0, Lus1;->k:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v0, p0, Lus1;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iget-object v1, p0, Lus1;->c:Ljava/lang/Object;

    iget-object v2, p0, Lus1;->d:Ljava/lang/Object;

    iget-object v3, p0, Lus1;->e:Ljava/lang/Object;

    iget-object v4, p0, Lus1;->f:Ljava/lang/Object;

    iget-object v5, p0, Lus1;->g:Ljava/lang/Object;

    iget-object v6, p0, Lus1;->h:Ljava/lang/Object;

    iget-object v7, p0, Lus1;->i:Ljava/lang/Object;

    iget-object v8, p0, Lus1;->j:Ljava/lang/Object;

    iget v9, p0, Lus1;->k:I

    invoke-static/range {v0 .. v11}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->h(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
