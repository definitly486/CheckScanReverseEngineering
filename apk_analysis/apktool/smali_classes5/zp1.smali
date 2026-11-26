.class public final Lzp1;
.super Lqp1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzp1$a;
    }
.end annotation


# instance fields
.field public final b:Lqp1;

.field public final c:Lh6;


# direct methods
.method public constructor <init>(Lqp1;Lh6;)V
    .locals 0

    invoke-direct {p0}, Lqp1;-><init>()V

    iput-object p1, p0, Lzp1;->b:Lqp1;

    iput-object p2, p0, Lzp1;->c:Lh6;

    return-void
.end method


# virtual methods
.method public final h(Lmq1;)V
    .locals 2

    new-instance v0, Lzp1$a;

    iget-object v1, p0, Lzp1;->c:Lh6;

    invoke-direct {v0, p1, v1}, Lzp1$a;-><init>(Lmq1;Lh6;)V

    iget-object p0, p0, Lzp1;->b:Lqp1;

    invoke-virtual {p0, v0}, Lqp1;->b(Lmq1;)V

    return-void
.end method
