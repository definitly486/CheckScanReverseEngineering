.class public final synthetic Lsy2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lsy2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lsy2;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lyads/k45;

    invoke-static {p1}, Lyads/yq5;->a(Lyads/k45;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p1}, Lyads/th1;->b(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lyads/l20;

    invoke-static {p1}, Lyads/m20;->a(Lyads/l20;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p1}, Lyads/gl1;->f(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p1}, Lyads/e92;->g(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lcom/posthog/surveys/SurveyMatchType;

    invoke-static {p1}, Lcom/posthog/surveys/SurveyMatchType$Companion;->a(Lcom/posthog/surveys/SurveyMatchType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lne4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Liq7;->d(Lne4;)Ldf4;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {p1}, Ld31;->n(Lne4;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lda6;

    invoke-direct {p0, p1}, Lda6;-><init>(Lne4;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return-object p0

    :pswitch_6
    invoke-static {p1}, Landroidx/compose/ui/text/SaversKt;->y(Ljava/lang/Object;)Landroidx/compose/ui/text/UrlAnnotation;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Landroidx/paging/PagedList;->a(Ljava/lang/ref/WeakReference;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Landroidx/compose/foundation/text/input/TextFieldBuffer;

    invoke-static {p1}, Landroidx/compose/foundation/text/input/internal/ImeEditCommand_androidKt;->g(Landroidx/compose/foundation/text/input/TextFieldBuffer;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Lcom/posthog/PostHogEvent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/posthog/PostHogEvent;->getUuid()Ljava/util/UUID;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
