.class public final Lyads/zr2;
.super Lyads/xr2;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lyads/et4;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lyads/et4;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/xr2;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lyads/zr2;->b:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lyads/zr2;->c:Ljava/lang/String;

    iput-object p2, p0, Lyads/zr2;->d:Lyads/et4;

    return-void
.end method


# virtual methods
.method public final a(Lyads/fs2;)Ljava/lang/Object;
    .locals 1

    iget-object p1, p0, Lyads/zr2;->e:Ljava/lang/String;

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lyads/zr2;->b:Ljava/lang/String;

    invoke-static {p1}, Lyads/yt3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lyads/zr2;->e:Ljava/lang/String;
    :try_end_0
    .catch Lyads/vo2; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lyads/zr2;->d:Lyads/et4;

    invoke-interface {v0, p1}, Lyads/et4;->b(Ljava/lang/Exception;)V

    iget-object p1, p0, Lyads/zr2;->c:Ljava/lang/String;

    iput-object p1, p0, Lyads/zr2;->e:Ljava/lang/String;

    :cond_0
    return-object p1
.end method
