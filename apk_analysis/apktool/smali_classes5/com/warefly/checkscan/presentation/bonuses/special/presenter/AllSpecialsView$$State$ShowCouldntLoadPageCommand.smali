.class public Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsView$$State$ShowCouldntLoadPageCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowCouldntLoadPageCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final arg0:Z


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsView$$State;Z)V
    .locals 1

    const-string p1, "showCouldntLoadPage"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-boolean p2, p0, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsView$$State$ShowCouldntLoadPageCommand;->arg0:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsView;)V
    .locals 0

    .line 6
    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsView$$State$ShowCouldntLoadPageCommand;->arg0:Z

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsView;->showCouldntLoadPage(Z)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsView$$State$ShowCouldntLoadPageCommand;->apply(Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsView;)V

    return-void
.end method
