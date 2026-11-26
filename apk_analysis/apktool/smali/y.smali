.class public final synthetic Ly;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/layout/Placeable;


# direct methods
.method public synthetic constructor <init>(ILandroidx/compose/ui/layout/Placeable;)V
    .locals 0

    iput p1, p0, Ly;->b:I

    iput-object p2, p0, Ly;->c:Landroidx/compose/ui/layout/Placeable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Ly;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Ly;->c:Landroidx/compose/ui/layout/Placeable;

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/TextFieldSizeKt;->c(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    const/4 v5, 0x4

    const/4 v6, 0x0

    iget-object v1, p0, Ly;->c:Landroidx/compose/ui/layout/Placeable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
