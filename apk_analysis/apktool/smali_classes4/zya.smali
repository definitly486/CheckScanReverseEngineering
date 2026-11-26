.class public synthetic Lzya;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;
.implements Lrxa;


# static fields
.field public static final synthetic b:Lzya;

.field public static final synthetic c:Lzya;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lzya;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lzya;->b:Lzya;

    new-instance v0, Lzya;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lzya;->c:Lzya;

    return-void
.end method

.method public static a(Le02;Le02;Lbm3;)Le02;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, Lcd0;

    if-eqz v0, :cond_0

    check-cast p2, Lcd0;

    invoke-virtual {p2, p0, p1}, Lcd0;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1}, Le02;->getContext()Lo22;

    move-result-object v0

    sget-object v1, Lgx2;->b:Lgx2;

    if-ne v0, v1, :cond_1

    new-instance v0, Lba4;

    invoke-direct {v0, p1, p0, p2}, Lba4;-><init>(Le02;Le02;Lbm3;)V

    return-object v0

    :cond_1
    new-instance v1, Lca4;

    invoke-direct {v1, p1, v0, p2, p0}, Lca4;-><init>(Le02;Lo22;Lbm3;Le02;)V

    return-object v1
.end method

.method public static b(Le02;)Le02;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lf02;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lf02;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lf02;->intercepted()Le02;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static c(Lbm3;Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Le02;->getContext()Lo22;

    move-result-object v0

    sget-object v1, Lgx2;->b:Lgx2;

    if-ne v0, v1, :cond_0

    new-instance v0, Lda4;

    invoke-direct {v0, p2}, Le57;-><init>(Le02;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lea4;

    invoke-direct {v1, p2, v0}, Lf02;-><init>(Le02;Lo22;)V

    move-object v0, v1

    :goto_0
    const/4 p2, 0x2

    invoke-static {p2, p0}, Lv39;->c(ILjava/lang/Object;)V

    check-cast p0, Lbm3;

    invoke-interface {p0, p1, v0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    sget-object p0, Lqb5;->f:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v0, "MobileVisionBase"

    const-string v1, "Error preloading model resource"

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic zza()Ljava/lang/Object;
    .locals 2

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzags;->zzJ()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
