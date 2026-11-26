.class public final synthetic Lcj8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Landroidx/compose/foundation/ScrollState;

.field public final synthetic e:J

.field public final synthetic f:J

.field public final synthetic g:F

.field public final synthetic h:Ldm3;

.field public final synthetic i:Lbm3;

.field public final synthetic j:Lbm3;

.field public final synthetic k:I

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(FIIIJJLbm3;Lbm3;Ldm3;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/Modifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcj8;->b:I

    iput-object p13, p0, Lcj8;->c:Landroidx/compose/ui/Modifier;

    iput-object p12, p0, Lcj8;->d:Landroidx/compose/foundation/ScrollState;

    iput-wide p5, p0, Lcj8;->e:J

    iput-wide p7, p0, Lcj8;->f:J

    iput p1, p0, Lcj8;->g:F

    iput-object p11, p0, Lcj8;->h:Ldm3;

    iput-object p9, p0, Lcj8;->i:Lbm3;

    iput-object p10, p0, Lcj8;->j:Lbm3;

    iput p3, p0, Lcj8;->k:I

    iput p4, p0, Lcj8;->l:I

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

    iget v1, v0, Lcj8;->b:I

    move v2, v1

    iget-object v1, v0, Lcj8;->h:Ldm3;

    move v3, v2

    iget-object v2, v0, Lcj8;->c:Landroidx/compose/ui/Modifier;

    move v5, v3

    iget-wide v3, v0, Lcj8;->e:J

    move v7, v5

    iget-wide v5, v0, Lcj8;->f:J

    move v8, v7

    iget v7, v0, Lcj8;->g:F

    move v9, v8

    iget-object v8, v0, Lcj8;->i:Lbm3;

    move v10, v9

    iget-object v9, v0, Lcj8;->j:Lbm3;

    move v11, v10

    iget-object v10, v0, Lcj8;->d:Landroidx/compose/foundation/ScrollState;

    move v12, v11

    iget v11, v0, Lcj8;->k:I

    iget v0, v0, Lcj8;->l:I

    move v15, v12

    move v12, v0

    move v0, v15

    invoke-static/range {v0 .. v14}, Landroidx/compose/material3/TabRowKt;->i(ILdm3;Landroidx/compose/ui/Modifier;JJFLbm3;Lbm3;Landroidx/compose/foundation/ScrollState;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
