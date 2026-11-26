.class public final Lyads/xm5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/fm4;


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/xm5;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 46
    return-void
.end method

.method public final a(Lyads/dh4;)V
    .locals 0

    .line 45
    return-void
.end method

.method public final a(Lyads/dh4;Lyads/g00;)V
    .locals 3

    iget-object p0, p0, Lyads/xm5;->a:Ljava/util/List;

    if-eqz p0, :cond_2

    new-instance v0, Lyads/ta;

    invoke-direct {v0, p1, p2}, Lyads/ta;-><init>(Lyads/dh4;Lyads/g00;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/ak;

    invoke-virtual {p1, p2}, Lyads/dh4;->a(Lyads/ak;)Lyads/bk;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    iget-object v2, p2, Lyads/ak;->c:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lyads/bk;->c(Ljava/lang/Object;)V

    invoke-interface {v1, p2, v0}, Lyads/bk;->a(Lyads/ak;Lyads/vf6;)V

    goto :goto_0

    :cond_2
    return-void
.end method
