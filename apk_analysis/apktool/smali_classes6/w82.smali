.class public final synthetic Lw82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lw82;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lw82;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lyads/th1;->a(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lyads/ri2;->a(Ljava/lang/String;)Lyads/ri2;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lyads/vm3;

    invoke-static {p1}, Lyads/kn3;->a(Lyads/vm3;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lyads/iz1;->a(Ljava/lang/String;)Lyads/iz1;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p1}, Lyads/gl1;->e(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {p1}, Lyads/e92;->f(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lcom/posthog/surveys/SurveyAppearanceWidgetType;

    invoke-static {p1}, Lcom/posthog/surveys/SurveyAppearanceWidgetType$Companion;->a(Lcom/posthog/surveys/SurveyAppearanceWidgetType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-static {p1}, Landroidx/compose/foundation/selection/SelectableGroupKt;->a(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Landroidx/camera/camera2/impl/FlashControl;->c(Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Lcom/posthog/PostHogEvent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/posthog/PostHogEvent;->isFatalExceptionEvent()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    invoke-static {p1}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->j(Landroidx/compose/ui/geometry/Offset;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p1, Landroidx/paging/DataSource$InvalidatedCallback;

    invoke-static {p1}, Landroidx/paging/DataSource;->e(Landroidx/paging/DataSource$InvalidatedCallback;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
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
