.class public final synthetic Ljo;
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

.field public final synthetic h:Ldm3;

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;Ldm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljo;->b:Landroidx/compose/ui/Modifier;

    iput-wide p2, p0, Ljo;->c:J

    iput-wide p4, p0, Ljo;->d:J

    iput p6, p0, Ljo;->e:F

    iput-object p7, p0, Ljo;->f:Landroidx/compose/foundation/layout/PaddingValues;

    iput-object p8, p0, Ljo;->g:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p9, p0, Ljo;->h:Ldm3;

    iput p10, p0, Ljo;->i:I

    iput p11, p0, Ljo;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v0, p0, Ljo;->b:Landroidx/compose/ui/Modifier;

    iget-wide v1, p0, Ljo;->c:J

    iget-wide v3, p0, Ljo;->d:J

    iget v5, p0, Ljo;->e:F

    iget-object v6, p0, Ljo;->f:Landroidx/compose/foundation/layout/PaddingValues;

    iget-object v7, p0, Ljo;->g:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v8, p0, Ljo;->h:Ldm3;

    iget v9, p0, Ljo;->i:I

    iget v10, p0, Ljo;->j:I

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/AppBarKt;->H(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
