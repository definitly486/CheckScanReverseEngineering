.class public final synthetic La48;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SnackbarData;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Z

.field public final synthetic e:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic f:J

.field public final synthetic g:J

.field public final synthetic h:J

.field public final synthetic i:J

.field public final synthetic j:J

.field public final synthetic k:I

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SnackbarData;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJJJJII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La48;->b:Landroidx/compose/material3/SnackbarData;

    iput-object p2, p0, La48;->c:Landroidx/compose/ui/Modifier;

    iput-boolean p3, p0, La48;->d:Z

    iput-object p4, p0, La48;->e:Landroidx/compose/ui/graphics/Shape;

    iput-wide p5, p0, La48;->f:J

    iput-wide p7, p0, La48;->g:J

    iput-wide p9, p0, La48;->h:J

    iput-wide p11, p0, La48;->i:J

    iput-wide p13, p0, La48;->j:J

    iput p15, p0, La48;->k:I

    move/from16 p1, p16

    iput p1, p0, La48;->l:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v17, p1

    check-cast v17, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v18

    iget-object v1, v0, La48;->b:Landroidx/compose/material3/SnackbarData;

    iget-object v2, v0, La48;->c:Landroidx/compose/ui/Modifier;

    iget-boolean v3, v0, La48;->d:Z

    iget-object v4, v0, La48;->e:Landroidx/compose/ui/graphics/Shape;

    iget-wide v5, v0, La48;->f:J

    iget-wide v7, v0, La48;->g:J

    iget-wide v9, v0, La48;->h:J

    iget-wide v11, v0, La48;->i:J

    iget-wide v13, v0, La48;->j:J

    iget v15, v0, La48;->k:I

    iget v0, v0, La48;->l:I

    move/from16 v16, v0

    invoke-static/range {v1 .. v18}, Landroidx/compose/material3/SnackbarKt;->a(Landroidx/compose/material3/SnackbarData;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJJJJIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
