.class public final Lqw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnc5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqw0$b;,
        Lqw0$c;,
        Lqw0$d;,
        Lqw0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnc5<",
        "[BTData;>;"
    }
.end annotation


# instance fields
.field public final a:Lqw0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqw0$b<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lqw0$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqw0$b<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqw0;->a:Lqw0$b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILxz5;)Lnc5$a;
    .locals 0

    check-cast p1, [B

    new-instance p2, Lnc5$a;

    new-instance p3, Loq5;

    invoke-direct {p3, p1}, Loq5;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lqw0$c;

    iget-object p0, p0, Lqw0;->a:Lqw0$b;

    invoke-direct {p4, p1, p0}, Lqw0$c;-><init>([BLqw0$b;)V

    invoke-direct {p2, p3, p4}, Lnc5$a;-><init>(Lkf4;Ls82;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, [B

    const/4 p0, 0x1

    return p0
.end method
