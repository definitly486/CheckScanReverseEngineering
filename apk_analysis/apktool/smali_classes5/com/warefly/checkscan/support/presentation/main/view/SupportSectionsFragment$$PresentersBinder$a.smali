.class public final Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsFragment$$PresentersBinder$a;
.super Lpf6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsFragment$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpf6<",
        "Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsFragment;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lih5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsFragment;

    check-cast p2, Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter;

    iput-object p2, p1, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsFragment;->presenter:Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter;

    return-void
.end method

.method public final b(Ljava/lang/Object;)Lih5;
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsFragment;

    invoke-virtual {p1}, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsFragment;->providePresenter()Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter;

    move-result-object p0

    return-object p0
.end method
