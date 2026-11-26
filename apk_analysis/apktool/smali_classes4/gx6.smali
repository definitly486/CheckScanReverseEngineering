.class public final Lgx6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbf6;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Lbf6<",
        "TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final d:Lgx6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgx6<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ll72;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll72<",
            "TC;>;"
        }
    .end annotation
.end field

.field public final c:Ll72;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll72<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lgx6;

    sget-object v1, Ll72$c;->c:Ll72$c;

    sget-object v2, Ll72$a;->c:Ll72$a;

    invoke-direct {v0, v1, v2}, Lgx6;-><init>(Ll72;Ll72;)V

    sput-object v0, Lgx6;->d:Lgx6;

    return-void
.end method

.method public constructor <init>(Ll72;Ll72;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll72<",
            "TC;>;",
            "Ll72<",
            "TC;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgx6;->b:Ll72;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lgx6;->c:Ll72;

    invoke-virtual {p1, p2}, Ll72;->a(Ll72;)I

    move-result p0

    if-gtz p0, :cond_0

    sget-object p0, Ll72$a;->c:Ll72$a;

    if-eq p1, p0, :cond_0

    sget-object p0, Ll72$c;->c:Ll72$c;

    if-eq p2, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1, p0}, Ll72;->d(Ljava/lang/StringBuilder;)V

    const-string p1, ".."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ll72;->e(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Invalid range: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static a(Ljava/lang/Long;Ljava/lang/Long;)Lgx6;
    .locals 1

    new-instance v0, Ll72$d;

    invoke-direct {v0, p0}, Ll72;-><init>(Ljava/lang/Comparable;)V

    new-instance p0, Ll72$b;

    invoke-direct {p0, p1}, Ll72;-><init>(Ljava/lang/Comparable;)V

    new-instance p1, Lgx6;

    invoke-direct {p1, v0, p0}, Lgx6;-><init>(Ll72;Ll72;)V

    return-object p1
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lgx6;->b:Ll72;

    invoke-virtual {v0, p1}, Ll72;->g(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lgx6;->c:Ll72;

    invoke-virtual {p0, p1}, Ll72;->g(Ljava/lang/Comparable;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lgx6;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lgx6;

    iget-object v0, p0, Lgx6;->b:Ll72;

    iget-object v2, p1, Lgx6;->b:Ll72;

    invoke-virtual {v0, v2}, Ll72;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lgx6;->c:Ll72;

    iget-object p1, p1, Lgx6;->c:Ll72;

    invoke-virtual {p0, p1}, Ll72;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lgx6;->b:Ll72;

    invoke-virtual {v0}, Ll72;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lgx6;->c:Ll72;

    invoke-virtual {p0}, Ll72;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lgx6;->d:Lgx6;

    invoke-virtual {p0, v0}, Lgx6;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lgx6;->b:Ll72;

    invoke-virtual {v1, v0}, Ll72;->d(Ljava/lang/StringBuilder;)V

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lgx6;->c:Ll72;

    invoke-virtual {p0, v0}, Ll72;->e(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
