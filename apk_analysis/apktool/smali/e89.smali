.class public final Le89;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lq79;

.field public final b:Lro7;

.field public final c:Ljf6;


# direct methods
.method public constructor <init>(Lq79;Lro7;Ljf6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le89;->a:Lq79;

    iput-object p2, p0, Le89;->b:Lro7;

    iput-object p3, p0, Le89;->c:Ljf6;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lpg8;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Le89;->c:Ljf6;

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Lix8;->X0(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Ljf6;->R()V

    new-instance p1, Ld89;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ld89;-><init>(Le89;Le02;)V

    invoke-static {p1, p2}, Lz22;->c(Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
