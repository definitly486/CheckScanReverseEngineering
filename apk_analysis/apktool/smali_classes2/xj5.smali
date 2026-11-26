.class public final synthetic Lxj5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/DrawerState;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic e:J

.field public final synthetic f:J

.field public final synthetic g:F

.field public final synthetic h:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic i:Ldm3;

.field public final synthetic j:I

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/DrawerState;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxj5;->b:Landroidx/compose/material3/DrawerState;

    iput-object p2, p0, Lxj5;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lxj5;->d:Landroidx/compose/ui/graphics/Shape;

    iput-wide p4, p0, Lxj5;->e:J

    iput-wide p6, p0, Lxj5;->f:J

    iput p8, p0, Lxj5;->g:F

    iput-object p9, p0, Lxj5;->h:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p10, p0, Lxj5;->i:Ldm3;

    iput p11, p0, Lxj5;->j:I

    iput p12, p0, Lxj5;->k:I

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

    iget-object v0, p0, Lxj5;->b:Landroidx/compose/material3/DrawerState;

    iget-object v1, p0, Lxj5;->c:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Lxj5;->d:Landroidx/compose/ui/graphics/Shape;

    iget-wide v3, p0, Lxj5;->e:J

    iget-wide v5, p0, Lxj5;->f:J

    iget v7, p0, Lxj5;->g:F

    iget-object v8, p0, Lxj5;->h:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v9, p0, Lxj5;->i:Ldm3;

    iget v10, p0, Lxj5;->j:I

    iget v11, p0, Lxj5;->k:I

    invoke-static/range {v0 .. v13}, Landroidx/compose/material3/NavigationDrawerKt;->y(Landroidx/compose/material3/DrawerState;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
