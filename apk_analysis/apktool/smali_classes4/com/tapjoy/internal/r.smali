.class public final Lcom/tapjoy/internal/r;
.super Ljava/util/Observable;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifyObservers()V
    .locals 0

    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    invoke-super {p0}, Ljava/util/Observable;->notifyObservers()V

    return-void
.end method

.method public final notifyObservers(Ljava/lang/Object;)V
    .locals 0

    .line 7
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    .line 8
    invoke-super {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method
