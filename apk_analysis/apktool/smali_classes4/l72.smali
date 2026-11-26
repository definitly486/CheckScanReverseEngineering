.class public abstract Ll72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll72$b;,
        Ll72$c;,
        Ll72$a;,
        Ll72$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ll72<",
        "TC;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Comparable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll72;->b:Ljava/lang/Comparable;

    return-void
.end method


# virtual methods
.method public a(Ll72;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll72<",
            "TC;>;)I"
        }
    .end annotation

    sget-object v0, Ll72$c;->c:Ll72$c;

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object v0, Ll72$a;->c:Ll72$a;

    if-ne p1, v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    iget-object v0, p1, Ll72;->b:Ljava/lang/Comparable;

    sget-object v1, Lgx6;->d:Lgx6;

    iget-object v1, p0, Ll72;->b:Ljava/lang/Comparable;

    invoke-interface {v1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_2
    instance-of p0, p0, Ll72$b;

    instance-of p1, p1, Ll72$b;

    invoke-static {p0, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ll72;

    invoke-virtual {p0, p1}, Ll72;->a(Ll72;)I

    move-result p0

    return p0
.end method

.method public abstract d(Ljava/lang/StringBuilder;)V
.end method

.method public abstract e(Ljava/lang/StringBuilder;)V
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ll72;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ll72;

    :try_start_0
    invoke-virtual {p0, p1}, Ll72;->a(Ll72;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v1
.end method

.method public f()Ljava/lang/Comparable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    iget-object p0, p0, Ll72;->b:Ljava/lang/Comparable;

    return-object p0
.end method

.method public abstract g(Ljava/lang/Comparable;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation
.end method

.method public abstract hashCode()I
.end method
