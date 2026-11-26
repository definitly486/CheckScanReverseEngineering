.class public final Luu1$a;
.super Lhe7$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luu1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Lcr4;

.field public final c:Lfu1;

.field public final d:Lcr4;

.field public final e:Luu1$c;

.field public volatile f:Z


# direct methods
.method public constructor <init>(Luu1$c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luu1$a;->e:Luu1$c;

    new-instance p1, Lcr4;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luu1$a;->b:Lcr4;

    new-instance v0, Lfu1;

    invoke-direct {v0}, Lfu1;-><init>()V

    iput-object v0, p0, Luu1$a;->c:Lfu1;

    new-instance v1, Lcr4;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Luu1$a;->d:Lcr4;

    invoke-virtual {v1, p1}, Lcr4;->b(Lcp2;)Z

    invoke-virtual {v1, v0}, Lcr4;->b(Lcp2;)Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)Lcp2;
    .locals 6

    iget-boolean v0, p0, Luu1$a;->f:Z

    if-eqz v0, :cond_0

    sget-object p0, Lhx2;->INSTANCE:Lhx2;

    return-object p0

    :cond_0
    iget-object v0, p0, Luu1$a;->e:Luu1$c;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Luu1$a;->b:Lcr4;

    const-wide/16 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lon5;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lfp2;)Lge7;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcp2;
    .locals 6

    iget-boolean v0, p0, Luu1$a;->f:Z

    if-eqz v0, :cond_0

    sget-object p0, Lhx2;->INSTANCE:Lhx2;

    return-object p0

    :cond_0
    iget-object v0, p0, Luu1$a;->e:Luu1$c;

    iget-object v5, p0, Luu1$a;->c:Lfu1;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lon5;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lfp2;)Lge7;

    move-result-object p0

    return-object p0
.end method

.method public final dispose()V
    .locals 1

    iget-boolean v0, p0, Luu1$a;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Luu1$a;->f:Z

    iget-object p0, p0, Luu1$a;->d:Lcr4;

    invoke-virtual {p0}, Lcr4;->dispose()V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Luu1$a;->f:Z

    return p0
.end method
