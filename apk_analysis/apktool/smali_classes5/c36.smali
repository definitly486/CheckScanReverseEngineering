.class public final Lc36;
.super Lqf4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lqf4<",
        "TK;TV;",
        "Lb36<",
        "+TK;+TV;>;>;"
    }
.end annotation


# instance fields
.field public final c:Lop7;


# direct methods
.method public constructor <init>(Ldf4;Ldf4;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldf4<",
            "TK;>;",
            "Ldf4<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lqf4;-><init>(Ldf4;Ldf4;)V

    const/4 v0, 0x0

    new-array v0, v0, [Lmp7;

    new-instance v1, Lq12;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1, p2}, Lq12;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "kotlin.Pair"

    invoke-static {p1, v0, v1}, Lrp7;->c(Ljava/lang/String;[Lmp7;Lnl3;)Lop7;

    move-result-object p1

    iput-object p1, p0, Lc36;->c:Lop7;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lb36;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lb36;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lb36;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lb36;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lb36;

    invoke-direct {p0, p1, p2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    iget-object p0, p0, Lc36;->c:Lop7;

    return-object p0
.end method
