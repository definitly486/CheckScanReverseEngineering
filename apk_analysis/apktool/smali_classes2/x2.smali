.class public final synthetic Lx2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILandroidx/compose/ui/layout/Placeable;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lx2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lx2;->d:Ljava/lang/Object;

    iput p1, p0, Lx2;->c:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 1

    .line 11
    const/4 v0, 0x1

    iput v0, p0, Lx2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lx2;->c:I

    iput-object p2, p0, Lx2;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lx2;->b:I

    iget-object v1, p0, Lx2;->d:Ljava/lang/Object;

    iget p0, p0, Lx2;->c:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/util/List;

    invoke-static {p0, v1, p1}, Lyads/sy0;->a(ILjava/lang/Object;Ljava/util/List;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast v1, Landroidx/compose/ui/layout/Placeable;

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-static {v1, p0, p1}, Landroidx/compose/material3/internal/AccessibilityUtilKt;->e(Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
