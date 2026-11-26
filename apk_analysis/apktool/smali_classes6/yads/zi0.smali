.class public final Lyads/zi0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Ljava/util/concurrent/TimeUnit;

.field public final c:Lcl4;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lyads/zi0;->a:J

    iput-object p3, p0, Lyads/zi0;->b:Ljava/util/concurrent/TimeUnit;

    new-instance p1, Lrr1;

    const/4 p2, 0x7

    invoke-direct {p1, p0, p2}, Lrr1;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lyads/zi0;->c:Lcl4;

    return-void
.end method

.method public static final a(Lyads/zi0;)J
    .locals 3

    iget-object v0, p0, Lyads/zi0;->b:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lyads/zi0;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method
