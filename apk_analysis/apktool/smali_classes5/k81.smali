.class public final Lk81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lra4;


# instance fields
.field public final a:Lc81;


# direct methods
.method public constructor <init>(Lc81;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk81;->a:Lc81;

    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lk81;->a:Lc81;

    invoke-virtual {p0}, Lc81;->a()Lp71;

    move-result-object v0

    invoke-virtual {v0}, Lp71;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lc81;->b()J

    move-result-wide v1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final id()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lk81;->a:Lc81;

    invoke-virtual {p0}, Lc81;->a()Lp71;

    move-result-object p0

    invoke-virtual {p0}, Lp71;->a()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
