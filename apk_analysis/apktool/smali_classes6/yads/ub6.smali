.class public final Lyads/ub6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic k:[Lze4;

.field public static final l:J


# instance fields
.field public final a:Lyads/t5;

.field public final b:Lyads/jf6;

.field public final c:Lyads/tt4;

.field public final d:Lyads/xb6;

.field public final e:Lyads/ae6;

.field public final f:Lyads/mb6;

.field public final g:Lyads/zb6;

.field public h:Z

.field public final i:Lyads/sb6;

.field public final j:Lyads/tb6;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lyads/ub6;

    const-string v1, "adParameterManager"

    const-string v2, "getAdParameterManager()Lcom/monetization/ads/video/render/report/VideoAdRenderingResultReporter$ResponseReportParameterManager;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lyads/mo;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lxe4;

    move-result-object v1

    const-string v2, "requestParameterManager"

    const-string v4, "getRequestParameterManager()Lcom/monetization/ads/video/render/report/VideoAdRenderingResultReporter$RequestReportParameterManager;"

    invoke-static {v0, v2, v4, v3}, Lyads/mo;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lxe4;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Lze4;

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    sput-object v2, Lyads/ub6;->k:[Lze4;

    const-wide/16 v0, 0x2710

    sput-wide v0, Lyads/ub6;->l:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lyads/bf5;Lyads/d9;Lyads/ja6;Lyads/t5;Lyads/ec6;Lyads/of6;Lyads/me6;Lyads/jf6;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lyads/qt4;->a(Ly22;I)Lyads/tt4;

    move-result-object v0

    new-instance v1, Lyads/xb6;

    invoke-direct {v1, p1, p2, p3, p5}, Lyads/xb6;-><init>(Landroid/content/Context;Lyads/bf5;Lyads/d9;Lyads/t5;)V

    new-instance p1, Lyads/ae6;

    invoke-direct {p1, p4, p7}, Lyads/ae6;-><init>(Lyads/ja6;Lyads/of6;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lyads/ub6;->a:Lyads/t5;

    iput-object p9, p0, Lyads/ub6;->b:Lyads/jf6;

    iput-object v0, p0, Lyads/ub6;->c:Lyads/tt4;

    iput-object v1, p0, Lyads/ub6;->d:Lyads/xb6;

    iput-object p1, p0, Lyads/ub6;->e:Lyads/ae6;

    new-instance p1, Lyads/mb6;

    invoke-direct {p1, p6, p0}, Lyads/mb6;-><init>(Lyads/ec6;Lyads/ub6;)V

    iput-object p1, p0, Lyads/ub6;->f:Lyads/mb6;

    new-instance p1, Lyads/zb6;

    invoke-direct {p1, p8, p0}, Lyads/zb6;-><init>(Lyads/me6;Lyads/ub6;)V

    iput-object p1, p0, Lyads/ub6;->g:Lyads/zb6;

    new-instance p1, Lyads/sb6;

    invoke-direct {p1, p0}, Lyads/sb6;-><init>(Lyads/ub6;)V

    iput-object p1, p0, Lyads/ub6;->i:Lyads/sb6;

    new-instance p1, Lyads/tb6;

    invoke-direct {p1, p0}, Lyads/tb6;-><init>(Lyads/ub6;)V

    iput-object p1, p0, Lyads/ub6;->j:Lyads/tb6;

    return-void
.end method

.method public static final a(Lyads/ub6;)V
    .locals 5

    new-instance v0, Lyads/ym0;

    invoke-direct {v0}, Lyads/ym0;-><init>()V

    sget-object v1, Lyads/fb6;->b:Lyads/fb6;

    invoke-virtual {p0}, Lyads/ub6;->b()V

    iget-boolean v1, p0, Lyads/ub6;->h:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lyads/ub6;->h:Z

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "TIMEOUT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iget-object p0, p0, Lyads/ub6;->d:Lyads/xb6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lb36;

    const-string v3, "status"

    const-string v4, "error"

    invoke-direct {v2, v3, v4}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lb36;

    const-string v4, "failure_reason"

    invoke-direct {v3, v4, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lb36;

    const-string v4, "error_message"

    invoke-direct {v1, v4, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v3, v1}, [Lb36;

    move-result-object v0

    invoke-static {v0}, Ln05;->f([Lb36;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyads/xb6;->a(Ljava/util/Map;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 76
    iget-object v0, p0, Lyads/ub6;->g:Lyads/zb6;

    .line 77
    iget-object v1, v0, Lyads/zb6;->f:Lmb4;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 78
    invoke-interface {v1, v2}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 79
    :cond_0
    iput-object v2, v0, Lyads/zb6;->f:Lmb4;

    const/4 v1, 0x0

    .line 80
    iput-boolean v1, v0, Lyads/zb6;->e:Z

    .line 81
    iget-object v0, p0, Lyads/ub6;->a:Lyads/t5;

    sget-object v1, Lyads/s5;->z:Lyads/s5;

    .line 82
    invoke-virtual {v0, v1, v2}, Lyads/t5;->a(Lyads/s5;Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lyads/ub6;->b:Lyads/jf6;

    .line 84
    iget-object v0, v0, Lyads/jf6;->a:Lyads/k50;

    .line 85
    invoke-virtual {v0}, Lyads/k50;->i()V

    .line 86
    iget-object v0, p0, Lyads/ub6;->f:Lyads/mb6;

    .line 87
    iget-boolean v1, v0, Lyads/mb6;->e:Z

    if-nez v1, :cond_1

    .line 88
    iget-boolean v1, v0, Lyads/mb6;->d:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 89
    iput-boolean v1, v0, Lyads/mb6;->e:Z

    .line 90
    iget-object v1, v0, Lyads/mb6;->c:Ly22;

    new-instance v3, Lyads/lb6;

    invoke-direct {v3, v0, v2}, Lyads/lb6;-><init>(Lyads/mb6;Le02;)V

    const/4 v4, 0x3

    .line 91
    invoke-static {v1, v2, v2, v3, v4}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object v1

    .line 92
    iput-object v1, v0, Lyads/mb6;->f:Lmb4;

    .line 93
    :cond_1
    iget-object v0, p0, Lyads/ub6;->c:Lyads/tt4;

    sget-wide v1, Lyads/ub6;->l:J

    new-instance v3, Low0;

    const/4 v4, 0x6

    invoke-direct {v3, p0, v4}, Low0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1, v2, v3}, Lyads/tt4;->a(JLyads/ut4;)V

    return-void
.end method

.method public final a(Lyads/gb6;)V
    .locals 4

    .line 94
    invoke-virtual {p0}, Lyads/ub6;->b()V

    .line 95
    iget-boolean v0, p0, Lyads/ub6;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lyads/ub6;->h:Z

    .line 97
    iget-object v0, p1, Lyads/gb6;->a:Lyads/fb6;

    .line 98
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    iget-object p1, p1, Lyads/gb6;->b:Ljava/lang/Throwable;

    .line 100
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 101
    :cond_0
    iget-object p0, p0, Lyads/ub6;->d:Lyads/xb6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    new-instance v1, Lb36;

    const-string v2, "status"

    const-string v3, "error"

    invoke-direct {v1, v2, v3}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    new-instance v2, Lb36;

    const-string v3, "failure_reason"

    invoke-direct {v2, v3, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    new-instance v0, Lb36;

    const-string v3, "error_message"

    invoke-direct {v0, v3, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    filled-new-array {v1, v2, v0}, [Lb36;

    move-result-object p1

    .line 106
    invoke-static {p1}, Ln05;->f([Lb36;)Ljava/util/LinkedHashMap;

    move-result-object p1

    .line 107
    invoke-virtual {p0, p1}, Lyads/xb6;->a(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lyads/ub6;->g:Lyads/zb6;

    iget-object v1, v0, Lyads/zb6;->f:Lmb4;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1, v2}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v2, v0, Lyads/zb6;->f:Lmb4;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lyads/zb6;->e:Z

    iget-object v0, p0, Lyads/ub6;->f:Lyads/mb6;

    iget-object v3, v0, Lyads/mb6;->f:Lmb4;

    if-eqz v3, :cond_1

    invoke-interface {v3, v2}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    iput-object v2, v0, Lyads/mb6;->f:Lmb4;

    iput-boolean v1, v0, Lyads/mb6;->e:Z

    iget-object p0, p0, Lyads/ub6;->c:Lyads/tt4;

    invoke-virtual {p0}, Lyads/tt4;->a()V

    return-void
.end method
