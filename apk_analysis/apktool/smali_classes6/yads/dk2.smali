.class public final Lyads/dk2;
.super Lyads/u13;
.source "SourceFile"


# static fields
.field public static final a:Lyads/dk2;

.field public static final b:Ljava/util/List;

.field public static final c:Lyads/xo2;

.field public static final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/dk2;

    invoke-direct {v0}, Lyads/dk2;-><init>()V

    sput-object v0, Lyads/dk2;->a:Lyads/dk2;

    sget-object v0, Lkx2;->b:Lkx2;

    sput-object v0, Lyads/dk2;->b:Ljava/util/List;

    sget-object v0, Lyads/xo2;->d:Lyads/xo2;

    sput-object v0, Lyads/dk2;->c:Lyads/xo2;

    const/4 v0, 0x1

    sput-boolean v0, Lyads/dk2;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/u13;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/yo2;Lyads/uo2;Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    const-wide/16 p0, 0x1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 7
    sget-object p0, Lyads/dk2;->b:Ljava/util/List;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "minNumber"

    return-object p0
.end method

.method public final d()Lyads/xo2;
    .locals 0

    sget-object p0, Lyads/dk2;->c:Lyads/xo2;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    sget-boolean p0, Lyads/dk2;->d:Z

    return p0
.end method
