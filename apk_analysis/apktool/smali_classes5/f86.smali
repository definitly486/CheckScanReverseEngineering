.class public final Lf86;
.super Lio/grpc/i;
.source "SourceFile"


# static fields
.field public static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lvs3;->a:Ljava/util/logging/Logger;

    const-string v0, "GRPC_EXPERIMENTAL_ENABLE_NEW_PICK_FIRST"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ll63;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lf86;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/grpc/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/grpc/h$e;)Lio/grpc/h;
    .locals 0

    sget-boolean p0, Lf86;->b:Z

    if-eqz p0, :cond_0

    new-instance p0, Ld86;

    invoke-direct {p0, p1}, Ld86;-><init>(Lio/grpc/h$e;)V

    return-object p0

    :cond_0
    new-instance p0, Le86;

    invoke-direct {p0, p1}, Le86;-><init>(Lio/grpc/h$e;)V

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const-string p0, "pick_first"

    return-object p0
.end method

.method public final c(Ljava/util/Map;)Lio/grpc/l$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lio/grpc/l$b;"
        }
    .end annotation

    :try_start_0
    const-string p0, "shuffleAddressList"

    invoke-static {p0, p1}, Lpl2;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Boolean;

    move-result-object p0

    sget-boolean p1, Lf86;->b:Z

    if-eqz p1, :cond_0

    new-instance p1, Ld86$f;

    invoke-direct {p1, p0}, Ld86$f;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    new-instance p1, Le86$c;

    invoke-direct {p1, p0}, Le86$c;-><init>(Ljava/lang/Boolean;)V

    :goto_0
    new-instance p0, Lio/grpc/l$b;

    invoke-direct {p0, p1}, Lio/grpc/l$b;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lh88;->m:Lh88;

    invoke-virtual {p1, p0}, Lh88;->g(Ljava/lang/Throwable;)Lh88;

    move-result-object p0

    const-string p1, "Failed parsing configuration for pick_first"

    invoke-virtual {p0, p1}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p0

    new-instance p1, Lio/grpc/l$b;

    invoke-direct {p1, p0}, Lio/grpc/l$b;-><init>(Lh88;)V

    return-object p1
.end method
