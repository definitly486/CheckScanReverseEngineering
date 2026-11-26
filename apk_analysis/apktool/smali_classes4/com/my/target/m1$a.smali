.class public final Lcom/my/target/m1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final b:Ljava/util/List;

.field public static c:Ljava/util/regex/Pattern;

.field public static d:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Lcom/my/target/z2;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "pageLoadFailed"

    const-string v1, "webviewClosed"

    const-string v2, "urlResolved"

    const-string v3, "webviewShown"

    const-string v4, "pageLoaded"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/my/target/m1$a;->b:Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcom/my/target/m1$a;->c:Ljava/util/regex/Pattern;

    sput-object v0, Lcom/my/target/m1$a;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/my/target/z2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/m1$a;->a:Lcom/my/target/z2;

    :try_start_0
    const-string p0, "^https://[a-z]+\\.((mail\\.ru)|(mradx\\.net))/pixel/.*$"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    sput-object p0, Lcom/my/target/m1$a;->c:Ljava/util/regex/Pattern;

    const-string p0, "^https://vk.com/ads_light.php.*$"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    sput-object p0, Lcom/my/target/m1$a;->d:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "StatResolver: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ly14;->u(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ls5a;Ljava/util/Map;ILcom/my/target/m1$b;)V
    .locals 8

    iget-object v0, p1, Ls5a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "No stats here, nothing to send"

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v6, Li7a;

    iget-object v0, p1, Ls5a;->c:Lpp9;

    invoke-direct {v6, v0, p3}, Li7a;-><init>(Lpp9;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v0, Lx7a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lx7a;-><init>(Lcom/my/target/m1$a;Ls5a;Ljava/util/Map;JLi7a;Lcom/my/target/m1$b;)V

    iget-object p0, v1, Lcom/my/target/m1$a;->a:Lcom/my/target/z2;

    iget-object p0, p0, Lcom/my/target/z2;->e:Landroid/os/Handler;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
