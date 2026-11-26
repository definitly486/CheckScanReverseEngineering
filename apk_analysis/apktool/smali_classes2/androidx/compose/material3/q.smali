.class public final synthetic Landroidx/compose/material3/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:Landroidx/compose/ui/graphics/Shape;


# direct methods
.method public synthetic constructor <init>(FLandroidx/compose/ui/graphics/Shape;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/material3/q;->b:F

    iput-object p2, p0, Landroidx/compose/material3/q;->c:Landroidx/compose/ui/graphics/Shape;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/q;->c:Landroidx/compose/ui/graphics/Shape;

    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    iget p0, p0, Landroidx/compose/material3/q;->b:F

    invoke-static {p0, v0, p1}, Landroidx/compose/material3/ChipKt$InputChip$1;->a(FLandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/GraphicsLayerScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
