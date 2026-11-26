.class public final synthetic Lpf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lpf;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lpf;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lyads/x92;->b(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p1}, Lyads/h32;->a(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lyads/br0;

    invoke-static {p1}, Lyads/du1;->a(Lyads/br0;)Lyads/br0;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    invoke-static {p1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->H(Landroidx/sqlite/SQLiteConnection;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p1}, Landroidx/compose/ui/text/SaversKt;->G(Ljava/lang/Object;)Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Landroidx/navigation/NavDestination;

    invoke-static {p1}, Landroidx/navigation/internal/NavGraphImpl;->a(Landroidx/navigation/NavDestination;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-static {p1}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->c(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/posthog/surveys/SurveySchedule;->Companion:Lcom/posthog/surveys/SurveySchedule$Companion;

    invoke-virtual {p0, p1}, Lcom/posthog/surveys/SurveySchedule$Companion;->fromValue(Ljava/lang/String;)Lcom/posthog/surveys/SurveySchedule;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Landroidx/compose/material3/carousel/CarouselPagerState;->h(Ljava/util/List;)Landroidx/compose/material3/carousel/CarouselPagerState;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-static {p1}, Landroidx/compose/foundation/gestures/AnchoredDraggableState$Companion;->f(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
