.class public final Lyads/mo4;
.super Lyads/u13;
.source "SourceFile"


# static fields
.field public static final a:Lyads/mo4;

.field public static final b:Ljava/util/List;

.field public static final c:Lyads/xo2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/mo4;

    invoke-direct {v0}, Lyads/mo4;-><init>()V

    sput-object v0, Lyads/mo4;->a:Lyads/mo4;

    sget-object v0, Lkx2;->b:Lkx2;

    sput-object v0, Lyads/mo4;->b:Ljava/util/List;

    sget-object v0, Lyads/xo2;->g:Lyads/xo2;

    sput-object v0, Lyads/mo4;->c:Lyads/xo2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/u13;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/yo2;Lyads/uo2;Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lyads/fd0;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lyads/fd0;-><init>(JLjava/util/TimeZone;)V

    return-object p0
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 14
    sget-object p0, Lyads/mo4;->b:Ljava/util/List;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "nowLocal"

    return-object p0
.end method

.method public final d()Lyads/xo2;
    .locals 0

    sget-object p0, Lyads/mo4;->c:Lyads/xo2;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
