.class public final Lyads/hn2;
.super Lyads/u13;
.source "SourceFile"


# static fields
.field public static final a:Lyads/hn2;

.field public static final b:Ljava/util/List;

.field public static final c:Lyads/xo2;

.field public static final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lyads/hn2;

    invoke-direct {v0}, Lyads/hn2;-><init>()V

    sput-object v0, Lyads/hn2;->a:Lyads/hn2;

    new-instance v0, Lyads/w13;

    sget-object v1, Lyads/xo2;->f:Lyads/xo2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lyads/hn2;->b:Ljava/util/List;

    sput-object v1, Lyads/hn2;->c:Lyads/xo2;

    const/4 v0, 0x1

    sput-boolean v0, Lyads/hn2;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/u13;-><init>()V

    return-void
.end method

.method public static final a(Lr15;)Ljava/lang/CharSequence;
    .locals 1

    .line 30
    invoke-interface {p0}, Lr15;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lyads/yo2;Lyads/uo2;Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/String;

    new-instance p1, Lg17;

    const-string p2, "[.*+?^${}()|\\[\\]\\\\]"

    invoke-direct {p1, p2}, Lg17;-><init>(Ljava/lang/String;)V

    new-instance p2, Let0;

    const/16 p3, 0x8

    invoke-direct {p2, p3}, Let0;-><init>(I)V

    invoke-virtual {p1, p0, p2}, Lg17;->f(Ljava/lang/String;Lnl3;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 29
    sget-object p0, Lyads/hn2;->b:Ljava/util/List;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "encodeRegex"

    return-object p0
.end method

.method public final d()Lyads/xo2;
    .locals 0

    sget-object p0, Lyads/hn2;->c:Lyads/xo2;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    sget-boolean p0, Lyads/hn2;->d:Z

    return p0
.end method
