.class public final synthetic Lio;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Ldm3;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Lbm3;

.field public final synthetic e:J

.field public final synthetic f:J

.field public final synthetic g:F

.field public final synthetic h:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic i:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic j:I

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Ldm3;Landroidx/compose/ui/Modifier;Lbm3;JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio;->b:Ldm3;

    iput-object p2, p0, Lio;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lio;->d:Lbm3;

    iput-wide p4, p0, Lio;->e:J

    iput-wide p6, p0, Lio;->f:J

    iput p8, p0, Lio;->g:F

    iput-object p9, p0, Lio;->h:Landroidx/compose/foundation/layout/PaddingValues;

    iput-object p10, p0, Lio;->i:Landroidx/compose/foundation/layout/WindowInsets;

    iput p11, p0, Lio;->j:I

    iput p12, p0, Lio;->k:I

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

    iget-object v0, p0, Lio;->b:Ldm3;

    iget-object v1, p0, Lio;->c:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Lio;->d:Lbm3;

    iget-wide v3, p0, Lio;->e:J

    iget-wide v5, p0, Lio;->f:J

    iget v7, p0, Lio;->g:F

    iget-object v8, p0, Lio;->h:Landroidx/compose/foundation/layout/PaddingValues;

    iget-object v9, p0, Lio;->i:Landroidx/compose/foundation/layout/WindowInsets;

    iget v10, p0, Lio;->j:I

    iget v11, p0, Lio;->k:I

    invoke-static/range {v0 .. v13}, Landroidx/compose/material3/AppBarKt;->F(Ldm3;Landroidx/compose/ui/Modifier;Lbm3;JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
