.class public final Lyads/jm4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ut4;
.implements Lyads/tx5;


# instance fields
.field public final a:J

.field public final synthetic b:Lyads/km4;


# direct methods
.method public constructor <init>(Lyads/km4;J)V
    .locals 0

    iput-object p1, p0, Lyads/jm4;->b:Lyads/km4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lyads/jm4;->a:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object p0, p0, Lyads/jm4;->b:Lyads/km4;

    iget-object v0, p0, Lyads/km4;->d:Lyads/m15;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lyads/m15;->a()V

    :cond_0
    iget-object v0, p0, Lyads/km4;->b:Lyads/b4;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lyads/b4;->b()V

    :cond_1
    iget-object v0, p0, Lyads/km4;->a:Lyads/lm4;

    iget-object v0, v0, Lyads/lm4;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/km4;->b:Lyads/b4;

    iput-object v0, p0, Lyads/km4;->d:Lyads/m15;

    return-void
.end method

.method public final a(JJ)V
    .locals 2

    .line 29
    iget-object p3, p0, Lyads/jm4;->b:Lyads/km4;

    .line 30
    iget-object p3, p3, Lyads/km4;->d:Lyads/m15;

    if-eqz p3, :cond_0

    .line 31
    iget-wide v0, p0, Lyads/jm4;->a:J

    sub-long p0, v0, p1

    invoke-interface {p3, v0, v1, p0, p1}, Lyads/m15;->a(JJ)V

    :cond_0
    return-void
.end method
