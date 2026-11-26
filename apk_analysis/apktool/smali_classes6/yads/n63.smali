.class public final Lyads/n63;
.super Lyads/u13;
.source "SourceFile"


# static fields
.field public static final a:Lyads/n63;

.field public static final b:Ljava/util/List;

.field public static final c:Lyads/xo2;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyads/n63;

    invoke-direct {v0}, Lyads/n63;-><init>()V

    sput-object v0, Lyads/n63;->a:Lyads/n63;

    new-instance v0, Lyads/w13;

    sget-object v1, Lyads/xo2;->f:Lyads/xo2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    new-instance v1, Lyads/w13;

    sget-object v3, Lyads/xo2;->d:Lyads/xo2;

    invoke-direct {v1, v3, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    filled-new-array {v0, v1}, [Lyads/w13;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lyads/n63;->b:Ljava/util/List;

    sput-object v3, Lyads/n63;->c:Lyads/xo2;

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

    const/4 p0, 0x0

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/String;

    const/4 p2, 0x1

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Number;

    iget-object p3, p1, Lyads/yo2;->b:Lyads/mr5;

    check-cast p3, Lid9;

    invoke-virtual {p3, p0}, Lid9;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Ljava/lang/Long;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lyads/yo2;->b:Lyads/mr5;

    check-cast p1, Lid9;

    invoke-virtual {p1, p0}, Lid9;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Number;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_2

    return-object p2

    :cond_2
    return-object p0
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 53
    sget-object p0, Lyads/n63;->b:Ljava/util/List;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "getStoredNumberValue"

    return-object p0
.end method

.method public final d()Lyads/xo2;
    .locals 0

    sget-object p0, Lyads/n63;->c:Lyads/xo2;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
