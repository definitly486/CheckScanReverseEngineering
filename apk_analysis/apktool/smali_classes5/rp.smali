.class public final Lrp;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
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
.field public final synthetic f:Lcom/warefly/checkscan/presentation/a;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/a;)V
    .locals 0

    iput-object p1, p0, Lrp;->f:Lcom/warefly/checkscan/presentation/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/warefly/checkscan/component/logger/CrashlyticsException$ColdStart;

    invoke-static {p1}, Li13;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Cold start: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/warefly/checkscan/component/logger/CrashlyticsException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ls0;->d(Lcom/warefly/checkscan/component/logger/CrashlyticsException;)V

    iget-object p0, p0, Lrp;->f:Lcom/warefly/checkscan/presentation/a;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/a;->k:Lhi0;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lhi0;->onNext(Ljava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
