.class public Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsView$$State$ShowSpecialsCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowSpecialsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final specials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lpz3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lpz3;",
            ">;)V"
        }
    .end annotation

    const-string p1, "showSpecials"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsView$$State$ShowSpecialsCommand;->specials:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsView$$State$ShowSpecialsCommand;->specials:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsView;->showSpecials(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsView$$State$ShowSpecialsCommand;->apply(Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsView;)V

    return-void
.end method
