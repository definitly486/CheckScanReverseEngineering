.class public final Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$r;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->updateCountdowns()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:J

.field public final synthetic g:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;


# direct methods
.method public constructor <init>(JLcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;)V
    .locals 0

    iput-wide p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$r;->f:J

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$r;->g:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$r;->f:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gez p1, :cond_0

    move-wide v1, v3

    :cond_0
    const-wide/16 v5, 0x1f4

    add-long/2addr v5, v1

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    mul-long/2addr v5, v7

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$r;->g:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->access$getCountdownMap$p(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;)Ljava/util/Map;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v0, Lxg5;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Lxg5;->setValue(Ljava/lang/Object;)V

    cmp-long p0, v1, v3

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
