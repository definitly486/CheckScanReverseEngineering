.class public final Lyads/tt2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/mt2;

.field public final b:Lyads/ea;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/mt2;)V
    .locals 1

    new-instance v0, Lyads/ea;

    invoke-direct {v0, p1, p2, p3}, Lyads/ea;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lyads/tt2;->a:Lyads/mt2;

    iput-object v0, p0, Lyads/tt2;->b:Lyads/ea;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    iget-object v0, p0, Lyads/tt2;->a:Lyads/mt2;

    iget-wide v1, v0, Lyads/mt2;->c:J

    cmp-long p1, p1, v1

    if-gtz p1, :cond_0

    iget-object p0, p0, Lyads/tt2;->b:Lyads/ea;

    iget-object p1, v0, Lyads/mt2;->b:Ljava/lang/String;

    sget-object p2, Lyads/i16;->d:Lyads/i16;

    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-static {p0, p1, p2, v0, v1}, Lyads/ea;->a(Lyads/ea;Ljava/lang/String;Lyads/i16;Lyads/h75;I)V

    :cond_0
    return-void
.end method
