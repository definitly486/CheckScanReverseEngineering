.class public final synthetic Lks1;
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

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:I

.field public final synthetic q:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lks1;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput-object p2, p0, Lks1;->c:Ljava/lang/Object;

    iput-object p3, p0, Lks1;->d:Ljava/lang/Object;

    iput-object p4, p0, Lks1;->e:Ljava/lang/Object;

    iput-object p5, p0, Lks1;->f:Ljava/lang/Object;

    iput-object p6, p0, Lks1;->g:Ljava/lang/Object;

    iput-object p7, p0, Lks1;->h:Ljava/lang/Object;

    iput-object p8, p0, Lks1;->i:Ljava/lang/Object;

    iput-object p9, p0, Lks1;->j:Ljava/lang/Object;

    iput-object p10, p0, Lks1;->k:Ljava/lang/Object;

    iput-object p11, p0, Lks1;->l:Ljava/lang/Object;

    iput-object p12, p0, Lks1;->m:Ljava/lang/Object;

    iput-object p13, p0, Lks1;->n:Ljava/lang/Object;

    iput-object p14, p0, Lks1;->o:Ljava/lang/Object;

    iput p15, p0, Lks1;->p:I

    move/from16 p1, p16

    iput p1, p0, Lks1;->q:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v17, p1

    check-cast v17, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v18

    iget-object v1, v0, Lks1;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iget-object v2, v0, Lks1;->c:Ljava/lang/Object;

    iget-object v3, v0, Lks1;->d:Ljava/lang/Object;

    iget-object v4, v0, Lks1;->e:Ljava/lang/Object;

    iget-object v5, v0, Lks1;->f:Ljava/lang/Object;

    iget-object v6, v0, Lks1;->g:Ljava/lang/Object;

    iget-object v7, v0, Lks1;->h:Ljava/lang/Object;

    iget-object v8, v0, Lks1;->i:Ljava/lang/Object;

    iget-object v9, v0, Lks1;->j:Ljava/lang/Object;

    iget-object v10, v0, Lks1;->k:Ljava/lang/Object;

    iget-object v11, v0, Lks1;->l:Ljava/lang/Object;

    iget-object v12, v0, Lks1;->m:Ljava/lang/Object;

    iget-object v13, v0, Lks1;->n:Ljava/lang/Object;

    iget-object v14, v0, Lks1;->o:Ljava/lang/Object;

    iget v15, v0, Lks1;->p:I

    iget v0, v0, Lks1;->q:I

    move/from16 v16, v0

    invoke-static/range {v1 .. v18}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->p(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
