.class public final synthetic Ll28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:Landroidx/compose/material3/SliderState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SliderState;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Ll28;->b:F

    iput-object p1, p0, Ll28;->c:Landroidx/compose/material3/SliderState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/ui/layout/MeasureScope;

    check-cast p2, Landroidx/compose/ui/layout/Measurable;

    check-cast p3, Landroidx/compose/ui/unit/Constraints;

    iget v0, p0, Ll28;->b:F

    iget-object p0, p0, Ll28;->c:Landroidx/compose/material3/SliderState;

    invoke-static {v0, p0, p1, p2, p3}, Landroidx/compose/material3/SliderDefaults;->j(FLandroidx/compose/material3/SliderState;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method
