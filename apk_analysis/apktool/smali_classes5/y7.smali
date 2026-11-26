.class public final Ly7;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.tasks.ads.AdLoaderManager"
    f = "AdLoaderManager.kt"
    l = {
        0x17
    }
    m = "loadAd"
.end annotation


# instance fields
.field public l:Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$b;

.field public m:Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$c;

.field public n:Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$g;

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:La8;

.field public q:I


# direct methods
.method public constructor <init>(La8;Lf02;)V
    .locals 0

    iput-object p1, p0, Ly7;->p:La8;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iput-object p1, p0, Ly7;->o:Ljava/lang/Object;

    iget p1, p0, Ly7;->q:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ly7;->q:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Ly7;->p:La8;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v10, p0

    invoke-virtual/range {v0 .. v10}, La8;->a(Landroidx/fragment/app/FragmentActivity;Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$a;Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$b;Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$c;Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$d;Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$e;Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$f;Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$g;Ljava/util/List;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
