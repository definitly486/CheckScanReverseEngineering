.class public final Lyads/hi5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final b:J

.field public final c:Lyads/bd0;


# direct methods
.method public constructor <init>(JLyads/bd0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lyads/hi5;->b:J

    iput-object p3, p0, Lyads/hi5;->c:Lyads/bd0;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lyads/hi5;

    iget-wide v0, p0, Lyads/hi5;->b:J

    iget-wide p0, p1, Lyads/hi5;->b:J

    sget v2, Lyads/u56;->a:I

    cmp-long p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
