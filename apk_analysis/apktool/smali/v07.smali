.class public final Lv07;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu07;


# virtual methods
.method public final a(Lcom/warefly/checkscan/presentation/CiceroneActivity;Lcom/warefly/checkscan/presentation/CiceroneActivity$e;)V
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    new-instance v0, Lb64;

    invoke-direct {v0, p1}, Lb64;-><init>(Lcom/warefly/checkscan/presentation/CiceroneActivity;)V

    invoke-virtual {v0}, Lb64;->a()Lkl8;

    move-result-object p1

    new-instance v0, Lkk2;

    invoke-direct {v0, p2}, Lkk2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, p0}, Lkl8;->a(Lkk2;Lx3;)V

    new-instance v0, Lx3;

    const/4 v1, 0x4

    invoke-direct {v0, p2, v1}, Lx3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p0, v0}, Lkl8;->a(Lkk2;Lx3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance v0, Lk57$a;

    invoke-direct {v0, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    invoke-static {p1}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity$e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
