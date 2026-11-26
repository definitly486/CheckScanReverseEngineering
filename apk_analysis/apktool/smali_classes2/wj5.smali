.class public final synthetic Lwj5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic d:J

.field public final synthetic e:J

.field public final synthetic f:F

.field public final synthetic g:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic h:Ldm3;

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwj5;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lwj5;->c:Landroidx/compose/ui/graphics/Shape;

    iput-wide p3, p0, Lwj5;->d:J

    iput-wide p5, p0, Lwj5;->e:J

    iput p7, p0, Lwj5;->f:F

    iput-object p8, p0, Lwj5;->g:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p9, p0, Lwj5;->h:Ldm3;

    iput p10, p0, Lwj5;->i:I

    iput p11, p0, Lwj5;->j:I

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

    iget-object v0, p0, Lwj5;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lwj5;->c:Landroidx/compose/ui/graphics/Shape;

    iget-wide v2, p0, Lwj5;->d:J

    iget-wide v4, p0, Lwj5;->e:J

    iget v6, p0, Lwj5;->f:F

    iget-object v7, p0, Lwj5;->g:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v8, p0, Lwj5;->h:Ldm3;

    iget v9, p0, Lwj5;->i:I

    iget v10, p0, Lwj5;->j:I

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/NavigationDrawerKt;->l(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
