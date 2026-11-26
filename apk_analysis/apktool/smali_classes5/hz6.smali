.class public final Lhz6;
.super Lb57;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:Liy6;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLiy6;)V
    .locals 0

    invoke-direct {p0}, Lb57;-><init>()V

    iput-object p1, p0, Lhz6;->c:Ljava/lang/String;

    iput-wide p2, p0, Lhz6;->d:J

    iput-object p4, p0, Lhz6;->e:Liy6;

    return-void
.end method


# virtual methods
.method public final L()Lwu0;
    .locals 0

    iget-object p0, p0, Lhz6;->e:Liy6;

    return-object p0
.end method

.method public final o()J
    .locals 2

    iget-wide v0, p0, Lhz6;->d:J

    return-wide v0
.end method

.method public final p()Lj95;
    .locals 2

    const/4 v0, 0x0

    iget-object p0, p0, Lhz6;->c:Ljava/lang/String;

    if-eqz p0, :cond_0

    sget-object v1, Lj95;->e:Ljava/util/regex/Pattern;

    :try_start_0
    invoke-static {p0}, Lj95$a;->a(Ljava/lang/String;)Lj95;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v0
.end method
