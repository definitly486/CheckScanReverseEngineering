.class public final synthetic Lwj7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SearchBarState;

.field public final synthetic c:Lbm3;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic f:Landroidx/compose/material3/SearchBarColors;

.field public final synthetic g:F

.field public final synthetic h:F

.field public final synthetic i:Ldm3;

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLdm3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwj7;->b:Landroidx/compose/material3/SearchBarState;

    iput-object p2, p0, Lwj7;->c:Lbm3;

    iput-object p3, p0, Lwj7;->d:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Lwj7;->e:Landroidx/compose/ui/graphics/Shape;

    iput-object p5, p0, Lwj7;->f:Landroidx/compose/material3/SearchBarColors;

    iput p6, p0, Lwj7;->g:F

    iput p7, p0, Lwj7;->h:F

    iput-object p8, p0, Lwj7;->i:Ldm3;

    iput p9, p0, Lwj7;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v0, p0, Lwj7;->b:Landroidx/compose/material3/SearchBarState;

    iget-object v1, p0, Lwj7;->c:Lbm3;

    iget-object v2, p0, Lwj7;->d:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Lwj7;->e:Landroidx/compose/ui/graphics/Shape;

    iget-object v4, p0, Lwj7;->f:Landroidx/compose/material3/SearchBarColors;

    iget v5, p0, Lwj7;->g:F

    iget v6, p0, Lwj7;->h:F

    iget-object v7, p0, Lwj7;->i:Ldm3;

    iget v8, p0, Lwj7;->j:I

    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/SearchBarKt;->a(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLdm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
