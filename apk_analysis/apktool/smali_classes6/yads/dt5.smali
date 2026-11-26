.class public final Lyads/dt5;
.super Lyads/u13;
.source "SourceFile"


# static fields
.field public static final a:Lyads/dt5;

.field public static final b:Ljava/util/List;

.field public static final c:Lyads/xo2;

.field public static final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lyads/dt5;

    invoke-direct {v0}, Lyads/dt5;-><init>()V

    sput-object v0, Lyads/dt5;->a:Lyads/dt5;

    new-instance v0, Lyads/w13;

    sget-object v1, Lyads/xo2;->f:Lyads/xo2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lyads/dt5;->b:Ljava/util/List;

    sget-object v0, Lyads/xo2;->i:Lyads/xo2;

    sput-object v0, Lyads/dt5;->c:Lyads/xo2;

    const/4 v0, 0x1

    sput-boolean v0, Lyads/dt5;->d:Z

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

    invoke-static {p3}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/String;

    :try_start_0
    invoke-static {p0}, Lyads/p46;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Lyads/q46;

    invoke-direct {p1, p0}, Lyads/q46;-><init>(Ljava/lang/String;)V

    return-object p1

    :catch_0
    move-exception p0

    const-string p1, "Unable to convert value to Url."

    const-string p2, "toUrl"

    invoke-static {p2, p3}, Lyads/wo2;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1, p0}, Lyads/wo2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 33
    sget-object p0, Lyads/dt5;->b:Ljava/util/List;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "toUrl"

    return-object p0
.end method

.method public final d()Lyads/xo2;
    .locals 0

    sget-object p0, Lyads/dt5;->c:Lyads/xo2;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    sget-boolean p0, Lyads/dt5;->d:Z

    return p0
.end method
