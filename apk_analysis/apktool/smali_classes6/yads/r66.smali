.class public final Lyads/r66;
.super Lyads/u66;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Lyads/u66;-><init>()V

    iput-object p1, p0, Lyads/r66;->b:Ljava/lang/String;

    iput-wide p2, p0, Lyads/r66;->c:J

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 4
    iget-object p0, p0, Lyads/r66;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final a(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyads/r66;->b(J)V

    return-void
.end method

.method public final b(J)V
    .locals 2

    iget-wide v0, p0, Lyads/r66;->c:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-wide p1, p0, Lyads/r66;->c:J

    invoke-virtual {p0, p0}, Lyads/u66;->a(Lyads/u66;)V

    return-void
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lyads/r66;->c:J

    return-wide v0
.end method
