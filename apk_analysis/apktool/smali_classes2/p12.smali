.class public final synthetic Lp12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lp12;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lp12;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lyads/w72;->a(Ljava/lang/String;)Lyads/w72;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p1}, Lyads/sd1;->a(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lyads/n76;->a(Ljava/lang/String;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lyads/cn1;

    invoke-static {p1}, Lyads/du1;->a(Lyads/cn1;)Lyads/br0;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-static {p1}, Landroidx/compose/material3/WideNavigationRailKt$WideNavigationRailLayout$1$2;->b(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {p1}, Landroidx/compose/ui/text/SaversKt;->k(Ljava/lang/Object;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lll3;

    invoke-static {p1}, Landroidx/paging/PagingSource;->a(Lll3;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-static {p1}, Landroidx/compose/material3/IconButtonKt;->o(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/posthog/surveys/SurveyRatingDisplayType;->Companion:Lcom/posthog/surveys/SurveyRatingDisplayType$Companion;

    invoke-virtual {p0, p1}, Lcom/posthog/surveys/SurveyRatingDisplayType$Companion;->fromValue(Ljava/lang/String;)Lcom/posthog/surveys/SurveyRatingDisplayType;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Landroidx/compose/ui/text/TextLayoutResult;

    invoke-static {p1}, Landroidx/compose/foundation/text/CoreTextFieldKt;->r(Landroidx/compose/ui/text/TextLayoutResult;)Lj59;

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
