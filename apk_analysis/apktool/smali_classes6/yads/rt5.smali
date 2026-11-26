.class public abstract Lyads/rt5;
.super Lyads/ev;
.source "SourceFile"

# interfaces
.implements Lyads/mt5;


# instance fields
.field public c:J

.field public d:Lyads/mt5;

.field public e:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/ev;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 13
    iget-object p0, p0, Lyads/rt5;->d:Lyads/mt5;

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-interface {p0}, Lyads/mt5;->a()I

    move-result p0

    return p0
.end method

.method public final a(J)I
    .locals 3

    .line 16
    iget-object v0, p0, Lyads/rt5;->d:Lyads/mt5;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    iget-wide v1, p0, Lyads/rt5;->e:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lyads/mt5;->a(J)I

    move-result p0

    return p0
.end method

.method public final a(I)J
    .locals 2

    iget-object v0, p0, Lyads/rt5;->d:Lyads/mt5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1}, Lyads/mt5;->a(I)J

    move-result-wide v0

    iget-wide p0, p0, Lyads/rt5;->e:J

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public final b(J)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lyads/rt5;->d:Lyads/mt5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, p0, Lyads/rt5;->e:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lyads/mt5;->b(J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public abstract b()V
.end method
