.class public final synthetic Lvy2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lvy2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lvy2;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lyads/th1;->e(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p1}, Lyads/gl1;->i(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p1}, Lyads/e92;->j(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p1}, Lyads/bt4;->a(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Landroidx/camera/camera2/pipe/Result3A;

    invoke-static {p1}, Landroidx/camera/camera2/impl/TorchControl;->b(Landroidx/camera/camera2/pipe/Result3A;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lcom/posthog/surveys/SurveyRatingDisplayType;

    invoke-static {p1}, Lcom/posthog/surveys/SurveyRatingDisplayType$Companion;->a(Lcom/posthog/surveys/SurveyRatingDisplayType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {p1}, Landroidx/compose/ui/text/SaversKt;->U(Ljava/lang/Object;)Landroidx/compose/ui/text/SpanStyle;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Landroidx/navigation/AnimBuilder;

    invoke-static {p1}, Landroidx/navigation/NavController;->f(Landroidx/navigation/AnimBuilder;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Lnb6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lnb6;->n:Lco5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0x1e

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
