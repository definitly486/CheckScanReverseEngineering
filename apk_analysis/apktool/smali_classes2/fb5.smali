.class public final synthetic Lfb5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(IILandroidx/compose/ui/layout/Placeable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lfb5;->b:I

    iput-object p3, p0, Lfb5;->c:Landroidx/compose/ui/layout/Placeable;

    iput p2, p0, Lfb5;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lfb5;->d:I

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget v1, p0, Lfb5;->b:I

    iget-object p0, p0, Lfb5;->c:Landroidx/compose/ui/layout/Placeable;

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/material3/MinimumInteractiveModifierNode;->a(ILandroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
