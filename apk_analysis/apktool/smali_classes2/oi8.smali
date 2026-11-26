.class public final synthetic Loi8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lll3;

.field public final synthetic d:Lbm3;

.field public final synthetic e:Lbm3;

.field public final synthetic f:Landroidx/compose/ui/Modifier;

.field public final synthetic g:Z

.field public final synthetic h:J

.field public final synthetic i:J

.field public final synthetic j:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic k:I

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(IIJJLll3;Lbm3;Lbm3;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p12, p0, Loi8;->b:Z

    iput-object p7, p0, Loi8;->c:Lll3;

    iput-object p8, p0, Loi8;->d:Lbm3;

    iput-object p9, p0, Loi8;->e:Lbm3;

    iput-object p11, p0, Loi8;->f:Landroidx/compose/ui/Modifier;

    iput-boolean p13, p0, Loi8;->g:Z

    iput-wide p3, p0, Loi8;->h:J

    iput-wide p5, p0, Loi8;->i:J

    iput-object p10, p0, Loi8;->j:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput p1, p0, Loi8;->k:I

    iput p2, p0, Loi8;->l:I

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

    iget-boolean v1, v0, Loi8;->b:Z

    move v2, v1

    iget-object v1, v0, Loi8;->c:Lll3;

    move v3, v2

    iget-object v2, v0, Loi8;->d:Lbm3;

    move v4, v3

    iget-object v3, v0, Loi8;->e:Lbm3;

    move v5, v4

    iget-object v4, v0, Loi8;->f:Landroidx/compose/ui/Modifier;

    move v6, v5

    iget-boolean v5, v0, Loi8;->g:Z

    move v8, v6

    iget-wide v6, v0, Loi8;->h:J

    move v10, v8

    iget-wide v8, v0, Loi8;->i:J

    move v11, v10

    iget-object v10, v0, Loi8;->j:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move v12, v11

    iget v11, v0, Loi8;->k:I

    iget v0, v0, Loi8;->l:I

    move v15, v12

    move v12, v0

    move v0, v15

    invoke-static/range {v0 .. v14}, Landroidx/compose/material3/TabKt;->c(ZLll3;Lbm3;Lbm3;Landroidx/compose/ui/Modifier;ZJJLandroidx/compose/foundation/interaction/MutableInteractionSource;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
