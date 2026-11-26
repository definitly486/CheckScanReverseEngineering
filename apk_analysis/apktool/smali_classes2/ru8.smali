.class public final synthetic Lru8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lll3;

.field public final synthetic c:Lbm3;

.field public final synthetic d:Lbm3;

.field public final synthetic e:Landroidx/compose/ui/Modifier;

.field public final synthetic f:Landroidx/compose/ui/window/DialogProperties;

.field public final synthetic g:Lbm3;

.field public final synthetic h:Lbm3;

.field public final synthetic i:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic j:J

.field public final synthetic k:Ldm3;

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Lll3;Lbm3;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;JLdm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru8;->b:Lll3;

    iput-object p2, p0, Lru8;->c:Lbm3;

    iput-object p3, p0, Lru8;->d:Lbm3;

    iput-object p4, p0, Lru8;->e:Landroidx/compose/ui/Modifier;

    iput-object p5, p0, Lru8;->f:Landroidx/compose/ui/window/DialogProperties;

    iput-object p6, p0, Lru8;->g:Lbm3;

    iput-object p7, p0, Lru8;->h:Lbm3;

    iput-object p8, p0, Lru8;->i:Landroidx/compose/ui/graphics/Shape;

    iput-wide p9, p0, Lru8;->j:J

    iput-object p11, p0, Lru8;->k:Ldm3;

    iput p12, p0, Lru8;->l:I

    iput p13, p0, Lru8;->m:I

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

    iget-object v1, v0, Lru8;->b:Lll3;

    move-object v2, v1

    iget-object v1, v0, Lru8;->c:Lbm3;

    move-object v3, v2

    iget-object v2, v0, Lru8;->d:Lbm3;

    move-object v4, v3

    iget-object v3, v0, Lru8;->e:Landroidx/compose/ui/Modifier;

    move-object v5, v4

    iget-object v4, v0, Lru8;->f:Landroidx/compose/ui/window/DialogProperties;

    move-object v6, v5

    iget-object v5, v0, Lru8;->g:Lbm3;

    move-object v7, v6

    iget-object v6, v0, Lru8;->h:Lbm3;

    move-object v8, v7

    iget-object v7, v0, Lru8;->i:Landroidx/compose/ui/graphics/Shape;

    move-object v10, v8

    iget-wide v8, v0, Lru8;->j:J

    move-object v11, v10

    iget-object v10, v0, Lru8;->k:Ldm3;

    move-object v12, v11

    iget v11, v0, Lru8;->l:I

    iget v0, v0, Lru8;->m:I

    move-object v15, v12

    move v12, v0

    move-object v0, v15

    invoke-static/range {v0 .. v14}, Landroidx/compose/material3/TimePickerDialogKt;->b(Lll3;Lbm3;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;JLdm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
