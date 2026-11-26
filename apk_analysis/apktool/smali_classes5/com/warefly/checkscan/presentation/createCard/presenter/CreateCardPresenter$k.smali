.class public final Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$k;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->onIssueClick(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lb36<",
        "+",
        "Ljava/lang/Boolean;",
        "+",
        "Lc41;",
        ">;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$k;->f:Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$k;->g:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Lb36;

    iget-object v0, p1, Lb36;->c:Ljava/lang/Object;

    check-cast v0, Lc41;

    iget-object v0, v0, Lc41;->a:Lb41;

    sget-object v1, Lb41;->NOT_REGISTERED:Lb41;

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$k;->f:Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;

    if-ne v0, v1, :cond_0

    invoke-static {v2}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->access$getFlowRouter$p(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)Luf3;

    move-result-object p0

    new-instance p1, Lix;

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p1, v0}, Lix;-><init>(Lcom/warefly/checkscan/auth/presentation/flow/AuthReason;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, p1}, Lo87;->d(Ldf7;)V

    goto/16 :goto_2

    :cond_0
    invoke-static {v2}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->access$getValidator$p(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)Li3;

    move-result-object v0

    invoke-static {v2}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->access$getPreferencesRepository$p(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)Ljf6;

    move-result-object v1

    invoke-interface {v1}, Ljf6;->U0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x2d

    const/16 v3, 0x20

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x28

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x29

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$k;->g:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lga1;->e(C)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    :goto_1
    if-ge v4, v5, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lga1;->e(C)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v2, p0}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->access$requestVerificationPhone(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object p1, p1, Lb36;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {v2}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->access$getLinkForUprid(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)V

    goto :goto_2

    :cond_6
    invoke-static {v2, p0}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->access$requestVerificationPhone(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;Ljava/lang/String;)V

    :goto_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
