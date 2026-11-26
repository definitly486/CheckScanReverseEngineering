.class public abstract Lyads/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ad4;


# instance fields
.field public transient b:Lyads/q;

.field public transient c:Lyads/b0;

.field public transient d:Lyads/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lyads/n;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lyads/ad4;

    if-eqz v0, :cond_1

    check-cast p1, Lyads/ad4;

    check-cast p0, Lyads/j;

    invoke-virtual {p0}, Lyads/j;->a()Lyads/n;

    move-result-object p0

    check-cast p1, Lyads/j;

    invoke-virtual {p1}, Lyads/j;->a()Lyads/n;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyads/n;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lyads/c0;->a()Lyads/n;

    move-result-object p0

    iget-object p0, p0, Lyads/n;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lyads/c0;->a()Lyads/n;

    move-result-object p0

    iget-object p0, p0, Lyads/n;->d:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
