.class public final synthetic Lh28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SliderColors;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(ZLandroidx/compose/material3/SliderColors;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lh28;->b:Landroidx/compose/material3/SliderColors;

    iput-boolean p1, p0, Lh28;->c:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    check-cast p2, Landroidx/compose/ui/geometry/Offset;

    iget-object v0, p0, Lh28;->b:Landroidx/compose/material3/SliderColors;

    iget-boolean p0, p0, Lh28;->c:Z

    invoke-static {v0, p0, p1, p2}, Landroidx/compose/material3/SliderDefaults;->t(Landroidx/compose/material3/SliderColors;ZLandroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/geometry/Offset;)Lj59;

    move-result-object p0

    return-object p0
.end method
