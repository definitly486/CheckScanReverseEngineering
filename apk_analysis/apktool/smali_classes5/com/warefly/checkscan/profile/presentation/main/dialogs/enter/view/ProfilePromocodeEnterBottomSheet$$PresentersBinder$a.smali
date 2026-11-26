.class public final Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterBottomSheet$$PresentersBinder$a;
.super Lpf6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterBottomSheet$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpf6<",
        "Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterBottomSheet;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lih5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterBottomSheet;

    check-cast p2, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter;

    iput-object p2, p1, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterBottomSheet;->presenter:Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter;

    return-void
.end method

.method public final b(Ljava/lang/Object;)Lih5;
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterBottomSheet;

    invoke-virtual {p1}, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterBottomSheet;->providePresenter()Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter;

    move-result-object p0

    return-object p0
.end method
