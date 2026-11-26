.class public abstract Lyads/mp6;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public a:Lyads/sp6;

.field public final b:Lyads/lp6;


# direct methods
.method public constructor <init>(Lyads/lp6;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lyads/mp6;->b:Lyads/lp6;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lyads/mp6;->a:Lyads/sp6;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lyads/sp6;->c:Lyads/mp6;

    invoke-virtual {p0}, Lyads/sp6;->a()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lyads/mp6;->a(Ljava/lang/String;)V

    return-void
.end method
