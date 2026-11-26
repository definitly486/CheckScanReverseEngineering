.class public final synthetic Lgt3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lgt3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lgt3;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lyads/x92;->d(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lyads/pd2;->a(Ljava/lang/String;)Lyads/pd2;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p1}, Lyads/h32;->c(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lyads/t52;

    invoke-static {p1}, Lyads/du1;->a(Lyads/t52;)Lyads/br0;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p1}, Landroidx/compose/ui/text/SaversKt;->j0(Ljava/lang/Object;)Landroidx/compose/ui/text/style/TextGeometricTransform;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {p1}, Landroidx/compose/runtime/retain/RetainedValuesStoreRegistry;->a(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-static {p1}, Landroidx/compose/material3/IconButtonKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/posthog/surveys/SurveyType;->Companion:Lcom/posthog/surveys/SurveyType$Companion;

    invoke-virtual {p0, p1}, Lcom/posthog/surveys/SurveyType$Companion;->fromValue(Ljava/lang/String;)Lcom/posthog/surveys/SurveyType;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
