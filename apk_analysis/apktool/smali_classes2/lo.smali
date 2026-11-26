.class public final synthetic Llo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:F

.field public final synthetic f:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic g:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic h:Landroidx/compose/material3/BottomAppBarScrollBehavior;

.field public final synthetic i:Ldm3;

.field public final synthetic j:I

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/BottomAppBarScrollBehavior;Ldm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llo;->b:Landroidx/compose/ui/Modifier;

    iput-wide p2, p0, Llo;->c:J

    iput-wide p4, p0, Llo;->d:J

    iput p6, p0, Llo;->e:F

    iput-object p7, p0, Llo;->f:Landroidx/compose/foundation/layout/PaddingValues;

    iput-object p8, p0, Llo;->g:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p9, p0, Llo;->h:Landroidx/compose/material3/BottomAppBarScrollBehavior;

    iput-object p10, p0, Llo;->i:Ldm3;

    iput p11, p0, Llo;->j:I

    iput p12, p0, Llo;->k:I

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

    iget-object v0, p0, Llo;->b:Landroidx/compose/ui/Modifier;

    iget-wide v1, p0, Llo;->c:J

    iget-wide v3, p0, Llo;->d:J

    iget v5, p0, Llo;->e:F

    iget-object v6, p0, Llo;->f:Landroidx/compose/foundation/layout/PaddingValues;

    iget-object v7, p0, Llo;->g:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v8, p0, Llo;->h:Landroidx/compose/material3/BottomAppBarScrollBehavior;

    iget-object v9, p0, Llo;->i:Ldm3;

    iget v10, p0, Llo;->j:I

    iget v11, p0, Llo;->k:I

    invoke-static/range {v0 .. v13}, Landroidx/compose/material3/AppBarKt;->G(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/BottomAppBarScrollBehavior;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
