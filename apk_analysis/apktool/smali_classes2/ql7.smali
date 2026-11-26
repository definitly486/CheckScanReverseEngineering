.class public final synthetic Lql7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/State;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(ZLandroidx/compose/runtime/State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lql7;->b:Landroidx/compose/runtime/State;

    iput-boolean p1, p0, Lql7;->c:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/ui/layout/MeasureScope;

    check-cast p2, Landroidx/compose/ui/layout/Measurable;

    check-cast p3, Landroidx/compose/ui/unit/Constraints;

    iget-object v0, p0, Lql7;->b:Landroidx/compose/runtime/State;

    iget-boolean p0, p0, Lql7;->c:Z

    invoke-static {v0, p0, p1, p2, p3}, Landroidx/compose/material3/SegmentedButtonKt;->d(Landroidx/compose/runtime/State;ZLandroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method
