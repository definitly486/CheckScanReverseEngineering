.class public final synthetic Lyi8;
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

.field public final synthetic j:F

.field public final synthetic k:Lbm3;

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;JJFLdm3;Lbm3;FLbm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lyi8;->b:I

    iput-object p2, p0, Lyi8;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lyi8;->d:Landroidx/compose/foundation/ScrollState;

    iput-wide p4, p0, Lyi8;->e:J

    iput-wide p6, p0, Lyi8;->f:J

    iput p8, p0, Lyi8;->g:F

    iput-object p9, p0, Lyi8;->h:Ldm3;

    iput-object p10, p0, Lyi8;->i:Lbm3;

    iput p11, p0, Lyi8;->j:F

    iput-object p12, p0, Lyi8;->k:Lbm3;

    iput p13, p0, Lyi8;->l:I

    iput p14, p0, Lyi8;->m:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v16

    iget v1, v0, Lyi8;->b:I

    iget-object v2, v0, Lyi8;->c:Landroidx/compose/ui/Modifier;

    iget-object v3, v0, Lyi8;->d:Landroidx/compose/foundation/ScrollState;

    iget-wide v4, v0, Lyi8;->e:J

    iget-wide v6, v0, Lyi8;->f:J

    iget v8, v0, Lyi8;->g:F

    iget-object v9, v0, Lyi8;->h:Ldm3;

    iget-object v10, v0, Lyi8;->i:Lbm3;

    iget v11, v0, Lyi8;->j:F

    iget-object v12, v0, Lyi8;->k:Lbm3;

    iget v13, v0, Lyi8;->l:I

    iget v14, v0, Lyi8;->m:I

    invoke-static/range {v1 .. v16}, Landroidx/compose/material3/TabRowKt;->e(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;JJFLdm3;Lbm3;FLbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
