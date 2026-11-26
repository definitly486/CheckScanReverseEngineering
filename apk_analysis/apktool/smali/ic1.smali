.class public final Lic1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhc1;


# instance fields
.field public final a:Ldd;

.field public final b:Lyb0;


# direct methods
.method public constructor <init>(Ldd;Lyb0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lic1;->a:Ldd;

    iput-object p2, p0, Lic1;->b:Lyb0;

    return-void
.end method


# virtual methods
.method public final a(ILpg8;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lnc0;

    invoke-direct {v0, p1}, Lnc0;-><init>(I)V

    iget-object p0, p0, Lic1;->b:Lyb0;

    invoke-interface {p0, v0, p2}, Lyb0;->a(Lnc0;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final b(JLtp;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lic1;->a:Ldd;

    invoke-interface {p0, p1, p2, p3}, Ldd;->a(JLe02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
