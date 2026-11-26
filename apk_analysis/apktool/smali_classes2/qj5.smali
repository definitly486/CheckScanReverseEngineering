.class public final synthetic Lqj5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/DrawerPredictiveBackState;

.field public final synthetic c:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic f:J

.field public final synthetic g:J

.field public final synthetic h:F

.field public final synthetic i:Landroidx/compose/material3/internal/FloatProducer;

.field public final synthetic j:Ldm3;

.field public final synthetic k:I

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/DrawerPredictiveBackState;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/material3/internal/FloatProducer;Ldm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqj5;->b:Landroidx/compose/material3/DrawerPredictiveBackState;

    iput-object p2, p0, Lqj5;->c:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p3, p0, Lqj5;->d:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Lqj5;->e:Landroidx/compose/ui/graphics/Shape;

    iput-wide p5, p0, Lqj5;->f:J

    iput-wide p7, p0, Lqj5;->g:J

    iput p9, p0, Lqj5;->h:F

    iput-object p10, p0, Lqj5;->i:Landroidx/compose/material3/internal/FloatProducer;

    iput-object p11, p0, Lqj5;->j:Ldm3;

    iput p12, p0, Lqj5;->k:I

    iput p13, p0, Lqj5;->l:I

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

    iget-object v1, v0, Lqj5;->b:Landroidx/compose/material3/DrawerPredictiveBackState;

    move-object v2, v1

    iget-object v1, v0, Lqj5;->c:Landroidx/compose/foundation/layout/WindowInsets;

    move-object v3, v2

    iget-object v2, v0, Lqj5;->d:Landroidx/compose/ui/Modifier;

    move-object v4, v3

    iget-object v3, v0, Lqj5;->e:Landroidx/compose/ui/graphics/Shape;

    move-object v6, v4

    iget-wide v4, v0, Lqj5;->f:J

    move-object v8, v6

    iget-wide v6, v0, Lqj5;->g:J

    move-object v9, v8

    iget v8, v0, Lqj5;->h:F

    move-object v10, v9

    iget-object v9, v0, Lqj5;->i:Landroidx/compose/material3/internal/FloatProducer;

    move-object v11, v10

    iget-object v10, v0, Lqj5;->j:Ldm3;

    move-object v12, v11

    iget v11, v0, Lqj5;->k:I

    iget v0, v0, Lqj5;->l:I

    move-object v15, v12

    move v12, v0

    move-object v0, v15

    invoke-static/range {v0 .. v14}, Landroidx/compose/material3/NavigationDrawerKt;->w(Landroidx/compose/material3/DrawerPredictiveBackState;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/material3/internal/FloatProducer;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
