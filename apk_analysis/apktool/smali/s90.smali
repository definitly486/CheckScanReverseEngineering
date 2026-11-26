.class public final Ls90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr90;


# instance fields
.field public final a:Lda0;


# direct methods
.method public constructor <init>(Lda0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls90;->a:Lda0;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Lpg8;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ly80;

    invoke-direct {v0, p2, p1}, Ly80;-><init>(Ljava/lang/String;I)V

    iget-object p0, p0, Ls90;->a:Lda0;

    invoke-interface {p0, v0, p3}, Lda0;->a(Ly80;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
