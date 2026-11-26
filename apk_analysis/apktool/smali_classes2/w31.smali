.class public final synthetic Lw31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic d:Landroidx/compose/material3/CardColors;

.field public final synthetic e:Landroidx/compose/material3/CardElevation;

.field public final synthetic f:Ldm3;

.field public final synthetic g:I

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Ldm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw31;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lw31;->c:Landroidx/compose/ui/graphics/Shape;

    iput-object p3, p0, Lw31;->d:Landroidx/compose/material3/CardColors;

    iput-object p4, p0, Lw31;->e:Landroidx/compose/material3/CardElevation;

    iput-object p5, p0, Lw31;->f:Ldm3;

    iput p6, p0, Lw31;->g:I

    iput p7, p0, Lw31;->h:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v0, p0, Lw31;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lw31;->c:Landroidx/compose/ui/graphics/Shape;

    iget-object v2, p0, Lw31;->d:Landroidx/compose/material3/CardColors;

    iget-object v3, p0, Lw31;->e:Landroidx/compose/material3/CardElevation;

    iget-object v4, p0, Lw31;->f:Ldm3;

    iget v5, p0, Lw31;->g:I

    iget v6, p0, Lw31;->h:I

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/CardKt;->e(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
