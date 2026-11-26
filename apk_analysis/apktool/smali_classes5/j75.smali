.class public final Lj75;
.super Lqp1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj75$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lqp1;"
    }
.end annotation


# instance fields
.field public final b:La75;

.field public final c:Lxl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxl3<",
            "-TT;+",
            "Lqq1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La75;Lxl3;)V
    .locals 0

    invoke-direct {p0}, Lqp1;-><init>()V

    iput-object p1, p0, Lj75;->b:La75;

    iput-object p2, p0, Lj75;->c:Lxl3;

    return-void
.end method


# virtual methods
.method public final h(Lmq1;)V
    .locals 2

    new-instance v0, Lj75$a;

    iget-object v1, p0, Lj75;->c:Lxl3;

    invoke-direct {v0, p1, v1}, Lj75$a;-><init>(Lmq1;Lxl3;)V

    invoke-interface {p1, v0}, Lmq1;->onSubscribe(Lcp2;)V

    iget-object p0, p0, Lj75;->b:La75;

    invoke-virtual {p0, v0}, La75;->a(Lt75;)V

    return-void
.end method
