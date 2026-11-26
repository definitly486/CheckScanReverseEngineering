.class public final Lyads/t10;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/u75;


# direct methods
.method public constructor <init>(Lyads/u75;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/t10;->a:Lyads/u75;

    return-void
.end method

.method public static final a(Lyads/m35;Ljava/lang/String;Ljava/lang/String;)Lj59;
    .locals 0

    .line 91
    invoke-virtual {p0, p1, p2}, Lyads/m35;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lbm3;)V
    .locals 2

    sget-object v0, Lyads/u10;->a:Lyads/w10;

    if-nez v0, :cond_1

    sget-object v0, Lyads/u10;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyads/u10;->a:Lyads/w10;

    if-nez v1, :cond_0

    invoke-static {p0}, Lyads/v10;->a(Landroid/content/Context;)Lyads/w10;

    move-result-object p0

    sput-object p0, Lyads/u10;->a:Lyads/w10;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lyads/u10;->a:Lyads/w10;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lyads/w10;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gdpr"

    invoke-interface {p1, v1, v0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lyads/w10;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gdpr_consent"

    invoke-interface {p1, v1, v0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lyads/w10;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parsed_purpose_consents"

    invoke-interface {p1, v1, v0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lyads/w10;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parsed_vendor_consents"

    invoke-interface {p1, v1, v0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cmp_present"

    invoke-virtual {p0}, Lyads/w10;->a()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    const-string p0, "Required value was null."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lyads/m35;)V
    .locals 1

    .line 90
    new-instance v0, Ls8a;

    invoke-direct {v0, p1}, Ls8a;-><init>(Lyads/m35;)V

    invoke-static {p0, v0}, Lyads/t10;->a(Landroid/content/Context;Lbm3;)V

    return-void
.end method
