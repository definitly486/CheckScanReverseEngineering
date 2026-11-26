.class public final synthetic Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$c;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;->onFirstViewAttach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqm3;",
        "Lbm3<",
        "Lmz6;",
        "Ljava/util/List<",
        "+",
        "Lgf9;",
        ">;",
        "Lb36<",
        "+",
        "Lmz6;",
        "+",
        "Ljava/util/List<",
        "+",
        "Lgf9;",
        ">;>;>;"
    }
.end annotation


# static fields
.field public static final c:Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$c;

    const-string v4, "<init>(Ljava/lang/Object;Ljava/lang/Object;)V"

    const/4 v5, 0x0

    const/4 v1, 0x2

    const-class v2, Lb36;

    const-string v3, "<init>"

    invoke-direct/range {v0 .. v5}, Lqm3;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$c;->c:Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$c;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lmz6;

    check-cast p2, Ljava/util/List;

    new-instance p0, Lb36;

    invoke-direct {p0, p1, p2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
