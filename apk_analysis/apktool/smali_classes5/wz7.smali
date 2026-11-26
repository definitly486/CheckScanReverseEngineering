.class public final Lwz7;
.super Lmz7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwz7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmz7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lmz7;

.field public final c:Lqx1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqx1<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmz7;Lqx1;)V
    .locals 0

    invoke-direct {p0}, Lmz7;-><init>()V

    iput-object p1, p0, Lwz7;->b:Lmz7;

    iput-object p2, p0, Lwz7;->c:Lqx1;

    return-void
.end method


# virtual methods
.method public final h(Lt08;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt08<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lwz7$a;

    invoke-direct {v0, p0, p1}, Lwz7$a;-><init>(Lwz7;Lt08;)V

    iget-object p0, p0, Lwz7;->b:Lmz7;

    invoke-virtual {p0, v0}, Lmz7;->d(Lt08;)V

    return-void
.end method
