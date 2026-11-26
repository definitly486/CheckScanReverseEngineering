.class public final synthetic Lii5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lii5;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lii5;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lyads/yt1;->a(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lyads/j11;->a(Ljava/lang/String;)Lyads/j11;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p1}, Lyads/gl1;->j(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lyads/bt4;->a(Ljava/lang/Number;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Landroidx/compose/animation/core/SeekableTransitionState;

    invoke-static {p1}, Landroidx/compose/animation/core/TransitionKt;->d(Landroidx/compose/animation/core/SeekableTransitionState;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lcom/posthog/surveys/SurveySchedule;

    invoke-static {p1}, Lcom/posthog/surveys/SurveySchedule$Companion;->a(Lcom/posthog/surveys/SurveySchedule;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Landroidx/navigation/PopUpToBuilder;

    invoke-static {p1}, Landroidx/navigation/NavController;->d(Landroidx/navigation/PopUpToBuilder;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
