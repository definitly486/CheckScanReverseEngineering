.class public final Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;->changePhone(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/lang/Throwable;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter$a;->f:Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter$a;->g:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter$a;->f:Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter$a;->g:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;->access$sendRequestForChangePhone(Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
