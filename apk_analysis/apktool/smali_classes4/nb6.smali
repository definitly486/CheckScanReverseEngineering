.class public Lnb6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Loc6;

.field public F:Llc6;

.field public G:Ljava/lang/String;

.field public H:Lad6;

.field public I:Lqb6;

.field public final J:Ljava/util/ArrayList;

.field public final K:Ljava/lang/Object;

.field public final L:Ljava/util/ArrayList;

.field public final M:Ljava/lang/Object;

.field public volatile a:Z

.field public b:Z

.field public c:Z

.field public final d:Z

.field public final e:Z

.field public f:I

.field public g:I

.field public final h:I

.field public i:I

.field public final j:I

.field public k:I

.field public final l:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "-",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Lw46;

.field public final n:Lco5;

.field public final o:Lhm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhm3<",
            "Lnb6;",
            "Ldb6;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lrb6;",
            "Lnc6;",
            "Lxb6;",
            "Lyb6;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Lgm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgm3<",
            "Lnb6;",
            "Ldb6;",
            "Lib6;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lxc6<",
            "Lcom/posthog/PostHogEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field public final q:Lub6;

.field public r:Ljava/lang/String;

.field public volatile s:Lmx2;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;

.field public v:Lic6;

.field public final w:Lfh8;

.field public x:Lob6;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lsa6;)V
    .locals 7

    new-instance v0, Lvu2;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lvu2;-><init>(I)V

    sget-object v1, Lw46;->IDENTIFIED_ONLY:Lw46;

    new-instance v2, Lcom/posthog/surveys/PostHogSurveysConfig;

    invoke-direct {v2}, Lcom/posthog/surveys/PostHogSurveysConfig;-><init>()V

    new-instance v2, Lco5;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    new-instance v3, Lkb6;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lub6;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lub6;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v5, p0, Lnb6;->a:Z

    const/4 v5, 0x1

    iput-boolean v5, p0, Lnb6;->b:Z

    iput-boolean v5, p0, Lnb6;->c:Z

    iput-boolean v5, p0, Lnb6;->d:Z

    iput-boolean v5, p0, Lnb6;->e:Z

    const/16 v6, 0x14

    iput v6, p0, Lnb6;->f:I

    const/16 v6, 0x3e8

    iput v6, p0, Lnb6;->g:I

    const/16 v6, 0x32

    iput v6, p0, Lnb6;->h:I

    const/4 v6, 0x3

    iput v6, p0, Lnb6;->i:I

    iput v5, p0, Lnb6;->j:I

    const/16 v6, 0x1e

    iput v6, p0, Lnb6;->k:I

    iput-object v0, p0, Lnb6;->l:Lnl3;

    iput-object v1, p0, Lnb6;->m:Lw46;

    iput-object v2, p0, Lnb6;->n:Lco5;

    iput-object v3, p0, Lnb6;->o:Lhm3;

    iput-object p3, p0, Lnb6;->p:Lgm3;

    iput-object v4, p0, Lnb6;->q:Lub6;

    const/4 p3, 0x0

    iput-object p3, p0, Lnb6;->r:Ljava/lang/String;

    sget-object p3, Lmx2;->b:Lmx2;

    iput-object p3, p0, Lnb6;->s:Lmx2;

    invoke-static {p1}, Lta8;->f0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnb6;->t:Ljava/lang/String;

    invoke-static {p2}, Lta8;->f0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "https://us.i.posthog.com"

    :cond_0
    iput-object p1, p0, Lnb6;->u:Ljava/lang/String;

    new-instance p1, Lmc6;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnb6;->v:Lic6;

    new-instance p1, Lp14;

    invoke-direct {p1, p0, v5}, Lp14;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lnb6;->w:Lfh8;

    const-string p1, "posthog-java"

    iput-object p1, p0, Lnb6;->y:Ljava/lang/String;

    const-string p1, "6.27.0"

    iput-object p1, p0, Lnb6;->z:Ljava/lang/String;

    const-string p1, "/s/"

    iput-object p1, p0, Lnb6;->G:Ljava/lang/String;

    new-instance p1, Lsb6;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnb6;->I:Lqb6;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnb6;->J:Ljava/util/ArrayList;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnb6;->K:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnb6;->L:Ljava/util/ArrayList;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnb6;->M:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lac6;)V
    .locals 1

    iget-object v0, p0, Lnb6;->K:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lnb6;->J:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final b()Lwd6;
    .locals 0

    iget-object p0, p0, Lnb6;->w:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lwd6;

    return-object p0
.end method
