.class public final synthetic Lbo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic f:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field public final synthetic g:F

.field public final synthetic h:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic i:Landroidx/compose/material3/BottomAppBarScrollBehavior;

.field public final synthetic j:Ldm3;

.field public final synthetic k:I

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;JJLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Horizontal;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/BottomAppBarScrollBehavior;Ldm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbo;->b:Landroidx/compose/ui/Modifier;

    iput-wide p2, p0, Lbo;->c:J

    iput-wide p4, p0, Lbo;->d:J

    iput-object p6, p0, Lbo;->e:Landroidx/compose/foundation/layout/PaddingValues;

    iput-object p7, p0, Lbo;->f:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iput p8, p0, Lbo;->g:F

    iput-object p9, p0, Lbo;->h:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p10, p0, Lbo;->i:Landroidx/compose/material3/BottomAppBarScrollBehavior;

    iput-object p11, p0, Lbo;->j:Ldm3;

    iput p12, p0, Lbo;->k:I

    iput p13, p0, Lbo;->l:I

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

    iget-object v1, v0, Lbo;->b:Landroidx/compose/ui/Modifier;

    move-object v3, v1

    iget-wide v1, v0, Lbo;->c:J

    move-object v5, v3

    iget-wide v3, v0, Lbo;->d:J

    move-object v6, v5

    iget-object v5, v0, Lbo;->e:Landroidx/compose/foundation/layout/PaddingValues;

    move-object v7, v6

    iget-object v6, v0, Lbo;->f:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-object v8, v7

    iget v7, v0, Lbo;->g:F

    move-object v9, v8

    iget-object v8, v0, Lbo;->h:Landroidx/compose/foundation/layout/WindowInsets;

    move-object v10, v9

    iget-object v9, v0, Lbo;->i:Landroidx/compose/material3/BottomAppBarScrollBehavior;

    move-object v11, v10

    iget-object v10, v0, Lbo;->j:Ldm3;

    move-object v12, v11

    iget v11, v0, Lbo;->k:I

    iget v0, v0, Lbo;->l:I

    move-object v15, v12

    move v12, v0

    move-object v0, v15

    invoke-static/range {v0 .. v14}, Landroidx/compose/material3/AppBarKt;->a(Landroidx/compose/ui/Modifier;JJLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Horizontal;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/BottomAppBarScrollBehavior;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
