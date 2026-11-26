.class public final synthetic Lq04;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/graphics/painter/Painter;

.field public final synthetic c:Landroidx/compose/ui/graphics/ColorProducer;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroidx/compose/ui/Modifier;

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/ColorProducer;Ljava/lang/String;Landroidx/compose/ui/Modifier;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq04;->b:Landroidx/compose/ui/graphics/painter/Painter;

    iput-object p2, p0, Lq04;->c:Landroidx/compose/ui/graphics/ColorProducer;

    iput-object p3, p0, Lq04;->d:Ljava/lang/String;

    iput-object p4, p0, Lq04;->e:Landroidx/compose/ui/Modifier;

    iput p5, p0, Lq04;->f:I

    iput p6, p0, Lq04;->g:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v0, p0, Lq04;->b:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object v1, p0, Lq04;->c:Landroidx/compose/ui/graphics/ColorProducer;

    iget-object v2, p0, Lq04;->d:Ljava/lang/String;

    iget-object v3, p0, Lq04;->e:Landroidx/compose/ui/Modifier;

    iget v4, p0, Lq04;->f:I

    iget v5, p0, Lq04;->g:I

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->f(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/ColorProducer;Ljava/lang/String;Landroidx/compose/ui/Modifier;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
