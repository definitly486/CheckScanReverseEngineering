.class public final synthetic Lxy2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lxy2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lxy2;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lyads/q52;->b(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p1}, Lyads/hs1;->c(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/posthog/surveys/SurveyType;

    invoke-static {p1}, Lcom/posthog/surveys/SurveyType$Companion;->a(Lcom/posthog/surveys/SurveyType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p1}, Landroidx/compose/ui/text/Savers_androidKt;->f(Ljava/lang/Object;)Landroidx/compose/ui/text/PlatformParagraphStyle;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Landroidx/navigation/NavController;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Landroidx/compose/material3/SheetValue;

    invoke-static {p1}, Landroidx/compose/material3/ModalBottomSheetKt;->g(Landroidx/compose/material3/SheetValue;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lgc6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "log"

    return-object p0

    nop

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
