.class public final Lgq1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgy0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgq1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgq1$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lgy0<",
        "TR;",
        "Ljava/util/concurrent/CompletableFuture<",
        "La57<",
        "TR;>;>;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgq1$c;->a:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, Lgq1$c;->a:Ljava/lang/reflect/Type;

    return-object p0
.end method

.method public final b(Lgv5;)Ljava/lang/Object;
    .locals 1

    new-instance p0, Lgq1$b;

    invoke-direct {p0, p1}, Lgq1$b;-><init>(Lgv5;)V

    new-instance v0, Lgq1$c$a;

    invoke-direct {v0, p0}, Lgq1$c$a;-><init>(Lgq1$b;)V

    invoke-virtual {p1, v0}, Lgv5;->o(Lsy0;)V

    return-object p0
.end method
