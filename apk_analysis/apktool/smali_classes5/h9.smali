.class public final Lh9;
.super Lpe9;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lh9;->a:I

    invoke-direct {p0}, Lpe9;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkh5;
    .locals 0

    iget p0, p0, Lh9;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsView$$State;

    invoke-direct {p0}, Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsView$$State;-><init>()V

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView$$State;

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView$$State;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
