.class public final Ldz3$b;
.super Ldz3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldz3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        ">",
        "Ldz3<",
        "TResponseT;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Lgy0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgy0<",
            "TResponseT;",
            "Lfy0<",
            "TResponseT;>;>;"
        }
    .end annotation
.end field

.field public final e:Z


# direct methods
.method public constructor <init>(Lm37;Lokhttp3/a$a;Li02;Lgy0;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldz3;-><init>(Lm37;Lokhttp3/a$a;Li02;)V

    iput-object p4, p0, Ldz3$b;->d:Lgy0;

    iput-boolean p5, p0, Ldz3$b;->e:Z

    return-void
.end method


# virtual methods
.method public final c(Lgv5;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ldz3$b;->d:Lgy0;

    invoke-interface {v0, p1}, Lgy0;->b(Lgv5;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfy0;

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object p2, p2, v0

    check-cast p2, Le02;

    :try_start_0
    iget-boolean p0, p0, Ldz3$b;->e:Z
    :try_end_0
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lqg4;->b(Lfy0;Le02;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/VirtualMachineError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-static {p1, p2}, Lqg4;->a(Lfy0;Le02;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/VirtualMachineError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0, p2}, Lqg4;->c(Ljava/lang/Throwable;Le02;)La32;

    move-result-object p0

    return-object p0

    :catch_2
    move-exception p0

    :goto_0
    throw p0
.end method
