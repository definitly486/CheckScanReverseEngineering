.class public final Lg08;
.super Llz7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg08$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Llz7<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final a:Lk08;

.field public final b:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "TT;",
            "Llz7<",
            "TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lk08;Lnl3;)V
    .locals 0

    invoke-direct {p0}, Llz7;-><init>()V

    iput-object p1, p0, Lg08;->a:Lk08;

    iput-object p2, p0, Lg08;->b:Lnl3;

    return-void
.end method


# virtual methods
.method public final a(Ls08;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls08<",
            "TR;>;)V"
        }
    .end annotation

    new-instance v0, Lg08$a;

    invoke-direct {v0, p1, p0}, Lg08$a;-><init>(Ls08;Lg08;)V

    iget-object p0, p0, Lg08;->a:Lk08;

    invoke-virtual {p0, v0}, Lk08;->a(Ls08;)V

    return-void
.end method
