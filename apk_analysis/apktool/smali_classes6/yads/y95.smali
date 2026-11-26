.class public final Lyads/y95;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ut4;
.implements Lyads/tx5;


# instance fields
.field public final synthetic a:Lyads/z95;


# direct methods
.method public constructor <init>(Lyads/z95;)V
    .locals 0

    iput-object p1, p0, Lyads/y95;->a:Lyads/z95;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lyads/y95;->a:Lyads/z95;

    iget-object v0, v0, Lyads/z95;->a:Lyads/jk4;

    invoke-virtual {v0}, Lyads/jk4;->a()V

    iget-object p0, p0, Lyads/y95;->a:Lyads/z95;

    iget-object p0, p0, Lyads/z95;->e:Lqm3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final a(JJ)V
    .locals 2

    .line 15
    iget-object p0, p0, Lyads/y95;->a:Lyads/z95;

    .line 16
    iget-object p3, p0, Lyads/z95;->a:Lyads/jk4;

    .line 17
    iget-wide v0, p0, Lyads/z95;->f:J

    sub-long p0, v0, p1

    .line 18
    invoke-virtual {p3, v0, v1, p0, p1}, Lyads/jk4;->a(JJ)V

    return-void
.end method
