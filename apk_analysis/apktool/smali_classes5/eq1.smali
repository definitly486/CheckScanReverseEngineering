.class public final Leq1;
.super Lqp1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leq1$a;
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
.field public final b:Lmh3;


# direct methods
.method public constructor <init>(Lmh3;)V
    .locals 0

    invoke-direct {p0}, Lqp1;-><init>()V

    iput-object p1, p0, Leq1;->b:Lmh3;

    return-void
.end method


# virtual methods
.method public final h(Lmq1;)V
    .locals 1

    new-instance v0, Leq1$a;

    invoke-direct {v0, p1}, Leq1$a;-><init>(Lmq1;)V

    iget-object p0, p0, Leq1;->b:Lmh3;

    invoke-virtual {p0, v0}, Lgg3;->a(Lwb8;)V

    return-void
.end method
