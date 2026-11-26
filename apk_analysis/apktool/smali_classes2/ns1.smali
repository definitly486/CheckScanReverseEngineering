.class public final synthetic Lns1;
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

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lns1;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput-object p2, p0, Lns1;->c:Ljava/lang/Object;

    iput-object p3, p0, Lns1;->d:Ljava/lang/Object;

    iput-object p4, p0, Lns1;->e:Ljava/lang/Object;

    iput-object p5, p0, Lns1;->f:Ljava/lang/Object;

    iput-object p6, p0, Lns1;->g:Ljava/lang/Object;

    iput-object p7, p0, Lns1;->h:Ljava/lang/Object;

    iput-object p8, p0, Lns1;->i:Ljava/lang/Object;

    iput-object p9, p0, Lns1;->j:Ljava/lang/Object;

    iput-object p10, p0, Lns1;->k:Ljava/lang/Object;

    iput-object p11, p0, Lns1;->l:Ljava/lang/Object;

    iput p12, p0, Lns1;->m:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    move-object v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v0, p0, Lns1;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iget-object v1, p0, Lns1;->c:Ljava/lang/Object;

    iget-object v2, p0, Lns1;->d:Ljava/lang/Object;

    iget-object v3, p0, Lns1;->e:Ljava/lang/Object;

    iget-object v4, p0, Lns1;->f:Ljava/lang/Object;

    iget-object v5, p0, Lns1;->g:Ljava/lang/Object;

    iget-object v6, p0, Lns1;->h:Ljava/lang/Object;

    iget-object v7, p0, Lns1;->i:Ljava/lang/Object;

    iget-object v8, p0, Lns1;->j:Ljava/lang/Object;

    iget-object v9, p0, Lns1;->k:Ljava/lang/Object;

    iget-object v10, p0, Lns1;->l:Ljava/lang/Object;

    iget v11, p0, Lns1;->m:I

    invoke-static/range {v0 .. v13}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->m(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
