.class public final synthetic Luf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Luf0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Luf0;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ldc4;

    invoke-static {p1}, Lyads/zq3;->a(Ldc4;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lyads/w52;->a(Ljava/lang/String;)Lyads/w52;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p1}, Lyads/qj1;->d(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Landroidx/navigation/NavDestination;

    invoke-static {p1}, Landroidx/navigation/NavGraphBuilder;->a(Landroidx/navigation/NavDestination;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-static {p1}, Landroidx/compose/material3/IconButtonKt;->n(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/posthog/surveys/SurveyQuestionType;->Companion:Lcom/posthog/surveys/SurveyQuestionType$Companion;

    invoke-virtual {p0, p1}, Lcom/posthog/surveys/SurveyQuestionType$Companion;->fromValue(Ljava/lang/String;)Lcom/posthog/surveys/SurveyQuestionType;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Landroidx/window/embedding/EmbeddingBackend;

    invoke-static {p1}, Landroidx/window/embedding/EmbeddingBackend$Companion;->a(Landroidx/window/embedding/EmbeddingBackend;)Landroidx/window/embedding/EmbeddingBackend;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Landroidx/compose/material3/DrawerState;->a(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Landroidx/compose/ui/text/TextLayoutResult;

    invoke-static {p1}, Landroidx/compose/foundation/text/BasicTextFieldKt;->y(Landroidx/compose/ui/text/TextLayoutResult;)Lj59;

    move-result-object p0

    return-object p0

    nop

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
