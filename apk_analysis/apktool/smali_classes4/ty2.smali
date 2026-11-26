.class public final synthetic Lty2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lty2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget p0, p0, Lty2;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lyads/th1;->c(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ldc4;

    invoke-static {p1}, Lyads/hr3;->a(Ldc4;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p1}, Lyads/gl1;->g(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p1}, Lyads/e92;->h(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p1}, Lyads/bt4;->c(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lcom/posthog/surveys/SurveyQuestionBranchingType;

    invoke-static {p1}, Lcom/posthog/surveys/SurveyQuestionBranchingType$Companion;->a(Lcom/posthog/surveys/SurveyQuestionBranchingType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lne4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Liq7;->d(Lne4;)Ldf4;

    move-result-object p0

    const/4 v0, 0x0

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
    move-object p0, v0

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    invoke-static {p0}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v0

    :cond_2
    return-object v0

    :pswitch_6
    invoke-static {p1}, Landroidx/compose/ui/text/SaversKt;->d0(Ljava/lang/Object;)Landroidx/compose/ui/text/ParagraphStyle;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-static {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->c(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Lnb6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lnb6;->n:Lco5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0x14

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
