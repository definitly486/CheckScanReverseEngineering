.class public final synthetic Lbt3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lbt3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lbt3;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lyads/v14;

    invoke-static {p1}, Lyads/zl4;->a(Lyads/v14;)Lyads/r96;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p1}, Lyads/u62;->a(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    invoke-static {p1}, Landroidx/work/impl/model/WorkProgressDao_Impl;->c(Landroidx/sqlite/SQLiteConnection;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Landroidx/navigation/NavDestination;

    invoke-static {p1}, Landroidx/navigation/NavDestination$Companion;->a(Landroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/posthog/surveys/SurveyAppearancePosition;->Companion:Lcom/posthog/surveys/SurveyAppearancePosition$Companion;

    invoke-virtual {p0, p1}, Lcom/posthog/surveys/SurveyAppearancePosition$Companion;->fromValue(Ljava/lang/String;)Lcom/posthog/surveys/SurveyAppearancePosition;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
