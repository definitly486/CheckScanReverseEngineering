.class public final synthetic Ldj8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:J

.field public final synthetic e:J

.field public final synthetic f:F

.field public final synthetic g:F

.field public final synthetic h:Landroidx/compose/foundation/ScrollState;

.field public final synthetic i:Ldm3;

.field public final synthetic j:Lbm3;

.field public final synthetic k:Lbm3;

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(ILandroidx/compose/ui/Modifier;JJFFLandroidx/compose/foundation/ScrollState;Ldm3;Lbm3;Lbm3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ldj8;->b:I

    iput-object p2, p0, Ldj8;->c:Landroidx/compose/ui/Modifier;

    iput-wide p3, p0, Ldj8;->d:J

    iput-wide p5, p0, Ldj8;->e:J

    iput p7, p0, Ldj8;->f:F

    iput p8, p0, Ldj8;->g:F

    iput-object p9, p0, Ldj8;->h:Landroidx/compose/foundation/ScrollState;

    iput-object p10, p0, Ldj8;->i:Ldm3;

    iput-object p11, p0, Ldj8;->j:Lbm3;

    iput-object p12, p0, Ldj8;->k:Lbm3;

    iput p13, p0, Ldj8;->l:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    check-cast v13, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget v1, v0, Ldj8;->b:I

    move v2, v1

    iget-object v1, v0, Ldj8;->c:Landroidx/compose/ui/Modifier;

    move v4, v2

    iget-wide v2, v0, Ldj8;->d:J

    move v6, v4

    iget-wide v4, v0, Ldj8;->e:J

    move v7, v6

    iget v6, v0, Ldj8;->f:F

    move v8, v7

    iget v7, v0, Ldj8;->g:F

    move v9, v8

    iget-object v8, v0, Ldj8;->h:Landroidx/compose/foundation/ScrollState;

    move v10, v9

    iget-object v9, v0, Ldj8;->i:Ldm3;

    move v11, v10

    iget-object v10, v0, Ldj8;->j:Lbm3;

    move v12, v11

    iget-object v11, v0, Ldj8;->k:Lbm3;

    iget v0, v0, Ldj8;->l:I

    move v15, v12

    move v12, v0

    move v0, v15

    invoke-static/range {v0 .. v14}, Landroidx/compose/material3/TabRowKt;->k(ILandroidx/compose/ui/Modifier;JJFFLandroidx/compose/foundation/ScrollState;Ldm3;Lbm3;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
