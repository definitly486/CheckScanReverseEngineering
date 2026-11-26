.class public final synthetic Lrl7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/State;

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/compose/ui/layout/Placeable;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/State;ZLandroidx/compose/ui/layout/Placeable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrl7;->b:Landroidx/compose/runtime/State;

    iput-boolean p2, p0, Lrl7;->c:Z

    iput-object p3, p0, Lrl7;->d:Landroidx/compose/ui/layout/Placeable;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lrl7;->d:Landroidx/compose/ui/layout/Placeable;

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v1, p0, Lrl7;->b:Landroidx/compose/runtime/State;

    iget-boolean p0, p0, Lrl7;->c:Z

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/material3/SegmentedButtonKt;->e(Landroidx/compose/runtime/State;ZLandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
