.class public final Lsj3;
.super Lwv8;
.source "SourceFile"


# instance fields
.field public e:Lwv8;


# direct methods
.method public constructor <init>(Lwv8;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lwv8;-><init>()V

    iput-object p1, p0, Lsj3;->e:Lwv8;

    return-void
.end method


# virtual methods
.method public final a()Lwv8;
    .locals 0

    iget-object p0, p0, Lsj3;->e:Lwv8;

    invoke-virtual {p0}, Lwv8;->a()Lwv8;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lwv8;
    .locals 0

    iget-object p0, p0, Lsj3;->e:Lwv8;

    invoke-virtual {p0}, Lwv8;->b()Lwv8;

    move-result-object p0

    return-object p0
.end method

.method public final c()J
    .locals 2

    iget-object p0, p0, Lsj3;->e:Lwv8;

    invoke-virtual {p0}, Lwv8;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(J)Lwv8;
    .locals 0

    iget-object p0, p0, Lsj3;->e:Lwv8;

    invoke-virtual {p0, p1, p2}, Lwv8;->d(J)Lwv8;

    move-result-object p0

    return-object p0
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, Lsj3;->e:Lwv8;

    invoke-virtual {p0}, Lwv8;->e()Z

    move-result p0

    return p0
.end method

.method public final f()V
    .locals 0

    iget-object p0, p0, Lsj3;->e:Lwv8;

    invoke-virtual {p0}, Lwv8;->f()V

    return-void
.end method

.method public final g(J)Lwv8;
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lsj3;->e:Lwv8;

    invoke-virtual {p0, p1, p2}, Lwv8;->g(J)Lwv8;

    move-result-object p0

    return-object p0
.end method
