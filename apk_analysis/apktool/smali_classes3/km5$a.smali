.class public final Lkm5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu83$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkm5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lu83$a<",
        "Lb99;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lfh8;

.field public final b:Lfh8;

.field public final c:Lx08;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx08<",
            "Landroid/content/Context;",
            "Lww1;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lfh8;


# direct methods
.method public constructor <init>(Lfr2;)V
    .locals 4

    new-instance v0, Lqo;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lqo;-><init>(I)V

    sget-object v1, Ljm5;->c:Ljm5;

    new-instance v2, Lxn1;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lxn1;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lfh8;

    invoke-direct {v3, p1}, Lfh8;-><init>(Lll3;)V

    iput-object v3, p0, Lkm5$a;->a:Lfh8;

    invoke-static {v0}, Lnm4;->b(Lll3;)Lfh8;

    move-result-object p1

    iput-object p1, p0, Lkm5$a;->b:Lfh8;

    new-instance p1, Lx08;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p1, Lx08;->a:Lnl3;

    sget-object v0, Lu49;->a:Lu49;

    iput-object v0, p1, Lx08;->b:Ljava/lang/Object;

    iput-object p1, p0, Lkm5$a;->c:Lx08;

    invoke-static {v2}, Lnm4;->b(Lll3;)Lfh8;

    move-result-object p1

    iput-object p1, p0, Lkm5$a;->d:Lfh8;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lzz5;Lsy6;)Lu83;
    .locals 10

    check-cast p1, Lb99;

    iget-object v0, p1, Lb99;->c:Ljava/lang/String;

    const-string v1, "http"

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p1, Lb99;->c:Ljava/lang/String;

    const-string v2, "https"

    invoke-static {v0, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    :goto_0
    new-instance v2, Lkm5;

    iget-object v3, p1, Lb99;->a:Ljava/lang/String;

    iget-object v5, p0, Lkm5$a;->a:Lfh8;

    new-instance p1, Lim5;

    const/4 v0, 0x0

    invoke-direct {p1, p3, v0}, Lim5;-><init>(Ljava/lang/Object;I)V

    new-instance v6, Lfh8;

    invoke-direct {v6, p1}, Lfh8;-><init>(Lll3;)V

    iget-object v7, p0, Lkm5$a;->b:Lfh8;

    iget-object p1, p0, Lkm5$a;->c:Lx08;

    iget-object p3, p2, Lzz5;->a:Landroid/content/Context;

    iget-object v0, p1, Lx08;->b:Ljava/lang/Object;

    sget-object v4, Lu49;->a:Lu49;

    if-eq v0, v4, :cond_2

    goto :goto_2

    :cond_2
    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lx08;->b:Ljava/lang/Object;

    if-eq v0, v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p1, Lx08;->a:Lnl3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p3}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, p1, Lx08;->b:Ljava/lang/Object;

    iput-object v1, p1, Lx08;->a:Lnl3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p3

    :goto_1
    monitor-exit p1

    :goto_2
    new-instance v8, Lh54;

    invoke-direct {v8, v0}, Lh54;-><init>(Ljava/lang/Object;)V

    iget-object v9, p0, Lkm5$a;->d:Lfh8;

    move-object v4, p2

    invoke-direct/range {v2 .. v9}, Lkm5;-><init>(Ljava/lang/String;Lzz5;Lfh8;Lfh8;Lfh8;Lh54;Lfh8;)V

    return-object v2

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1

    throw p0
.end method
