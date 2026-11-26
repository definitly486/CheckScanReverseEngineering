.class public final Lyads/zk5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/b3;


# static fields
.field public static final b:J


# instance fields
.field public final a:Lyads/d9;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1388

    sput-wide v0, Lyads/zk5;->b:J

    return-void
.end method

.method public constructor <init>(Lyads/d9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/zk5;->a:Lyads/d9;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 16
    iget-object p0, p0, Lyads/zk5;->a:Lyads/d9;

    .line 17
    iget-object p0, p0, Lyads/d9;->s:Ljava/lang/Long;

    if-eqz p0, :cond_0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    sget-wide v0, Lyads/zk5;->b:J

    return-wide v0
.end method

.method public final a(J)J
    .locals 2

    iget-object p0, p0, Lyads/zk5;->a:Lyads/d9;

    iget-object p0, p0, Lyads/d9;->s:Ljava/lang/Long;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p1
.end method
