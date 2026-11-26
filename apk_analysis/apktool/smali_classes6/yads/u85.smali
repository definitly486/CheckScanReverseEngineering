.class public final Lyads/u85;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lll3;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lll3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/u85;->a:Lll3;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lyads/u85;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lyads/u85;->a:Lll3;

    invoke-interface {v0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lyads/u85;->b:Ljava/lang/Object;

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance p0, Ljava/util/ConcurrentModificationException;

    const-string v0, "Set to null by another thread"

    invoke-direct {p0, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Z
    .locals 0

    iget-object p0, p0, Lyads/u85;->b:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
