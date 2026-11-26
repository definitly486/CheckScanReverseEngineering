.class public final synthetic Lbd3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lll3;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic e:J

.field public final synthetic f:J

.field public final synthetic g:Landroidx/compose/material3/FloatingActionButtonElevation;

.field public final synthetic h:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic i:Lbm3;

.field public final synthetic j:I

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbd3;->b:Lll3;

    iput-object p2, p0, Lbd3;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lbd3;->d:Landroidx/compose/ui/graphics/Shape;

    iput-wide p4, p0, Lbd3;->e:J

    iput-wide p6, p0, Lbd3;->f:J

    iput-object p8, p0, Lbd3;->g:Landroidx/compose/material3/FloatingActionButtonElevation;

    iput-object p9, p0, Lbd3;->h:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p10, p0, Lbd3;->i:Lbm3;

    iput p11, p0, Lbd3;->j:I

    iput p12, p0, Lbd3;->k:I

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

    iget-object v0, p0, Lbd3;->b:Lll3;

    iget-object v1, p0, Lbd3;->c:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Lbd3;->d:Landroidx/compose/ui/graphics/Shape;

    iget-wide v3, p0, Lbd3;->e:J

    iget-wide v5, p0, Lbd3;->f:J

    iget-object v7, p0, Lbd3;->g:Landroidx/compose/material3/FloatingActionButtonElevation;

    iget-object v8, p0, Lbd3;->h:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v9, p0, Lbd3;->i:Lbm3;

    iget v10, p0, Lbd3;->j:I

    iget v11, p0, Lbd3;->k:I

    invoke-static/range {v0 .. v13}, Landroidx/compose/material3/FloatingActionButtonKt;->d(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
