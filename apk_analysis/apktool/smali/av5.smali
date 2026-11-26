.class public final synthetic Lav5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lav5;->b:I

    iput-object p1, p0, Lav5;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lav5;->b:I

    iget-object p0, p0, Lav5;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/transition/TransitionValues;

    check-cast p1, [I

    invoke-static {p0, p1}, Lyads/it2;->a(Landroidx/transition/TransitionValues;[I)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/fo2;

    check-cast p1, Lyads/go2;

    invoke-static {p0, p1}, Lyads/fo2;->a(Lyads/fo2;Lyads/go2;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lxo9;

    invoke-static {p0, p1}, Lyads/bt0;->b(Lll3;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/ui/layout/Placeable;

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->b(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lnl3;

    check-cast p1, Landroidx/compose/ui/platform/InspectorInfo;

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/OffsetKt;->d(Lnl3;Landroidx/compose/ui/platform/InspectorInfo;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
