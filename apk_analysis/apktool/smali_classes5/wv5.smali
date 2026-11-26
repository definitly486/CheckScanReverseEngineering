.class public final synthetic Lwv5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/fragment/app/Fragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;I)V
    .locals 0

    iput p2, p0, Lwv5;->b:I

    iput-object p1, p0, Lwv5;->c:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lwv5;->b:I

    iget-object p0, p0, Lwv5;->c:Landroidx/fragment/app/Fragment;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;

    invoke-static {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->e(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;Landroid/view/View;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/warefly/checkscan/presentation/onboardingCard/view/OnBoardingCardSlidesFragment;

    sget-object p1, Lcom/warefly/checkscan/presentation/onboardingCard/view/OnBoardingCardSlidesFragment;->i:[Lze4;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/onboardingCard/view/OnBoardingCardSlidesFragment;->presenter:Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;->onButtonRightClick()V

    return-void

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
