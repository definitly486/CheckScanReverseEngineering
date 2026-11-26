.class public final Ld02$b;
.super Ld02;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld02;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Ljava/util/List<",
            "+",
            "Ldf4<",
            "*>;>;",
            "Ldf4<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Ljava/util/List<",
            "+",
            "Ldf4<",
            "*>;>;+",
            "Ldf4<",
            "*>;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ld02;-><init>()V

    iput-object p1, p0, Ld02$b;->a:Lnl3;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ldf4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ldf4<",
            "*>;>;)",
            "Ldf4<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Ld02$b;->a:Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldf4;

    return-object p0
.end method
