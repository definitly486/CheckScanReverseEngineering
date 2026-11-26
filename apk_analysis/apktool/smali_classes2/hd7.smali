.class public final synthetic Lhd7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lbm3;

.field public final synthetic d:Lbm3;

.field public final synthetic e:Lbm3;

.field public final synthetic f:Lbm3;

.field public final synthetic g:I

.field public final synthetic h:J

.field public final synthetic i:J

.field public final synthetic j:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic k:Ldm3;

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lbm3;Lbm3;Lbm3;Lbm3;IJJLandroidx/compose/foundation/layout/WindowInsets;Ldm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhd7;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lhd7;->c:Lbm3;

    iput-object p3, p0, Lhd7;->d:Lbm3;

    iput-object p4, p0, Lhd7;->e:Lbm3;

    iput-object p5, p0, Lhd7;->f:Lbm3;

    iput p6, p0, Lhd7;->g:I

    iput-wide p7, p0, Lhd7;->h:J

    iput-wide p9, p0, Lhd7;->i:J

    iput-object p11, p0, Lhd7;->j:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p12, p0, Lhd7;->k:Ldm3;

    iput p13, p0, Lhd7;->l:I

    iput p14, p0, Lhd7;->m:I

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

    iget-object v1, v0, Lhd7;->b:Landroidx/compose/ui/Modifier;

    iget-object v2, v0, Lhd7;->c:Lbm3;

    iget-object v3, v0, Lhd7;->d:Lbm3;

    iget-object v4, v0, Lhd7;->e:Lbm3;

    iget-object v5, v0, Lhd7;->f:Lbm3;

    iget v6, v0, Lhd7;->g:I

    iget-wide v7, v0, Lhd7;->h:J

    iget-wide v9, v0, Lhd7;->i:J

    iget-object v11, v0, Lhd7;->j:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v12, v0, Lhd7;->k:Ldm3;

    iget v13, v0, Lhd7;->l:I

    iget v14, v0, Lhd7;->m:I

    invoke-static/range {v1 .. v16}, Landroidx/compose/material3/ScaffoldKt;->c(Landroidx/compose/ui/Modifier;Lbm3;Lbm3;Lbm3;Lbm3;IJJLandroidx/compose/foundation/layout/WindowInsets;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
