.class public final synthetic Lwn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:J

.field public final synthetic f:J

.field public final synthetic g:F

.field public final synthetic h:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic i:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic j:Landroidx/compose/material3/BottomAppBarScrollBehavior;

.field public final synthetic k:Ldm3;

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(FLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/BottomAppBarScrollBehavior;Ldm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lwn;->b:F

    iput-object p2, p0, Lwn;->c:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iput-object p3, p0, Lwn;->d:Landroidx/compose/ui/Modifier;

    iput-wide p4, p0, Lwn;->e:J

    iput-wide p6, p0, Lwn;->f:J

    iput p8, p0, Lwn;->g:F

    iput-object p9, p0, Lwn;->h:Landroidx/compose/foundation/layout/PaddingValues;

    iput-object p10, p0, Lwn;->i:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p11, p0, Lwn;->j:Landroidx/compose/material3/BottomAppBarScrollBehavior;

    iput-object p12, p0, Lwn;->k:Ldm3;

    iput p13, p0, Lwn;->l:I

    iput p14, p0, Lwn;->m:I

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

    iget v1, v0, Lwn;->b:F

    iget-object v2, v0, Lwn;->c:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iget-object v3, v0, Lwn;->d:Landroidx/compose/ui/Modifier;

    iget-wide v4, v0, Lwn;->e:J

    iget-wide v6, v0, Lwn;->f:J

    iget v8, v0, Lwn;->g:F

    iget-object v9, v0, Lwn;->h:Landroidx/compose/foundation/layout/PaddingValues;

    iget-object v10, v0, Lwn;->i:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v11, v0, Lwn;->j:Landroidx/compose/material3/BottomAppBarScrollBehavior;

    iget-object v12, v0, Lwn;->k:Ldm3;

    iget v13, v0, Lwn;->l:I

    iget v14, v0, Lwn;->m:I

    invoke-static/range {v1 .. v16}, Landroidx/compose/material3/AppBarKt;->q(FLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/BottomAppBarScrollBehavior;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
