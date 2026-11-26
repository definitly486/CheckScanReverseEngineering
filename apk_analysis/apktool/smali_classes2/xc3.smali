.class public final synthetic Lxc3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lbm3;

.field public final synthetic c:Lbm3;

.field public final synthetic d:Lll3;

.field public final synthetic e:Landroidx/compose/ui/Modifier;

.field public final synthetic f:Z

.field public final synthetic g:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic h:J

.field public final synthetic i:J

.field public final synthetic j:Landroidx/compose/material3/FloatingActionButtonElevation;

.field public final synthetic k:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Lbm3;Lbm3;Lll3;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxc3;->b:Lbm3;

    iput-object p2, p0, Lxc3;->c:Lbm3;

    iput-object p3, p0, Lxc3;->d:Lll3;

    iput-object p4, p0, Lxc3;->e:Landroidx/compose/ui/Modifier;

    iput-boolean p5, p0, Lxc3;->f:Z

    iput-object p6, p0, Lxc3;->g:Landroidx/compose/ui/graphics/Shape;

    iput-wide p7, p0, Lxc3;->h:J

    iput-wide p9, p0, Lxc3;->i:J

    iput-object p11, p0, Lxc3;->j:Landroidx/compose/material3/FloatingActionButtonElevation;

    iput-object p12, p0, Lxc3;->k:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput p13, p0, Lxc3;->l:I

    iput p14, p0, Lxc3;->m:I

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

    iget-object v1, v0, Lxc3;->b:Lbm3;

    iget-object v2, v0, Lxc3;->c:Lbm3;

    iget-object v3, v0, Lxc3;->d:Lll3;

    iget-object v4, v0, Lxc3;->e:Landroidx/compose/ui/Modifier;

    iget-boolean v5, v0, Lxc3;->f:Z

    iget-object v6, v0, Lxc3;->g:Landroidx/compose/ui/graphics/Shape;

    iget-wide v7, v0, Lxc3;->h:J

    iget-wide v9, v0, Lxc3;->i:J

    iget-object v11, v0, Lxc3;->j:Landroidx/compose/material3/FloatingActionButtonElevation;

    iget-object v12, v0, Lxc3;->k:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget v13, v0, Lxc3;->l:I

    iget v14, v0, Lxc3;->m:I

    invoke-static/range {v1 .. v16}, Landroidx/compose/material3/FloatingActionButtonKt;->b(Lbm3;Lbm3;Lll3;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
