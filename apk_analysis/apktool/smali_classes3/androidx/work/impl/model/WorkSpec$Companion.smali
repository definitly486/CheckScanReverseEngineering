.class public final Landroidx/work/impl/model/WorkSpec$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/model/WorkSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/work/impl/model/WorkSpec$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final calculateNextRunTime(ZILandroidx/work/BackoffPolicy;JJIZJJJJ)J
    .locals 2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p0, p16, v0

    if-eqz p0, :cond_2

    if-eqz p9, :cond_2

    if-nez p8, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 p0, 0xdbba0

    add-long/2addr p6, p0

    cmp-long p0, p16, p6

    if-gez p0, :cond_1

    return-wide p6

    :cond_1
    :goto_0
    return-wide p16

    :cond_2
    if-eqz p1, :cond_5

    sget-object p0, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    if-ne p3, p0, :cond_3

    int-to-long p0, p2

    mul-long/2addr p4, p0

    goto :goto_1

    :cond_3
    long-to-float p0, p4

    add-int/lit8 p2, p2, -0x1

    invoke-static {p0, p2}, Ljava/lang/Math;->scalb(FI)F

    move-result p0

    float-to-long p4, p0

    :goto_1
    const-wide/32 p0, 0x112a880

    cmp-long p2, p4, p0

    if-lez p2, :cond_4

    move-wide p4, p0

    :cond_4
    add-long/2addr p6, p4

    return-wide p6

    :cond_5
    if-eqz p9, :cond_8

    if-nez p8, :cond_6

    add-long/2addr p6, p10

    goto :goto_2

    :cond_6
    add-long p6, p6, p14

    :goto_2
    cmp-long p0, p12, p14

    if-eqz p0, :cond_7

    if-nez p8, :cond_7

    sub-long p0, p14, p12

    add-long/2addr p0, p6

    return-wide p0

    :cond_7
    return-wide p6

    :cond_8
    const-wide/16 p0, -0x1

    cmp-long p0, p6, p0

    if-nez p0, :cond_9

    return-wide v0

    :cond_9
    add-long/2addr p6, p10

    return-wide p6
.end method
