.class public final synthetic Lps1;
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

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lps1;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput-object p2, p0, Lps1;->c:Ljava/lang/Object;

    iput-object p3, p0, Lps1;->d:Ljava/lang/Object;

    iput-object p4, p0, Lps1;->e:Ljava/lang/Object;

    iput-object p5, p0, Lps1;->f:Ljava/lang/Object;

    iput p6, p0, Lps1;->g:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v0, p0, Lps1;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iget-object v1, p0, Lps1;->c:Ljava/lang/Object;

    iget-object v2, p0, Lps1;->d:Ljava/lang/Object;

    iget-object v3, p0, Lps1;->e:Ljava/lang/Object;

    iget-object v4, p0, Lps1;->f:Ljava/lang/Object;

    iget v5, p0, Lps1;->g:I

    invoke-static/range {v0 .. v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->n(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
